<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class AppSessionHandler
{
    /**
     * Kept as a no-op middleware for compatibility with any stale references.
     */
    public function handle(Request $request, Closure $next): Response
    {
        return $next($request);
    }
}
