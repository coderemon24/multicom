<?php

namespace App\Providers;

use App\Models\Category;
use App\Models\Contact;
use App\Models\CreatePage;
use App\Models\EcomPixel;
use App\Models\GeneralSetting;
use App\Models\GoogleTagManager;
use App\Models\Order;
use App\Models\OrderStatus;
use App\Models\SocialMedia;
use App\Models\TiktokPixel;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Throwable;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Gate::before(function ($user, string $ability) {
            return ((int) ($user->id ?? 0) === 1) ? true : null;
        });

        View::composer([
            'backEnd.layouts.*',
            'backEnd.auth.login',
            'frontEnd.layouts.*',
            'vendor.layouts.app',
            'reseller.layouts.app',
        ], function ($view) {
            $view->with([
                'generalsetting' => $this->sharedGeneralSetting(),
                'demoMode' => $this->demoModeEnabled(),
            ]);
        });

        View::composer('backEnd.layouts.*', function ($view) {
            $pendingStatusId = $this->pendingOrderStatusId();

            $view->with([
                'neworder' => $this->safeValue(function () use ($pendingStatusId) {
                    return Order::where('order_status', $pendingStatusId)->count();
                }, 0),
                'pendingorder' => $this->safeValue(function () use ($pendingStatusId) {
                    return Order::with('customer')
                        ->where('order_status', $pendingStatusId)
                        ->latest()
                        ->limit(10)
                        ->get();
                }, collect()),
                'orderstatus' => $this->sharedOrderStatuses(),
            ]);
        });

        View::composer('frontEnd.layouts.*', function ($view) {
            $view->with([
                'contact' => $this->sharedContact(),
                'menucategories' => $this->sharedMenuCategories(),
                'pages' => $this->sharedPages('top'),
                'pagesright' => $this->sharedPages('right'),
                'socialicons' => $this->sharedSocialIcons(),
                'pixels' => $this->sharedPixels(),
                'gtm_code' => $this->sharedGoogleTagManagers(),
                'tiktok_pixels' => $this->sharedTiktokPixels(),
            ]);
        });
    }

    private function demoModeEnabled(): bool
    {
        return filter_var(env('DEMO_MODE', false), FILTER_VALIDATE_BOOLEAN);
    }

    private function sharedGeneralSetting()
    {
        return $this->rememberSafe('shared_generalsetting', 60, function () {
            return GeneralSetting::where('status', 1)->first() ?? GeneralSetting::first() ?? $this->defaultGeneralSetting();
        }, $this->defaultGeneralSetting());
    }

    private function defaultGeneralSetting(): object
    {
        return (object) [
            'name' => config('app.name', 'Diganta Mart'),
            'favicon' => 'public/backEnd/assets/images/favicon.ico',
            'white_logo' => 'public/backEnd/assets/images/logo.png',
            'dark_logo' => 'public/backEnd/assets/images/logo.png',
            'facebook_verification' => '',
            'google_verification' => '',
            'header_code' => '',
            'secodery_color' => '#13027D',
            'top_headline' => '',
            'footer_color' => '#1a1a1a',
            'footer_about_text' => '',
            'google_play_link' => '#',
            'app_store_link' => '#',
            'primary_color' => '#007bff',
            'copyright_color' => '#000000',
            'facebook_page_username' => '',
            'vendor_enabled' => 1,
            'reseller_enabled' => 1,
            'show_category_wise_products' => 0,
            'show_all_products' => 0,
            'hot_deal_end_date' => null,
            'flash_sale_end_date' => null,
            'og_baner' => 'public/logo.png',
        ];
    }

    private function sharedContact()
    {
        return $this->rememberSafe('shared_contact', 300, function () {
            return Contact::where('status', 1)->first() ?? Contact::first();
        }, null);
    }

    private function sharedMenuCategories()
    {
        return $this->rememberSafe('shared_menu_categories', 300, function () {
            return Category::where('status', 1)
                ->where('parent_id', 0)
                ->select('id', 'name', 'slug', 'icon', 'image')
                ->with(['subcategories.childcategories'])
                ->orderBy('id', 'ASC')
                ->get();
        }, collect());
    }

    private function sharedPages(string $position)
    {
        return $this->rememberSafe("shared_pages_{$position}", 300, function () use ($position) {
            $query = CreatePage::where('status', 1)->orderBy('id', 'ASC');

            if ($position === 'top') {
                return $query->limit(5)->get();
            }

            return $query->skip(5)->limit(10)->get();
        }, collect());
    }

    private function sharedSocialIcons()
    {
        return $this->rememberSafe('shared_social_icons', 300, function () {
            return SocialMedia::where('status', 1)->orderBy('id', 'ASC')->get();
        }, collect());
    }

    private function sharedPixels()
    {
        return $this->rememberSafe('shared_pixels', 300, function () {
            return EcomPixel::where('status', 1)->get();
        }, collect());
    }

    private function sharedGoogleTagManagers()
    {
        return $this->rememberSafe('shared_gtm_code', 300, function () {
            return GoogleTagManager::where('status', 1)->get();
        }, collect());
    }

    private function sharedTiktokPixels()
    {
        return $this->rememberSafe('shared_tiktok_pixels', 300, function () {
            return TiktokPixel::where('status', 1)->get();
        }, collect());
    }

    private function sharedOrderStatuses()
    {
        return $this->rememberSafe('shared_order_statuses', 300, function () {
            return OrderStatus::orderBy('id', 'ASC')->get();
        }, collect());
    }

    private function pendingOrderStatusId(): int
    {
        return (int) $this->rememberSafe('shared_pending_order_status_id', 300, function () {
            return OrderStatus::where('slug', 'pending')->value('id') ?? 1;
        }, 1);
    }

    private function rememberSafe(string $key, int $seconds, callable $callback, $fallback)
    {
        return $this->safeValue(function () use ($key, $seconds, $callback) {
            return Cache::remember($key, $seconds, $callback);
        }, $fallback);
    }

    private function safeValue(callable $callback, $fallback)
    {
        try {
            return $callback();
        } catch (Throwable $e) {
            return $fallback;
        }
    }
}
