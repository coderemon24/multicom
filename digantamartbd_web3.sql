-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 22, 2026 at 09:03 AM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digantamartbd_web3`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads_analytics_settings`
--

CREATE TABLE `ads_analytics_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `access_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_account_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category_id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(61, 8, 'public/uploads/banner/177394554717627569661760726244173643113867575302_2472100143020289_2326622559207948288_n.jpg', '#', 1, '2026-03-19 18:39:07', '2026-03-19 18:39:07'),
(62, 7, 'public/uploads/banner/17739455701771040869176744999517653483015.jpg', '#', 1, '2026-03-19 18:39:30', '2026-03-19 18:39:30'),
(63, 5, 'public/uploads/banner/17739456081771040713176745003417653482834.png', '#', 1, '2026-03-19 18:40:08', '2026-03-19 18:40:08'),
(64, 1, 'public/uploads/banner/17739456461771040758176745119417653482003.jpg', '#', 1, '2026-03-19 18:40:46', '2026-03-19 18:40:46'),
(65, 1, 'public/uploads/banner/17739456561771040839176745122417653482451.jpg', '#', 1, '2026-03-19 18:40:56', '2026-03-19 18:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `banner_categories`
--

CREATE TABLE `banner_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_categories`
--

INSERT INTO `banner_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider (1060x395)', 1, '2023-02-21 03:05:14', '2026-01-21 08:11:36'),
(5, 'Slider Bottom Ads (425X212px)', 1, '2023-11-19 04:36:08', '2026-01-21 08:11:30'),
(6, 'Footer Top Ads', 1, '2023-11-19 05:25:46', '2026-01-21 08:11:25'),
(7, 'Campaign', 1, '2024-07-06 15:42:31', '2026-01-21 08:11:19'),
(8, 'Customer Review', 1, '2024-11-07 10:19:17', '2026-01-21 08:11:12'),
(9, 'Hotdeals Baner', 1, '2025-02-23 09:34:40', '2026-01-21 08:10:58'),
(10, 'Home Ads', 1, '2025-02-23 09:47:22', '2026-01-21 08:10:52'),
(11, 'Home Ads 2', 1, '2025-02-23 09:51:07', '2026-01-21 08:10:27'),
(12, 'home', 1, '2025-11-27 14:03:05', '2026-01-21 08:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `short_description`, `description`, `image`, `views`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ব্লুকাট লেন্স চোখের জন্য কতটা উপকারী', 'blukat-lens-cokher-jnz-ktta-upkaree-1765860174', 'ব্লুকাট লেন্স এমন এক বিশেষ ধরনের চশমার লেন্স, এচা ডিজিটাল স্ক্রিন, যেমন মোবাইল, কম্পিউটার, টেলিভিশন এবং ট্যাবলেট থেকে নির্গত নীল আলো (ব্লু লাইট) প্রতিরোধ করতে সাহায্য করে। নীল আলো দৃশ্যমান আলো একটি অংশ।যার তরঙ্গ দৈর্ঘ্য সাধারণত ৩৮০ থেকে ৫০০ ন্যানোমিটারের মধ্যে থাকে। কিন্তু এটা চোখ ও মস্তিষ্কের জন্য আরামদায়ক নয়।বরং নীল আলোর কিছু ক্ষতিকর প্রভাব আছে।', 'ব্লুকাট লেন্স এমন এক বিশেষ ধরনের চশমার লেন্স, এচা ডিজিটাল স্ক্রিন, যেমন মোবাইল, কম্পিউটার, টেলিভিশন এবং ট্যাবলেট থেকে নির্গত নীল আলো (ব্লু লাইট) প্রতিরোধ করতে সাহায্য করে। নীল আলো দৃশ্যমান আলো একটি অংশ।যার তরঙ্গ দৈর্ঘ্য সাধারণত ৩৮০ থেকে ৫০০ ন্যানোমিটারের মধ্যে থাকে। কিন্তু এটা চোখ ও মস্তিষ্কের জন্য আরামদায়ক নয়।বরং নীল আলোর কিছু ক্ষতিকর প্রভাব আছে।\r\n\r\nডিজিটাল ডিভাইস অতিরিক্ত ব্যবহারের ফলে নীল আলো আমাদের চোখে সরাসরি প্রভাব ফেলে। এই আলো দীর্ঘক্ষণ চোখে পড়লে চোখের ক্লান্তি, শুষ্কতা, ও ঝাপসা দেখার সমস্যা হতে পারে। এই আলো মেলাটোনিন নামের হরমোনের ক্ষরণে বাধা দেয়।ফলে ঘুমের জন্য ব্যাঘাত ঘটে।\r\n\r\nগবেষণায় দেখা গেছে, নীল আলো দীর্ঘ সময় ধরে চোখে পড়লে রেটিনার কোষ ক্ষতিগ্রস্ত হতে পারে, যা ভবিষ্যতে দৃষ্টিশক্তি ক্ষতিগ্রস্ত করার আশঙ্কা বাড়ায়।\r\n\r\nব্লুকাট লেন্স এই সমস্যাগুলো প্রতিরোধে সাহায্য করতে পারে।এই লেন্স ডিজিটাল স্ক্রিন থেকে আসা অতিরিক্ত নীল আলো প্রতিরোধ করে চোখকে আরাম দেয়।\r\n\r\nনীল আলোর কারণে রেটিনায় যে ক্ষতি হতে পারে, তা অনেকাংশে রোধ করে ব্লুকাট লেন্স।\r\n\r\nরাতে চোখে নীল আলো কম পড়লে ঘুমের জন্য প্রয়োজনীয় মেলাটোনিন হরমোন সঠিকভাবে কাজ করতে পারে। ব্লুকাট লেন্সের চশমা দেখতে আধুনিক এবং স্টাইলিশ। ফলে তরুণ প্রজন্মের কাছেও এটা জনপ্রিয়।ব্লুকাট লেন্সের অনেক উপকারিতা থাকলেও এটি সবার জন্য আবশ্যক নয়।যদি আপনার কাজ ডিজিটাল স্ক্রিনে বেশি সময় ধরে হয়, তাহলে এটা আপনার জন্য উপকারী। তবে যারা ডিজিটাল স্ক্রিন কম ব্যবহার করেন, তাদের জন্য সাধারণ লেন্সই যথেষ্ট।\r\n\r\nব্লুকাট লেন্সের দাম সাধারণ লেন্সের তুলনায় একটু বেশি। তবে এটি একটি দীর্ঘমেয়াদে আপনার জন্য সাশ্রয়। একটু বেশি দামে হলেও ব্লুকটার লেন্স কিনে ব্যবহার করুন। তাতে চোখের সুরক্ষা অনেকটাই নিশ্চিত হবে এবং চোখের চিকিৎসায় ব্যয় কমে যাবে।\r\n\r\nসূত্র: হাউ ইট ওয়ার্কস', 'uploads/blogs/1765860174.webp', 188, 1, '2025-12-15 17:46:08', '2026-06-22 22:32:27'),
(2, 'কম দামে বড় পর্দার নতুন ফাইভ-জি স্মার্টফোন বাজারে', 'km-dame-br-prdar-ntun-faiv-ji-smartfon-bajare-1765860339', 'দেশের বাজারে শক্তিশালী ব্যাটারিযুক্ত নতুন মডেলের ফাইভ-জি স্মার্টফোন এনেছে টেকনো। ‘স্পার্ক ৪০ ফাইভ–জি’ মডেলের বাজেট–সাশ্রয়ী এই ফোনে ৬ হাজার মিলিঅ্যাম্পিয়ারের ব্যাটারির পাশাপাশি ১৮ ওয়াটের ফাস্ট চার্জিং প্রযুক্তি থাকায় দ্রুত চার্জ করা যায়। ফলে ফোনের চার্জ শেষ হওয়া নিয়ে চিন্তা করতে হয় না। গতকাল শনিবার এক সংবাদ বিজ্ঞপ্তিতে এ তথ্য জানিয়েছে টেকনো বাংলাদেশ।', 'দেশের বাজারে শক্তিশালী ব্যাটারিযুক্ত নতুন মডেলের ফাইভ-জি স্মার্টফোন এনেছে টেকনো। ‘স্পার্ক ৪০ ফাইভ–জি’ মডেলের বাজেট–সাশ্রয়ী এই ফোনে ৬ হাজার মিলিঅ্যাম্পিয়ারের ব্যাটারির পাশাপাশি ১৮ ওয়াটের ফাস্ট চার্জিং প্রযুক্তি থাকায় দ্রুত চার্জ করা যায়। ফলে ফোনের চার্জ শেষ হওয়া নিয়ে চিন্তা করতে হয় না। গতকাল শনিবার এক সংবাদ বিজ্ঞপ্তিতে এ তথ্য জানিয়েছে টেকনো বাংলাদেশ। \r\n\r\nসংবাদ বিজ্ঞপ্তিতে বলা হয়েছে, ৬.৭৫ ইঞ্চি এইচডি প্লাস পর্দার ফোনটিতে ৪ গিগাবাইট র‍্যাম রয়েছে, যা ৮ গিগাবাইট পর্যন্ত বাড়ানো যায়। ১২৮ গিগাবাইট ধারণক্ষমতার ফোনটিতে মিডিয়াটেক ডায়মেনসিটি ৬৪০০ ফাইভ–জি প্লাস প্রসেসর থাকায় একসঙ্গে একাধিক কাজ দ্রুত করা যায়। ফোনটির পর্দার রিফ্রেশ রেট ১২০ হার্টজ হওয়ায় পর্দায় উন্নত রেজল্যুশনের ছবি ও ভিডিও দেখা যায়। \r\nএ ছাড়া আইপি৬৪ রেটিংযুক্ত ওয়াটার অ্যান্ড ডাস্ট রেজিস্ট্যান্স–সুবিধা থাকায় ফোনটি পানিতে নষ্ট হয় না। এমনকি ধুলাও জমে না। ফোনটিতে টেকনোর ভয়েস অ্যাসিস্ট্যান্ট ‘আস্ক এলা’ যুক্ত থাকায় মুখের কথায় বিভিন্ন কাজ করা যায়। \r\nফোনটির পেছনে ফ্ল্যাশযুক্ত ৫০ মেগাপিক্সেলের ক্যামেরা রয়েছে। সেলফি তোলার জন্য রয়েছে ৫ মেগাপিক্সেলের ক্যামেরা। ফলে কম আলোতে ভালো মানের ছবি তোলা যায়। ডিটিএস সাউন্ড সিস্টেম ও আইআর রিমোট কন্ট্রোল সুবিধার ফোনটি দিয়ে বিভিন্ন ইলেকট্রনিক যন্ত্রও নিয়ন্ত্রণ করা সম্ভব। স্বয়ংক্রিয়ভাবে বার্তা লেখা, অনুবাদ ও অনলাইনে তথ্য খোঁজার জন্য ফোনটিতে রয়েছে এআই রাইটিং, এআই সার্চ ও এআই ট্রান্সলেট টুল। \r\nএআই প্রযুক্তি কাজে লাগিয়ে স্বয়ংক্রিয়ভাবে ছবি ও ভিডিও সম্পাদনা করতে সক্ষম ফোনটির দাম ধরা হয়েছে ১৬ হাজার ৯৯৯ টাকা (ভ্যাট ছাড়া)।', 'uploads/blogs/1765860339.jpg', 194, 1, '2025-12-15 18:21:03', '2026-06-22 22:32:22'),
(6, 'iPhone 17 Pro Max: স্টোরেজের সাথে দামও বাড়তে পারে', 'iphone-17-pro-max-storejer-sathe-damoo-barte-pare-1770882457', 'অ্যাপল আইফোন ১৭ সিরিজের দাম নিয়ে নতুন তথ্য ফাঁস হয়েছে। সেপ্টেম্বর ৯-এ ‘অ্যা-ড্রপিং’ ইভেন্টে এই ফোন উন্মোচনের কথা রয়েছে। আইফোন ১৭ প্রো মডেলের দাম কিছুটা বাড়তে পারে, তবে বেস স্টোরেজও বাড়বে।জেপি মরগ্যানের একটি রিসার্চ নোট অনুসারে এই তথ্য জানা গেছে।', '<p><span style=\"color: rgb(29, 29, 31); font-family: Roboto, sans-serif;\">অ্যাপল আইফোন ১৭ সিরিজের দাম নিয়ে নতুন তথ্য ফাঁস হয়েছে। সেপ্টেম্বর ৯-এ ‘অ্যা-ড্রপিং’ ইভেন্টে এই ফোন উন্মোচনের কথা রয়েছে। আইফোন ১৭ প্রো মডেলের দাম কিছুটা বাড়তে পারে, তবে বেস স্টোরেজও বাড়বে।জেপি মরগ্যানের একটি রিসার্চ নোট অনুসারে এই তথ্য জানা গেছে। আইফোন ১৭ প্রো-এর ১২৮জিবি ভেরিয়েন্ট বন্ধ করে ২৫৬জিবি দিয়ে শুরু হবে। এটি দাম বাড়ার মূল কারণ। আইফোন ১৭ প্রো ম্যাক্স-এর দাম আগের মতোই রাখা হতে পারে। শুধুমাত্র প্রো মডেলটিতেই দাম বাড়ার সম্ভাবনা রয়েছে। মার্কিন যুক্তরাষ্ট্রে এর দাম ১০৯৯ ডলার হতে পারে।ভারতে আইফোন ১৭ প্রো (২৫৬জিবি)-এর দাম প্রায় ১,২৫,০০০ টাকা হতে পারে। সেপ্টেম্বর ১২ থেকে প্রি-অর্ডার শুরু হবে। ডেলিভারি expected around সেপ্টেম্বর ১৯-এর দিকে।নতুন আইফোনে বেশ কিছু আপগ্রেড আসছে। এ১৯ প্রো চিপসেট পাবে ব্যবহারকারীরা। ডিসপ্লে হবে ৬.৩ ইঞ্চির প্রোমোশন ওলেড। আইফোন ১৭ প্রো ম্যাক্স-এর দাম আগের মতোই রাখা হতে পারে। শুধুমাত্র প্রো মডেলটিতেই দাম বাড়ার সম্ভাবনা রয়েছে। মার্কিন যুক্তরাষ্ট্রে এর দাম ১০৯৯ ডলার হতে পারে।ভারতে আইফোন ১৭ প্রো (২৫৬জিবি)-এর দাম প্রায় ১,২৫,০০০ টাকা হতে পারে। সেপ্টেম্বর ১২ থেকে প্রি-অর্ডার শুরু হবে। ডেলিভারি expected around সেপ্টেম্বর ১৯-এর দিকে।নতুন আইফোনে বেশ কিছু আপগ্রেড আসছে। এ১৯ প্রো চিপসেট পাবে ব্যবহারকারীরা। ডিসপ্লে হবে ৬.৩ ইঞ্চির প্রোমোশন ওলেড। আইফোন ১৭ প্রো ম্যাক্স-এর দাম আগের মতোই রাখা হতে পারে। শুধুমাত্র প্রো মডেলটিতেই দাম বাড়ার সম্ভাবনা রয়েছে। মার্কিন যুক্তরাষ্ট্রে এর দাম ১০৯৯ ডলার হতে পারে।ভারতে আইফোন ১৭ প্রো (২৫৬জিবি)-এর দাম প্রায় ১,২৫,০০০ টাকা হতে পারে। সেপ্টেম্বর ১২ থেকে প্রি-অর্ডার শুরু হবে। ডেলিভারি expected around সেপ্টেম্বর ১৯-এর দিকে।নতুন আইফোনে বেশ কিছু আপগ্রেড আসছে। এ১৯ প্রো চিপসেট পাবে ব্যবহারকারীরা। ডিসপ্লে হবে ৬.৩ ইঞ্চির প্রোমোশন ওলেড।আইফোন ১৭ প্রো ম্যাক্স-এর দাম আগের মতোই রাখা হতে পারে। শুধুমাত্র প্রো মডেলটিতেই দাম বাড়ার সম্ভাবনা রয়েছে। মার্কিন যুক্তরাষ্ট্রে এর দাম ১০৯৯ ডলার হতে পারে।ভারতে আইফোন ১৭ প্রো (২৫৬জিবি)-এর দাম প্রায় ১,২৫,০০০ টাকা হতে পারে। সেপ্টেম্বর ১২ থেকে প্রি-অর্ডার শুরু হবে। ডেলিভারি expected around সেপ্টেম্বর ১৯-এর দিকে।নতুন আইফোনে বেশ কিছু আপগ্রেড আসছে। এ১৯ প্রো চিপসেট পাবে ব্যবহারকারীরা। ডিসপ্লে হবে ৬.৩ ইঞ্চির প্রোমোশন ওলেড।</span></p>', 'uploads/blogs/1770882457.jpg', 102, 1, '2026-02-12 07:47:37', '2026-06-22 22:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(18, 'Lunch Box', 'rfl', 'public/uploads/brand/1774010365-1771043182-1767451895-019e5a224907345.y3jvccwxnzu3ldeznzqsnjezldmyng.webp', 1, '2025-11-20 07:26:55', '2026-03-20 12:39:26'),
(19, 'Khabar Ghar', 'lotus-herbal', 'public/uploads/brand/1774010405-1771043253-1767451895-019e5a224907345.y3jvccwxnzu3ldeznzqsnjezldmyng.webp', 1, '2025-12-11 11:29:24', '2026-03-20 12:40:05'),
(20, 'Kacci Biriyani', 'lg', 'public/uploads/brand/1774010426-1771043287-1767451895-019e5a224907345.y3jvccwxnzu3ldeznzqsnjezldmyng.webp', 1, '2025-12-15 16:56:25', '2026-03-20 12:40:26'),
(21, 'Banglaliana', 'apple', 'public/uploads/brand/1774010489-1771043341-1767451895-019e5a224907345.y3jvccwxnzu3ldeznzqsnjezldmyng.webp', 1, '2025-12-15 16:57:22', '2026-03-20 12:41:29'),
(22, 'Pran', 'symphony', 'public/uploads/brand/1774010526-1765817987-screenshot_1.webp', 1, '2025-12-15 16:58:25', '2026-03-20 12:42:06'),
(23, 'Mach Vath', 'pran', 'public/uploads/brand/1774010583-1771043430-1767452217-43e9df217342767.y3jvccwymtawlde2ndismcwymjg.webp', 1, '2025-12-15 16:59:47', '2026-03-20 12:43:03'),
(24, 'Deli', 'meril', 'public/uploads/brand/1774010666-1771043456-1767452303-28f9ca916fb96a6a05bed222bf86d75e.webp', 1, '2025-12-15 17:02:00', '2026-03-20 12:44:26'),
(25, 'Takoa', 'gigabyte', 'public/uploads/brand/1774010698-1771043478-1767452370-screenshot_1.webp', 1, '2025-12-15 17:02:55', '2026-03-20 12:44:59'),
(26, 'Tripti', 'walton', 'public/uploads/brand/1774010720-1771043499-1767452418-screenshot_2.webp', 1, '2025-12-15 17:04:00', '2026-03-20 12:45:20'),
(27, 'Teer', 'teer', 'public/uploads/brand/1765818411-2021-12-13-61b6e83dd4cf0.webp', 1, '2025-12-15 17:06:51', '2025-12-15 17:06:51'),
(28, 'Jiver Sadh', 'jiver-sadh', 'public/uploads/brand/1765818574-fa6e45217130135.y3jvccwymtawlde2ndismcwymjg.webp', 1, '2025-12-15 17:09:34', '2025-12-15 17:09:34'),
(29, '7 UP', '7-up', 'public/uploads/brand/1765818630-7up-logo-2010-768x432-2.webp', 1, '2025-12-15 17:10:30', '2025-12-15 17:10:30'),
(30, 'Lunch Box', 'konka', 'public/uploads/brand/1774010808-1771043253-1767451895-019e5a224907345.y3jvccwxnzu3ldeznzqsnjezldmyng.webp', 1, '2025-12-17 20:02:08', '2026-03-20 12:46:48'),
(32, 'Dahua', 'dahua', 'public/uploads/brand/1781536232-images.webp', 1, '2026-06-16 01:10:32', '2026-06-16 01:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `banner_title` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` text DEFAULT NULL,
  `image_two` text DEFAULT NULL,
  `image_three` text DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deadline` datetime DEFAULT current_timestamp(),
  `top_title_1` varchar(255) DEFAULT 'হোম ডেলিভারি ফ্রি',
  `top_title_2` varchar(255) DEFAULT '৩ দিনের জন্য প্রযোজ্য',
  `heading_1` varchar(255) DEFAULT 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।',
  `feature_1` varchar(255) DEFAULT '১০০% কালার গ্যারান্টি',
  `feature_2` varchar(255) DEFAULT '১০০% কোয়ালিটিফুল',
  `heading_2` varchar(255) DEFAULT 'প্রিমিয়াম কোয়ালিটির নিশ্চয়তা',
  `heading_3` varchar(255) DEFAULT '”দেখতে অসম্ভব সুন্দর এই জামা + ওড়না সেট খুবই প্রিমিয়াম ও আরামদায়ক”',
  `heading_4` varchar(255) DEFAULT 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।',
  `note` varchar(255) DEFAULT 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।',
  `billing_details` varchar(255) DEFAULT 'একপিচ এর অধিক অর্ডার এর জন্য পরিমান লিখুন ও পছন্দের কালার গুলি সিলেক্ট করুন'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `name`, `banner_title`, `video`, `banner`, `slug`, `short_description`, `description`, `review`, `product_id`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`, `deadline`, `top_title_1`, `top_title_2`, `heading_1`, `feature_1`, `feature_2`, `heading_2`, `heading_3`, `heading_4`, `note`, `billing_details`) VALUES
(17, 'ইরানি খাটি চাকের মধু', '78888888888888', 'sSdTLLtpPRE', 'public/uploads/campaign/1773038223-screenshot_1.png', 'irani-khati-caker-mdhu', '<p>khjjjjjjjjjjjj</p>', '<p>jhkkkkkkkkkk</p>', '5', 180, 'public/uploads/campaign/1773030072-screenshot_1.webp', 'public/uploads/campaign/1773030073-screenshot_1.webp', 'public/uploads/campaign/1773030073-screenshot_1.webp', '1', '2026-03-09 04:21:13', '2026-03-09 06:37:03', '2027-03-09 10:23:18', '78787878787878787878787878', '৩ দিনের জন্য প্রযোজ্য', '4555555555555555555555555', '১০০% কালার গ্যারান্টি', '১০০% কোয়ালিটিফুল', 'প্রিমিয়াম কোয়ালিটির নিশ্চয়তা', '54444444444444', '4555555555555', '455555555555555', '7555555555555');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_product`
--

CREATE TABLE `campaign_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_product`
--

INSERT INTO `campaign_product` (`id`, `campaign_id`, `product_id`, `created_at`, `updated_at`) VALUES
(18, 13, 184, NULL, NULL),
(19, 13, 185, NULL, NULL),
(20, 13, 186, NULL, NULL),
(21, 13, 183, NULL, NULL),
(22, 25, 181, NULL, NULL),
(23, 25, 183, NULL, NULL),
(24, 17, 181, NULL, NULL),
(25, 17, 183, NULL, NULL),
(26, 17, 184, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_reviews`
--

CREATE TABLE `campaign_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_reviews`
--

INSERT INTO `campaign_reviews` (`id`, `image`, `campaign_id`, `created_at`, `updated_at`) VALUES
(23, 'public/uploads/campaign/1736442274-2024-07-16-6696757bd2081.jpg', 13, '2025-01-10 07:04:34', '2025-01-10 07:04:34'),
(24, 'public/uploads/campaign/1745390545-ghee2.jpg', 16, '2025-04-23 06:42:25', '2025-04-23 06:42:25'),
(25, 'public/uploads/campaign/1761911162-492402168_1227969512667315_4207845130642128120_n.jpg', 17, '2025-10-31 11:46:02', '2025-10-31 11:46:02'),
(26, 'public/uploads/campaign/1763476953-2.jpg', 18, '2025-11-18 14:42:33', '2025-11-18 14:42:33'),
(27, 'public/uploads/campaign/1764604947-fa9b72660bb97b6fcf19d87b3976f862.jpg', 19, '2025-12-01 16:02:27', '2025-12-01 16:02:27'),
(28, 'public/uploads/campaign/1773030073-screenshot_1.png', 17, '2026-03-09 04:21:13', '2026-03-09 04:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` decimal(10,2) NOT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `icon` varchar(255) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `front_view` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `image`, `icon`, `meta_title`, `meta_description`, `front_view`, `status`, `created_at`, `updated_at`, `meta_keyword`) VALUES
(38, 0, 'Ghee & Oil', 'ghee-&-oil', 'public/uploads/category/1773945786-1771039805-1767450521-1765348675-1764838640-1762931480-1736429456-ghee-concept-shot.webp', 'public/uploads/category/1773945786-icon-1771039805-1767450521-1765348675-1764838640-1762931480-1736429456-ghee-concept-shot.webp', NULL, NULL, 1, 1, '2026-03-19 18:43:06', '2026-03-20 05:32:51', NULL),
(39, 0, 'Original Organic Honey', 'original-organic-honey', 'public/uploads/category/1773945827-1771039849-1767450568-1765348686-1764838691-1762931516-1736429543-het1dosp6u0vqdwz2hpzw9qe2mnc.webp', 'public/uploads/category/1773945827-icon-1771039849-1767450568-1765348686-1764838691-1762931516-1736429543-het1dosp6u0vqdwz2hpzw9qe2mnc.webp', NULL, NULL, 1, 1, '2026-03-19 18:43:47', '2026-03-20 05:33:12', NULL),
(40, 0, 'Nuts & Dates', 'nuts-&-dates', 'public/uploads/category/1773945873-1771039879-1767450602-1765348703-1764838744-1762931652-1736429674-images.webp', 'public/uploads/category/1773945873-icon-1771039879-1767450602-1765348703-1764838744-1762931652-1736429674-images.webp', NULL, NULL, 1, 1, '2026-03-19 18:44:33', '2026-03-20 05:33:29', NULL),
(41, 0, 'Organic Spices', 'organic-spices', 'public/uploads/category/1773945900-1771039911-1767450655-1765348742-1764838808-1762931734-1736429753-screenshot_2.webp', 'public/uploads/category/1773945901-icon-1771039911-1767450655-1765348742-1764838808-1762931734-1736429753-screenshot_2.webp', NULL, NULL, 0, 1, '2026-03-19 18:45:01', '2026-03-19 18:45:01', NULL),
(42, 0, 'Organic Oil', 'organic-oil', 'public/uploads/category/1773945942-1771039957-1767450693-1765348753-1764838866-1762931805-o.webp', 'public/uploads/category/1773945942-icon-1771039957-1767450693-1765348753-1764838866-1762931805-o.webp', NULL, NULL, 0, 1, '2026-03-19 18:45:42', '2026-03-19 18:45:42', NULL),
(43, 0, 'Rice, Pulse', 'rice,-pulse', 'public/uploads/category/1773945967-1771040150-1767450655-1765348742-1764838808-1762931734-1736429753-screenshot_2.webp', 'public/uploads/category/1773945967-icon-1771040150-1767450655-1765348742-1764838808-1762931734-1736429753-screenshot_2.webp', NULL, NULL, 0, 1, '2026-03-19 18:46:07', '2026-03-19 18:46:07', NULL),
(44, 0, 'Super Foods', 'super-foods', 'public/uploads/category/1773946005-1771040219-1767450742-1765348791-1764838976-1762931872-1736430207-rice.webp', 'public/uploads/category/1773946006-icon-1771040219-1767450742-1765348791-1764838976-1762931872-1736430207-rice.webp', NULL, NULL, 0, 1, '2026-03-19 18:46:46', '2026-03-19 18:46:46', NULL),
(45, 0, 'Sweeteners', 'sweeteners', 'public/uploads/category/1773946032-1771040282-1767450768-1765348804-1764839018-1762931901-1736430546-swee.webp', 'public/uploads/category/1773946032-icon-1771040282-1767450768-1765348804-1764839018-1762931901-1736430546-swee.webp', NULL, NULL, 0, 1, '2026-03-19 18:47:12', '2026-03-19 18:47:12', NULL),
(46, 0, 'Mutton', 'mutton', 'public/uploads/category/1773946059-1771041685-images.jfif', 'public/uploads/category/1773946059-icon-1771041685-images.jfif', NULL, NULL, 0, 1, '2026-03-19 18:47:39', '2026-03-19 18:47:39', NULL),
(47, 0, 'IT Product', 'it-product', 'public/uploads/category/1780320563-cctv-security-camera-flat-icon-vector.webp', 'public/uploads/category/1780320567-icon-cctv-security-camera-flat-icon-vector.webp', NULL, NULL, 0, 1, '2026-06-01 23:29:27', '2026-06-01 23:29:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `childcategoryName` varchar(255) NOT NULL DEFAULT 'text',
  `slug` varchar(255) NOT NULL DEFAULT 'text',
  `subcategory_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `childcategoryName`, `slug`, `subcategory_id`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(157, 'Dahua', 'dahua', 71, 'Smart Dual Light Camera', '<h1 class=\"product_title entry-title wd-entities-title\" style=\"margin-top: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: 1.2; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-language-override: inherit; color: rgb(51, 51, 51); --wd-link-decor: none; --wd-link-decor-hover: none; overflow-wrap: break-word; --page-title-display: block; margin-bottom: 8px !important; font-size: 22px !important;\">Dahua DH-HAC-HFW1509TMP-IL-A 5MP Smart Dual Light HDCVI Fixed-focal Bullet Camera</h1>', 1, '2026-06-16 01:09:22', '2026-06-16 01:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `colorName` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `colorName`, `color`, `status`, `created_at`, `updated_at`) VALUES
(35, 'Black', '#000000', '1', '2023-11-03 06:09:13', '2023-11-03 06:09:22'),
(36, 'Bright Blue', '#0096FF', '1', '2023-11-03 06:09:30', '2023-11-03 06:09:38'),
(39, 'Coral', '#FF7F50', '1', '2023-11-03 06:10:23', '2023-11-03 06:10:31'),
(40, 'Gray', '#999999', '1', '2023-11-03 06:10:40', '2023-11-03 06:10:48'),
(41, 'Green', '#008000', '1', '2023-11-03 06:10:57', '2023-11-03 06:11:05'),
(42, 'Hot Pink', '#FF69B4', '1', '2023-11-03 06:11:24', '2023-11-03 06:11:29'),
(44, 'Pink', '#FFC0CB', '1', '2023-11-03 06:12:03', '2023-11-03 08:50:43'),
(48, 'Magenta', '#FF00FF', '1', '2023-11-03 06:13:28', '2023-11-03 06:13:39'),
(49, 'Maroon', '#990000', '1', '2023-11-03 06:13:51', '2023-11-03 06:14:00'),
(50, 'Grass Green', '#7CFC00', '1', '2023-11-03 06:14:14', '2023-11-03 06:59:07'),
(51, 'Navy', '#000080', '1', '2023-11-03 06:14:30', '2023-11-03 06:14:41'),
(52, 'Blue', '#0000FF', '1', '2023-11-03 06:15:01', '2025-10-06 08:09:37'),
(53, 'Olive', '#808000', '1', '2023-11-03 06:15:26', '2023-11-03 06:15:37'),
(54, 'Orange', '#FFA500', '1', '2023-11-03 06:15:46', '2023-11-03 06:15:58'),
(55, 'Yellow Orange', '#FFAA33', '1', '2023-11-03 06:16:17', '2023-11-03 07:03:16'),
(56, 'Orchid', '#DA70D6', '1', '2023-11-03 06:16:35', '2023-11-03 06:16:42'),
(58, 'Purple Heart', '#8b1ec4', '1', '2023-11-03 06:17:09', '2023-11-03 06:17:20'),
(59, 'Red', '#FF0000', '1', '2023-11-03 06:17:30', '2023-11-03 06:17:42'),
(60, 'Canary Yellow', '#FFFF8F', '1', '2023-11-03 06:17:51', '2023-11-03 08:24:41'),
(61, 'Salmon', '#FA8072', '1', '2023-11-03 06:18:13', '2023-11-03 06:18:24'),
(62, 'White', '#ffffff', '1', '2023-11-03 06:18:44', '2023-11-03 06:18:52'),
(63, 'Gold', '#FFD700', '1', '2023-11-03 06:19:02', '2023-11-03 07:08:05'),
(64, 'Crimson', '#DC143C', '1', '2023-11-03 06:37:11', '2023-11-03 09:19:11'),
(65, 'Silver', '#C0C0C0', '1', '2023-11-03 06:40:45', '2023-11-03 09:11:55'),
(67, 'Light Orange', '#FFD580', '1', '2023-11-03 07:13:52', '2023-11-03 07:14:03'),
(68, 'Navajo White', '#FFDEAD', '1', '2023-11-03 07:15:18', '2023-11-03 08:16:20'),
(69, 'Pumpkin Orange', '#FF7518', '1', '2023-11-03 07:17:29', '2023-11-03 07:17:38'),
(70, 'Chocolate', '#D2691E', '1', '2023-11-03 08:01:35', '2023-11-03 08:34:09'),
(73, 'Biscuit', '#FAD7A0', '1', '2023-11-03 09:09:43', '2025-12-16 05:04:34'),
(74, 'Off White', '#f5f5f5', '1', '2024-11-10 04:46:40', '2024-11-10 04:46:40'),
(75, 'Golden Black', '#d9811c', '1', '2025-11-20 07:27:26', '2025-11-28 04:39:40'),
(76, 'Black Golden', '#a20707', '1', '2025-11-28 04:40:00', '2025-11-28 04:40:00'),
(77, 'Nayeem Golden', '#dfb234', '1', '2025-11-28 04:40:31', '2025-11-28 04:40:31'),
(78, 'Titanium Silver', '#68cfe8', '1', '2025-12-15 07:18:58', '2025-12-15 07:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `status` enum('pending','processing','resolved') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotline` varchar(50) DEFAULT NULL,
  `hotmail` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `whatsapp` varchar(200) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `maplink` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `hotline`, `hotmail`, `phone`, `whatsapp`, `email`, `address`, `maplink`, `status`, `created_at`, `updated_at`) VALUES
(1, '09638887766', 'info@digantamartbd.com', '01735156614', '01735156614', 'info@digantamartbd.com', 'Mogbazar, Dhaka-1217', '#', 1, '2023-01-22 10:35:29', '2026-06-01 23:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `details` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Unread, 1=Read',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `full_name`, `mobile`, `email`, `subject`, `details`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Roki ahamedkhd', '01623984965', 'rokiahamed192@gmail.com', 'apnader product koto', 'hi isr', 0, '2026-02-14 06:49:24', '2026-02-14 06:49:24'),
(11, 'Georgia Smith', '8002402815', 'georgia@getonglobe.com', 'Re: digantamartbd.com - google organic search results', 'Hi [digantamartbd.com],\r\n\r\nI was checking your website and find out you have a good design and it looks great, but it’s not ranking on Google and other major search engines.\r\n\r\nWe can place your website on Google\'s 1st page. Yahoo, Facebook, LinkedIn, YouTube, Instagram, Pinterest etc.\r\n\r\nInterested? Please provide your name, contact information, and email.\r\n\r\nThank you\r\nGeorgia | Founder & Marketing Director \r\nToll Free: +1 800 240 2815\r\nhttp://wa.me/917042524727 \r\n\r\n\r\n\r\n\r\n\r\nNote: - If you’re not Interested in our Services, send us NO.', 0, '2026-05-28 08:45:46', '2026-05-28 08:45:46'),
(12, 'Ali', '7532833829', 'asif@rocketdigitaltech.com', 'Let’s Boost Your Website Traffic', 'Hello http://digantamartbd.com,\r\n \r\nIf you’re looking to boost your website’s visibility, I can help you achieve top Google rankings.\r\n \r\nI’ll prepare a complete SEO plan with actionable steps and potential growth insights for your products or services.\r\n \r\nOnce you share your target keywords and target market, I’ll send a full proposal.\r\n \r\nBest Regards,\r\nAsif', 0, '2026-05-29 07:28:25', '2026-05-29 07:28:25'),
(13, 'Kyree Web', '2102102101', 'kyree.carey@gmail.com', 'SEO Improvements Identified for Your Website digantamartbd.com', 'Hello,\r\n\r\nI recently reviewed your website digantamartbd.com and noticed a few SEO-related issues that may be affecting your Google rankings, website traffic, and overall online visibility.\r\n\r\nWould you like me to send a screenshot highlighting these issues? I can also prepare a detailed SEO audit report, along with recommendations, proposal, and pricing to help improve your website’s search engine performance and generate more potential leads.\r\n\r\nLooking forward to your response.\r\n\r\nKind regards,', 0, '2026-05-29 17:13:34', '2026-05-29 17:13:34'),
(14, 'Joanna Riggs', '7905365529', 'joriggsvideo3@gmail.com', 'Bringing your story to life', 'Hi,\r\n\r\nI just visited digantamartbd.com and wondered if you\'ve ever considered an impactful video to advertise your business? Our videos can generate impressive results on both your website and across social media.\r\n\r\nOur prices start from just $195 (USD).\r\n\r\nLet me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna', 0, '2026-06-06 13:18:42', '2026-06-06 13:18:42'),
(15, 'Gemma Marshall', 'Gemma Marshall', 'gemmamarshall811@gmail.com', 'Targeted Instagram growth for digantamartbd.com', 'Hi,\r\n\r\nI was just looking at digantamartbd.com and wanted to ask: are you looking to scale your Instagram presence right now?\r\n\r\nWe help brands like yours add 300+ targeted Instagram followers every month using manual outreach and ads. We can grow your existing page or even build a brand-new profile from scratch for you if you\'d prefer a fresh start.\r\n\r\nWould you like me to send over some more info on how it works?\r\n\r\nThanks for your time,\r\nGemma', 0, '2026-06-08 00:58:19', '2026-06-08 00:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('flat','percent') NOT NULL DEFAULT 'flat',
  `value` decimal(10,2) NOT NULL,
  `min_purchase` decimal(10,2) DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `min_purchase`, `valid_from`, `valid_to`, `status`, `created_at`, `updated_at`) VALUES
(3, 'codedell', 'flat', 1000.00, 1.00, '2025-11-11', '2025-11-22', 1, '2025-11-16 16:39:14', '2025-11-16 16:40:16'),
(4, '0010', 'percent', 6.00, NULL, NULL, NULL, 1, '2025-11-18 12:51:24', '2025-11-18 12:51:24'),
(5, '৫০%Off', 'percent', 100.00, 200.00, '2025-11-19', '2025-11-19', 1, '2025-11-19 03:50:32', '2025-11-19 03:50:32'),
(6, '545454', 'percent', 5.00, 50.00, '2025-11-19', '2025-12-25', 1, '2025-11-20 07:35:04', '2025-12-09 07:42:52'),
(7, 'OKGOOD', 'flat', 50.00, NULL, '2025-12-11', '2025-12-12', 1, '2025-12-11 03:08:25', '2025-12-11 03:08:25'),
(8, '23553812781', 'flat', 10.00, 30.00, '2025-12-17', '2027-03-10', 1, '2025-12-17 16:03:10', '2026-02-12 06:00:20'),
(9, 'Boss', 'percent', 100.00, 20.00, '2025-12-18', '2026-05-01', 1, '2025-12-18 15:22:25', '2026-02-12 06:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `courierapis`
--

CREATE TABLE `courierapis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `secret_key` varchar(155) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `webhook_url` varchar(255) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courierapis`
--

INSERT INTO `courierapis` (`id`, `type`, `api_key`, `secret_key`, `client_id`, `client_secret`, `username`, `password`, `url`, `token`, `webhook_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'steadfast', 'zrhxzoxusocyjosjp7fzimme2ajstlpf', 'ksrw5w6bisxae8h1qflaxnsi', NULL, NULL, NULL, NULL, 'https://portal.packzy.com/api/v1/create_order', 'asdfdsfdsafdsf', NULL, '1', '2024-02-06 11:29:46', '2026-06-15 00:13:59'),
(2, 'pathao', '', '', '9wdLZvwajP', 'W7zvvVNdVbU9vAlmrFk83EnbogvT7jplcfRaBnoC', 'creativedesign.com.bd@gmail.com', 'RAshid7575@$#bd', 'https://api-hermes.pathao.com/aladdin', 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIyOTE2NjUiLCJhdWQiOlsiOTk2NiJdLCJleHAiOjE3NzcyMjYxODUsIm5iZiI6MTc2OTQ1MDE4NSwiaWF0IjoxNzY5NDUwMTg1LCJqdGkiOiJlYTNkODkyMmFkZjM1Y2FiZWUwYzA5ZmVhYTYwNDAzNGFjMjNiN2QwMGIyZmNhYzIwMjcxMWJiMGRjZDhhNWI4IiwibWVyY2hhbnRfaWQiOiJHUmI0UlJCVmVCIiwic2NvcGVzIjpbXX0.Dp3uGyVtDCSyu3z2_9zOf4xEoS7OhhSeXxTTbCxrKGujiQL_mURVyxis7f2AZXXx95qIblj3NGseTXT31Ca5oIFPOzzDjn7H1Wy5GMkOrSAH5AzCGW2DIWr3PI_GBsFbVSGtlyPSecZIjNH9ZnoUnsPx7d8BHCkJqNDV6fCRCez_lHEecT-VhYJyJtXYNyWeHgcJVWnUgZNpJH_xEvf7ywXgpWMJsnkL_wOjaWaiAR9X919q5y2IjYVmXdvvJRBz2-tfAshDXCVMmGEEF6zlRV_ASm5eCVnPOkpHmdPFCpPXMEadpBdtKg6HM30wmpK-XrdN3pIyg6g_j6r-ysbp2mclcEJjGLL5iBPzVvLEv65y3-t6yOSDaZwMn8MjD0IgKVlNpCiZfEt_KY5eGhgnUkOFESVqu3WXaB_pwdktGao8e3zxPX9LlV3aPS2IjdnsMZEAGpcPm8jXLB1OCmwHsrLNXWYGE7zGPv3UjbU1NTBVApM5jFIDFkiSlqrTa4L-uwV6aT1Kz9RNnGKR8HRzy8qSUEWKgy_hHl8hCSNqyszvZ2IJbSqiDUXSvapjqzH_yWsJDDxFuS0BvB92bBzTBnCWInGxztFlP9ZqlJ0YQPAxF3q6YRVndj4r_gf3Oq4zD3cujzVfOUrYmI6V0Q18yDc1neLc4uTh-5wWKOuibkM', NULL, '1', '2024-02-06 11:29:46', '2026-01-26 17:56:25'),
(3, 'redx', NULL, NULL, NULL, NULL, NULL, NULL, 'https://openapi.redx.com.bd/v1.0.0-beta', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMDM2MTY1IiwiaWF0IjoxNzcwNjM3NjY3LCJpc3MiOiJqOHVqOGdaMjNCTFBnZnNCNzFNUnh2bTh6aGhlZjk5RyIsInNob3BfaWQiOjEwMzYxNjUsInVzZXJfaWQiOjEwNzg1Mzg5fQ.Y4IEZbeVMaC8cYdxodM3duMSvyyDlGgJSmfemf1Uhgk', 'http://localhost/api/redx/webhook', '1', '2026-02-09 11:26:09', '2026-02-09 11:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `create_pages`
--

CREATE TABLE `create_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `create_pages`
--

INSERT INTO `create_pages` (`id`, `name`, `slug`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Order procedure', 'order-procedure', 'Order procedure', 'Elite Design', 1, '2023-10-04 07:02:30', '2025-12-12 12:51:46'),
(3, 'Delivery Rules', 'delivery-rules', 'Delivery Rules', '<p>Elite Design</p>', 1, '2023-10-04 07:03:00', '2025-01-10 02:57:30'),
(5, 'Return Policy', 'return-policy', 'Return Policy', 'Elite Design', 1, '2023-10-04 07:03:42', '2025-12-12 12:51:42'),
(9, 'Privacy Policy', 'privacy-policy', 'Privacy Policy', '<p>Privacy Policy</p>', 1, '2025-12-12 12:54:35', '2025-12-12 12:54:35'),
(10, 'Terms & Conditions', 'terms-&-conditions', 'Terms & Conditions', '<p>Terms &amp; Conditions</p>', 1, '2025-12-12 12:55:23', '2025-12-12 12:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `cron_job_settings`
--

CREATE TABLE `cron_job_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_key` varchar(80) NOT NULL,
  `job_title` varchar(150) NOT NULL,
  `job_description` text DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `frequency_minutes` smallint(5) UNSIGNED NOT NULL DEFAULT 10,
  `order_limit` smallint(5) UNSIGNED NOT NULL DEFAULT 50,
  `last_run_at` timestamp NULL DEFAULT NULL,
  `last_run_status` varchar(20) DEFAULT NULL,
  `last_run_result` text DEFAULT NULL,
  `last_updated_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_failed_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cron_job_settings`
--

INSERT INTO `cron_job_settings` (`id`, `job_key`, `job_title`, `job_description`, `is_enabled`, `frequency_minutes`, `order_limit`, `last_run_at`, `last_run_status`, `last_run_result`, `last_updated_count`, `last_failed_count`, `created_at`, `updated_at`) VALUES
(1, 'courier_status_sync', 'কুরিয়ার স্ট্যাটাস সিঙ্ক', 'Pathao, Steadfast ও RedX কুরিয়ার থেকে অর্ডার স্ট্যাটাস স্বয়ংক্রিয়ভাবে আপডেট করে।', 1, 10, 50, NULL, NULL, NULL, 0, 0, '2026-03-09 11:24:07', '2026-03-09 11:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `verify` int(11) DEFAULT NULL,
  `forgot` varchar(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'public/uploads/default/user.png',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `slug`, `phone`, `email`, `district`, `area`, `address`, `verify`, `forgot`, `image`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(286, 'Jononi Madical Hall', 'jononi-madical-hall-1', '01775457008', 'info@talentsedu2.com', 'Dhaka', 15, 'Coomunity Center Road, Hasnabad Housing, South Keraniganj, Dhaka-1311', 1, '7003', 'public/uploads/customer/1769582411-imagesjfif', '$2y$10$5hlt7h29YFZ8zm..vJfd7ug3gY4TmXUVamzgYHEte1X63GX95AwwO', NULL, 'active', '2025-11-28 18:31:21', '2026-01-28 07:17:15'),
(287, 'Demo', 'Demo', '01716535565', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$N5HJYVpdamz9x4BPgVMCXecthtrUsvN8SW11m9bngzb2v.fqvHCai', NULL, 'active', '2025-11-29 06:09:56', '2025-11-29 06:09:56'),
(288, 'MONIRA AKTER', 'monira-akter', '01837363637', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9yqPJVTXXwqncMYoSZxOP.pLKChMwnaJkKn8tGylaTbDN17JoMsFW', NULL, 'active', '2025-11-29 14:36:07', '2025-11-29 14:36:07'),
(289, 'MONIRA AKTER', 'monira-akter', '01826536372', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5V4R1yXwFlhRKBvADTMpeOT9k/69VFFz1H.FPCqQMIOueXYNOcuja', NULL, 'active', '2025-11-29 14:37:06', '2025-11-29 14:37:06'),
(290, 'MONIRA AKTER', 'monira-akter-1602', '01', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HLUoUs8Uq1jn6IZUAXlk5eLkPpQkKn5kIoSHRWS5XamvMLoER1eIy', NULL, 'active', '2025-11-29 14:40:23', '2025-11-29 14:40:23'),
(291, 'Rifat Islam', 'rifat-islam', '01608572489', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$pkE2O3djxFS2cHGFfklFRerUvpKzg9hlIC622nAXL6VOUpljOwmXu', NULL, 'active', '2025-11-29 16:55:05', '2025-11-29 16:55:05'),
(292, 'International Academy For Talents School', 'international-academy-for-talents-school', '01896314508', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Yl1DFUo2vflA2s.HzQ5LfeoiZE2rZ2Lv.6x.l0MBoDaexYWfW5nbC', NULL, 'active', '2025-11-29 19:11:56', '2025-11-29 19:11:56'),
(293, 'Md Fazle Rabbi', 'Md Fazle Rabbi', '01332373527', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$z8jh5lN1YFzyhsUNe0Zr8O4Hy2rW23DO2qVa4IBYSOzOtMwE2NDMa', NULL, 'active', '2025-11-30 02:23:58', '2025-11-30 02:23:58'),
(294, 'Test', 'test', '01711223344', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2k85HnwudOj0ANR6AsU9zeV5oXumT759/iOoXHnDZo/BgMiPl0AXO', NULL, 'active', '2025-11-30 11:54:03', '2025-11-30 11:54:03'),
(296, 'Rihan Mahamud', 'rihan-mahamud', '01922737378', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$bBTrPGXE5Nx9Zzd8PxPKUe/xfs1UJsKTaR4TZaRhGE/ezco5jWo7G', NULL, 'active', '2025-11-30 17:51:40', '2025-11-30 17:51:40'),
(297, 'HriDoY MahaDi', 'HriDoY MahaDi', '01857568287', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vA9uoFoL.YxKwSriYQ587.UiSHmjdwZaJj10hX8Te.ZgCA.XZeBla', NULL, 'active', '2025-11-30 19:13:45', '2025-11-30 19:13:45'),
(298, 'Trial', 'trial', '01712345678', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$nWx1MqSP4Pps5HSIJa1CNuvnZNk1MP6nsTVe1DUFfvQ4bZWmr2KKe', NULL, 'active', '2025-12-01 04:03:56', '2025-12-01 04:03:56'),
(299, 'MD NAyeem', 'md-nayeem', '01907797147', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$n/NJW/U1E./sZytGVqRpIezWcdVxp5hnDnWrxw4CvXXV..c1A5x5q', NULL, 'active', '2025-12-01 06:44:24', '2025-12-01 06:44:24'),
(300, 'Trial', 'trial-7144', '017123', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$XIC7XNhtZ4QFSBhfGmSz1O164mifEs7aEheQbJ4cVehBfAB9v7JnS', NULL, 'active', '2025-12-01 06:46:54', '2025-12-01 06:46:54'),
(301, 'Alex Johnson', 'alex-johnson', '06051946238', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$uWXsZdGfZ2VEyjB/CzrDXODAdCitUxUvoXwn.YghJnFVMLpn71LZW', NULL, 'active', '2025-12-01 11:24:15', '2025-12-01 11:24:15'),
(302, 'Jahangir Alam', 'jahangir-alam', '01674082566', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$B.AKFlgGM9rSNWDxIYqHZ.57FraDHHvQEYwigl5E898hfMNqz.y46', NULL, 'active', '2025-12-01 14:51:51', '2025-12-01 14:51:51'),
(303, 'Ummah Islamic Institute', 'ummah-islamic-institute', '01782295954', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$VqZwQzt5/6nN3zWVJa.tzecr7vkQkOP/zUaB/d97gCb/oMsaG7MKG', NULL, 'active', '2025-12-03 10:53:06', '2025-12-03 10:53:06'),
(304, 'Md Abu kalam', 'md-abu-kalam', '01977667849', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4OBBj/Yv3Jb8Af/J8mMWEuyVVS9l5DHXG4rB9GeeuLtgeUvU3y.E.', NULL, 'active', '2025-12-04 12:30:32', '2025-12-04 12:30:32'),
(305, 'sixdeveloper', 'sixdeveloper', '01780418641', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Dol.lLbltO09KYOO2TkT9OZO5MFJ5bYVO2nVAeiv6j3ocr0AHg0rC', NULL, 'active', '2025-12-04 16:40:12', '2025-12-04 16:40:12'),
(306, 'Redwan Ahmed', 'redwan-ahmed', '01327949940', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$sF.61D/QiovZAvnMbL.TjOMwtNXW37YY8m0ayrj1K9pf.rVmUPdxa', NULL, 'inactive', '2025-12-04 23:37:10', '2025-12-23 15:41:51'),
(307, 'Engineering Lab', 'engineering-lab', '01796825863', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3ggtbJlB.Yfi7zlnB0s.SeMzgUsWCEmKh7naYq1m1mxjgKcqtNRKi', NULL, 'active', '2025-12-04 23:37:39', '2025-12-04 23:37:39'),
(308, 'Jakir Hosain', 'jakir-hosain', '01403130512', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9Xzxg9R2w.8QqhW6qW7jsOmSnOuE6RjShTwwuiTEUJ.kpY80tD7Km', NULL, 'active', '2025-12-04 23:38:42', '2025-12-04 23:38:42'),
(309, 'Jononi Madical Hall', 'jononi-madical-hall-1283', '01915711407', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4qIeoQjn7J1mnO09jHPIB.Y92FPU/c7ya3v3Q.0lFeEtZ69049GVi', NULL, 'active', '2025-12-05 05:49:03', '2025-12-05 05:49:03'),
(310, 'kjhh', 'kjhh', '01264555858', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$H/wMwyE5Fxmo5VoqAqwtVua6tWZ0XStBgeoJ1C1M4U9fh/91FpIxW', NULL, 'active', '2025-12-05 12:51:10', '2025-12-05 12:51:10'),
(311, 'hafizur', 'hafizur', '01689102055', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yRyE1jfLGsdcImFOv8XyAukE1WkYw63rNNmDYay3dgk45CIpjH2.K', NULL, 'active', '2025-12-05 14:36:05', '2025-12-05 14:36:05'),
(312, 'md shohidul islam', 'md-shohidul-islam', '01938282000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$i2EL1gNBRbRaoMlmGbcPj.JM2OkTNz4OGmZsV011od8kcSwFkJIfO', NULL, 'active', '2025-12-05 15:29:51', '2025-12-05 15:29:51'),
(313, 'Manik Mahmud', 'manik-mahmud', '01407679839', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$v24KvIp8JwJrnrJ7LIPzFe6J/megBWm4UJ5TP8a0Inscdv40j4FYi', NULL, 'active', '2025-12-05 17:05:40', '2025-12-05 17:05:40'),
(314, 'Karul', 'Karul', '01975198438', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hC91fRSVm2tt/KQJu9UV3eW3qBVI5oIkyr59xJQy8lRIXbkGOQ0Aq', NULL, 'active', '2025-12-05 17:37:46', '2025-12-05 17:37:46'),
(315, 'Md Mirajul Islam', 'md-mirajul-islam-6538', '01996811842', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$FlPI1MrY/PCnlufNcz7E5.d9lgKOsn2hBWi9ScoIzFlPO2zZjYusO', NULL, 'active', '2025-12-05 20:28:07', '2025-12-05 20:28:07'),
(316, 'MD ALIASGUR', 'md-aliasgur', '01830107179', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zriHXNxRzL7L..yIubm.Q.tU0/shIcDQYxpwiZDyZpNBHIUjJ0eu2', NULL, 'active', '2025-12-06 07:09:42', '2025-12-06 07:09:42'),
(317, 'Elite Design', 'elite-design', '01614628005', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$amaWjU3oIEQqT/A9lMBIa.ehAOCuAXI/0d7tMPXtk9i64bNwJQkb.', NULL, 'active', '2025-12-06 07:29:04', '2025-12-06 07:29:04'),
(318, 'Hrittik', 'hrittik', '01816547642', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8UnbT9i/qiOwzRSLqCNZnu1o3Lj6NebYvtr1/TTOkIxtuMSZv5BGG', NULL, 'active', '2025-12-06 09:37:35', '2025-12-06 09:37:35'),
(319, 'MD RUBEL MIA', 'MD RUBEL MIA', '01728666634', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NK8ncqUPSbidXNAxCfodXuN2YPZt8NXJOK82LsIfcoXRuhxjN4ZvW', NULL, 'active', '2025-12-06 12:22:56', '2025-12-06 12:22:56'),
(320, 'MD SABBIR AHAMMED SHAON', 'MD SABBIR AHAMMED SHAON', '01400881103', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$o6s5DItkmtS.R4iFL/3Yf.6N7TsfoEfGjy/SyQmifACZadT/ylk8.', NULL, 'active', '2025-12-06 12:32:52', '2025-12-06 12:32:52'),
(321, 'Asif', 'asif', '01325896025', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$mx5mTo0t1QOsAKGWTbkuR.X71FoD3VnuR8U0a1ChZygyB7QC4.EH2', NULL, 'active', '2025-12-07 09:20:17', '2025-12-07 09:20:17'),
(322, 'Roni patwary', 'roni-patwary', '01854958294', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qyyecORi3Zf/U0cRUUaZIuSOTm1pzMsYOx7f3WBZCnYQtAG.Xt1sW', NULL, 'active', '2025-12-07 15:12:32', '2025-12-07 15:12:32'),
(323, 'Salman', 'salman', '01754203991', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$rkOHQjCG7BAZNPFgcJRA.uVHu8YCC8ubqdHC9MRmiBO4Dnb6nERF6', NULL, 'active', '2025-12-07 18:10:58', '2025-12-07 18:10:58'),
(324, 'Salman', 'salman-324', '01847412117', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Ce.jcdbcWuBaKmkzQn/ZEeXrA6h6bV.JwQRkV.U1a7e4/W7hEl2lW', NULL, 'active', '2025-12-07 18:21:26', '2025-12-07 18:21:26'),
(325, 'Salman', 'Salman', '01754203921', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ROw0lJ4vjS4LqnFgnmWJq.OtdKFVIZuOmdX3hAim15HPs/bT7UIEy', NULL, 'active', '2025-12-08 18:38:23', '2025-12-08 18:38:23'),
(326, 'SALMAN AHMED', 'SALMAN AHMED', '01741247114', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$WUC1.gJT6M3MmAr1yhHioO4NlHrN6cJ9T73Hn25XEikZLyiZFEl1u', NULL, 'active', '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(327, 'Seykot Mia', 'seykot-mia', '01729151544', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$W7JSoWNwb4DAYB3ywOae3eO093coP4L3qeBhDiTAR6LidRwuBzTl6', NULL, 'active', '2025-12-09 15:16:52', '2025-12-09 15:16:52'),
(328, 'st tv', 'st-tv', '01935090672', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fBzP.iXut5N6y32tD.5ueuvWrzh3TLElb8G4Swc2ej/YHOb3BeV9S', NULL, 'active', '2025-12-09 17:29:01', '2025-12-09 17:29:01'),
(329, 'Fake', 'fake', '01911111111', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$FwkoV4Q2Vw4FYj4utMYaP.IKHKknM3Hjpoen5TSjhLPssZSKBszhm', NULL, 'active', '2025-12-10 07:24:31', '2025-12-10 07:24:31'),
(330, 'sohag minarul', 'sohag-minarul', '01733199222', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$7iyk6mPQrvYQy7CF298x0ukjKysVxBtaq6gP.10P7Xgl/hjXxPJvS', NULL, 'active', '2025-12-10 07:25:06', '2025-12-10 07:25:06'),
(331, 'Shshshhd', 'shshshhd', '01843367191', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$D6KZgxe80tKG.fFMq4B65OzLiGmqH/MJpWMqGO66.aAdW.iJWsCYq', NULL, 'active', '2025-12-10 07:25:38', '2025-12-10 07:25:38'),
(332, 'Abir Group', 'abir-group', '01506760729', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$uFHkujlZOIyvvU.334g5NO2ocsyEBEyE049KSPWIgs/9MNL6ED.4C', NULL, 'active', '2025-12-10 08:08:46', '2025-12-10 08:08:46'),
(333, 'farabi', 'farabi-333', '01923323339', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Heb65HMXN1oTPbOD8XoJFO5P2z00BOpPqh1r2KVGaeSRUj486zlsu', NULL, 'active', '2025-12-10 08:11:47', '2025-12-10 08:11:47'),
(334, 'Abdulahad1', 'abdulahad1', '01883709761', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$m7IIBTpCsLd4MzJQb191du/4dij2Z9pkWyfG1XR5rIN9Twdlc2.2m', NULL, 'active', '2025-12-10 08:45:35', '2025-12-10 08:45:35'),
(335, 'MD Saiful Islam', 'md-saiful-islam', '01611369868', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$RBoTHrIIOMyteUO7yZoAG.pkOcYvqEWAdsDodJEUn0JWQtHisZKKW', NULL, 'active', '2025-12-10 10:06:47', '2025-12-10 10:06:47'),
(336, 'Hasan', 'hasan', '01700000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$I2qSFObPd1aR4LjSsvK8ye.o.JZobixtIDaRD5G4D6Hppx0ypRJxK', NULL, 'active', '2025-12-10 10:28:14', '2025-12-10 10:28:14'),
(337, 'Tff', 'tff', '01666666666', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5jOmpxN2ch9jk0cT/2v30.Mg1Y2LiG93PLzpyrVHoJ/pD4uVKxBcG', NULL, 'active', '2025-12-10 10:42:37', '2025-12-10 10:42:37'),
(338, 'Shuvo Pal', 'shuvo-pal', '01636235525', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NURDBzaydzYAiUDFD.J0P.4jbMqQKcj17Vp0aYx7DsBI1QraO1SN6', NULL, 'active', '2025-12-10 11:51:43', '2025-12-10 11:51:43'),
(339, 'Fff', 'fff', '01312031302', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$tPukPQ8DGiZvh6u8hTlqEecQ6esBBVLwnkafMwxXGTpTwnMsfZXie', NULL, 'active', '2025-12-10 12:11:20', '2025-12-10 12:11:20'),
(340, 'gdfhf', 'gdfhf', '01765489632', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cC4MnyIpG087ij2fd9iCXOMYm7Vxg3gX9OKaFjZj7CldJtscZYune', NULL, 'active', '2025-12-10 13:27:23', '2025-12-10 13:27:23'),
(341, 'জয়নাল দিনাজপুর', 'jznal-dinajpur', '01745598060', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Rw31k7mFUCoUkeRL9jNEFeu1t5dDyBdjrsjI/qEpoc/kQZMkBse2u', NULL, 'active', '2025-12-10 13:28:43', '2025-12-10 13:28:43'),
(342, 'athj h.', 'athj-h', '01731535353', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$r9RYdtSUsA3lMWstmk61g.iZ//sDO5q1bkUoWYTIi6BgCKDMYR4F2', NULL, 'active', '2025-12-10 13:51:53', '2025-12-10 13:51:53'),
(343, 'Mahedi', 'mahedi', '01827744456', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qax9O59nCr.rG6ztiQy4hOX/mDFhA.UZrX/n9TCs8jjQgW8/FtHDG', NULL, 'active', '2025-12-10 14:35:38', '2025-12-10 14:35:38'),
(344, 'Jjj', 'jjj', '01776689893', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$SJ2Xk.hEOr2PKX2EDEv3zuJOvhqdIP.e.wRDUGg0zsO8kQz84o/v6', NULL, 'active', '2025-12-10 17:33:36', '2025-12-10 17:33:36'),
(345, 'Test', 'test-345', '01682862358', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$79XGpsMq7WWQfjPCz9N8lOwowHtp68OwnBkYrbyVLkgbdQ4.0PSnm', NULL, 'active', '2025-12-10 17:41:34', '2025-12-10 17:41:34'),
(346, 'Raju', 'raju', '01797328888', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vyrzjuDspjkW.un0HniVtudK9Xc0UL8AccygPR93LaIbdmwvBnrF2', NULL, 'active', '2025-12-10 17:46:27', '2025-12-10 17:46:27'),
(347, 'Md. Yasin', 'Md. Yasin', '01683189893', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/yfAd3SaWmxr.1r2ppfSruGbFXbkvnXZZST8X1Jgo8sHbnCicz4N6', NULL, 'active', '2025-12-10 19:35:51', '2025-12-10 19:35:51'),
(348, 'Md', 'md', '01707796801', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3lDquYfuvv7S3rhpPrUheuSPQEygkDUreYE5I1Hu3kBSLZMivNPoW', NULL, 'active', '2025-12-10 23:29:31', '2025-12-10 23:29:31'),
(351, 'Sabbir Hasan', 'sabbir-hasan', '01777362239', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$B202XgDVSG3g0va2Cb2umOjFH6lsO8ECXbC8.xsCt5YWu/UKNAsS6', NULL, 'active', '2025-12-11 03:09:18', '2025-12-11 03:09:18'),
(352, 'Sabbir Hasan', 'sabbir-hasan-352', '01410362239', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$oXCsXGXNUCpmk9w..XrYSO9c7J2xz3Bp7vrr.gES6XV/hk2XZzgB.', NULL, 'active', '2025-12-11 03:50:13', '2025-12-11 03:50:13'),
(353, 'ABU RAIHAN', 'ABU RAIHAN', '01856272010', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GR9nx28Lbrwpn6s1sINgo.QhjKxKyHkbbUJ2zUjZPuLGz9D5aUYwG', NULL, 'active', '2025-12-11 04:15:08', '2025-12-11 04:15:08'),
(354, 'ABU RAIHAN', 'ABU RAIHAN', '01726848661', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.bH.QU7G98P7KAK3vzMGZuNt2XeI6qk0HOUTrG4Oxz4gtkCF2mXp.', NULL, 'active', '2025-12-11 04:15:54', '2025-12-11 04:15:54'),
(355, 'md hafiz', 'md hafiz', '017111555444', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$jPzLAYKmRJyDMCpCpANtCefjs0hnXU9UuYoKMmZHNEs4NkTO89TnK', NULL, 'active', '2025-12-11 07:55:48', '2025-12-11 07:55:48'),
(356, 'SH Masum', 'sh-masum', '01407892308', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Y5PgsU.i54pec26vMaYGbOTEhHN90zR8zy9XSEOjV89GUHqG.3oyq', NULL, 'active', '2025-12-11 11:48:19', '2025-12-11 11:48:19'),
(357, 'S', 's', '01853444416', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$IiH8qjP57Rb7ptuYRRRiDOgeypCwlDKOk2PR9vB5I8hQCkL59ZUHO', NULL, 'active', '2025-12-11 13:38:59', '2025-12-11 13:38:59'),
(358, 'tt', 'tt', '01748500728', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kcXjXg3rGVKIJ8d/m8AVY.HI6r7waTyc1IbOCTfTOeVYhJnlsYteK', NULL, 'active', '2025-12-11 18:34:56', '2025-12-11 18:34:56'),
(359, 'আআআআআআ', 'aaaaaa', '01624252801', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8fMMZLSs.P2VYYzimveic.uLBOac5yvZJzYTG2ID7w.ChZLbGc23m', NULL, 'active', '2025-12-11 18:44:12', '2025-12-11 18:44:12'),
(360, 'vbbzx', 'vbbzx', '01788323334', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$RXCwn.Y.XPrl6eep1mfGlOmsGv5Y/2kOWKDIB1EzcsI.RlqDRGSju', NULL, 'active', '2025-12-11 18:46:08', '2025-12-11 18:46:08'),
(361, 'erty', 'erty-361', '12345678900000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4fAbhsy.uSbUFJksXZlimeLH7ijkBmTjf4IwP7/RqTiDfcObLK5ei', NULL, 'active', '2025-12-11 18:47:59', '2025-12-11 18:47:59'),
(362, 'erty', 'erty-362', '1212121212', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/w1nKm1/LHNZGTghBvHHX.TiygcL2yzPnP.aV86R/aEzwCmTk8LGS', NULL, 'active', '2025-12-11 18:48:26', '2025-12-11 18:48:26'),
(363, 'Hello', 'hello', '01755566515', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$D3k8KiJiYMG7hKP5o/Ia3uKGWyst0VYbi8y1cvbCDGpqyEAxAlpy.', NULL, 'active', '2025-12-12 04:48:57', '2025-12-12 04:48:57'),
(364, 'Jononi Madical Hall', 'jononi-madical-hall', '01515636035', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Pri/2CMVKWyzxWln7wga9ODDan35SIvWvyjTIC/xLUrnU2vUrKY4a', NULL, 'active', '2025-12-12 09:33:05', '2025-12-12 09:33:05'),
(365, 'Jakir Hosain', 'jakir-hosain', '01712778345', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zRfK7FXvF1EYZAiF9mP1Lu/Aru.FEQanVbChYj/CN5f2cXpyV9Z9y', NULL, 'active', '2025-12-12 09:33:54', '2025-12-12 09:33:54'),
(366, 'Md Sabuj', 'md-sabuj', '01923443872', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HSrhu2R3rKSiTiFCZGewoOekG8NGm6FdHe46lVn7sbpPjKRALetMa', NULL, 'active', '2025-12-12 11:49:24', '2025-12-12 11:49:24'),
(367, 'Md Nahidur Rahman', 'md-nahidur-rahman', '01305069550', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$DaCq669u.442lmzYT5lYkeW.idWe3C6D1ftBYaJtg1boPZoPbme3O', NULL, 'active', '2025-12-15 03:30:47', '2025-12-15 03:30:47'),
(368, 'Mahedi Hasan', 'mahedi-hasan', '01711190908', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$z4cyi/U/lenxS0Y9H2AIfOZle9wsrAZMEvpjIpxrRxzs/RkZQ8m1e', NULL, 'active', '2025-12-16 06:57:00', '2025-12-16 06:57:00'),
(369, 'BIPLOB HOSSEN', 'biplob-hossen-369', '01711337542', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$nIhM/I9NQjjQ9nXECXL1nu9IZgepS.rYkWVjZDU1aTR6cdhARNwoe', NULL, 'active', '2025-12-16 07:24:33', '2025-12-16 07:24:33'),
(370, 'test', 'test', '01712853860', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$EOY2U5g6MVIW20P9b0XiK.doaqUavR5.IjOs2koQY5DPJq4PrMxyq', NULL, 'active', '2025-12-16 08:53:00', '2025-12-16 08:53:00'),
(371, 'test', 'test', '01751339255', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8Jwntb1KUx4vwWyVSeUNG.TwyMjSc8x8KobST/VOE3IzXp0E7CGta', NULL, 'active', '2025-12-16 08:53:53', '2025-12-16 08:53:53'),
(372, 'vzvz', 'vzvz', '01525252525', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$etvYoiEPu0DTmAe2VSpKWO4E4bhsr2XRGZri9uD5kgbnQMZ4O0Djq', NULL, 'active', '2025-12-16 19:18:18', '2025-12-16 19:18:18'),
(373, 'Sohan Ahmed', 'sohan-ahmed', '01717126955', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TYR73KU3Ip3nr2V58U3ms.FL9fXmnqq/rRPFrsxeXDbe2Y6TIK0Ku', NULL, 'active', '2025-12-17 05:05:18', '2025-12-17 05:05:18'),
(374, 'six Developer', 'six-developer', '01865659586', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$xQf.PqEyVKR00x97m91wKugkMp2ppq.2/fn.ib.vAucKINcIrXoq6', NULL, 'active', '2025-12-17 11:06:01', '2025-12-17 11:06:01'),
(375, 'six Developer', 'six-developer', '01837765957', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$LrbeMyMwFaX1.9mlGjksWOOdfROWrGyodpglOqe6mrWMdD5.nJCpW', NULL, 'active', '2025-12-17 13:20:37', '2025-12-17 13:20:37'),
(376, 'top me', 'top-me-9981', '01837765958', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$1YsRYQti.rjTymwvYXbTX.lJoCngp26sj634g6IlVWxvQHKJYCbXa', NULL, 'active', '2025-12-17 16:27:30', '2025-12-17 16:27:30'),
(377, 'Chief Executive Officer', 'chief-executive-officer', '01994444121', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$B0SWtLF2Fpt7H6KFvqXj/O64R7WJkVT7ARIf1BhB0BAjX6vPWS2.i', NULL, 'active', '2025-12-18 09:13:31', '2025-12-18 09:13:31'),
(378, 'HAVAÀ', 'havaa', '01940782677', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$dQ9KasfHP0bmqDQuY.ujZOMuCwedzAguftmV/alPCw.a4jNNYV1fO', NULL, 'active', '2025-12-18 10:02:21', '2025-12-18 10:02:21'),
(379, 'Jdj', 'Jdj', '01882565034', NULL, NULL, NULL, NULL, 1, '1', 'public/uploads/default/user.png', '$2y$10$6Kf.oOoXut3H2I6cSUw5qOS8gPcbVwf90SCzo05sS0qBOgVS.dAWi', NULL, 'active', '2025-12-18 17:36:41', '2026-01-20 12:22:21'),
(380, 'Akteruzzaman', 'akteruzzaman', '01302606371', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hV6A36Mdlttg4kD8WIbaJOqtgvhHSIjhoy/zYql7MUSZzPLExZKbm', NULL, 'active', '2025-12-18 18:02:12', '2025-12-18 18:02:12'),
(381, 'sfsa', 'sfsa', '01712876543', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$EfT5L4FNd3ACF6i.vqBi9.6enJPBSJmlCq7qBEnZV.272bOJLyaKO', NULL, 'active', '2025-12-18 19:53:15', '2025-12-18 19:53:15'),
(382, 'Ok', 'ok', '01548455862', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$QMKnuG0/a1dLPsTyes/USejZ5gonxHkJSTtPIUHJego/0HSyn4lH2', NULL, 'active', '2025-12-19 18:09:44', '2025-12-19 18:09:44'),
(383, 'এক', 'ek', '01716831091', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8jUVQzGgvQ7A.v.TepqzeO.KJkUGpuUrSvTuqpITZfqlhUUOreb5C', NULL, 'active', '2025-12-19 19:15:21', '2025-12-19 19:15:21'),
(384, 'Okm', 'okm', '01768909604', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$gF2UpJAq9LgwcX2oLKsfUewrZVZ.HgkClJTXkWJo9jwbJyyjlm1MC', NULL, 'active', '2025-12-19 19:16:53', '2025-12-19 19:16:53'),
(385, 'RA DEVELOPER', 'ra-developer', '01759183699', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qI/eoybWynis/xwAUm0YjePH1VzUArUnoErpNkkT6dmmHIFSoapV2', NULL, 'active', '2025-12-21 11:33:05', '2025-12-21 11:33:05'),
(386, 'Jack', 'Jack', '01965905440', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2k8pg4JrXfWti8kqDu771.JvTld0dZ//bwuCKMV/j4qO7GKxNwjfy', NULL, 'active', '2025-12-22 10:42:38', '2025-12-22 10:42:38'),
(387, 'Ocinto Hasan', 'Ocinto Hasan', '01315833288', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yG5o9C16bZ4Gzes1izgBDOjvNkwSPGKe5cYNNUyrqMABRjoo.UuC6', NULL, 'active', '2025-12-23 09:14:44', '2025-12-23 09:14:44'),
(388, 'Safwan Vai', 'safwan-vai', '01965283919', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kAXcmIDV9qIMa.N.tksXge9C0erSH.Zl6MpPZWp.wde8EbOOfVpnq', NULL, 'active', '2025-12-23 17:53:26', '2025-12-23 17:53:26'),
(389, 'Atiqur Rahman', 'atiqur-rahman', '01727367721', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4AmWMcCGUf5nfYXe1KgB6u9qG/QEXY60auSuGS4kj5Ob5aW.6NDUK', NULL, 'active', '2025-12-24 15:03:57', '2025-12-24 15:03:57'),
(390, 'Mst. Ayesha Khatun', 'mst-ayesha-khatun', '01744321899', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$gQ9RW9Tu.xDPXGSXDy.vbelQoPIWt0RxqiwCcxnek/pfr.1ffCj5m', NULL, 'active', '2025-12-24 16:40:55', '2025-12-24 16:40:55'),
(391, 'Mst. Ayesha Khatun', 'mst-ayesha-khatun', '01738987654', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$iCE1d0kW9xuZwWsJruCnwudwI11TUl1fVkJ42gRASzONZ.cH.FUJK', NULL, 'active', '2025-12-24 16:52:42', '2025-12-24 16:52:42'),
(392, 'Mst. Ayesha Khatun', 'mst-ayesha-khatun', '01486548876', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$eXJa6.Pbqzn4L/OtdXkaX.nVavmXkH4nYpY9mhN1GArJ6Ccx8.giG', NULL, 'active', '2025-12-24 17:15:00', '2025-12-24 17:15:00'),
(394, 'Declan Peck', 'Declan Peck', '71', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cYBkTlCMLcvasAuPCyRhOeEF6ZMgWDtThbtDN5e5f.ThfFMfIh7va', NULL, 'active', '2025-12-24 18:48:52', '2025-12-24 18:48:52'),
(395, 'Md Riazul Islam', 'Md Riazul Islam', '01722754100', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$v.meV6.gZQslPq7P8yjbYeUHtIqRHkCNBC3ryLhuyZjtGMvEfPfyC', NULL, 'active', '2025-12-24 18:49:58', '2025-12-24 18:49:58'),
(396, 'Atiqur Rahman', 'Atiqur Rahman', '01552344042', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$H/KpqYjgxCjGsrB.Ic70Z.AA7C8yDxF10wcNcNZPnQcl9N4BcS5vy', NULL, 'active', '2025-12-25 14:20:08', '2025-12-25 14:20:08'),
(397, 'Quinlan Carey', 'Quinlan Carey', '15', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$WlPw/XYESwmODYcsP8ErZ.dS3nKHOsgKu7UefeJwsnS7iJ57hljc6', NULL, 'active', '2025-12-25 17:09:49', '2025-12-25 17:09:49'),
(398, 'Ehsan Shop', 'ehsan-shop', '01625322952', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vZeygCVhFN4NTZLd1sJwherMsacZee2hbU/c4ToKkPk.jkN3jlUQW', NULL, 'active', '2025-12-26 11:20:56', '2025-12-26 11:20:56'),
(399, 'Sagar Karmakar', 'sagar-karmakar', '01790089914', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yDMrZxPTFXZCRl/clhMnJuuIlCbY.KqW7o7GJgYJv/MN4dwma.8ua', NULL, 'active', '2025-12-26 11:32:14', '2025-12-26 11:32:14'),
(400, 'Uwu', 'uwu', '01876263626', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$AlORPBXiST2Y5sX95TuqIuupMbkGiqqi1R0BqcF3Rs8GXm9r4A7ze', NULL, 'active', '2025-12-26 11:43:39', '2025-12-26 11:43:39'),
(401, 'sljhdblkahsb', 'sljhdblkahsb', '01924496733', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$I5c9e2G8dQYB3Fg07wWjx..TBNJdPVtIqWtOeLLD3WI9cDgJXilWG', NULL, 'active', '2025-12-26 16:21:50', '2025-12-26 16:21:50'),
(402, 'Ghj', 'ghj', '01701084800', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ufBgChE9rCUSwHYUp95FX.G1GzEupwP9jP3VMu2r/jeOV5O5cYFy.', NULL, 'active', '2025-12-26 16:22:51', '2025-12-26 16:22:51'),
(403, 'The', 'the-403', '01777777777', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$SM1ymlRGnME3Y4ZAp7F8BOoozUDYnomhierctp1GvT4NaBYXfgRdu', NULL, 'active', '2025-12-26 16:59:33', '2025-12-26 16:59:33'),
(404, 'iiiiiiiiiiiii', 'iiiiiiiiiiiii', '01923457890', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$JpFG.B1WDANCsYfn2JDXiOojhp1x88rf2jFbMgKkoaasvHf8j4PfW', NULL, 'active', '2025-12-26 17:14:07', '2025-12-26 17:14:07'),
(405, 'Obaidullah Asif', 'obaidullah-asif-405', '01615090576', NULL, NULL, NULL, NULL, 1, '1', 'public/uploads/default/user.png', '$2y$10$lCzEEb7nU4mcidL6FIViWuMzGv.Ds8gfUWlSZpaHYSLEtnhKQankW', NULL, 'active', '2025-12-26 18:55:03', '2025-12-26 18:56:26'),
(406, 'Munna', 'munna', '01764975379', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$z2DE5xIsl4cAUcxiR1m9p.uLohz/9LuetSUA2mE9O5TtIlntuAvqO', NULL, 'active', '2025-12-26 19:22:34', '2025-12-26 19:22:34'),
(407, 'M', 'm', '01234567890', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$QywPtLbX6OErmGvwvBGkd.AQQrZdsEXxFO02EJEvOtMssseRjJHXK', NULL, 'active', '2025-12-27 07:03:26', '2025-12-27 07:03:26'),
(408, 'H', 'h-408', '12345678901', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TBLuBMUzAytMLjWuz5TnKuC5BTsEJwuZIg6/qaj/Ip11sQayxi2dS', NULL, 'active', '2025-12-27 07:14:18', '2025-12-27 07:14:18'),
(409, 'SOYEB AHMED', 'soyeb-ahmed', '01716638449', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/ML4vn9fDBS1pR/DINQQO.0kMLKqRsmbtA/AGVwtnZBCXLrnIDYpO', NULL, 'active', '2025-12-27 08:46:50', '2025-12-27 08:46:50'),
(410, 'Soyeb', 'soyeb-410', '4949499', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$BRFfahfdxunSsHl8GMwDv.1v9q/RZaPYoGmISd1qiCu.YCP6xbxpS', NULL, 'active', '2025-12-27 08:48:04', '2025-12-27 08:48:04'),
(411, 'Soyeb', 'soyeb-411', '1', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2nHDTVose.Wid6ngh5HsLuPX2ot7eTfly4E7IuP5pgVstLuo71g1K', NULL, 'active', '2025-12-27 08:48:20', '2025-12-27 08:48:20'),
(412, 'MONIRA AKTER', 'monira-akter', '01829228373', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$JNlwOR8q0k3P86Zyu1ysbOgVPOXCMHD.vzzhbWjiwX3q0awUnjK0e', NULL, 'active', '2025-12-27 13:12:16', '2025-12-27 13:12:16'),
(413, 'Salauddin', 'salauddin-413', '01834128589', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$50x9mYtLwQxj4G/mYfJOF.lvb4DQoYMRHuKypFk3BSACpDJ/9jJCm', NULL, 'active', '2025-12-28 05:55:06', '2025-12-28 05:55:06'),
(414, 'Mohammad Rafiq', 'mohammad-rafiq', '01301142757', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fGbchNKHxWolHm42pJfyou2p5FxS0At6A8iId45gIL2LOoWUvtEMm', NULL, 'active', '2025-12-28 11:49:05', '2025-12-28 11:49:05'),
(415, '^&', '', '01784321234', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$EBL2g2zMOL1n4ij2hF..7OMKc28EaKZDrOkqfMfeONQ90clZb2vSW', NULL, 'active', '2025-12-30 18:14:27', '2025-12-30 18:14:27'),
(416, 'বল', 'bl', '01828736847', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$WYUiql0QXkelJgI2ArmpCeCDa/nT.Z2kEz2FR6NBgA4qpsbk6ExKq', NULL, 'active', '2025-12-31 10:54:47', '2025-12-31 10:54:47'),
(417, '55', '55', '01831753418', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8KBN8rV.DwNaqAua.dJtHuq2PKI7QOgJt7vlu6F0aauCPNEm2cwNa', NULL, 'active', '2026-01-01 18:50:57', '2026-01-01 18:50:57'),
(418, 'MD Nayeem Hossain', 'md-nayeem-hossain-418', '01876685711', NULL, NULL, NULL, NULL, 1, '4155', 'public/uploads/default/user.png', '$2y$10$dCkObHzNSey6QQR1B2vrn.njRwxc5e7rj90yWrn22JGGZRjOw9Po6', NULL, 'active', '2026-01-02 16:54:54', '2026-01-25 16:46:41'),
(420, 'Md Khaleda zia', 'md-khaleda-zia-9618', '01875952626', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$sCRhFMvKyWGnLgdwcttrb.aWKNDmTtWB22jjXjEpzJlRGegieiLhW', NULL, 'active', '2026-01-03 06:38:20', '2026-01-03 06:38:20'),
(421, 'Akib Sheikh', 'akib-sheikh', '01956416000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$eXAkz7i0rcrDUHQmzsj.i.iBLh75xlA5g.Ck.UR0L7evGFcYJcXnK', NULL, 'active', '2026-01-03 15:55:53', '2026-01-03 15:55:53'),
(422, 'MD EMRAN HOSSAIN', 'md-emran-hossain', '01400510003', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$wS9RcDagvEcjfnGrj/JULexDC6R26cJ0Y4H3cYIwF7WtF9GTOX3hK', NULL, 'active', '2026-01-04 12:37:47', '2026-01-04 12:37:47'),
(423, 'wali', 'wali-423', '01403948130', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$rAxdbRiee4v2p9CqTzEpBuXwWRCykeBegbJrAL0RE0aYy/E4GPX7S', NULL, 'active', '2026-01-04 13:08:12', '2026-01-04 13:08:12'),
(424, '‍্যফফথফথ', 'zffthfth', '01785454646', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$LfJIuC1NYBRRSimcG5rmSOHxqVWnpciRit5dYDiKJFiGn9cK2IQkC', NULL, 'active', '2026-01-04 16:11:12', '2026-01-04 16:11:12'),
(425, '‍্যফফথফথ', 'zffthfth-1308', '0178545464', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kkOj3tiaEPw.G7i1GkPWzuEAHmN9Jyp4Wu0m/3XalrclF/YKbbb6m', NULL, 'active', '2026-01-04 16:55:01', '2026-01-04 16:55:01'),
(426, 'Md Rabby', 'md-rabby', '01851523633', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$c7Jx5v5UkktBHAYnJO8HS.8QqObKhVTOX3k2IIxH9eDs1RAH1WMmu', NULL, 'active', '2026-01-04 22:21:30', '2026-01-04 22:21:30'),
(427, 'Trial', 'trial', '01717255063', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yFL485bjb7oGoeCdnNpyB.uxNqdHxSXIWYOi8zd1Kwy3c5uoMcRBS', NULL, 'active', '2026-01-05 07:28:45', '2026-01-05 07:28:45'),
(428, 'dfhdf', 'dfhdf', '01712030609', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$upTL6c8qb5iBMh51w3q70OhS45wH.m4m840nmXLa4DiXqKix5dwlu', NULL, 'active', '2026-01-05 12:25:02', '2026-01-05 12:25:02'),
(429, 'demo Login', 'demo-login-429', '01715963574', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5n0XVm5t1z8//VwQn6NcB.tBxWe8i16Q9cNDF1l.ML.9kUqPGbkBK', NULL, 'active', '2026-01-06 02:40:51', '2026-01-06 02:40:51'),
(430, 'Premium Course', 'premium-course', '01719624260', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zyJjL5iLKGrwxeMaWdq1JeMeNDTAil0tZrYpmt7JekZsMZYzQBsx2', NULL, 'active', '2026-01-06 10:53:32', '2026-01-06 10:53:32'),
(431, 'Bappy Hossein', 'bappy-hossein', '01880182900', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$I2lsCDeYnarDiH9SrkLI1O/lVB.Hli57ytA8aBOggZJj2Pd49Kcfm', NULL, 'active', '2026-01-07 10:06:24', '2026-01-07 10:06:24'),
(432, 'test', 'test-432', '01711223355', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$PyjM5PkkSPyklsElwUBKjOm7qkNiB/M6jO5qK08JWRmP54M1Vy.hK', NULL, 'active', '2026-01-10 13:12:04', '2026-01-10 13:12:04'),
(433, 'MONIRA AKTER', 'monira-akter', '01862553535', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fymZI6YkIlneVjjAlqclHeN1mCRifH3dCY.VDNvZjgapa1dAySGAi', NULL, 'active', '2026-01-10 19:43:07', '2026-01-10 19:43:07'),
(434, 'Alam Munshi', 'alam-munshi', '01784721645', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.bRMYszSJsT1/zHghXLX9.kgWaAS3L8OhsXI.KA/RjtA.II3xzWwO', NULL, 'active', '2026-01-11 14:19:52', '2026-01-11 14:19:52'),
(435, 'Alam Munshi', 'alam-munshi', '01783425679', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$WdIX8x5va4n0P/AaLUxlj.I8fZQc1p4dFWrNH5LYnnRyxBxP9VY3m', NULL, 'active', '2026-01-12 14:21:50', '2026-01-12 14:21:50'),
(436, 'Kawsar ahamed', 'kawsar-ahamed', '01613543031', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$f.G/8ieMI0msBIDVfso3fevpF2/vIcLZ0aU4dYjSYkV1c.lvYnlD2', NULL, 'active', '2026-01-13 05:39:44', '2026-01-13 05:39:44'),
(437, 'Tedt', 'tedt', '01683067989', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$d1RliYHW08BAG6I8dJ/gt.3mQwENWeLJ9PXekkVgyIurfhkKVqe7.', NULL, 'active', '2026-01-14 06:11:59', '2026-01-14 06:11:59'),
(438, 'test', 'test', '01611458555', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GqZa6ZoTh577OOIhazgbCeYNmKILyWfA9reVKss2km9kXI8F7A.Lu', NULL, 'active', '2026-01-14 13:43:50', '2026-01-14 13:43:50'),
(439, 'Md Ashikullah', 'md-ashikullah', '01866192222', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Dx27kCP7ppgZY5vcIG.LV.069HWc3wboKxFjJHBXts5k1bWoQKYWK', NULL, 'active', '2026-01-15 07:55:11', '2026-01-15 07:55:11'),
(440, 'bijoy raj', 'bijoy-raj', '01840816044', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$JzJGogLpeFh3pwITr2enhOdeGfldmA06J0zcTGA.SBjSdiCKzl1Q.', NULL, 'active', '2026-01-15 17:32:40', '2026-01-15 17:32:40'),
(441, 'Test', 'test', '01857568283', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$mT9KqAMqcLhNjeA.KJMWNe36MLp4HGlVSkFCTVnURFXJLeIRVGR9.', NULL, 'active', '2026-01-15 19:19:11', '2026-01-15 19:19:11'),
(442, 'MONIRA AKTER', 'monira-akter-1458', '00000000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$heR4N1EPqwJGr.LGEJ3/J.cn.MHtOuZDLTTTgpfwLnEcgAGd7yoZu', NULL, 'active', '2026-01-15 19:34:42', '2026-01-15 19:34:42'),
(443, 'সানি ভূঁইয়া', 'sani-vuunniza-443', '01949623631', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$orn94MsoKztOz8hoSsD3BOv8YwBbgen3OTpXUwd7DW.z0mRSuKnDy', NULL, 'active', '2026-01-16 09:49:50', '2026-01-16 09:49:50'),
(444, 'সানি ভূঁইয়া', 'sani-vuunniza-444', '01626342604', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Ap7FhhrNBeSyjEiMfvSwTeGp8GiAWcGtUbJIsYlDFlsLFIPH4uCsK', NULL, 'active', '2026-01-16 10:43:19', '2026-01-16 10:43:19'),
(445, 'Md. Noman', 'md-noman', '01626548039', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$olzkOE.7qUBc0DxGhG1XLuMRA8BXYNcwx3Rw.nmSQ.9JksVHUDYJ.', NULL, 'active', '2026-01-17 01:59:08', '2026-01-17 01:59:08'),
(446, 'rewr', 'rewr-446', '987987987', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$7XdFsw9y8E9bP3ORArOnIeGnUWPI0VTjYWirnjVBWYaGGxjPtc78m', NULL, 'active', '2026-01-17 07:07:13', '2026-01-17 07:07:13'),
(447, 'MD SHOJIEB HASAN', 'md-shojieb-hasan', '01906528776', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vBqujw02MuZvwsdH5UqJPeyx9HUqHPD..4wOcqeljhUoFefAUgdvC', NULL, 'active', '2026-01-17 10:32:23', '2026-01-17 10:32:23'),
(448, 'MD SHOJIEB HASAN', 'md-shojieb-hasan', '01771840026', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3/kNLR49nNI25o6TKOhi7uTJvCswUdBc1ZJ.6fV49WJezG.IOi3fC', NULL, 'active', '2026-01-17 11:15:24', '2026-01-17 11:15:24'),
(449, 'Ibrahim Fashion', 'ibrahim-fashion-449', '01540033544', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$H/Q3udXDkKAnhb4XqO0mmeDFQJFdiNaFr1Xz7NMGdKzvUFEIBfC4G', NULL, 'active', '2026-01-17 13:25:51', '2026-01-17 13:25:51'),
(450, 'Md Tajul Islam', 'md-tajul-islam', '01568619196', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$uGYMm9d5uQhRzjdbgfiD.O20x1KO9tpAquej7gJ0qQwNzfXCXllpC', NULL, 'active', '2026-01-18 10:44:39', '2026-01-18 10:44:39'),
(451, 'Yyyyuuu', 'yyyyuuu', '01622017884', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Em7mvtGOJBUpUG0.LtkzsOKeF3xlXumQtJTbZlOLh0f67wW52X98K', NULL, 'active', '2026-01-18 16:50:41', '2026-01-18 16:50:41'),
(452, 'Oliur Rahman', 'oliur-rahman', '01303325510', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$lbpJLGN0JH2aZ7vyF8orgug.7DJpnBjq6yx4wUr7FdlG8B0rZjk3q', NULL, 'active', '2026-01-19 04:51:51', '2026-01-19 04:51:51'),
(453, 'Md Ripon', 'md-ripon', '01601424748', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$N4Ls9Ej4M88FUv1IT05QKOG3/xYeUOHKMoKEjCmjK0Q1zW7oNzEVe', NULL, 'active', '2026-01-19 05:49:57', '2026-01-19 05:49:57'),
(454, 'AL MAMUN', 'al-mamun', '01740775584', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$AdB06/GdbxqroeCcefjTTu1PW0wz44vFtp4kyXU9KqgmxkTJ6InRO', NULL, 'active', '2026-01-19 08:29:46', '2026-01-19 08:29:46'),
(455, 'Testy', 'testy', '01976629061', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aYR9gQWmRAaeZ/6M3CsGVeEsAKknixsmhgcHgpaizpODXNsknCMXu', NULL, 'active', '2026-01-19 10:42:48', '2026-01-19 10:42:48'),
(456, 'Gjjbv', 'gjjbv', '01877137291', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$iaKECQb38D8aFBmuSTFkaO8pFTmIg1rj8dKz/S2T56GCeDaQTFNEy', NULL, 'active', '2026-01-19 10:44:03', '2026-01-19 10:44:03'),
(457, 'Md Abdul Rashid', 'md-abdul-rashid-457', '01875952727', 'okibkhan4205445@gmail.com', NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$DAiE/NjtoGTP3V62.THGBe/BpvMUhAIhPiSqxrPGq/xfC298isHlW', NULL, 'active', '2026-01-20 17:08:30', '2026-01-20 17:08:30'),
(458, 'Md Riazul Islam', 'md-riazul-islam-2176', '07757408797', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Ckxg2OVlsb5OWpwamHdnS.GOkvN.M/tKmXHWzpTfhR5x1a2A5pa/W', NULL, 'active', '2026-01-21 17:34:25', '2026-01-21 17:34:25'),
(459, 'MONIRA AKTER', 'MONIRA AKTER', '01918943429', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$k8wM5ud5Wk87BJt6qGUbsOniafkB4ODxzUjvg63KAdRKUlfaFRTh6', NULL, 'active', '2026-01-22 12:57:22', '2026-01-22 12:57:22'),
(460, 'MONIRA AKTER', 'monira-akter', '01825428578', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$YZw935tiUZORJLgyQG.kC.DoQSHsyvjB8fOw6gKamYZ/XdTVtEb4W', NULL, 'active', '2026-01-22 14:38:57', '2026-01-22 14:38:57'),
(461, 'MONIRA AKTER', 'monira-akter', '01837373637', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$OPVCeFWcpJpCfekSxnIVf.3SCn1OLeFNqE8Z4TSbnOk9JjTKq6FBW', NULL, 'active', '2026-01-22 18:26:46', '2026-01-22 18:26:46'),
(462, 'Md Nayeem Hossain', 'md-nayeem-hossain-462', '01631843149', 'info.elitedesign.com.bd@gmail.com', NULL, NULL, NULL, 1, '1', 'public/uploads/default/user.png', '$2y$10$fWiM.mFXxsgAh87XrqoereNopyUG15//Jvu9WaC9PWWTaar2BwDxO', NULL, 'active', '2026-01-24 05:28:31', '2026-01-25 17:12:27'),
(463, 'Md Kahled', 'md-kahled-463', '01875952627', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aorTZ/.ZFY9tb.4il99LJehKQIlkhzxMQNF/CpeXu9eZnkg4jiT16', NULL, 'active', '2026-01-26 13:09:21', '2026-01-26 13:09:21'),
(464, 'MD ABDULLAH AL MAMUN', 'md-abdullah-al-mamun', '01788145577', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$JFKJCPw8Ayr2Yjcv.NxHtuzF3WD3US9soBz3GDuxhwTD8QN9fFIiS', NULL, 'active', '2026-02-11 15:10:29', '2026-02-11 15:10:29'),
(465, 'Md kuddus ali', 'md-kuddus-ali-465', '01876685722', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$P74km502BdDqCbwweOSzZ.w7deAVd.f4eJnOFdJGigapIBQL9371e', NULL, 'active', '2026-02-12 07:20:03', '2026-02-12 07:20:03'),
(466, 'Faysal Mahamud', 'faysal-mahamud', '01811212974', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$CjfZHyTobkDdelYkIRYPHuARN6c/byoBxLWhtidWw93g5.7RJ8Pka', NULL, 'active', '2026-02-13 06:38:53', '2026-02-13 06:38:53'),
(467, 'Jarir Ahmed', 'jarir-ahmed', '01615406040', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NQFeVm7eG8WLgs7BZ5koi.svTnZ9QTogVALega7hHre42LV2PCm7W', NULL, 'active', '2026-02-13 09:28:02', '2026-02-13 09:28:02'),
(468, 'Ruhul Amln', 'ruhul-amln', '0183800616', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$llmFmsI34S0UJeS57uwCYezY7BfKsNR4j7JbTDrsEKE9sEPJrjxNC', NULL, 'active', '2026-02-14 02:59:23', '2026-02-14 02:59:23'),
(469, 'Roke Mia', 'roke-mia', '01623984965', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ynEFoKgqpPD3frEW5yvS2uZIOztyIVNeDJYgnKsNILPZZKYmKHCUi', NULL, 'active', '2026-02-14 06:46:11', '2026-02-14 06:46:11'),
(470, 'Md Shakib Khan', 'md-shakib-khan', '01588596378', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Gu.W.m7nsKGk3/9Agt177.3nX62pE4cx54JKMGbi4tQyNY1ckOBTa', NULL, 'active', '2026-02-15 05:23:59', '2026-02-15 05:23:59'),
(471, 'Bla Bla', 'bla-bla', '01888888888', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$iAHpsnyB0osR/DHSEJQTyOLG1oEIb01e0PARv5vcCU5Ssvn5s31Wa', NULL, 'active', '2026-02-16 07:47:21', '2026-02-16 07:47:21'),
(472, 'md saiful islam shawon', 'md-saiful-islam-shawon', '01636427720', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ZlbnsALww3kfsLjSwm9NruM3vLkRsrki/5.kalrwvvy3o60hWkcfS', NULL, 'active', '2026-02-16 18:21:29', '2026-02-16 18:21:29'),
(473, 'Abir Ahmed Anik', 'abir-ahmed-anik', '01934066781', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$RMd5XcNmKRxx.OVV.UVJ5.BQmgiDJTZlK5JqjMG4rkD/XrgdDHBtK', NULL, 'active', '2026-02-16 20:57:55', '2026-02-16 20:57:55'),
(474, 'Redwan Ahmed', 'redwan-ahmed-474', '01327949941', 'vorarkhonthotrw@gmail.com', NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$wmPgz1W9GWCyHiCilQUSpezxm51qoUjgGS11yHO4zk8HI2Rnr9fYG', NULL, 'active', '2026-02-17 11:23:36', '2026-02-17 11:23:36'),
(475, 'israfil hossen', 'israfil-hossen', '01775997119', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$LCVVx6aCUcJEiw5aBKy9Nu343x1gYYKSpLBaKcelrq8cXJtwNyRmG', NULL, 'active', '2026-02-18 08:09:32', '2026-02-18 08:09:32'),
(476, 'Nayeem 12', 'nayeem-12', '01907797146', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$7.0lteLCsRS2XaDCjK0a1.k4WrGYJIjDDQasajnaFfNP/YbIX7yg6', NULL, 'active', '2026-02-18 09:29:39', '2026-02-18 09:29:39'),
(477, 'রসসককক', 'rsskkk', '01738338857', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kuw.SIyY3h2fm1ykkHZPIetERwk7r.INViOaPRmDLugDfAGedZDOC', NULL, 'active', '2026-02-19 11:40:29', '2026-02-19 11:40:29'),
(478, 'SAIFUL ISLAM MOLLA', 'saiful-islam-molla', '01749121571', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$topgWypnNDB9Hd.QRxRZo.kqhEMLdjDkb5ntqdMZaV9g72ZINQhj2', NULL, 'active', '2026-02-19 12:47:43', '2026-02-19 12:47:43'),
(479, 'dfsasdf', 'dfsasdf', '01715550406', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aMhbTLGlNJayjjF.kQmPg.oXDpaady/CfdEw6CH.8CcxywALMwgRq', NULL, 'active', '2026-02-19 15:18:50', '2026-02-19 15:18:50'),
(480, 'md roton', 'md-roton', '01945236536', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/8Z3gtOdak6RvSOmDL2HD.U2s3ZPx7zJplKiFbk2RuR/ffwPBOh5O', NULL, 'active', '2026-02-21 05:08:50', '2026-02-21 05:08:50'),
(481, 'Mahmudul', 'mahmudul', '01912107221', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$KMJRms7x8WHwTEyLMcT7CekVf42drSUU3zNyb/CeH3ZZbWMcdQNRG', NULL, 'active', '2026-02-21 09:15:31', '2026-02-21 09:15:31'),
(482, 'dfbdfb', 'dfbdfb', '01711223366', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$QfOLPriV6oVwZa6e8V45U.09t8ZeggNfEc30pGFq/Ql4EDJa9Zzua', NULL, 'active', '2026-02-22 06:46:38', '2026-02-22 06:46:38'),
(483, 'Sjdbbh', 'sjdbbh', '01865262585', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fyviRHAcOndFdJVLQPFo9.qqW6bZMptNjCHRvDRQjMCdMO8WTHWcK', NULL, 'active', '2026-02-22 07:27:38', '2026-02-22 07:27:38'),
(484, 'মমমম', 'mmmm', '01580444012', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ekSX30QdYeeSjadedrRdAO5zFZwKnJqLS6XZ67xT35IAvwjYlFFBS', NULL, 'active', '2026-02-23 14:37:00', '2026-02-23 14:37:00'),
(485, 'khan', 'khan', '01811873244', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$1fYoHqlrIaXpqC9nMrYliOjcPa2RywfsnZMaHxJsd3jofZjY76S2S', NULL, 'active', '2026-02-23 16:56:25', '2026-02-23 16:56:25'),
(486, 'মোঃ রাকিবুল হাসান', 'mo-rakibul-hasan', '01795568841', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.YQxVJO3lcUOGv8SR4VTPeyLazzC/MTQI5jgQjvA8SoPa25sHvpbi', NULL, 'active', '2026-02-23 17:50:22', '2026-02-23 17:50:22'),
(487, 'Gddhhb', 'gddhhb', '01897971573', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aQcEcplaYxGo3mITuGcuROBwG.MayMqlaQLm7c6wVDKe/Z7dcDvJK', NULL, 'active', '2026-02-23 22:45:56', '2026-02-23 22:45:56'),
(488, 'Md Faruk', 'md-faruk', '01607773445', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$r5IwyL72q2igioyZ0iGZPu3WBtk6e1tVKxf.GrOySZyvz.n0s5SLi', NULL, 'active', '2026-02-24 07:52:00', '2026-02-24 07:52:00'),
(489, 'Md Faruk', 'md-faruk', '01607958348', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ZX8gsEMIggIYbZsi/9sdq.5sajetZNpyoDpJm2hCe2fY9kAZHufbe', NULL, 'active', '2026-02-24 07:53:40', '2026-02-24 07:53:40'),
(490, 'Rashedul Hassan', 'rashedul-hassan', '07183354232', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$CVN9ZKeI0rACPzrCgjwAnelhIdRdE2NCGhZuoO6b3YSdW1IpWsIKi', NULL, 'active', '2026-02-26 15:39:35', '2026-02-26 15:39:35'),
(491, 'Ali Akbar', 'ali-akbar', '01837023812', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zUkFYkF4QSJs6NZop7lm2Ogr042HssMt7i4U1jaf/pbuW1dslNmxO', NULL, 'active', '2026-02-27 17:56:23', '2026-02-27 17:56:23'),
(492, 'জ্ঞজ্ঞগ', 'jngjngg', '01645544444', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$MqbB4xkQkMdcJUuuWSt1tuyVXq/tyCbyYi0oZOEdCtog5KQIU9/iC', NULL, 'active', '2026-03-01 00:02:56', '2026-03-01 00:02:56'),
(493, 'ewqrewqr', 'ewqrewqr', '01000000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GiUujtKO3581IW.ie3118ehO0lwLzDsTKNPZSsV17vlzn62Ri5M3a', NULL, 'active', '2026-03-02 08:58:18', '2026-03-02 08:58:18'),
(494, 'Md Tajmul Haque', 'md-tajmul-haque', '01614022171', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ONx40patZGUX13FdyTUbmu94qHB6RsIIwPg94qFS9tCl83abYW8kS', NULL, 'active', '2026-03-02 17:29:33', '2026-03-02 17:29:33');
INSERT INTO `customers` (`id`, `name`, `slug`, `phone`, `email`, `district`, `area`, `address`, `verify`, `forgot`, `image`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(495, 'Rasel Hossain', 'rasel-hossain-495', '01344977993', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Awuv/O6uAD3.kiOWn3IDpONruN8M3ZSAVNP/VCgn1l.mh/eb3S01G', NULL, 'active', '2026-03-06 13:04:22', '2026-03-06 13:04:22'),
(496, 'Party Wear Long Gown', 'party-wear-long-gown', '01301549757', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$SGLoGgVVxCjd3olMKPW/2.lW4l113h6W4tLbe6KbVOmcOfixy6EDm', NULL, 'active', '2026-03-07 09:08:44', '2026-03-07 09:08:44'),
(497, 'test', 'test', '01788877489', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$FSot1DaH52uCyRCFHLNBQ.w5dSUjWC3fM2Bt0sPT2qzdA14ZcRGvi', NULL, 'active', '2026-03-07 11:26:34', '2026-03-07 11:26:34'),
(498, 'Ummah Islamic Institute', 'ummah-islamic-institute-498', '01782295951', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$IQxTbMh/mRkXOWqjgAskVexxwTMuj2O1yu3MIUoF/vWMMAkf1EEY6', NULL, 'active', '2026-03-07 13:52:08', '2026-03-07 13:52:08'),
(499, 'Md Kader Ali', 'md-kader-ali-499', '01305069555', 'vorarkhontho5454@gmail.com', NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3QHYNuhV0IjJQJeWMooO9.BkVdw/0sojIAAIdxMl5BIzbaMRkG2o.', NULL, 'active', '2026-03-10 11:17:21', '2026-03-10 11:17:21'),
(500, 'Md Khalid hasan', 'md-khalid-hasan-8393', '01775457009', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ELCjPFaQ9yFQ7RXVeaXGm.qEpFutJ.prAaJFl.ccen2wnOZPqIOGW', NULL, 'active', '2026-03-20 14:06:01', '2026-03-20 14:06:01'),
(501, 'Jakir Hosain', 'jakir-hosain-501', '01858989377', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Qx5qmkFK4Hd0ihZqXg.eb.pa0LeQurloAfTcQoGVN4EMXufSC26xa', NULL, 'active', '2026-03-22 05:55:27', '2026-03-22 05:55:27'),
(502, 'lund', 'lund', '01300132051', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Jk3695bySf8NO.lmcc70i.pZrQ/Cg3aixOgyfiZlv5Y4bQ32dTRy.', NULL, 'active', '2026-04-11 07:07:04', '2026-04-11 07:07:04'),
(503, 'test', 'test', '01737053333', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qxT6B2neNnPFQ5XRiVzPXeRx8J.DXOBBNBPKoE1.TqTrpd.OXMHK6', NULL, 'active', '2026-04-20 19:08:52', '2026-04-20 19:08:52'),
(504, 'Shimanto Arif', 'shimanto-arif', '01715528252', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4LwhqWOTjFTUXfgpvAv3DOa3EZFjx.s.JbA31LichonbDXapkThx2', NULL, 'active', '2026-04-24 14:50:36', '2026-04-24 14:50:36'),
(505, 'Khandoker Golam Masud Rana', 'khandoker-golam-masud-rana', '01713113743', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$dZpRETE.kytfZYaRnrLIEe9shPOewVb8vYrBKyktG.YjIiALDo82.', NULL, 'active', '2026-05-27 19:24:24', '2026-05-27 19:24:24'),
(506, 'Diganta IT', 'diganta-it', '01735156614', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$KU/TYbMtQK9ZUSElTSHo/utByBzkH0ZVApaqVRAvglDd0Vi9Zcd/G', NULL, 'active', '2026-06-16 01:23:09', '2026-06-16 01:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `digital_downloads`
--

CREATE TABLE `digital_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(100) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `remaining_downloads` int(11) DEFAULT 0,
  `expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `digital_downloads`
--

INSERT INTO `digital_downloads` (`id`, `order_id`, `product_id`, `customer_id`, `token`, `file_path`, `remaining_downloads`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 644, 205, 303, '6bcf4ffd-22c8-41b9-a395-dbfbe6b99e2c', 'digital-products/87oJu2Ff8ojMifXlK9TnQ9st93ZmAbYdUX4tFRqz.zip', 5, '2025-12-10 16:53:09', '2025-12-03 10:53:09', '2025-12-03 10:53:09'),
(2, 645, 205, 303, 'a55f77c2-e8e6-478d-94d7-94d2afe0812c', 'digital-products/87oJu2Ff8ojMifXlK9TnQ9st93ZmAbYdUX4tFRqz.zip', 2, '2025-12-10 17:52:54', '2025-12-03 11:52:54', '2025-12-03 12:21:02'),
(3, 646, 205, 286, '312969b6-0493-4fce-b3de-f6a1b0824140', 'digital-products/87oJu2Ff8ojMifXlK9TnQ9st93ZmAbYdUX4tFRqz.zip', 2, '2025-12-10 18:23:28', '2025-12-03 12:23:28', '2025-12-03 12:37:21'),
(4, 691, 209, 286, '941dcef8-b969-4ac0-a322-d5951448e525', 'digital-products/QZR7zekLVHK53hIZftEU7vF8jjvsjbCof2wZGI6Q.zip', 4, '2025-12-17 10:17:33', '2025-12-10 04:17:33', '2025-12-10 04:17:35'),
(5, 702, 208, 337, '548a96cd-e548-470d-b5fa-562dd2e3c4e3', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 3, '2025-12-17 16:43:28', '2025-12-10 10:43:28', '2025-12-10 10:43:46'),
(6, 710, 208, 345, 'd13797b6-d560-48e1-aa00-fa27cd9cdb17', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 4, '2025-12-17 23:42:50', '2025-12-10 17:42:50', '2025-12-10 17:43:01'),
(7, 710, 209, 345, '14437734-2be7-4ca2-b955-42fd0b274c59', 'digital-products/QZR7zekLVHK53hIZftEU7vF8jjvsjbCof2wZGI6Q.zip', 5, '2025-12-17 23:42:50', '2025-12-10 17:42:50', '2025-12-10 17:42:50'),
(8, 711, 208, 294, 'e4075b08-255d-40a9-b82a-f9ff71e97240', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 5, '2025-12-17 23:45:14', '2025-12-10 17:45:14', '2025-12-10 17:45:14'),
(9, 724, 208, 359, '3b4f312e-aed4-4a0b-91c9-3d170b43dace', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 4, '2025-12-19 00:44:57', '2025-12-11 18:44:57', '2025-12-11 18:45:04'),
(10, 732, 209, 368, '477a58fc-5e3f-46ef-bc3e-f2ad90b7b1ab', 'digital-products/QZR7zekLVHK53hIZftEU7vF8jjvsjbCof2wZGI6Q.zip', 5, '2025-12-23 12:57:24', '2025-12-16 06:57:24', '2025-12-16 06:57:24'),
(11, 735, 208, 370, '23bd777a-6b60-46ee-85eb-32d1f5c84fe8', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 5, '2025-12-23 14:53:16', '2025-12-16 08:53:16', '2025-12-16 08:53:16'),
(12, 821, 209, 367, '2e290eef-0a9f-4792-bba6-45c220ca2e7c', 'digital-products/0P7bq4FAE31BpJ8mlFHAJBSPvuYQh7ZXZzqjVnSj.zip', 4, '2026-01-08 22:09:33', '2026-01-01 16:09:33', '2026-01-01 16:09:40'),
(13, 824, 209, 308, '86d17c2f-63c4-49d5-892f-6911df1c99a4', 'digital-products/0P7bq4FAE31BpJ8mlFHAJBSPvuYQh7ZXZzqjVnSj.zip', 4, '2026-01-08 22:31:12', '2026-01-01 16:31:12', '2026-01-01 16:36:27'),
(14, 828, 209, 367, 'e1d4798c-4306-4c91-ab2d-61ad85f85e8e', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-08 22:41:35', '2026-01-01 16:41:35', '2026-01-01 16:41:38'),
(15, 831, 209, 286, '3a46b9cb-f1f5-4a2f-b74a-86acb5df6c9e', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-08 23:02:17', '2026-01-01 17:02:17', '2026-01-01 17:04:53'),
(16, 836, 209, 286, 'H6Y6y8PHsPTgfgkThgYnNegCf04CqysATDwPOctbskZMBhNwYhPrevkXR4I3gbmx', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9998, NULL, '2026-01-01 18:52:47', '2026-01-01 18:53:00'),
(17, 839, 209, 286, '82140d0e-6d25-4a11-8ec2-48e5057742b3', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 5, '2026-01-09 01:03:31', '2026-01-01 19:03:31', '2026-01-01 19:03:31'),
(18, 844, 209, 286, '2e776b74-2a22-4f6f-b5a3-cd6ff5559406', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-09 01:28:06', '2026-01-01 19:28:06', '2026-01-01 19:28:18'),
(19, 848, 209, 286, '8e13750b-4337-4ff0-a2b5-0df906bb76c3', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-09 10:19:13', '2026-01-02 04:19:13', '2026-01-02 04:19:17'),
(20, 851, 209, 286, 'KhrtStkvrEtQjcoEsAZeuLxgNVBK3q2eOaJvr8oQWsidSYI4Vo1Aix0gJSNW68wz', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9998, NULL, '2026-01-02 04:43:05', '2026-01-02 04:43:10'),
(21, 852, 208, 286, 'CuAHAzKg50wF8voF9b6U6XlmYGPQ0QVV8WwbXkXrb1Eyxx5i5todpM6KEl8yIqQq', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9998, NULL, '2026-01-02 05:47:05', '2026-01-02 05:47:11'),
(22, 853, 209, 286, '89cc3c2a-c0f3-4d93-8bb0-33e0739f246b', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 5, '2026-01-09 11:48:45', '2026-01-02 05:48:45', '2026-01-02 05:48:45'),
(23, 860, 209, 286, 'IMvQZ6hoxHg4QT0Cp6Jdgl9Ck2Np3uubOrpgrkEmJa0PFOg2XneYiQF00SlfBLgc', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9999, NULL, '2026-01-02 06:23:14', '2026-01-02 06:23:14'),
(24, 862, 208, 286, 'kTFIvZBjBsaqwfWeuGeKH9j1T4fApRcSurGz1oDsUZqOTF7i8B73ktsopvyZENoT', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-02 06:30:09', '2026-01-02 06:30:09'),
(25, 863, 209, 286, '5ae70656-d2d9-4273-8dbd-784d218fc4f9', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 5, '2026-01-09 12:35:44', '2026-01-02 06:35:44', '2026-01-02 06:35:44'),
(26, 864, 209, 286, 'joK6p1C7SDcRfM7DaXbQHYWOoXl6L4gTIerwPDOjOTqHO4h4vhgNr0kxF6gCnhGD', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9999, NULL, '2026-01-02 06:36:50', '2026-01-02 06:36:50'),
(27, 865, 208, 286, 'FLgNhNL7E4onoSaBgNOUM1mHfCpOBnbIAKBuP9gQe5KdXoGQJW4xynU3J3hC1nAg', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-02 06:47:51', '2026-01-02 06:47:51'),
(28, 867, 209, 286, '237Vv7XkzvemJfuc1AA3oLhq8Xo8okFEnfnLVQzV7nblDp2QavwizySze81YHloI', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9998, NULL, '2026-01-02 06:49:47', '2026-01-02 06:49:51'),
(29, 868, 208, 286, 'j9I9gsYn5XkwG9Cj8zMsKzw6M6JNXyF1yidmTUqKV8RtJ2IRlmHO60bMr8pVNTdk', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-02 06:50:33', '2026-01-02 06:50:33'),
(30, 870, 209, 286, 'f41241dc-4eb3-4ff2-bd1e-a725c21dbd3e', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-09 12:54:36', '2026-01-02 06:54:36', '2026-01-02 06:54:44'),
(31, 877, 208, 286, 'NZvWLDDeLruZDPgif1Bd0OuPl2PqkH888TpAVFoAr9pQr8IdrNpNGjHRcSqC3RE0', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-02 07:10:01', '2026-01-02 07:10:01'),
(32, 878, 209, 286, 'a8433085-0e65-4ddd-a83a-c909c675491d', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 5, '2026-01-09 13:11:11', '2026-01-02 07:11:11', '2026-01-02 07:11:11'),
(33, 887, 208, 286, 'CKlP7jEfM3cWOpMqAZqeXsRXDG91iaiYzIYWN67CbiZMiERKLokKmnd7lkaD1xd9', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9998, NULL, '2026-01-02 07:36:45', '2026-01-02 07:36:51'),
(34, 890, 209, 286, '90848097-097b-43c5-9c6b-6f575e233335', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 5, '2026-01-09 13:39:45', '2026-01-02 07:39:45', '2026-01-02 07:39:45'),
(35, 900, 209, 286, 'afb5c264-9eec-40b3-bd48-237fceef23a0', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-09 14:06:23', '2026-01-02 08:06:23', '2026-01-02 08:06:27'),
(36, 901, 208, 286, 'QmVbS9RhQV5y37HEvW2ZkjRSt6eHtQhtLAaHd3ijGKz7hitKM0n7NWPNDzOZhyCh', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-02 08:07:54', '2026-01-02 08:07:54'),
(37, 909, 209, 286, 'd5eb72b0-e59f-43d3-aca6-a8d849b14565', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 3, '2026-01-09 14:37:30', '2026-01-02 08:37:30', '2026-01-02 08:38:55'),
(38, 913, 209, 286, 'zXIjeSmgbXD5GLcZq0i8BFvQ9LlRqM2uv2Gr2orv7cVMb2bM6FNRt4mgNhiHCd3Z', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9999, NULL, '2026-01-02 08:42:57', '2026-01-02 08:42:57'),
(39, 914, 209, 286, '3b4607af-73a1-4441-8a73-296bef00a2a1', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-09 14:44:19', '2026-01-02 08:44:19', '2026-01-02 09:47:57'),
(40, 925, 209, 286, '1c66d152-5abc-4114-8987-53f2ebf204e6', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-09 17:51:53', '2026-01-02 11:51:53', '2026-01-02 11:52:05'),
(41, 926, 208, 286, 'TFPLFHpqQuQSBB9Dfoi34ASgOgssAfwt94ypBeYZENcrYjVhvDL7FLpuH0taAqYN', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-02 11:52:47', '2026-01-02 11:52:47'),
(42, 948, 209, 286, '9b749b14-b5ee-45e0-aac5-846747d3ef4c', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-01-10 13:10:51', '2026-01-03 07:10:51', '2026-01-03 07:10:57'),
(43, 949, 208, 286, 'cpukagB3I0cvd3tLAKTpPAVncJuQW6hctfJO0fIJAqPENKQzm7uho0RteeC65Wcr', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 9999, NULL, '2026-01-03 07:11:33', '2026-01-03 07:11:33'),
(44, 958, 208, 308, '24f1edcf-f7f4-4d7d-8c6b-a22c2aa66a67', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 4, '2026-01-12 00:54:13', '2026-01-04 18:54:13', '2026-01-04 18:54:42'),
(45, 1008, 219, 307, 'AGLh9n2CPhlp678Tm97sux01C1yLpn2z7Z2PRT0pD6kzkn1p3n1iJiDpJczCgUnF', 'default_file', 9999, NULL, '2026-01-20 15:02:05', '2026-01-20 15:02:05'),
(46, 1014, 209, 458, 'ODOLfCkbdwkuACmPII4NlHUOHq11JWbSQlYiNqT3TyfACVLs7uWjXoD7vxum0oQh', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 9999, NULL, '2026-01-22 04:58:27', '2026-01-22 04:58:27'),
(47, 1022, 221, 286, 'cktGJdUx8p90izhL51McGq2LpSerQqOBF05p0JOqG65fntofVbxPJ0BJQimagj9F', 'default_file', 9998, NULL, '2026-01-23 18:55:56', '2026-01-28 06:48:01'),
(48, 1025, 198, 292, '30MfPC2l2t7Qf1Dw5XARmQT9TD9ZywqUAkid2OqMcmei4cerE3FdDo0Rp1580oiP', 'default_file', 9999, NULL, '2026-01-24 13:25:19', '2026-01-24 13:25:19'),
(49, 1042, 209, 309, '89d30ff0-9fac-4518-89ff-aac4256dc823', 'digital-products/Fzd74DfPjqgQcDzn78JMoXIEsy9D9FZ3RfdAglPz.zip', 4, '2026-02-01 21:00:10', '2026-01-25 15:00:10', '2026-01-25 15:00:13'),
(50, 1069, 208, 286, '74fc6760-f4d2-44d9-8f56-a7e215afe53c', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 4, '2026-02-04 12:57:38', '2026-01-28 06:57:38', '2026-01-28 06:57:47'),
(51, 1129, 208, 367, '1915d3cb-e781-4224-8d21-1a4299a7251a', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 4, '2026-03-03 12:03:17', '2026-02-24 06:03:17', '2026-02-24 06:03:22'),
(52, 1145, 227, 303, '5TN0K36le7qGV2yLycLw9iOQQRXhrRD1LU9bECzHGQMDhkiO5DS385JtyZtPgAqg', 'default_file', 9999, NULL, '2026-03-10 12:30:30', '2026-03-10 12:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `shippingfee` varchar(255) NOT NULL,
  `partialpayment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1, 112, 'Pilkhana', 'Dhaka', '80', '200', '2021-10-23 19:02:41', '2022-12-10 04:25:24'),
(2, 1684, 'Katasur', 'Dhaka', '80', '200', '2021-10-24 19:02:41', '2022-12-10 04:25:24'),
(3, 6, 'Shyamoli', 'Dhaka', '80', '200', '2021-10-25 19:02:40', '2022-12-10 04:25:24'),
(4, 1685, 'Dhanmondi Staff Quarter', 'Dhaka', '80', '200', '2021-10-26 19:02:40', '2022-12-10 04:25:24'),
(5, 418, 'Dhaka Uddyan', 'Dhaka', '80', '200', '2021-10-27 19:02:40', '2022-12-10 04:25:24'),
(6, 7, 'Adabor', 'Dhaka', '80', '200', '2021-10-28 19:02:40', '2022-12-10 04:25:24'),
(7, 114, 'New Market', 'Dhaka', '80', '200', '2021-10-29 19:02:40', '2022-12-10 04:25:24'),
(8, 426, 'Shekhertek', 'Dhaka', '80', '200', '2021-10-30 19:02:40', '2022-12-10 04:25:24'),
(9, 155, 'Old Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(10, 1660, 'Dhanmondi - Rd 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(11, 326, 'Science Lab', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(12, 1661, 'Dhanmondi - Rd 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(13, 11, 'Lalmatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(14, 327, 'Sobhanbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(15, 1690, 'Arshinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(16, 145, 'Dhaka University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(17, 1691, 'Washpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(18, 1692, 'Garden City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(19, 1693, 'Boddhovumi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(20, 148, 'Kazi Nazrul Islam Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(21, 1187, 'Kaderabad Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(22, 149, 'Kawran Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(23, 1662, 'Dhanmondi - Rd 4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(24, 115, 'Azimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(25, 162, 'Shahbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(26, 306, 'Monipuripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(27, 309, 'Bosila', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(28, 1663, 'Dhanmondi - Rd 4A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(29, 19, 'Sher-E-Bangla Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(30, 116, 'Nilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(31, 163, 'Katabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(32, 1664, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(33, 164, 'Hatirpool', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(34, 1210, 'Eastern Housing (Adabor)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(35, 1665, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(36, 1211, 'Teskunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(37, 1212, 'DHAKA TENARI MORE', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(38, 1666, 'Dhanmondi - Rd 3A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(39, 1213, 'Shahidnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(40, 95, 'Bijoy Shoroni', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(41, 1667, 'Dhanmondi - Rd 6A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(42, 1214, 'Jhigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(43, 185, 'Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(44, 96, 'Farmgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(45, 1668, 'Dhanmondi - Rd 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(46, 1215, 'Polashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(47, 186, 'Kathalbagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2023-01-07 01:52:02'),
(48, 97, 'Indira Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(49, 1669, 'Dhanmondi - Rd 8A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(50, 1216, 'Satmoshjid Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(51, 1670, 'Dhanmondi - Rd 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(52, 1217, 'Shukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(53, 188, 'Central Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(54, 99, 'Tejkunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(55, 1671, 'Dhanmondi - Rd 9A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(56, 1218, 'BNP Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(57, 100, 'Razabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(58, 1672, 'Dhanmondi - Rd 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(59, 1673, 'Dhanmondi - Rd 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(60, 1139, 'Dhaka uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(61, 101, 'Sukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(62, 1674, 'Dhanmondi - Rd 12A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(63, 1140, 'Nobodoy', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(64, 102, 'Panthopath', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(65, 103, 'Kalabagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(66, 1675, 'Dhanmondi - Rd 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(67, 1141, 'Chad Uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(68, 104, 'Green Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(69, 1676, 'Dhanmondi - Rd 15 A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(70, 1142, 'Mohammadia Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(71, 105, 'Manik Mia Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(72, 1677, 'Dhanmondi - Rd 27', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(73, 1143, 'Ring Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(74, 106, 'Asad Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(75, 1678, 'Dhanmondi - Rd 28', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(76, 1144, 'Tajmahal Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(77, 107, 'West Dhanmondi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(78, 1679, 'Dhanmondi - Rd 29', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(79, 1145, 'Nurjahan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(80, 133, 'Dhakeshwari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(81, 108, 'Shankar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(82, 1146, 'Rajia Sultana Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(83, 1, 'Mohammadpur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(84, 273, 'Zigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(85, 109, 'Rayer Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(86, 1681, 'Zafrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(87, 183, 'Paribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(88, 2, 'Dhanmondi - Rd 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(89, 110, 'Tallabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(90, 1682, 'Sadek Khan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(91, 111, 'Hazaribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(92, 1683, 'Sher e Bangla Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(93, 67, 'Nikunja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(94, 1230, 'Mahanogor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(95, 1231, 'Nimtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(96, 1232, 'Nurerchala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(97, 1571, 'Jahangir Gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(98, 82, 'South Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(99, 325, 'Joar Shahara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(100, 1572, 'Nijhum gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(101, 83, 'Merul Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(102, 1573, 'BAF Bashar (Dhaka cantonment)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(103, 1199, 'Apollo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(104, 84, 'Niketon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(105, 72, 'Bashundhara R/A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(106, 1574, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(107, 1200, 'Nurer Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(108, 85, 'Banani', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(109, 86, 'Banani DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(110, 73, 'Vatara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(111, 1575, 'MES colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(112, 1201, 'Bawaila Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(113, 87, 'Mohakhali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(114, 74, 'Nadda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(115, 1202, 'Satarkul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(116, 1185, 'Kunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(117, 88, 'Mohakhali DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(118, 1233, 'Pastola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(119, 14, 'Gudaraghat (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(120, 75, 'Baridhara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(121, 1206, 'Khilbar Tek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(122, 1186, 'Babli Masjid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(123, 1234, 'Poschim Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(124, 76, 'Baridhara DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(125, 1235, 'Purbo Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(126, 77, 'Notun Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(127, 91, 'Aziz Palli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(128, 1236, 'Sat-tola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(129, 78, 'Adarsha Nagar (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(130, 1317, 'Namapara-Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(131, 92, 'Bashtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(132, 1237, 'Shaheenbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(133, 79, 'Shahjadpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(134, 93, 'South Baridhara DIT Project', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(135, 1238, 'Subastu', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(136, 21, 'Cantonment Post Office', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(137, 80, 'Uttor Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(138, 94, 'Aftabnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(139, 1239, 'ICDDRB', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(140, 81, 'Middle Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(141, 39, 'Namapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(142, 1240, 'Satrasta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(143, 1348, 'Niketon Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(144, 323, 'Nakhalpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(145, 1268, 'Rosulbagh(Mohakhali)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(146, 1241, 'Tekpara Adorsonagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(147, 1242, 'Uttar Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(148, 1323, 'Aftab Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(149, 98, 'Tejgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(150, 1243, 'Wireless', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(151, 1244, 'Solmaid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(152, 27, 'M.E.S', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(153, 44, 'Kurmitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(154, 1245, '300 Feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(155, 45, 'Shewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(156, 1219, 'Kalachandpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(157, 174, 'Khilbari Tek (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(158, 1220, 'Jogonnathpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(159, 1221, 'Kuratuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(160, 1329, 'TV gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(161, 1222, 'Alatunnessa School Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(162, 1224, 'Bou Bazar - Mohakhali, Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(163, 1733, 'Nikunja 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(164, 51, 'Kuril', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(165, 1225, 'Chairman Goli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(166, 1226, 'Confidence Tower, Jhilpar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(167, 1227, 'Fuji Trade Center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(168, 3, 'Gulshan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(169, 1228, 'Khil Barirtek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(170, 1229, 'Korail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(171, 66, 'Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(172, 449, 'Mirpur Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(173, 1332, 'Gudaraghat-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(174, 277, 'Kalshi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(175, 1333, 'Namapara-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(176, 1334, 'Oxygen', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(177, 1600, 'Mirpur 60 feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(178, 8, 'Darussalam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(179, 9, 'Gabtoli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(180, 1335, 'Technical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(181, 1481, 'Eastern Housing (Pallabi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(182, 10, 'Pallabi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(183, 1336, 'Mirpur 13 /14 / 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(184, 1337, 'Benaroshi Polli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(185, 12, 'Mirpur DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(186, 329, 'ECB Chattar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(187, 1338, 'Beribadh-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(188, 13, 'Kochukhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(189, 1339, 'Buddhijibi Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(190, 1340, 'Purobi Cinema Hall', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(191, 89, 'South Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(192, 17, 'Agargaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(193, 1341, 'Mondir-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(194, 1694, 'Mirpur - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(195, 90, 'Shah Ali Bag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(196, 18, 'Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(197, 1342, 'Palasnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(198, 1343, 'Purobi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(199, 20, 'Ibrahimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(200, 1344, 'Rupnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(201, 1345, 'Senpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(202, 315, 'Mirpur 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(203, 1131, 'Birulia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(204, 1346, 'BRTA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(205, 22, 'Mirpur Cantonment', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(206, 37, 'Dewanpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(207, 1347, 'Zoo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(208, 23, 'Kafrul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(209, 40, 'Mastertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(210, 1695, 'Mirpur - 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(211, 24, 'Vashantek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(212, 41, 'Balughat', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(213, 1696, 'Mirpur - 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(214, 25, 'Manikdi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(215, 42, 'Barontek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(216, 1697, 'Mirpur - 11.5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(217, 26, 'Matikata', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(218, 43, 'Goltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(219, 1698, 'Mirpur - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(220, 28, 'Rupnagar Residential Area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(221, 1699, 'Mirpur - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(222, 1165, 'Kallanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(223, 29, 'Duaripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(224, 1700, 'Mirpur - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(225, 1166, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:43'),
(226, 30, 'Rainkhola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(227, 1701, 'Mirpur - 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(228, 1167, 'Lalkuthi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(229, 31, 'Mirpur Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(230, 1168, 'Mirpur 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(231, 32, 'Mazar Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(232, 1169, 'Tolarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(233, 33, 'Shagufta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(234, 1594, 'Arambag (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(235, 1170, 'Ahmed Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(236, 1331, 'Mirpur 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(237, 1171, 'Paikpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(238, 1172, 'Pirerbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(239, 35, 'Baigertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(240, 1173, 'Taltola (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(241, 36, 'Madina nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(242, 1174, 'MES Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(243, 1175, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(244, 275, 'Kazipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(245, 1176, 'Ajiz Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(246, 276, 'Shewrapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(247, 5, 'Kallyanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(248, 139, 'Fakirapul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(249, 152, 'Shantibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(250, 140, 'Kakrail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(251, 153, 'Baily Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(252, 154, 'Minto Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(253, 69, 'Hajipara (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(254, 141, 'Naya Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(255, 142, 'Bijoynagar (Paltan)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(256, 156, 'Eskaton Garden Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(257, 143, 'Press Club', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(258, 144, 'High Court', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(259, 157, 'Eskaton', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(260, 158, 'Moghbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(261, 288, 'Purana Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(262, 159, 'Mouchak', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(263, 334, 'Arambag (Motijheel)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(264, 160, 'Malibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(265, 161, 'Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(266, 1207, 'Buddho Mondir', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(267, 1208, 'Sipahibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(268, 1636, 'Banasree Block - A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(269, 1209, 'TT Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(270, 1637, 'Banasree Block - B', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(271, 165, 'Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(272, 1638, 'Banasree Block - C', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(273, 1132, 'Shahjahanpur (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(274, 166, 'Khilgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(275, 1639, 'Banasree Block - D', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(276, 1640, 'Banasree Block - E', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(277, 319, 'Siddweswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(278, 167, 'Middle Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(279, 1641, 'Banasree Block - F', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(280, 168, 'Goran', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(281, 1642, 'Banasree Block - G', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(282, 169, 'Madartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(283, 396, 'Nandipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(284, 1643, 'Banasree Block - H', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(285, 187, 'Malibagh Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(286, 170, 'Manik Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(287, 171, 'Shahjahanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(288, 1644, 'Banasree Block - I', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(289, 1324, 'Gulbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(290, 1137, 'Haterrjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(291, 125, 'Tikatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(292, 126, 'Motijheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(293, 172, 'Banasree (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(294, 403, 'Gopibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(295, 1645, 'Banasree Block - J', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(296, 189, 'Sabujbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(297, 1325, 'Meradiya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(298, 173, 'Meradia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(299, 1646, 'Banasree Block - K', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(300, 190, 'Shiddheswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(301, 1326, 'Mirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(302, 1647, 'Banasree Block - L', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(303, 1327, 'Modhubagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(304, 1328, 'Rampura TV center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(305, 1648, 'Banasree Block - M', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(306, 266, 'Shegunbagicha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(307, 177, 'Mughdapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(308, 1649, 'Banasree Block - N', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(309, 267, 'Rajarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(310, 1330, 'Ulan road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(311, 1223, 'Purbo Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(312, 1251, 'Chamelibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(313, 181, 'Hatirjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(314, 134, 'Kamalapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(315, 182, 'Banglamotor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(316, 1128, 'Manda(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(317, 1596, 'Nazimuddin Road (Malibag)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(318, 150, 'Ramna', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(319, 137, 'Dainik Bangla Mor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(320, 151, 'Shantinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(321, 1657, 'Uttara Sector - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(322, 324, 'Dokshingaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(323, 1686, 'Uttara Sector - 16', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(324, 1152, 'Uttara Sector 5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(325, 1687, 'Uttara Sector - 17', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(326, 1153, 'Uttara Sector 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(327, 1688, 'Uttara Sector - 18', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(328, 1154, 'Uttara Sector 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(329, 1155, 'Uttara Sector 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(330, 1156, 'Uttara Sector 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(331, 1157, 'Uttara Sector 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(332, 1158, 'Nalbhog', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(333, 1160, 'Phulbaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(334, 352, 'Kamarpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(335, 1161, 'Dhour', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(336, 1295, 'Ranavola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(337, 1162, 'Bhatuliya', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(338, 1318, 'Ahalia-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(339, 1320, 'Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(340, 1321, 'Habib Market-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(341, 1322, 'Pakuria-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(342, 1163, 'Bamnartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(343, 1164, 'Turag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(344, 1650, 'Uttara Sector - 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(345, 34, 'Bawnia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(346, 1654, 'Uttara Sector - 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(347, 1655, 'Uttara Sector - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(348, 1656, 'Uttara Sector - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(349, 1257, 'Kotwali (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(350, 113, 'Nawabgonj Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(351, 1258, 'Railway Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(352, 1259, 'Rajar Dewri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(353, 284, 'Sutrapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(354, 1261, 'Sat rowja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(355, 286, 'Kamrangichar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(356, 1262, 'Tantibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(357, 146, 'Dhaka Medical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(358, 147, 'Bongo Bondhu Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(359, 346, 'Armanitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(360, 349, 'Islambag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(361, 354, 'Mitford', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(362, 117, 'Lalbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(363, 355, 'Shakhari Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(364, 118, 'Chawkbazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(365, 356, 'Katherpol', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(366, 316, 'Bongshal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(367, 119, 'Naya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(368, 357, 'Bangla Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(369, 120, 'Tatibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(370, 358, 'Patuatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(371, 121, 'Luxmi Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(372, 123, 'Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(373, 124, 'Siddique Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(374, 397, 'Nazira Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(375, 127, 'Nawabpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(376, 128, 'Kaptan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(377, 263, 'Dolaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(378, 1248, 'Mahut Tuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(379, 129, 'Gulistan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(380, 406, 'Sadarghat (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(381, 1249, 'Alubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(382, 130, 'Bongo Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(383, 407, 'Kaltabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(384, 1250, 'Badam Toli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(385, 131, 'Chankarpul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(386, 269, 'Babubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(387, 270, 'Islampur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(388, 132, 'Palashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(389, 409, 'Gandaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(390, 1595, 'Nazimuddin Road (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(391, 271, 'Imamgonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(392, 1252, 'Dholaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(393, 272, 'Nayabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(394, 1253, 'Doyagonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(395, 1254, 'Farashgong', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(396, 135, 'Wari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(397, 136, 'Narinda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(398, 184, 'Bakshibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(399, 1395, 'Firozshah', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(400, 1396, 'GEC', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(401, 1397, 'Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(402, 1398, 'Halishshar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(403, 1458, 'Sadarghat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(404, 1366, 'Cadet College', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(405, 1367, 'Chandgaon', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(406, 1368, 'Chattogram Airport', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(407, 1369, 'Chattogram Bandar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(408, 1370, 'Chattogram Cantonment', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(409, 1371, 'Chattogram Chawkbazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(410, 1431, 'Mohard', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(411, 1372, 'Chattogram Customs Acca', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(412, 999, 'Sitakundu', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(413, 1373, 'Chattogram GPO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(414, 1433, 'Nasirabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(415, 1407, 'Jalalabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(416, 1374, 'Chattogram New Market', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(417, 1434, 'North Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(418, 1375, 'Chattogram Oxygen', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(419, 1435, 'North Kattali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(420, 1349, 'Kotwali Chattogram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(421, 1135, 'Bondor (Chittagong)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(422, 1376, 'Chattogram Politechnic Institute', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(423, 1436, 'North Katuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(424, 1437, 'Noyabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(425, 1350, 'Agrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(426, 1464, 'Sitakunda Barabkunda', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(427, 1136, 'Barahatia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(428, 1377, 'Chattogram Sailors Colony', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(429, 1438, 'Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(430, 1351, 'AK Khan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(431, 1465, 'Sitakunda Baroidhala', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(432, 1378, 'Colonel Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(433, 1379, 'Combined Military Hospital (CMH)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(434, 1439, 'Panchlaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(435, 1352, 'Al- Amin Baria Madra', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(436, 1466, 'Sitakunda Bawashbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(437, 1380, 'Court Buliding', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(438, 1440, 'Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(439, 1353, 'Al- Amin Baria Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(440, 1467, 'Sitakunda Bhatiari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(441, 1354, 'Amin Jute Mills', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(442, 1468, 'Sitakunda Fouzdarhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(443, 1122, 'Chittagong Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(444, 1382, 'Dakkshin Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(445, 1355, 'Anandabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(446, 1469, 'Sitakunda Jafrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(447, 1383, 'Double Mooring', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(448, 1443, 'Rampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(449, 1470, 'Sitakunda Kumira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(450, 1471, 'South Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(451, 1444, 'Rampura TSO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(452, 1358, 'Bayezid Bostami', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(453, 1473, 'Wazedia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(454, 1419, 'Kattuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(455, 1420, 'Khulshi', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(456, 1388, 'Export Processing', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(457, 1423, 'Middle Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(458, 1474, 'No area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(459, 448, 'CWH', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(460, 292, 'Shyampur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(461, 296, 'Dholaipar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(462, 313, 'Shonir Akhra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(463, 1246, 'Mirhazirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(464, 404, 'Shwamibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(465, 405, 'Sayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(466, 178, 'Golapbag (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(467, 408, 'Jurain', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(468, 179, 'Jatrabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(469, 411, 'RayerBag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(470, 412, 'Faridabad (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(471, 1255, 'Dholpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(472, 414, 'Donia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(473, 1597, 'Kodomtoli (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(474, 415, 'Postogola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(475, 915, 'Fenchuganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(476, 916, 'Gowainghat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(477, 917, 'Golapganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(478, 918, 'Jaintapur', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(479, 920, 'Kanaighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(480, 921, 'Amberkhana (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(481, 922, 'South Surma', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(482, 1497, 'Akhalia', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(483, 1498, 'Tilaghor', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(484, 1499, 'Shibganj(sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(485, 1494, 'Zindabazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(486, 1500, 'Uposhohor(Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(487, 1495, 'Pathantula', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(488, 1501, 'Kodomtoli', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(489, 1496, 'Subidbazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(490, 1502, 'Sheikhghat.', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(491, 1503, 'Majortila', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(492, 1504, 'Subhanighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(493, 911, 'Balaganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(494, 913, 'Biswanath', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(495, 914, 'Companyganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(496, 1284, 'Khartail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(497, 1542, 'Jinumarket', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(498, 1285, 'Majukhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(499, 1543, 'T & T(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(500, 1197, 'Ershadnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(501, 1286, 'Milgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(502, 1544, 'Shilmun', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(503, 1198, 'Sataish', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(504, 1287, 'National University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(505, 1545, 'Mudafa', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(506, 1288, 'Surtaranga', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(507, 1546, 'Khapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(508, 1289, 'Targach', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(509, 1547, 'Malakerbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(510, 1263, 'Khairtail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(511, 1290, 'Rail Station', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(512, 1548, 'Bypass Road (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(513, 1549, 'Kodda', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(514, 1264, 'Bonomala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(515, 1291, 'Boro Dewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(516, 1550, 'Duet Road', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(517, 1265, 'Morkun', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(518, 1551, 'Shibbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(519, 1552, 'Shimultoli', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(520, 647, 'Chowrasta (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(521, 1188, 'Kunia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(522, 1553, 'Jorpukur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(523, 1189, 'Gacha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(524, 1190, 'Boro Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(525, 1554, 'Salna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(526, 649, 'Kaliganj(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(527, 1191, 'Board Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(528, 1192, 'Kamarjuri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(529, 1266, 'Bhadam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(530, 1193, 'Dattapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(531, 1267, 'Boro Dewra Dakkhin Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(532, 1194, 'Auchpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(533, 1195, 'Cherag Ali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(534, 1269, 'Gopalpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(535, 1196, 'Tongi Bazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(536, 1270, 'College Gate (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(537, 1271, 'Boardbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(538, 1272, 'Gazipura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(539, 1273, 'Hossain Market (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(540, 1274, 'Signboard (Gazipur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(541, 1275, 'Joydebpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(542, 1276, 'Dhirasrom', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(543, 1277, 'Dattapara Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(544, 1536, 'Pubail', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(545, 1278, 'Badekomelosshor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(546, 1279, 'Borobari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(547, 1537, 'Mirerbazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(548, 1280, 'Choidana', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(549, 1538, 'Ulokhola', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(550, 1281, 'Deger Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(551, 1539, 'Modhumita', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(552, 1282, 'Gazcha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(553, 1540, 'Miraspara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(554, 63, 'Tongi', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(555, 1283, 'Hariken', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(556, 1541, 'Pagar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(557, 282, 'Ashulia', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:49'),
(558, 283, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:34'),
(559, 365, 'Dhamrai', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(560, 1127, 'Baipayl', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(561, 53, 'Savar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:10'),
(562, 61, 'Savar Cantonment', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:14:50'),
(563, 1178, 'Aga Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(564, 1179, 'Kathuria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(565, 1180, 'Goljarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(566, 1181, 'Nazirabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(567, 1260, 'Hasnabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(568, 1182, 'Kaliganj - Keraniganj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:35'),
(569, 1183, 'Nazarganj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(570, 1184, 'Zinzira', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(571, 305, 'Keranigonj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:28'),
(572, 1125, 'Kalatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(573, 1256, 'Kodomtoli(Keraniganj)', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:22'),
(574, 707, 'Bandar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(575, 708, 'Chashara (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(576, 1658, 'Signboard (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(577, 1659, 'Jalkuri (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(578, 710, 'Sonargaon', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(579, 1689, 'Chittagong Road (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(580, 1133, 'Shanarpar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(581, 1247, 'Bhuigarh-Narayangonj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(582, 1123, 'Siddhirganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(583, 1124, 'Fatullah', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(584, 1680, 'Shibu Market (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(585, 1000, 'Barura', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(586, 1001, 'Brahmanpara', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(587, 1002, 'Burichang', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(588, 1003, 'Chandina', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(589, 1005, 'Comilla Sadar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(590, 1007, 'Debiduar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(591, 1015, 'Comilla Sadar South', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(592, 782, 'Batiaghata', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(593, 783, 'Dacope', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(594, 784, 'Dighalia', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(595, 785, 'Dumuria', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(596, 786, 'Phultala', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(597, 789, 'Rupsa', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(598, 790, 'Khalispur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(599, 791, 'Sonadanga', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(600, 792, 'Khan jahan ali', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(601, 793, 'Doulatpur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(602, 1120, 'Khulna Sadar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(603, 794, 'Terokhada', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(604, 1528, 'Chorpara (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(605, 1529, 'Kachijhuli', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(606, 695, 'Dhubaura', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(607, 1530, 'College Road (Mymensigh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(608, 696, 'Fulbaria (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(609, 1531, 'Akua', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(610, 697, 'Fulpur', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(611, 1532, 'Agriculture University (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(612, 1533, 'Zilla School Mor (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(613, 699, 'Koltapara (Gouripur Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(614, 1534, 'Rohomotpur Bypass', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(615, 700, 'Haluaghat', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(616, 1535, 'Mashkanda', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(617, 701, 'Iswarganj', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(618, 702, 'Kacharighat (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(619, 703, 'Muktagacha', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(620, 704, 'Nandail', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(621, 932, 'Barisal Sadar', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(622, 935, 'Mehendiganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(623, 929, 'Babuganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(624, 930, 'Bakerganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(625, 931, 'Banaripara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(626, 658, 'Dewanganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(627, 659, 'Islampur(Jamalpur)', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(628, 660, 'Jamalpur Sadar', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(629, 661, 'Madarganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(630, 662, 'Melandah', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(631, 663, 'Sharishabari', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(632, 1603, 'Subidkhali', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(633, 1606, 'Bagabandar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(634, 1607, 'Kalaia', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(635, 1609, 'Birpasha', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(636, 949, 'Bauphal', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(637, 950, 'Dasmina', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(638, 951, 'Dumki', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(639, 952, 'Galachipa', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(640, 954, 'Mirjaganj', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(641, 955, 'Patuakhali Sadar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(642, 677, 'Kalkini', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(643, 678, 'Madaripur Sadar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(644, 679, 'Rajoir', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(645, 680, 'Shibchar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(646, 1716, 'Kacari (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(647, 1717, 'Super Market Mor (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(648, 1718, 'Munshir Hat (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(649, 1719, 'Mirkadim (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(650, 1720, 'Rikabibazar (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(651, 1721, 'Sipahipara (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(652, 1722, 'Muktarpur (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(653, 688, 'Gazaria', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(654, 690, 'Katakhali (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(655, 691, 'Serajdikhan', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(656, 693, 'Tangibari', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(657, 657, 'Bakshiganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(658, 738, 'Jhenaigati', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(659, 739, 'Nakla', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(660, 740, 'Nalitabari', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(661, 741, 'Sherpur Sadar', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(662, 742, 'Sribordi', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(663, 962, 'Zia Nagar (Indurkani)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(664, 956, 'Bhandaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(665, 957, 'Kaukhali (Perojpur)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(666, 958, 'Mothbaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(667, 959, 'Nesarabad (Shawrupkathi)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(668, 960, 'Nazirpur', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(669, 961, 'Pirojpur Sadar', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(670, 978, 'Chandpur Sadar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(671, 979, 'Faridganj', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(672, 980, 'Haimchar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(673, 983, 'Matlab (South)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(674, 984, 'Matlab (North)(Chengarchar)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(675, 638, 'Alfadanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(676, 639, 'Bhanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(677, 640, 'Boalmari', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(678, 641, 'Char Bhadrasan', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(679, 642, 'Faridpur Sadar', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(680, 643, 'Madhukhali', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(681, 644, 'Nagarkanda', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(682, 645, 'Sadarpur', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(683, 646, 'Saltha', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(684, 748, 'Kalihati', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(685, 749, 'Mirzapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(686, 751, 'Nagarpur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(687, 752, 'Shakhipur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(688, 753, 'Tangail Sadar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(689, 743, 'Bashail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(690, 744, 'Bhuapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(691, 745, 'Delduar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(692, 945, 'Jhalokathi Sadar', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(693, 946, 'Kathalia', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(694, 947, 'Nalchiti', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(695, 948, 'Rajapur (Jhalokathi)', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(696, 1711, 'Konokpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(697, 1712, 'Adompur Bazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(698, 1715, 'Kazir Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(699, 894, 'Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(700, 896, 'Moulvibazar Sadar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(701, 897, 'Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(702, 898, 'Sreemongal', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(703, 1702, 'Sarkar Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(704, 1703, 'Notun Bridge (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(705, 1622, 'Shamshernagar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(706, 1623, 'Sherpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(707, 1704, 'Tarapasha Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(708, 1705, 'Munshibazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(709, 1706, 'Munshibazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(710, 1707, 'Tengra Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(711, 1708, 'Mukam Bazar - Radar Unit (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(712, 1710, 'Patanushar - Shamshernagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(713, 1515, 'Chowdhury Bazar (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(714, 1516, 'Sultanmahmudpur', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(715, 889, 'Habiganj Sadar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(716, 1517, 'Gatiabazar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(717, 890, 'Lakhai', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(718, 1518, 'Mahmudabad', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(719, 1519, 'Duliakal', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(720, 892, 'Nabiganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(721, 1520, 'Mohonpur (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(722, 885, 'Ajmeriganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(723, 887, 'Baniachang', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(724, 1514, 'Rajnogor', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(725, 1107, 'Badarganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(726, 1108, 'Gangachara', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(727, 1109, 'Kaunia (Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(728, 1110, 'Mithapukur', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(729, 1111, 'Pirgacha', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(730, 1112, 'Pirganj(Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(731, 1113, 'Rangpur Sadar', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(732, 1114, 'Taraganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(733, 773, 'Keshabpur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(734, 774, 'Manirampur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(735, 775, 'Sharsha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(736, 769, 'Bagherpara', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(737, 770, 'Chowgacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(738, 1129, 'Benapole', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(739, 771, 'Jessore Sadar', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(740, 772, 'Jhikargacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(741, 1102, 'Atwari (Panchagarh)', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(742, 1103, 'Boda', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(743, 1104, 'Debiganj', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(744, 1105, 'Panchagarh Sadar', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(745, 1106, 'Tetulia', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(746, 1099, 'Kishoreganj ( Nilphamari)', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(747, 1100, 'Nilphamari Sadar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(748, 1096, 'Dimla', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(749, 1097, 'Domar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(750, 1098, 'Jaldhaka', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(751, 1021, 'Ramu', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(752, 1023, 'Ukhia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(753, 1576, 'Kalur Dokan', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(754, 1577, 'Alir Jahal Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(755, 966, 'Nakhoyngchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(756, 1578, 'Barmis Market', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(757, 1579, 'Bazar Ghata', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(758, 1580, 'Laldighir Par (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(759, 1581, 'Holiday Mor(Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(760, 1582, 'Laboni Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(761, 1583, 'Sughandha Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(762, 1584, 'Marin Drive Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(763, 1585, 'Sonar Tara', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(764, 1586, 'Jilonjha', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(765, 1587, 'Tarabaniyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(766, 1588, 'Romaliyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(767, 1589, 'Khurushkul', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(768, 1590, 'P M Khali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(769, 1591, 'Somity Para', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(770, 1017, 'Kolatoli (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(771, 938, 'Bhola Sadar', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(772, 939, 'Borhanuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(773, 941, 'Daulatkhan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(774, 944, 'Tajumuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(775, 924, 'Bamna', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(776, 925, 'Barguna Sadar', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(777, 926, 'Betagi', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(778, 927, 'Patharghata (Barguna)', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(779, 876, 'Belkuchi', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(780, 877, 'Chowhali', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(781, 878, 'Kamarkhanda', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(782, 879, 'Kazipur', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(783, 880, 'Raiganj', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(784, 881, 'Shahajadpur (Sirajganj)', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(785, 882, 'Sirajganj Sadar', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(786, 883, 'Tarash', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(787, 884, 'Ullapara', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(788, 857, 'Atgharia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(789, 858, 'Bera', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(790, 859, 'Bhangura', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(791, 860, 'Chatmohar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(792, 861, 'Faridpur ( Pabna )', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(793, 863, 'Pabna Sadar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(794, 864, 'Santhia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(795, 865, 'Sujanagar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(796, 1616, 'Banwarinagar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(797, 1617, 'Debottar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(798, 1618, 'Kashinathpur (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(799, 1619, 'Nakalia (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(800, 1621, 'Sagarkandi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(801, 855, 'Natore Sadar', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(802, 856, 'Singra', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(803, 851, 'Baghatipara', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(804, 852, 'Baraigram', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(805, 853, 'Gurudaspur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(806, 854, 'Lalpur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(807, 840, 'Atrai', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(808, 841, 'Badalgachi', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(809, 845, 'Naogaon Sadar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(810, 849, 'Raninagar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(811, 835, 'Akkelpur', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(812, 836, 'Joypurhat Sadar', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(813, 837, 'Kalai', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(814, 838, 'Khetlal', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(815, 839, 'Panchbibi', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(816, 811, 'Assasuni', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(817, 812, 'Debhata', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(818, 813, 'Kaliganj(Satkhira)', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(819, 814, 'Kolaroa', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(820, 815, 'Satkhira Sadar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(821, 816, 'Shyamnagar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(822, 817, 'Tala', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(823, 805, 'Gangni', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(824, 806, 'Meherpur Sadar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(825, 807, 'Mujibnagar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(826, 734, 'Gosairhat', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(827, 735, 'Zajira', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(828, 736, 'Naria', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(829, 737, 'Shariatpur Sadar', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(830, 732, 'Bhedarganj', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(831, 733, 'Damudiya', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(832, 727, 'Baliakandi', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(833, 728, 'Goalunda', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(834, 729, 'Pangsha', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(835, 730, 'Rajbari Sadar', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(836, 731, 'Kalukhali', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(837, 681, 'Daulatpur(Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(838, 682, 'Ghior', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(839, 683, 'Harirampur (Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(840, 684, 'Manikganj Sadar', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(841, 685, 'Saturia', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(842, 686, 'Shibalaya', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(843, 687, 'Singair', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(844, 652, 'Gopalganj Sadar', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(845, 653, 'Kasiani', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(846, 654, 'Kotalipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(847, 655, 'Maksudpur', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(848, 656, 'Tungipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(849, 1115, 'Baliadangi', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(850, 1134, 'Shibganj (Thakurgaon Sadar)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(851, 1116, 'Haripur', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(852, 1117, 'Pirganj(Thakurgaon)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(853, 1118, 'Ranishankail', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(854, 1119, 'Thakurgaon Sadar', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(855, 717, 'Atpara', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(856, 718, 'Barhatta', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(857, 719, 'Durgapur(Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(858, 720, 'Kalmakanda', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(859, 721, 'Kendua', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(860, 722, 'Khaliajuri', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(861, 723, 'Madan', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(862, 724, 'Mohanganj', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(863, 725, 'Netrokona Sadar', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(864, 726, 'Purbadhala (Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(865, 903, 'Dharmapasha', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(866, 712, 'Monohardi', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(867, 713, 'Velanogor (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(868, 714, 'Palash', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(869, 716, 'Shibpur', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(870, 1505, 'Madhabdi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(871, 1506, 'Babur Haat (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(872, 1507, 'Pachdona More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(873, 1508, 'Shaheprotab More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(874, 1509, 'West Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(875, 1510, 'East Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(876, 1511, 'Songita Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(877, 1512, 'Shatirpara', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(878, 1513, 'Hasnabad Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(879, 1024, 'Chagalnayya', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(880, 1025, 'Daganbhuiyan', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(881, 1026, 'Feni Sadar', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(882, 1027, 'Parshuram', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(883, 1028, 'Fulgazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(884, 1029, 'Sonagazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(885, 1072, 'Khanshama', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(886, 1074, 'Parbatipur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(887, 1483, 'College mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(888, 1484, 'Boromath (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(889, 1485, 'Pulhat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(890, 1486, 'Newtown (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(891, 1487, 'Lilir mor', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(892, 1488, 'Modern mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(893, 1063, 'Birganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(894, 1064, 'Birol', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(895, 1065, 'Bochaganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(896, 1066, 'Chirirbandar', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(897, 1067, 'Baluadanga (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(898, 1071, 'Kaharole', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(899, 1075, 'Fulchari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(900, 1076, 'Gaibandha Sadar', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(901, 1077, 'Gobindaganj ( Gaibandha )', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(902, 1078, 'Palashbari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(903, 1079, 'Sadullapur', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(904, 1080, 'Shaghatta', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(905, 1081, 'Sundarganj', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(906, 764, 'Alamdanga', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(907, 765, 'Chuadanga Sadar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(908, 766, 'Damurhuda', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(909, 767, 'Jibannagar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(910, 866, 'Bagha', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(911, 867, 'Bagmara (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(912, 868, 'Charghat', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(913, 869, 'Durgapur(Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(914, 870, 'Godagari', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(915, 871, 'Mohanpur (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(916, 872, 'Paba', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(917, 873, 'Putia', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(918, 874, 'Tanore', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(919, 875, 'Sadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(920, 1121, 'Rajshahi Shadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(921, 801, 'Magura Sadar', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(922, 802, 'Mohammadpur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(923, 803, 'Shalikha', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(924, 804, 'Sreepur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(925, 808, 'Kalia', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(926, 809, 'Lohagara(Narail)', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(927, 810, 'Narail Sadar', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(928, 1053, 'Barkal', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(929, 1054, 'Belaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(930, 1055, 'Jurachari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(931, 1056, 'Kaptai', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(932, 1057, 'Kawkhali (Rangamati)', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(933, 1058, 'Langadu', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(934, 1059, 'Naniarchar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(935, 1060, 'Rajasthali', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(936, 1061, 'Rangamati Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(937, 1416, 'Kaptai Kaptai Project', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(938, 1417, 'Kaptai Nuton Bazar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(939, 1418, 'Kaptai Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(940, 800, 'Mirpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(941, 795, 'Bheramara', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(942, 796, 'Daulatpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(943, 797, 'Khoksha', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(944, 798, 'Kumarkhali', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(945, 799, 'Kushtia Sadar', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(946, 830, 'Bholahat', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(947, 831, 'Gomastapur', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(948, 832, 'Nachole', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(949, 833, 'Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(950, 834, 'Shipganj ( Chapai )', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(951, 1126, 'Chapai Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(952, 776, 'Kotchandpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(953, 777, 'Harinakunda', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(954, 778, 'Jhenaidah Sadar', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(955, 779, 'Kaliganj(Jhenaidah)', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(956, 780, 'Moheshpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(957, 781, 'Shailkupa', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(958, 1045, 'Companiganj (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(959, 1046, 'Hatiya', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(960, 1047, 'Maijdee (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(961, 1048, 'Senbag', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(962, 1049, 'Sonaimuri', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(963, 1050, 'Subarnachar', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(964, 1051, 'Kabir Hat', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(965, 1043, 'Begumganj', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(966, 1044, 'Chatkhil', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(967, 1601, 'Alexandar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(968, 1038, 'Laksmipur Sadar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(969, 1039, 'Ramgati', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(970, 1040, 'Ramganj', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(971, 1041, 'Raipur (Lakshmipur)', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(972, 1042, 'Kamalnagar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(973, 1082, 'Bhurungamari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(974, 1083, 'Chilmary', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(975, 1084, 'Fulbari (Kurigram)', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(976, 1085, 'Kurigram Sadar', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(977, 1086, 'Nageswari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(978, 1087, 'Rajarhat', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(979, 1088, 'Rajibpur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(980, 1089, 'Rowmari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(981, 1090, 'Ulipur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(982, 676, 'Tarail', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(983, 668, 'Itna', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(984, 669, 'Karimganj', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(985, 670, 'Katiadi', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(986, 671, 'Kishoreganj Sadar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(987, 664, 'Austogram', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(988, 665, 'Bajitpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(989, 673, 'Mithamain', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(990, 667, 'Hosainpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(991, 674, 'Nikli', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(992, 675, 'Pakundia', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(993, 828, 'Sonatola', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(994, 829, 'Shajahanpur (Bogura)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(995, 818, 'Adamdighi (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(996, 819, 'Bogra Sadar', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(997, 820, 'Dhunot', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(998, 821, 'Dhubchanchia', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(999, 822, 'Gabtali (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1000, 823, 'Kahaloo', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1001, 824, 'Nandigram', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1002, 825, 'Sariakandi', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1003, 826, 'Sherpur (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1004, 827, 'Shibganj ( Bogra )', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1005, 768, 'Noapara (Jessore)', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1006, 1052, 'Baghaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1007, 1030, 'Dighinala', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1008, 1031, 'Khagrachari Sadar', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1009, 1032, 'Laksmichari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1010, 1033, 'Mohalchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1011, 1034, 'Manikchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1012, 1035, 'Matiranga', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1013, 1036, 'Panchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1014, 1037, 'Ramgor', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1015, 689, 'Lauhajang', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1016, 692, 'Sreenagar', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1017, 359, 'Dohar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1018, 446, 'Nawabgonj (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1019, 1629, 'Chandura (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1020, 1630, 'Singarbil (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1021, 1521, 'Kawtoly (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1022, 1631, 'Awliya Bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1023, 1522, 'T.A Road (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1024, 1632, 'Poirtola (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1025, 1523, 'Sarak bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1026, 1633, 'Ulchapara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1027, 1524, 'Moddopara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1028, 1634, 'Bhadugor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1029, 1525, 'Birashar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1030, 1635, 'Kumarshil more (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1031, 1526, 'Medda (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1032, 1527, 'Gatura- Pirbari (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1033, 970, 'Akhaura', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1034, 973, 'Paikpara (Brahmanbaria Sadar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1035, 1626, 'Bijoynagor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1036, 1627, 'Shahbajpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1037, 1628, 'Sohilpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1038, 1101, 'Saidpur', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1039, 755, 'Bagerhat Sadar', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1040, 756, 'Chitalmari', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1041, 757, 'Fakirhat (Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1042, 758, 'Kachua(Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1043, 759, 'Mollarhat', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1044, 760, 'Mongla', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1045, 761, 'Morelganj', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1046, 762, 'Rampal', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1047, 763, 'Sarankhola', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1048, 1091, 'Aditmari', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1049, 1092, 'Hatibandha (Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1050, 1093, 'Kaliganj(Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1051, 1094, 'Lalmonirhat Sadar', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1052, 1095, 'Patgram', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1053, 1489, 'Old bustand (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1054, 1490, 'Kazirpoint (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1055, 1491, 'Hason Nagar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1056, 1492, 'Moddho bazar (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1057, 1493, 'wazkhali', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1058, 900, 'Biswambharpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1059, 902, 'Derai', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1060, 905, 'Jagannathpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1061, 906, 'Jamalganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1062, 907, 'Sulla', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1063, 908, 'Traffic Point (Sunamganj Sadar)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1064, 909, 'Taherpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1065, 910, 'South Sunamganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1066, 964, 'Bandarban Sadar', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1067, 967, 'Rawanchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1068, 968, 'Ruma', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1069, 1130, 'soho area', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1070, 969, 'Thanchi', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1071, 1598, 'SDA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1072, 1391, 'Fatikchhari Harualchhari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1073, 1451, 'Raozan Fatepur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1074, 1392, 'Fatikchhari Najirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1075, 990, 'Fatikchari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1076, 1452, 'Raozan Guzra Noapara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1077, 1393, 'Fatikchhari Nanupur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1078, 991, 'Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1079, 1453, 'Raozan jagannath Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1080, 1454, 'Raozan Kundeshwari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1081, 1394, 'Fatikchhari Narayanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1082, 1455, 'Raozan Mohamuni', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1083, 1456, 'Raozan Pouroshobha', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1084, 995, 'Rangunia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1085, 1457, 'Rauzan Gahira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1086, 996, 'Raojan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1087, 1399, 'Chattogram University', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1088, 1400, 'Hathazari Fatahabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1089, 1401, 'Hathazari Gorduara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1090, 1402, 'Hathazari Katirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1091, 1403, 'Hathazari Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1092, 1404, 'Hathazari Mirzapur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1093, 1463, 'Sayad Bari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1094, 1405, 'Hathazari Nuralibari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1095, 1432, 'Muradnagar - Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1096, 1406, 'Hathazari Yunus Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1097, 1381, 'Dakkhin Ghatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1098, 1414, 'Kadeer Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1099, 1415, 'Kaptai Chandraghona', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1100, 1472, 'Uttar Gatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1101, 1445, 'Rangunia Dhamair', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1102, 1446, 'Rangunia Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1103, 1447, 'Ranir Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1104, 1448, 'Raozan B.I.T Post Office', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1105, 1389, 'Fakirkill', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1106, 1449, 'Raozan Beenajuri', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1107, 1390, 'Fatikchhari Bhandar Sharif', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1108, 1450, 'Raozan Dewanpur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1109, 1424, 'Mirsharai Abutorab', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1110, 1425, 'Mirsharai Azampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1111, 1426, 'Mirsharai Bharawazhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1112, 1427, 'Mirsharai Darrogahat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1113, 993, 'Mirsarai', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1114, 1428, 'Mirsharai Joarganj', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1115, 1429, 'Mirsharai Korerhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1116, 1430, 'Mirsharai Mohazanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1117, 1364, 'Boalkhali Sakpura', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1118, 994, 'Patiya', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1119, 1365, 'Boalkhali Saroatoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1120, 1138, 'Karnaphuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1121, 1412, 'Jaldia Marine Academy', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1122, 1413, 'Jaldia Merine Accade', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1123, 1441, 'Patiya Budhpara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1124, 1442, 'Patiya Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1125, 1356, 'Anawara Battali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1126, 1357, 'Anawara Paroikora', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1127, 1359, 'Boalkhali Charandwip', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1128, 1360, 'Boalkhali Iqbal Park', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1129, 986, 'Anwara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1130, 1361, 'Boalkhali Kadurkhal', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1131, 1362, 'Boalkhali Kanungopara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1132, 1363, 'Boalkhali Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1133, 988, 'Boalkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1134, 1018, 'Kutubdia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1135, 963, 'Ali Kadam', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1136, 1019, 'Moheshkhali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1137, 1020, 'Pekua', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1138, 965, 'Lama', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1139, 1016, 'Chakoria', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1140, 919, 'Zakiganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1141, 893, 'Barlekha', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1142, 899, 'Juri', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1143, 912, 'Beanibazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1144, 972, 'Bancharampur (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1145, 974, 'Kashba (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1146, 975, 'Nabinagar (Nabinagar Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1147, 933, 'Gournadi (Barisal)', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1148, 934, 'Hijla', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1149, 936, 'Muladi', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1150, 937, 'Wazirpur', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1151, 928, 'Agailjhara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1152, 1073, 'Nawabganj (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1153, 1062, 'Birampur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1154, 1068, 'Phulbari (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1155, 1069, 'Ghoraghat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1156, 1070, 'Hakimpur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1157, 711, 'Belabo', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1158, 715, 'Raipura (Bhairab)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1159, 971, 'Ashuganj (Bhairab)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1160, 976, 'Nasirnagar (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1161, 977, 'Sarail (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1162, 672, 'Kuliarchar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1163, 666, 'Bhairab', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1164, 1482, 'Gouripur (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1165, 1006, 'Daudkandi', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1166, 1008, 'Homna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1167, 1010, 'Meghna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1168, 1013, 'Titas', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1169, 901, 'Chattak', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1170, 904, 'Dowarabazar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1171, 709, 'Rupganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1172, 175, 'Bawaliapara (Narayangaj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1173, 706, 'Araihazar', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1174, 1478, 'Vobanipur Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1175, 1570, 'Rajabari Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1176, 1479, 'Barmi Sreepur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1177, 1480, 'Fulbaria Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1178, 650, 'Kapasia', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1179, 1555, 'Porabari Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1180, 651, 'Sreepur(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1181, 1556, 'Dhaladia Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1182, 1557, 'Hotapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1183, 1558, 'Bager bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1184, 1559, 'Member Bari Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1185, 1560, 'Gorgoria masterbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1186, 1561, 'Mc Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1187, 1562, 'Nayanpur Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1188, 1475, 'Mawna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1189, 1567, 'Joyna Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1190, 1476, 'Rajendrapur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1191, 1477, 'Bhawal Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1192, 1004, 'Chowddagram', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1193, 1009, 'Laksam', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1194, 1012, 'Nangolkot', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1195, 1014, 'Monoharganj', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1196, 787, 'Koira', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1197, 788, 'Paikgacha', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1198, 1592, 'Amadee Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1199, 1593, 'kopilmuni Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1200, 888, 'Chunarughat (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1201, 1599, 'Shayestaganj (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1202, 891, 'Madhabpur (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1203, 1614, 'Ranigaon (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1204, 1615, 'Putijuri (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1205, 886, 'Bahubal (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1206, 746, 'Ghatail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1207, 747, 'Gopalpur (Tangail)', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1208, 750, 'Modhupur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1209, 754, 'Dhanbari', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1210, 694, 'Valuka', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1211, 698, 'Goffargaon', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1212, 705, 'Trishal', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1213, 1022, 'Teknaf', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1214, 997, 'Sandwip (Guptachara)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1215, 1459, 'Sandwip Shiberhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1216, 1460, 'Sandwip Urirchar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1217, 1610, 'Sandwip (Enam Nagar)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1218, 1611, 'Sandwip (Complex)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1219, 1612, 'Sandwip (Kalapaniya)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1220, 1613, 'Sandwip (Gasua)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1221, 842, 'Dhamoirhat', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1222, 843, 'Manda(Naogaon)', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1223, 844, 'Mahadebpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1224, 846, 'Niamatpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1225, 847, 'Patnitala', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1226, 848, 'Porsha', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1227, 850, 'Shapahar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1228, 981, 'Hajiganj (Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1229, 982, 'Kachua(Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1230, 985, 'Shahrasti', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1231, 862, 'Iswardi', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1232, 1620, 'Pakshi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1233, 417, 'Konapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1234, 278, 'Demra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1235, 1723, 'Basher pull (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1236, 1724, 'Bamuail (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1237, 1725, 'Sharuliya (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1238, 1726, 'Rani mohol (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1239, 1727, 'Staffquater (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1240, 1728, 'Demra bazar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1241, 1729, 'Hajinogar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1242, 1730, 'Boxnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1243, 1731, 'Badsha mia road (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1244, 1732, 'Muslimnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1245, 413, 'Matuail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1246, 1305, 'Mollartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1247, 1150, 'Mollapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1248, 68, 'Sonali Bank Staff Quarter', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1249, 1306, 'Gawair', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1250, 1151, 'Azampur (East)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1251, 1307, 'Kosaibari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1252, 70, 'Kawla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1253, 1308, 'Prembagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1254, 71, 'Naddapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1255, 1309, 'Kachkura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1256, 1310, 'Helal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1257, 1311, 'Chamur Khan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1258, 1312, 'Society', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1259, 1313, 'Ismailkholla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1260, 1292, 'Uttarkhan Mazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1261, 1314, 'Masterpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1262, 1159, 'Azampur (West) (Uttara)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1263, 1293, 'Dakshinkhan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1264, 1315, 'Munda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1265, 1294, 'Hajipara-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1266, 1316, 'Barua', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1267, 1296, 'Joynal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1268, 1297, 'Johura Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1269, 1298, 'Habib Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1270, 1319, 'Ainusbag-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1271, 46, 'Ainusbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1272, 47, 'Uttarkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1273, 48, 'Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1274, 49, 'Fayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1275, 1299, 'BDR Market-House Building', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1276, 50, 'Ashkona', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1277, 1651, 'Uttara Sector - 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1278, 1300, 'BDR Market-Sector 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1279, 1652, 'Uttara Sector - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1280, 1301, 'Moinartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1281, 1653, 'Uttara Sector - 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1282, 1302, 'Atipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1283, 1147, 'Uttara Sector-4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1284, 1303, 'Kot Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1285, 1148, 'Goaltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1286, 1304, 'Dewan City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1287, 1149, 'Chalabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1288, 940, 'Charfession', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1289, 942, 'Lalmohan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1290, 943, 'Manpura', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1291, 1569, 'Chondra Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1292, 1738, 'Goailbari bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1293, 1739, 'Hatimara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1294, 1740, 'Sardagonj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1295, 1741, 'Ambagh (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1296, 1742, 'Fulbaria bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1297, 1743, 'Madhobpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1298, 1744, 'Kabirpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1299, 1745, 'Walton high-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1300, 1746, 'Walton micro-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1301, 1747, 'Mollapara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1302, 1748, 'Jalsukha (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1303, 1749, 'Gosatra (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1304, 648, 'Kaliakoir', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1305, 1563, 'Konabari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1306, 1564, 'Mouchak Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1307, 1734, 'Vannara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1308, 1565, 'Kashempur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1309, 1566, 'Shafipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1310, 1735, 'Sardarganj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1311, 1736, 'Sultan Market (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1312, 1568, 'Pollibiddut Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1313, 1737, 'Baroipara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1314, 1602, 'Kuakata', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1315, 1604, 'Khepupara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1316, 1605, 'Payra port', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1317, 923, 'Amtali', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1318, 1608, 'Mahipur', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1319, 953, 'Kalapara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1320, 1750, 'Companyganj (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1321, 1011, 'Muradnagar - Cumilla', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1322, 1713, 'Tilagao - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1323, 1714, 'Bhatera - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1324, 895, 'Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1325, 1624, 'Baramchal (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1326, 1625, 'Robir Bazar (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1327, 1709, 'Brahman Bazar - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1328, 989, 'Chandanaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1329, 992, 'Lohagara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1330, 1461, 'Satkania Baitul Ijjat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1331, 1462, 'Satkania Bazalia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1332, 998, 'Satkania', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1333, 1408, 'Jaldi Banigram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1334, 1409, 'Jaldi Gunagari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1335, 1410, 'Jaldi Khan Bahadur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1336, 1411, 'Jaldi Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1337, 1384, 'East Joara Barma', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1338, 1385, 'East Joara Dohazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1339, 1386, 'East Joara East Joara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1340, 1387, 'East Joara Gachbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1341, 1421, 'Lohagara Chunti', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1342, 1422, 'Lohagara Padua', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1343, 987, 'Banshkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_pixels`
--

CREATE TABLE `ecom_pixels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_pixels`
--

INSERT INTO `ecom_pixels` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(3, '1415716802873882', 1, '2024-11-19 19:00:59', '2026-02-23 06:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `employee_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `joining_date` date NOT NULL,
  `basic_salary` decimal(14,2) NOT NULL DEFAULT 0.00,
  `address` text DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive','terminated') NOT NULL DEFAULT 'active',
  `notes` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `employee_id`, `name`, `email`, `phone`, `designation`, `department`, `joining_date`, `basic_salary`, `address`, `nid`, `bank_name`, `bank_account`, `status`, `notes`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 17, 'EMP-06242', 'Jakir Hosain', 'vorarkhontho@gmail.com', '01403130512', 'চেয়ারম্যান', 'it', '2026-01-23', 8500.00, 'এস এম আলমগীর চেরাগালি, টঙ্গি\r\nBoro Bari, Noayar Hat', '766656', 'nbnbvbnv', '7777777', 'active', 'hgnhgj', 1, '2026-01-23 16:35:44', '2026-01-23 16:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `check_in` time DEFAULT NULL,
  `check_out` time DEFAULT NULL,
  `status` enum('present','absent','late','half_day','holiday') NOT NULL DEFAULT 'present',
  `notes` text DEFAULT NULL,
  `marked_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `attendance_date`, `check_in`, `check_out`, `status`, `notes`, `marked_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-01-23', '10:37:00', '22:38:00', 'present', 'hgghj', 1, '2026-01-23 16:38:08', '2026-01-23 16:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `employee_bonuses`
--

CREATE TABLE `employee_bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `bonus_type` varchar(255) NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `salary_month` varchar(255) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('pending','approved','paid') NOT NULL DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `approved_by` int(10) UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `leave_type` enum('sick','casual','annual','emergency','maternity','paternity','unpaid') NOT NULL DEFAULT 'casual',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_days` int(11) NOT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `admin_note` text DEFAULT NULL,
  `approved_by` int(10) UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `employee_id`, `leave_type`, `start_date`, `end_date`, `total_days`, `reason`, `status`, `admin_note`, `approved_by`, `approved_at`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'sick', '2026-01-23', '2026-01-23', 1, 'hbbmn', 'pending', NULL, NULL, NULL, 1, '2026-01-23 16:38:25', '2026-01-23 16:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salaries`
--

CREATE TABLE `employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `salary_month` varchar(255) NOT NULL,
  `total_days` int(11) NOT NULL,
  `present_days` int(11) NOT NULL DEFAULT 0,
  `absent_days` int(11) NOT NULL DEFAULT 0,
  `leave_days` int(11) NOT NULL DEFAULT 0,
  `working_days` int(11) NOT NULL DEFAULT 0,
  `basic_salary` decimal(14,2) NOT NULL DEFAULT 0.00,
  `allowance` decimal(14,2) NOT NULL DEFAULT 0.00,
  `deduction` decimal(14,2) NOT NULL DEFAULT 0.00,
  `bonus` decimal(14,2) NOT NULL DEFAULT 0.00,
  `overtime` decimal(14,2) NOT NULL DEFAULT 0.00,
  `gross_salary` decimal(14,2) NOT NULL DEFAULT 0.00,
  `net_salary` decimal(14,2) NOT NULL DEFAULT 0.00,
  `status` enum('pending','calculated','paid') NOT NULL DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `calculated_by` int(10) UNSIGNED DEFAULT NULL,
  `calculated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_salaries`
--

INSERT INTO `employee_salaries` (`id`, `employee_id`, `salary_month`, `total_days`, `present_days`, `absent_days`, `leave_days`, `working_days`, `basic_salary`, `allowance`, `deduction`, `bonus`, `overtime`, `gross_salary`, `net_salary`, `status`, `notes`, `calculated_by`, `calculated_at`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-01', 31, 1, 0, 0, 1, 8500.00, 0.00, 0.00, 0.00, 0.00, 274.19, 274.19, 'calculated', NULL, 1, '2026-01-23 16:38:36', '2026-01-23 16:38:36', '2026-01-23 16:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payments`
--

CREATE TABLE `employee_salary_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `salary_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_id` varchar(255) NOT NULL,
  `payment_month` varchar(255) NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `payment_method` enum('cash','bank_transfer','bkash','nagad','rocket','check') NOT NULL DEFAULT 'bank_transfer',
  `transaction_id` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `payment_date` date NOT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('pending','paid','failed') NOT NULL DEFAULT 'pending',
  `paid_by` int(10) UNSIGNED DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `expense_date` date NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `fund_transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `title`, `amount`, `expense_date`, `category`, `note`, `fund_transaction_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'চা খরচ', 300.00, '2026-02-11', 'সুধু চা বিল', 'সুধু চা বিল', 69, 1, NULL, '2026-02-11 12:12:13', '2026-02-11 12:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `expense_logs`
--

CREATE TABLE `expense_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` enum('edit','delete') NOT NULL,
  `old_title` varchar(255) DEFAULT NULL,
  `new_title` varchar(255) DEFAULT NULL,
  `old_amount` decimal(15,2) DEFAULT NULL,
  `new_amount` decimal(15,2) DEFAULT NULL,
  `old_expense_date` date DEFAULT NULL,
  `new_expense_date` date DEFAULT NULL,
  `old_category` varchar(255) DEFAULT NULL,
  `new_category` varchar(255) DEFAULT NULL,
  `old_note` text DEFAULT NULL,
  `new_note` text DEFAULT NULL,
  `fund_balance_before` decimal(15,2) NOT NULL,
  `fund_balance_after` decimal(15,2) NOT NULL,
  `description` text DEFAULT NULL,
  `performed_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_logs`
--

INSERT INTO `expense_logs` (`id`, `expense_id`, `action`, `old_title`, `new_title`, `old_amount`, `new_amount`, `old_expense_date`, `new_expense_date`, `old_category`, `new_category`, `old_note`, `new_note`, `fund_balance_before`, `fund_balance_after`, `description`, `performed_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'delete', 'ভাত খেয়েছি', NULL, 300.00, NULL, '2025-11-26', NULL, 'অফিস খরচ', NULL, 'ভাত খেয়েছি', NULL, -37089.00, -36789.00, 'Expense deleted: \'ভাত খেয়েছি\' (300.00). Fund balance changed from -37089 to -36789 (+300)', 1, '2026-01-21 18:29:53', '2026-01-21 18:29:53'),
(2, NULL, 'delete', 'চা খরচ', NULL, 100.00, NULL, '2025-11-26', NULL, 'অফিস খরচ', NULL, 'চা খেয়েছি', NULL, 66101.00, 66201.00, 'Expense deleted: \'চা খরচ\' (100.00). Fund balance changed from 66101 to 66201 (+100)', 1, '2026-02-11 12:08:22', '2026-02-11 12:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_capi_settings`
--

CREATE TABLE `facebook_capi_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pixel_id` varchar(255) DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `test_event_code` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_capi_settings`
--

INSERT INTO `facebook_capi_settings` (`id`, `pixel_id`, `access_token`, `test_event_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '1755255695877942', 'EAAPgtn2UmeYBQjQMSr5kTHYQKUZAgpHcoqVmLrmodqt7dDBnQfPUxMzZA3PJD647sKQ770qc9raen9o6AimSCPgiIQCanfOUwfW96D1Jm3qcr0fugZB0Kn3KB9Sbo06YlkEdwK9GwMRNJF8MkVbW4f2NunKZBCDA0DAcqlLUgb4DMIBfAx3AU8J16qiKVAZDZD', NULL, 1, '2026-01-27 09:08:35', '2026-02-23 06:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_page_settings`
--

CREATE TABLE `facebook_page_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` varchar(255) DEFAULT NULL,
  `page_access_token` text DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `auto_post_new_products` tinyint(1) NOT NULL DEFAULT 0,
  `post_template` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_page_settings`
--

INSERT INTO `facebook_page_settings` (`id`, `page_id`, `page_access_token`, `page_name`, `auto_post_new_products`, `post_template`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 0, NULL, '2026-03-13 19:57:28', '2026-03-13 19:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fund_transactions`
--

CREATE TABLE `fund_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `direction` enum('in','out') NOT NULL,
  `source` varchar(50) NOT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `note` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fund_transactions`
--

INSERT INTO `fund_transactions` (`id`, `direction`, `source`, `source_id`, `amount`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'in', 'sale', 531, 190.00, 'Order complete (#48079) via process page', 1, NULL, '2025-11-25 16:37:07', '2025-11-25 16:37:07'),
(2, 'in', 'manual_add', NULL, 1000.00, 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 1, NULL, '2025-11-25 17:25:40', '2025-11-25 17:25:40'),
(3, 'out', 'withdraw', NULL, 200.00, 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 1, NULL, '2025-11-25 17:25:53', '2025-11-25 17:25:53'),
(4, 'in', 'sale', 535, 190.00, 'Order complete (#79768) via process page', 1, NULL, '2025-11-25 17:26:24', '2025-11-25 17:26:24'),
(5, 'out', 'withdraw', NULL, 400.00, 'বাংলাদেশ', 1, NULL, '2025-11-25 18:23:23', '2025-11-25 18:23:23'),
(6, 'in', 'manual_add', NULL, 800.00, 'বাংলাদেশ', 1, NULL, '2025-11-25 18:23:33', '2025-11-25 18:23:33'),
(7, 'in', 'sale', 534, 190.00, 'Order complete (#92038) via process page', 1, NULL, '2025-11-25 18:32:19', '2025-11-25 18:32:19'),
(9, 'out', 'supplier_payment', 1, 200.00, 'Purchase payment: PUR-1764103831', 1, NULL, '2025-11-25 20:51:00', '2025-11-25 20:51:00'),
(10, 'out', 'supplier_payment', 2, 100.00, 'Due payment for purchase: PUR-1764103831', 1, NULL, '2025-11-25 20:51:49', '2025-11-25 20:51:49'),
(11, 'out', 'supplier_payment', 3, 200.00, 'Due payment for purchase: PUR-1764103831', 1, NULL, '2025-11-25 20:53:07', '2025-11-25 20:53:07'),
(12, 'in', 'sale', 532, 310.00, 'Order complete (#67341) via process page', 1, NULL, '2025-11-25 21:46:45', '2025-11-25 21:46:45'),
(13, 'in', 'sale', 536, 184.00, 'Order complete (#30891) via process page', 1, NULL, '2025-11-25 21:50:45', '2025-11-25 21:50:45'),
(14, 'in', 'sale', 537, 234.00, 'Order complete (#23292) via process page', 1, NULL, '2025-11-25 21:54:30', '2025-11-25 21:54:30'),
(16, 'in', 'sale', 562, 2670.00, 'Order complete (#42872) via process page', 1, NULL, '2025-11-26 07:48:52', '2025-11-26 07:48:52'),
(17, 'in', 'sale', 562, 2600.00, 'Order complete (#42872) via process page', 1, NULL, '2025-11-26 07:53:38', '2025-11-26 07:53:38'),
(18, 'in', 'sale', 563, 240.00, 'Order complete (#33453) via process page', 1, NULL, '2025-11-26 09:26:03', '2025-11-26 09:26:03'),
(19, 'out', 'withdraw', NULL, 100.00, 'Rate', 1, NULL, '2025-11-26 17:25:59', '2025-11-26 17:25:59'),
(20, 'in', 'manual_add', NULL, 120.00, 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 1, NULL, '2025-11-26 17:26:20', '2025-11-26 17:26:20'),
(21, 'in', 'sale', 587, 190.00, 'Order complete (#52269) via process page', 1, NULL, '2025-11-27 18:58:44', '2025-11-27 18:58:44'),
(22, 'in', 'sale', 597, 1200.00, 'Order complete (#37424) via process page', 1, NULL, '2025-11-28 05:03:52', '2025-11-28 05:03:52'),
(23, 'in', 'sale', 598, 120.00, 'Order complete (#78217) via process page', 1, NULL, '2025-11-28 05:41:30', '2025-11-28 05:41:30'),
(24, 'in', 'sale', 599, 1270.00, 'Order complete (#87237) via process page', 1, NULL, '2025-11-28 05:42:30', '2025-11-28 05:42:30'),
(25, 'in', 'sale', 607, 3900.00, 'Order complete (#55183) via process page', 1, NULL, '2025-11-28 09:28:56', '2025-11-28 09:28:56'),
(26, 'in', 'sale', 609, 1270.00, 'Order complete (#76609) via process page', 1, NULL, '2025-11-28 10:17:16', '2025-11-28 10:17:16'),
(27, 'in', 'sale', 612, 1270.00, 'Order complete (#56605) via process page', 1, NULL, '2025-11-28 10:22:07', '2025-11-28 10:22:07'),
(28, 'in', 'sale', 612, 1200.00, 'Order complete (#56605) via process page', 1, NULL, '2025-11-28 10:22:35', '2025-11-28 10:22:35'),
(29, 'in', 'sale', 634, 6520.00, 'Order complete (#98366) via process page', 1, NULL, '2025-11-30 02:28:43', '2025-11-30 02:28:43'),
(30, 'in', 'sale', 643, 2670.00, 'Order complete (#44844) via process page', 1, NULL, '2025-12-01 19:13:03', '2025-12-01 19:13:03'),
(31, 'in', 'manual_add', NULL, 1000.00, NULL, 1, NULL, '2025-12-05 13:21:57', '2025-12-05 13:21:57'),
(32, 'in', 'manual_add', NULL, 500.00, NULL, 1, NULL, '2025-12-05 13:22:03', '2025-12-05 13:22:03'),
(33, 'out', 'withdraw', NULL, 1000.00, NULL, 1, NULL, '2025-12-05 13:22:12', '2025-12-05 13:22:12'),
(34, 'in', 'sale', 675, 1970.00, 'Order complete (#14082) via process page', 1, NULL, '2025-12-06 13:57:14', '2025-12-06 13:57:14'),
(35, 'in', 'sale', 714, 12070.00, 'Order complete (#67191)', 1, NULL, '2025-12-11 02:55:01', '2025-12-11 02:55:01'),
(36, 'out', 'supplier_payment', 4, 1000.00, 'Purchase payment: PUR-1765430839', 1, NULL, '2025-12-11 05:28:10', '2025-12-11 05:28:10'),
(37, 'in', 'manual_add', NULL, 5323.00, '4222', 1, NULL, '2025-12-11 05:46:35', '2025-12-11 05:46:35'),
(38, 'out', 'withdraw', NULL, 2000.00, NULL, 1, NULL, '2025-12-11 12:40:55', '2025-12-11 12:40:55'),
(39, 'out', 'supplier_payment', 5, 800.00, 'Due payment: PUR-1765430839', 1, NULL, '2025-12-13 13:34:30', '2025-12-13 13:34:30'),
(40, 'in', 'sale', 729, 10070.00, 'Order complete (#70206) via process page', 1, NULL, '2025-12-14 15:19:25', '2025-12-14 15:19:25'),
(41, 'in', 'sale', 727, 200.00, 'Order complete (#69327) via process page', 1, NULL, '2025-12-14 15:19:50', '2025-12-14 15:19:50'),
(42, 'in', 'sale', 722, 150.00, 'Order complete (#89035) via process page', 1, NULL, '2025-12-14 15:20:01', '2025-12-14 15:20:01'),
(43, 'out', 'supplier_payment', 6, 200.00, 'Due payment: PUR-1764103831', 1, NULL, '2025-12-15 07:12:12', '2025-12-15 07:12:12'),
(44, 'in', 'sale', 734, 0.00, 'Order complete (#22732) via process page', 1, NULL, '2025-12-16 07:27:58', '2025-12-16 07:27:58'),
(45, 'in', 'sale', 744, 320.00, 'Order complete (#89908) via process page', 1, NULL, '2025-12-17 17:44:15', '2025-12-17 17:44:15'),
(46, 'in', 'sale', 750, 0.00, 'Order complete (#87630) via process page', 13, NULL, '2025-12-18 15:27:29', '2025-12-18 15:27:29'),
(47, 'in', 'sale', 753, 10070.00, 'Order complete (#27662)', 1, NULL, '2025-12-18 18:04:07', '2025-12-18 18:04:07'),
(48, 'in', 'sale', 758, 0.00, 'Order complete (#33965) via process page', 13, NULL, '2025-12-19 09:10:27', '2025-12-19 09:10:27'),
(49, 'in', 'sale', 757, 1100.00, 'Order complete (#50427) via process page', 13, NULL, '2025-12-19 09:13:07', '2025-12-19 09:13:07'),
(50, 'out', 'supplier_payment', 7, 5000.00, 'Purchase payment: PUR-1766135846', 13, NULL, '2025-12-19 09:18:17', '2025-12-19 09:18:17'),
(51, 'out', 'supplier_payment', 8, 19300.00, 'Due payment: PUR-1764103831', 13, NULL, '2025-12-19 09:19:17', '2025-12-19 09:19:17'),
(52, 'out', 'supplier_payment', 9, 61200.00, 'Due payment: PUR-1765430839', 13, NULL, '2025-12-19 09:19:27', '2025-12-19 09:19:27'),
(54, 'out', 'supplier_payment', 11, 16000.00, 'Due payment: PUR-1766135846', 13, 1, '2025-12-19 09:20:02', '2026-01-21 18:20:21'),
(58, 'in', 'sale', 1020, 130.00, 'Order complete (#15643)', 1, NULL, '2026-01-22 18:48:04', '2026-01-22 18:48:04'),
(59, 'in', 'sale', 1022, 570.00, 'Order complete (#35907) via process page', 1, NULL, '2026-01-23 18:56:04', '2026-01-23 18:56:04'),
(60, 'in', 'vendor_commission', 1022, 50.00, 'Vendor commission from Order #35907 - Product: Jononi Madical Hall', 1, NULL, '2026-01-23 18:56:04', '2026-01-23 18:56:04'),
(61, 'in', 'sale', 1025, 190.00, 'Order complete (#62375) via process page', 1, NULL, '2026-01-24 13:25:29', '2026-01-24 13:25:29'),
(62, 'in', 'sale', 1042, 2200.00, 'Order complete (#96718) via process page', 1, NULL, '2026-01-25 15:03:40', '2026-01-25 15:03:40'),
(63, 'in', 'manual_add', NULL, 100000.00, NULL, 1, NULL, '2026-01-25 15:58:55', '2026-01-25 15:58:55'),
(64, 'out', 'reseller_withdrawal', 2, 170.00, 'Reseller withdrawal approved - Creative Shoper - Amount: ৳170.00', 1, NULL, '2026-01-25 15:59:15', '2026-01-25 15:59:15'),
(65, 'in', 'sale', 1043, 970.00, 'Order complete (#13771) via process page', 1, NULL, '2026-01-26 09:59:22', '2026-01-26 09:59:22'),
(66, 'in', 'vendor_commission', 1043, 90.00, 'Vendor commission from Order #13771 - Product: 3 in 1 Travel Pillow Set', 1, NULL, '2026-01-26 09:59:22', '2026-01-26 09:59:22'),
(67, 'out', 'refund', 2, 500.00, 'Refund approved for Order #35907 - Refund ID: REF-91843', 1, NULL, '2026-01-26 18:24:26', '2026-01-26 18:24:26'),
(68, 'out', 'refund', 1, 740.00, 'Refund approved for Order #28117 - Refund ID: REF-23874', 1, NULL, '2026-01-26 18:28:51', '2026-01-26 18:28:51'),
(69, 'out', 'expense', 3, 300.00, 'Expense: চা খরচ - সুধু চা বিল', 1, NULL, '2026-02-11 12:12:13', '2026-02-11 12:12:13'),
(70, 'in', 'sale', 1141, 1420.00, 'Order complete (#65067)', 1, NULL, '2026-03-06 13:19:32', '2026-03-06 13:19:32'),
(71, 'in', 'sale', 1140, 10570.00, 'Order complete (#69923)', 1, NULL, '2026-03-06 13:43:15', '2026-03-06 13:43:15'),
(72, 'in', 'vendor_commission', 1140, 1050.00, 'Vendor commission from Order #69923 - Product: Intel Dual Core Desktop Computer Full Setup | Customizable 4-8GB RAM, 120GB SSD, 500GB-1TB HDD & Monitor | Affordable Budget Office & Gaming PC Windows 10 Pro 2025', 1, NULL, '2026-03-06 13:43:15', '2026-03-06 13:43:15'),
(73, 'in', 'sale', 1139, 2670.00, 'Order complete (#63481)', 1, NULL, '2026-03-06 13:44:01', '2026-03-06 13:44:01'),
(74, 'in', 'sale', 1141, 1420.00, 'Order complete (#65067)', 1, NULL, '2026-03-07 05:29:49', '2026-03-07 05:29:49'),
(75, 'in', 'sale', 1145, 870.00, 'Order complete (#73104) via process page', 1, NULL, '2026-03-10 12:30:51', '2026-03-10 12:30:51'),
(76, 'in', 'vendor_commission', 1145, 80.00, 'Vendor commission from Order #73104 - Product: Paragon Brown Egg 1 Dozen (Bundle of 3)', 1, NULL, '2026-03-10 12:30:51', '2026-03-10 12:30:51'),
(77, 'in', 'sale', 1150, 720.00, 'Order complete (#56498)', 1, NULL, '2026-03-27 21:30:09', '2026-03-27 21:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `fund_transaction_logs`
--

CREATE TABLE `fund_transaction_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fund_transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` enum('edit','delete') NOT NULL,
  `old_direction` enum('in','out') DEFAULT NULL,
  `new_direction` enum('in','out') DEFAULT NULL,
  `old_amount` decimal(15,2) DEFAULT NULL,
  `new_amount` decimal(15,2) DEFAULT NULL,
  `balance_before` decimal(15,2) NOT NULL,
  `balance_after` decimal(15,2) NOT NULL,
  `old_note` varchar(255) DEFAULT NULL,
  `new_note` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `performed_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fund_transaction_logs`
--

INSERT INTO `fund_transaction_logs` (`id`, `fund_transaction_id`, `action`, `old_direction`, `new_direction`, `old_amount`, `new_amount`, `balance_before`, `balance_after`, `old_note`, `new_note`, `description`, `performed_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'delete', 'in', NULL, 71.00, NULL, -38018.00, -38089.00, 'Order complete (#45153) via process page', NULL, 'Transaction deleted: in 71.00. Balance changed from -38018 to -38089 (-71)', 1, '2026-01-21 18:17:24', '2026-01-21 18:17:24'),
(2, 54, 'edit', 'out', 'out', 17000.00, 16000.00, -38089.00, -37089.00, 'Due payment: PUR-1766135846', 'Due payment: PUR-1766135846', 'Amount changed from 17000.00 to 16000 (-1000). Balance changed from -38089 to -37089 (+1000)', 1, '2026-01-21 18:20:21', '2026-01-21 18:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(55) NOT NULL,
  `white_logo` varchar(255) NOT NULL,
  `dark_logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `copyright` varchar(155) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `hot_deal_end_date` date DEFAULT NULL,
  `flash_sale_end_date` date DEFAULT NULL,
  `top_headline` text DEFAULT NULL,
  `checkout_note` text DEFAULT NULL,
  `order_policy` text DEFAULT NULL,
  `show_all_products` int(11) NOT NULL DEFAULT 1,
  `show_category_wise_products` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL,
  `demo_mode` tinyint(4) NOT NULL DEFAULT 0,
  `vendor_enabled` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Enabled, 0=Disabled',
  `reseller_enabled` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Enabled, 0=Disabled',
  `reseller_deposit_min` decimal(14,2) DEFAULT 100.00,
  `reseller_deposit_max` decimal(14,2) DEFAULT 1000000.00,
  `reseller_wallet_min_balance` decimal(14,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `og_baner` varchar(255) DEFAULT NULL,
  `fraud_api_key` longtext DEFAULT NULL,
  `duplicate_order_api_key` varchar(255) DEFAULT NULL,
  `fraud_secret_key` longtext DEFAULT NULL,
  `facebook_page_username` text DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `secodery_color` varchar(255) DEFAULT NULL,
  `footer_color` varchar(255) DEFAULT NULL,
  `copyright_color` varchar(255) DEFAULT NULL,
  `order_limit_time` int(11) DEFAULT 48 COMMENT 'Hours',
  `order_limit_qty` int(11) DEFAULT 2 COMMENT 'Quantity Limit',
  `footer_about_text` text DEFAULT NULL,
  `google_play_link` varchar(255) DEFAULT NULL,
  `app_store_link` varchar(255) DEFAULT NULL,
  `update_api_url` varchar(255) DEFAULT NULL,
  `update_script_name` varchar(100) DEFAULT NULL,
  `app_version` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `name`, `white_logo`, `dark_logo`, `favicon`, `copyright`, `description`, `hot_deal_end_date`, `flash_sale_end_date`, `top_headline`, `checkout_note`, `order_policy`, `show_all_products`, `show_category_wise_products`, `status`, `demo_mode`, `vendor_enabled`, `reseller_enabled`, `reseller_deposit_min`, `reseller_deposit_max`, `reseller_wallet_min_balance`, `created_at`, `updated_at`, `og_baner`, `fraud_api_key`, `duplicate_order_api_key`, `fraud_secret_key`, `facebook_page_username`, `primary_color`, `secodery_color`, `footer_color`, `copyright_color`, `order_limit_time`, `order_limit_qty`, `footer_about_text`, `google_play_link`, `app_store_link`, `update_api_url`, `update_script_name`, `app_version`) VALUES
(2, 'Organic Shop', 'public/uploads/settings/1773945430-1770999322-1767449477-1764851787-footer.webp', 'public/uploads/settings/1773945430-1770999322-1767449477-1764851787-footer.webp', 'public/uploads/settings/1773945430-1770999324-1767449479-1764838249-1762927805-1745393878-fav.webp', NULL, '<b>sadf</b>', '2027-11-10', '2027-11-09', 'Diganta Mart Bangladesh Organic Shop অনলাইন শপে আপনাকে স্বাগতম ||\r\nঅনলাইনে আস্থা ও বিশ্বস্ততার সাথে  সারা বাংলাদেশে হোম ডেলিভারী দিয়ে থাকি\r\nঅর্ডার করতে অগ্রিম টাকা দিতে হবে না\r\nএ্যাডভান্স বিকাশ পেমেন্টে ৫% ডিসকাউন্ট\r\n৩-৫ দিনে সারাদেশে হোম ডেলিভারী দেওয়া হয়\r\nক্যাশঅন ডেলিভারীর সুবিধা রয়েছে, তাই অর্ডার করুন নিশ্চিন্তে\r\nধন্যবাদ', '<p class=\"text-danger\" style=\"color: rgb(241, 85, 108) !important;\">বিঃদ্রঃ- দয়া করে ১০০% নিশ্চিত হয়ে অর্ডার করবেন। ছবি এবং বর্ণনার সাথে পণ্যের মিল থাকা সত্যেও আপনি পণ্য গ্রহন করতে না চাইলে, কুরিয়ার চার্জ ১২০ টাকা কুরিয়ার ডেলিভারি ম্যানকে প্রদান করে পণ্য সাথে সাথে রিটার্ন করবেন। অযথা অর্ডার করা থেকে বিরত থাকুন, কারন আপনার মোবাইল নাম্বার, এড্রেস এবং ডিভাইস আইপি নাম্বার দেখা যায় ।</p><p class=\"text-danger\" style=\"color: rgb(241, 85, 108) !important;\"><span style=\"font-weight: bolder;\">একই ডেলিভারি চার্জে আরো প্রোডাক্ট নিতে&nbsp;<a href=\"http://localhost/shop\" style=\"color: blue;\">ক্লিক করুন</a></span></p>', '<div><div><span style=\"font-weight: bolder; background-color: rgb(255, 255, 0);\">বিক্রিত পণ্য ফেরত নেয়া হয় না তবে নিন্ম লিখিত ক্ষেত্রে পণ্য সার্ভিসিং পন্য পরিবর্তন বা মুল্য ফেরত প্রযোজ্য।</span></div><ul><li>আপনার যত প্রশ্ন আছে তা বর্ননার সাথে মিলিয়ে অথবা আমাদের কাছ থেকে জেনে পন্য অর্ডার করুন।</li><li>ছবি এবং বর্ণনার সাথে পন্যের মিল থাকলে পণ্য ফেরত নেয়া হবে না ।</li><li>তবে আপনি চাইলে আপনার গ্রহন করা পন্যের সম মুল্যের বা বেশি মুল্যের পণ্য নিতে পারবেন (যে টাকা বেশি হবে তা প্রদান করতে হবে ) । কম মুল্যের পণ্য নেয়া যাবে না ।</li><li>পণ্য আনা নেয়ার খরচ আপনাকে দিতে হবে।</li><li>যে সকল পন্যে ওয়ারেন্টি আছে তার ওয়ারেন্টি সার্ভিস আমরা প্রদান করবো। তবে কিছু কিছু ক্ষেত্রে পন্যের ব্রান্ড আপনাকে সার্ভিস প্রদান করবে তবে সে ক্ষেত্রে আপনার নিকটস্থ সার্ভিস পয়েন্ট থেকে সার্ভিস নিতে পারবেন।</li><li>পণ্য সার্ভিস করতে যাওয়া আসা বা পাঠানো এবং রিটার্ন করার খরজ আপনাকে বহন করতে হবে।</li><li>১০০% নিশ্চিত হয়ে অর্ডার করুন, কোন কিছু জানার থাকলে কল করুন। Hotline :&nbsp; +8801840144646</li></ul></div>', 1, 1, 1, 0, 1, 1, 100.00, 1000000.00, 10000.00, '2023-01-21 12:01:07', '2026-05-27 19:33:39', 'public/uploads/settings/1773945430-1771040839176745122417653482451.webp', 'YtqHDyODWXlRF3RFv5bsmzp4K5eCBb6SEdjcXfg02WdAGTkjUeMVzqKB1CuV', NULL, 'fdf354a50117f96f470c21e09c357a1f92708ab25e059bc3', 'bmitbd', '#3c7d17', '#3c7d17', '#d5ded0', '#3c7d17', 24, 100, 'Your digital partner for business. We believe in quality and customer satisfaction.', 'https://www.youtube.com/', 'https://www.youtube.com/', 'https://www.creativedesign.com.bd', 'Organic', '9.0');

-- --------------------------------------------------------

--
-- Table structure for table `google_tag_managers`
--

CREATE TABLE `google_tag_managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_tag_managers`
--

INSERT INTO `google_tag_managers` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(4, 'GTM-TTDNCP8L', 1, '2026-03-09 11:06:43', '2026-03-09 11:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `incomplete_orders`
--

CREATE TABLE `incomplete_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `incomplete_orders`
--

INSERT INTO `incomplete_orders` (`id`, `name`, `phone`, `address`, `items`, `product_image`, `product_link`, `total_amount`, `created_at`, `updated_at`) VALUES
(1012, 'Mf Rakibul Hasan', '01775457008', 'Kocuya, bangla Hari', '[{\"id\":234,\"name\":\"\\u0995\\u09be\\u09b2\\u09cb\\u099c\\u09bf\\u09b0\\u09be \\u09ab\\u09c1\\u09b2\\u09c7\\u09b0 \\u09ae\\u09a7\\u09c1 | Black Seed Flower Honey\",\"qty\":1,\"price\":400,\"image\":\"http:\\/\\/localhost\\/public\\/uploads\\/product\\/1773946840-1771041279-1767455182-1764856396-1762932519-1736431804-2024-07-16-66966f64be627.jpg\",\"link\":\"#\",\"is_digital\":0,\"free_delivery\":0},{\"id\":239,\"name\":\"Ajwa Dates (\\u0986\\u099c\\u0993\\u09df\\u09be \\u0996\\u09c7\\u099c\\u09c1\\u09b0)\",\"qty\":1,\"price\":300,\"image\":\"http:\\/\\/localhost\\/public\\/uploads\\/product\\/1773947330-1771042960-1767453482-1764858224-1762948704-ajwa-dates-250-gm.png\",\"link\":\"#\",\"is_digital\":0,\"free_delivery\":0}]', NULL, NULL, 770.00, '2026-03-20 14:22:22', '2026-03-20 14:22:22'),
(1014, 'Partho Sharothi Paul', '01737054053', 'kha 19 south badda', '[{\"id\":240,\"name\":\"Maryam Dates (Saudi) (\\u09ae\\u09b0\\u09bf\\u09df\\u09ae \\u0996\\u09c7\\u099c\\u09c1\\u09b0)\",\"qty\":2,\"price\":800,\"image\":\"https:\\/\\/ecommerce3.bmitltd.com\\/public\\/uploads\\/product\\/1773947469-1771042876-1767453751-1764858062-1762933638-1736438717-mariyamdates.webp\",\"link\":\"#\",\"is_digital\":0,\"free_delivery\":0}]', NULL, NULL, 1600.00, '2026-04-20 19:08:26', '2026-04-20 19:08:26'),
(1015, 'test', '0173705333', 'kha 19 south badda', '[{\"id\":240,\"name\":\"Maryam Dates (Saudi) (\\u09ae\\u09b0\\u09bf\\u09df\\u09ae \\u0996\\u09c7\\u099c\\u09c1\\u09b0)\",\"qty\":2,\"price\":800,\"image\":\"https:\\/\\/ecommerce3.bmitltd.com\\/public\\/uploads\\/product\\/1773947469-1771042876-1767453751-1764858062-1762933638-1736438717-mariyamdates.webp\",\"link\":\"#\",\"is_digital\":0,\"free_delivery\":0}]', NULL, NULL, 1670.00, '2026-04-20 19:08:32', '2026-04-20 19:08:42'),
(1018, 'Jsjsj sjjs', '01792838638', 'Hdjdjdjdj hdjdj', '[{\"id\":249,\"name\":\"\\u09b8\\u09c1\\u09a8\\u09cd\\u09a6\\u09b0\\u09ac\\u09a8\\u09c7\\u09b0 \\u099a\\u09be\\u0995\\u09c7\\u09b0 \\u09ae\\u09a7\\u09c1 | Sundarbans Natural Honey\",\"qty\":2,\"price\":450,\"image\":\"http:\\/\\/ecommerce3.bmitltd.com\\/public\\/uploads\\/product\\/1774010222-1771042354-1767455074-1764856496-1762932628-1736431896-2024-07-16-66966ee025159.jpg\",\"link\":\"#\",\"is_digital\":0,\"free_delivery\":0}]', NULL, NULL, 900.00, '2026-05-09 23:43:06', '2026-05-09 23:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `ip_blocks`
--

CREATE TABLE `ip_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_no` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ip_blocks`
--

INSERT INTO `ip_blocks` (`id`, `ip_no`, `reason`, `created_at`, `updated_at`) VALUES
(9, '37.111.228.119', 'ফেইক অর্ডার', '2026-01-26 17:39:18', '2026-01-26 17:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_11_113936_create_permission_tables', 1),
(8, '2023_01_21_150317_create_general_settings_table', 3),
(9, '2023_01_22_140830_create_social_media_table', 4),
(10, '2023_01_22_153053_create_contacts_table', 5),
(12, '2023_01_22_171430_create_categories_table', 6),
(17, '2023_02_09_082622_create_attributes_table', 7),
(21, '2023_02_11_065126_create_brands_table', 8),
(23, '2023_02_20_022411_create_customers_table', 9),
(24, '2023_02_21_083509_create_banners_table', 8),
(25, '2023_02_21_083647_create_banner_categories_table', 8),
(28, '2023_01_11_114621_create_products_table', 10),
(29, '2023_02_09_091624_create_productimages_table', 10),
(31, '2023_02_22_095626_create_districts_table', 11),
(48, '2023_02_22_150326_create_orders_table', 12),
(49, '2023_02_22_150339_create_order_details_table', 12),
(50, '2023_02_22_150351_create_shippings_table', 12),
(51, '2023_02_22_150400_create_payments_table', 12),
(53, '2023_02_25_022224_create_create_pages_table', 13),
(56, '2023_02_27_095310_create_reviews_table', 14),
(57, '2023_02_27_104954_create_order_types_table', 15),
(58, '2023_03_06_160934_create_campaigns_table', 16),
(59, '2023_03_13_121325_create_productprices_table', 17),
(60, '2023_04_17_125517_create_flavors_table', 18),
(61, '2023_04_17_125843_create_productflavors_table', 18),
(62, '2023_08_04_101452_create_shipping_charges_table', 19),
(64, '2023_08_04_204814_create_order_statuses_table', 20),
(65, '2023_08_06_161254_create_ecom_pixels_table', 21),
(66, '2023_06_04_121934_create_colors_table', 22),
(67, '2023_06_04_122329_create_sizes_table', 22),
(68, '2023_06_04_122459_create_productsizes_table', 22),
(69, '2023_06_04_122542_create_productcolors_table', 22),
(71, '2023_08_17_151949_create_campaign_reviews_table', 23),
(72, '2023_08_21_152844_create_ip_blocks_table', 24),
(73, '2023_09_07_171103_create_subcategories_table', 25),
(74, '2023_09_07_171404_create_childcategories_table', 25),
(76, '2024_02_06_165515_create_payment_gateways_table', 26),
(77, '2024_02_07_142550_create_sms_gateways_table', 27),
(78, '2024_02_07_161302_create_courierapis_table', 28),
(79, '2024_02_11_111947_create_google_tag_managers_table', 29),
(80, '2025_10_02_000001_add_fraud_and_courier_rates_to_orders_table', 30),
(81, '2025_10_02_191959_add_courier_and_fraud_rates_to_orders_table', 31),
(82, '2026_01_20_131201_create_vendors_table', 32),
(83, '2026_01_20_131657_add_vendor_id_to_products_table', 32),
(84, '2026_01_20_140555_add_vendor_id_to_users_table', 32),
(85, '2026_01_20_142857_add_image_default_to_users_table', 33),
(86, '2026_01_20_150134_add_approval_status_to_products_table', 34),
(87, '2026_01_21_100000_add_vendor_commission_to_vendors_table', 35),
(88, '2026_01_21_100100_add_vendor_commission_fields_to_order_details_table', 35),
(89, '2026_01_21_100200_create_vendor_wallets_table', 35),
(90, '2026_01_21_100300_create_vendor_wallet_transactions_table', 35),
(91, '2026_01_21_100400_create_vendor_withdrawals_table', 35),
(92, '2026_01_20_210934_add_verification_fields_to_vendors_table', 36),
(93, '2026_01_20_212001_add_self_image_to_vendors_table', 37),
(94, '2026_01_20_224953_add_role_and_reseller_fields', 38),
(95, '2026_01_20_225329_add_shop_name_to_users_table', 38),
(96, '2026_01_20_230134_add_wallet_balance_to_users_table', 38),
(97, '2026_01_21_000057_create_reseller_withdrawals_table', 39),
(98, '2026_01_21_001318_add_verification_fields_to_users_table', 40),
(99, '2026_01_21_195356_add_duplicate_order_api_key_to_general_settings_table', 41),
(100, '2026_01_21_195534_add_duplicate_order_fields_to_orders_table', 42),
(101, '2026_01_21_232100_add_vendor_reseller_enable_fields_to_general_settings_table', 43),
(102, '2026_01_21_234656_add_updated_by_to_fund_transactions_table', 44),
(106, '2026_01_21_235207_create_fund_transaction_logs_table', 45),
(107, '2026_01_22_002402_create_expense_logs_table', 46),
(108, '2026_01_22_003142_create_purchase_logs_table', 47),
(109, '2026_01_23_204354_create_employees_table', 48),
(110, '2026_01_23_204359_create_employee_attendances_table', 49),
(111, '2026_01_23_204404_create_employee_leaves_table', 50),
(112, '2026_01_23_204409_create_employee_salaries_table', 51),
(113, '2026_01_23_204414_create_employee_bonuses_table', 52),
(114, '2026_01_23_204419_create_employee_salary_payments_table', 53),
(115, '2026_01_23_163010_add_wholesale_fields_to_products_table', 54),
(116, '2026_01_23_164530_create_product_wholesale_prices_table', 55),
(117, '2026_01_23_172635_add_max_quantity_to_product_wholesale_prices_table', 56),
(118, '2026_01_23_173102_add_stock_to_product_wholesale_prices_table', 57),
(119, '2026_01_23_152426_create_refunds_table', 58),
(120, '2026_01_23_160817_add_vendor_id_to_refunds_table', 59),
(121, '2026_01_23_161428_create_wholesale_products_table', 60),
(122, '2026_01_23_210502_add_foreign_keys_to_employees_table', 60),
(123, '2026_01_24_000000_add_reseller_wallet_credited_to_orders_table', 60),
(124, '2026_01_25_223527_add_forgot_field_to_vendors_table', 61),
(125, '2025_01_27_000000_add_client_fields_to_courierapis_table', 62),
(126, '2025_01_27_000001_add_username_password_to_courierapis_table', 63),
(127, '2025_01_27_000002_add_courier_fields_to_orders_table', 64),
(128, '2026_01_27_130254_add_aamarpay_payment_gateway_entry', 65),
(129, '2026_01_27_133417_add_free_delivery_to_products_table', 66),
(130, '2026_01_27_000000_create_facebook_capi_settings_table', 67),
(131, '2026_01_31_000000_add_footer_about_text_to_general_settings_table', 68),
(132, '2026_01_31_000001_create_newsletter_subscribers_table', 69),
(133, '2026_01_31_000002_add_app_store_links_to_general_settings_table', 70),
(135, '2026_02_09_172327_add_webhook_url_to_courierapis_table', 71),
(136, '2026_02_09_200000_create_versions_table', 72),
(137, '2026_02_11_000000_add_demo_mode_to_general_settings_table', 73),
(138, '2026_02_11_000000_add_script_update_fields_to_general_settings_table', 74),
(139, '2026_02_09_210000_create_carts_table', 75),
(140, '2026_03_07_183029_create_stolen_reports_table', 76),
(141, '2026_03_07_202001_create_tiktok_pixels_table', 77),
(142, '2026_03_07_204138_add_color_size_to_productimages_table', 78),
(143, '2026_03_07_231001_add_index_to_productimages_for_product_details', 79),
(144, '2026_03_07_120000_add_page_builder_to_campaigns_table', 80),
(145, '2026_03_07_210000_add_date_column_to_campaigns_table', 81),
(146, '2026_03_07_220000_add_review_and_legacy_columns_to_campaigns_table', 82),
(147, '2026_03_09_000001_create_cron_job_settings_table', 83),
(148, '2026_03_09_100000_add_video_upload_to_products_table', 84),
(149, '2026_03_10_000001_create_reseller_deposits_table', 85),
(150, '2026_03_10_000002_add_reseller_deposit_settings_to_general_settings', 86),
(151, '2026_03_10_000003_create_reseller_wallet_transactions_table', 87),
(152, '2026_03_10_000004_add_reseller_wallet_min_balance_to_general_settings', 88),
(153, '2026_03_11_000001_create_reseller_landing_pages_table', 89),
(154, '2026_03_11_000002_create_reseller_landing_products_table', 90),
(155, '2026_03_11_000003_add_unique_to_reseller_landing_products', 90),
(156, '2026_03_12_000001_add_social_newsletter_to_reseller_landing_pages', 91),
(157, '2026_03_12_000002_create_reseller_landing_newsletter_subscribers_table', 92),
(158, '2026_03_12_100000_add_favicon_to_reseller_landing_pages', 93),
(159, '2026_03_12_110000_add_scrolling_text_to_reseller_landing_pages', 94),
(160, '2026_03_12_120000_create_reseller_landing_contact_messages_table', 95),
(161, '2026_03_12_130000_add_tracking_pixels_to_reseller_landing_pages', 96),
(162, '2026_03_11_120000_create_ads_analytics_settings_table', 97),
(163, '2026_03_11_150000_create_facebook_page_settings_table', 98),
(164, '2026_03_11_150001_add_facebook_posted_at_to_products_table', 98);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 21),
(4, 'App\\Models\\User', 22),
(4, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 26),
(4, 'App\\Models\\User', 28),
(5, 'App\\Models\\Customer', 457),
(5, 'App\\Models\\Customer', 462),
(5, 'App\\Models\\Customer', 463),
(5, 'App\\Models\\Customer', 465),
(5, 'App\\Models\\Customer', 474),
(5, 'App\\Models\\Customer', 495),
(5, 'App\\Models\\Customer', 498),
(5, 'App\\Models\\Customer', 499),
(5, 'App\\Models\\Customer', 501),
(6, 'App\\Models\\User', 20),
(6, 'App\\Models\\User', 27),
(6, 'App\\Models\\User', 29),
(8, 'App\\Models\\User', 17);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 0=unsubscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'okibkhan420@gmail.com', 1, '2026-01-31 15:15:30', '2026-01-31 15:15:30'),
(2, 'eilklrji@immenseignite.info', 1, '2026-06-07 13:40:38', '2026-06-07 13:40:38'),
(3, 'rolqlonu@immenseignite.info', 1, '2026-06-07 13:41:04', '2026-06-07 13:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` varchar(55) NOT NULL,
  `consignment_id` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `reseller_profit` decimal(14,2) DEFAULT NULL,
  `customer_payable_amount` decimal(14,2) DEFAULT NULL,
  `reseller_wallet_credited` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Whether reseller wallet has been credited for this order',
  `discount` int(11) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `shipping_charge` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `courier_type` varchar(255) DEFAULT NULL COMMENT 'pathao, steadfast, redx, etc',
  `courier_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Consignment ID or Tracking ID from courier',
  `courier_sent_at` timestamp NULL DEFAULT NULL COMMENT 'When order was sent to courier',
  `fraud_success` int(11) NOT NULL DEFAULT 0,
  `fraud_cancel` int(11) NOT NULL DEFAULT 0,
  `fraud_rate` double DEFAULT NULL,
  `pathao_success` int(11) NOT NULL DEFAULT 0,
  `pathao_cancel` int(11) NOT NULL DEFAULT 0,
  `pathao_rate` decimal(5,2) NOT NULL DEFAULT 0.00,
  `redx_success` int(11) NOT NULL DEFAULT 0,
  `redx_cancel` int(11) NOT NULL DEFAULT 0,
  `redx_rate` decimal(5,2) NOT NULL DEFAULT 0.00,
  `steadfast_success` int(11) NOT NULL DEFAULT 0,
  `steadfast_cancel` int(11) NOT NULL DEFAULT 0,
  `steadfast_rate` decimal(5,2) NOT NULL DEFAULT 0.00,
  `is_duplicate_order` tinyint(4) NOT NULL DEFAULT 0,
  `duplicate_order_count` int(11) NOT NULL DEFAULT 0,
  `duplicate_order_rate` decimal(5,2) DEFAULT NULL,
  `last_duplicate_order_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT 'unpaid',
  `payment_gateway` varchar(100) DEFAULT NULL,
  `advance_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `order_note` text DEFAULT NULL,
  `delivery_charge_deducted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `consignment_id`, `amount`, `reseller_profit`, `customer_payable_amount`, `reseller_wallet_credited`, `discount`, `coupon_code`, `shipping_charge`, `customer_id`, `ip_address`, `admin_note`, `order_status`, `courier_type`, `courier_tracking_id`, `courier_sent_at`, `fraud_success`, `fraud_cancel`, `fraud_rate`, `pathao_success`, `pathao_cancel`, `pathao_rate`, `redx_success`, `redx_cancel`, `redx_rate`, `steadfast_success`, `steadfast_cancel`, `steadfast_rate`, `is_duplicate_order`, `duplicate_order_count`, `duplicate_order_rate`, `last_duplicate_order_date`, `user_id`, `note`, `created_at`, `updated_at`, `payment_status`, `payment_gateway`, `advance_amount`, `order_note`, `delivery_charge_deducted`) VALUES
(1148, '44398', NULL, 420, NULL, NULL, 0, 0, NULL, 70, 500, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-20 14:06:01', '2026-03-20 14:06:07', 'unpaid', NULL, 0.00, NULL, 0),
(1149, '55339', NULL, 420, NULL, NULL, 0, 0, NULL, 70, 307, '::1', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-20 14:08:32', '2026-03-20 14:08:32', 'pending', NULL, 0.00, NULL, 0),
(1150, '56498', '232455057', 720, NULL, NULL, 0, 0, NULL, 70, 306, '::1', NULL, 6, 'steadfast', '232455057', '2026-03-22 09:32:55', 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-03-20 14:14:38', '2026-03-27 21:30:09', 'pending', NULL, 0.00, NULL, 0),
(1151, '99088', NULL, 570, NULL, NULL, 0, 0, NULL, 120, 502, '120.89.67.41', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-04-11 07:07:04', '2026-04-11 07:07:04', 'pending', NULL, 0.00, NULL, 0),
(1152, '73468', NULL, 1670, NULL, NULL, 0, 0, NULL, 70, 503, '202.4.108.150', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-04-20 19:08:52', '2026-04-20 19:08:52', 'pending', NULL, 0.00, NULL, 0),
(1153, '88948', NULL, 970, NULL, NULL, 0, 0, NULL, 70, 504, '103.112.237.60', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-04-24 14:50:36', '2026-04-24 14:50:36', 'pending', NULL, 0.00, NULL, 0),
(1154, '28103', NULL, 970, NULL, NULL, 0, 0, NULL, 70, 505, '103.197.153.14', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-05-27 19:24:24', '2026-05-27 19:24:24', 'pending', NULL, 0.00, NULL, 0),
(1155, '81432', NULL, 970, NULL, NULL, 0, 0, NULL, 70, 506, '103.197.153.15', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-16 01:23:09', '2026-06-16 01:23:09', 'pending', NULL, 0.00, NULL, 0),
(1156, '43498', NULL, 720, NULL, NULL, 0, 0, NULL, 70, 505, '118.179.168.171', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-21 17:09:50', '2026-06-21 17:09:52', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1157, '58145', NULL, 720, NULL, NULL, 0, 0, NULL, 70, 505, '118.179.168.171', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-21 17:11:41', '2026-06-21 17:11:43', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1158, '75868', NULL, 1070, NULL, NULL, 0, 0, NULL, 70, 505, '118.179.168.171', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-21 17:21:59', '2026-06-21 17:22:00', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1159, '18984', NULL, 570, NULL, NULL, 0, 0, NULL, 70, 505, '118.179.168.171', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-21 17:51:17', '2026-06-21 17:51:19', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1160, '51431', NULL, 720, NULL, NULL, 0, 0, NULL, 70, 505, '118.179.168.171', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-21 18:06:29', '2026-06-21 18:06:31', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1161, '51340', NULL, 720, NULL, NULL, 0, 0, NULL, 70, 506, '103.197.153.15', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-21 23:19:34', '2026-06-21 23:19:36', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1162, '47624', NULL, 1370, NULL, NULL, 0, 0, NULL, 70, 506, '103.197.153.15', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-22 00:00:53', '2026-06-22 00:00:54', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1163, '80271', NULL, 1370, NULL, NULL, 0, 0, NULL, 70, 506, '103.197.153.15', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-22 00:32:17', '2026-06-22 00:32:18', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1164, '48751', NULL, 1070, NULL, NULL, 0, 0, NULL, 70, 506, '103.197.153.15', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-22 00:41:11', '2026-06-22 00:41:14', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1165, '20549', NULL, 1070, NULL, NULL, 0, 0, NULL, 70, 506, '103.197.153.15', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-22 00:47:07', '2026-06-22 00:47:08', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1166, '92761', NULL, 1370, NULL, NULL, 0, 0, NULL, 70, 506, '103.197.153.15', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-22 00:51:38', '2026-06-22 00:51:39', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1167, '58204', NULL, 1070, NULL, NULL, 0, 0, NULL, 70, 505, '103.197.153.15', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-22 20:20:10', '2026-06-22 20:20:12', 'pending', 'uddoktapay', 0.00, NULL, 0),
(1168, '31274', NULL, 2470, NULL, NULL, 0, 0, NULL, 70, 505, '103.197.153.15', NULL, 1, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2026-06-22 20:22:18', '2026-06-22 20:22:18', 'pending', NULL, 0.00, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `purchase_price` int(11) DEFAULT NULL,
  `sale_price` int(11) NOT NULL,
  `commission_rate` decimal(5,2) DEFAULT NULL,
  `admin_commission` decimal(12,2) NOT NULL DEFAULT 0.00,
  `vendor_earning` decimal(12,2) NOT NULL DEFAULT 0.00,
  `vendor_paid_at` timestamp NULL DEFAULT NULL,
  `product_discount` int(11) DEFAULT 0,
  `product_size` varchar(255) DEFAULT NULL,
  `variant_price_id` int(11) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `vendor_id`, `product_name`, `purchase_price`, `sale_price`, `commission_rate`, `admin_commission`, `vendor_earning`, `vendor_paid_at`, `product_discount`, `product_size`, `variant_price_id`, `product_color`, `qty`, `created_at`, `updated_at`) VALUES
(1403, 1148, 235, NULL, 'Gawa Ghee/গাওয়া ঘি (500 গ্রাম)', 0, 350, NULL, 0.00, 0.00, NULL, 0, NULL, NULL, NULL, 1, '2026-03-20 14:06:07', '2026-03-20 14:06:07'),
(1404, 1149, 235, NULL, 'Gawa Ghee/গাওয়া ঘি (500 গ্রাম)', 500, 350, NULL, 0.00, 0.00, NULL, 0, NULL, 455, NULL, 1, '2026-03-20 14:08:32', '2026-03-20 14:08:32'),
(1405, 1150, 246, NULL, 'Black Seed Honey', 350, 650, NULL, 0.00, 0.00, NULL, 0, NULL, 479, NULL, 1, '2026-03-20 14:14:38', '2026-03-20 14:14:38'),
(1406, 1151, 249, NULL, 'সুন্দরবনের চাকের মধু | Sundarbans Natural Honey', 500, 450, NULL, 0.00, 0.00, NULL, 0, NULL, 489, NULL, 1, '2026-04-11 07:07:04', '2026-04-11 07:07:04'),
(1407, 1152, 240, NULL, 'Maryam Dates (Saudi) (মরিয়ম খেজুর)', 5000, 800, NULL, 0.00, 0.00, NULL, 0, '19', 467, NULL, 2, '2026-04-20 19:08:52', '2026-04-20 19:08:52'),
(1408, 1153, 248, NULL, 'Peanut Butter (Diabetics)', 2000, 900, NULL, 0.00, 0.00, NULL, 0, '19', 487, NULL, 1, '2026-04-24 14:50:36', '2026-04-24 14:50:36'),
(1409, 1154, 248, NULL, 'Peanut Butter (Diabetics)', 2000, 900, NULL, 0.00, 0.00, NULL, 0, NULL, 487, NULL, 1, '2026-05-27 19:24:24', '2026-05-27 19:24:24'),
(1410, 1155, 249, NULL, 'সুন্দরবনের চাকের মধু | Sundarbans Natural Honey', 500, 450, NULL, 0.00, 0.00, NULL, 0, NULL, 489, NULL, 2, '2026-06-16 01:23:09', '2026-06-16 01:23:09'),
(1411, 1156, 246, NULL, 'Black Seed Honey', 350, 650, NULL, 0.00, 0.00, NULL, 0, NULL, 479, NULL, 1, '2026-06-21 17:09:50', '2026-06-21 17:09:50'),
(1412, 1157, 244, NULL, 'Pure Ghee (ঘি)', 500, 650, NULL, 0.00, 0.00, NULL, 0, NULL, 475, NULL, 1, '2026-06-21 17:11:41', '2026-06-21 17:11:41'),
(1413, 1158, 247, NULL, 'Blended Floral Honey (ব্লেন্ডেড ফ্লোরাল হানি)', 1200, 500, NULL, 0.00, 0.00, NULL, 0, NULL, 491, NULL, 2, '2026-06-21 17:21:59', '2026-06-21 17:21:59'),
(1414, 1159, 247, NULL, 'Blended Floral Honey (ব্লেন্ডেড ফ্লোরাল হানি)', 1200, 500, NULL, 0.00, 0.00, NULL, 0, NULL, 491, NULL, 1, '2026-06-21 17:51:17', '2026-06-21 17:51:17'),
(1415, 1160, 246, NULL, 'Black Seed Honey', 350, 650, NULL, 0.00, 0.00, NULL, 0, NULL, 479, NULL, 1, '2026-06-21 18:06:29', '2026-06-21 18:06:29'),
(1416, 1161, 246, NULL, 'Black Seed Honey', 350, 650, NULL, 0.00, 0.00, NULL, 0, NULL, 479, NULL, 1, '2026-06-21 23:19:34', '2026-06-21 23:19:34'),
(1417, 1162, 246, NULL, 'Black Seed Honey', 350, 650, NULL, 0.00, 0.00, NULL, 0, NULL, 479, NULL, 2, '2026-06-22 00:00:53', '2026-06-22 00:00:53'),
(1418, 1163, 246, NULL, 'Black Seed Honey', 350, 650, NULL, 0.00, 0.00, NULL, 0, NULL, 479, NULL, 2, '2026-06-22 00:32:17', '2026-06-22 00:32:17'),
(1419, 1164, 247, NULL, 'Blended Floral Honey (ব্লেন্ডেড ফ্লোরাল হানি)', 1200, 500, NULL, 0.00, 0.00, NULL, 0, NULL, 491, NULL, 2, '2026-06-22 00:41:11', '2026-06-22 00:41:11'),
(1420, 1165, 247, NULL, 'Blended Floral Honey (ব্লেন্ডেড ফ্লোরাল হানি)', 1200, 500, NULL, 0.00, 0.00, NULL, 0, NULL, 491, NULL, 2, '2026-06-22 00:47:07', '2026-06-22 00:47:07'),
(1421, 1166, 246, NULL, 'Black Seed Honey', 350, 650, NULL, 0.00, 0.00, NULL, 0, NULL, 479, NULL, 2, '2026-06-22 00:51:38', '2026-06-22 00:51:38'),
(1422, 1167, 247, NULL, 'Blended Floral Honey (ব্লেন্ডেড ফ্লোরাল হানি)', 1200, 500, NULL, 0.00, 0.00, NULL, 0, NULL, 491, NULL, 2, '2026-06-22 20:20:10', '2026-06-22 20:20:10'),
(1423, 1168, 243, NULL, 'Peanut Butter (Diabetics)', 5000, 1200, NULL, 0.00, 0.00, NULL, 0, NULL, 473, NULL, 2, '2026-06-22 20:22:18', '2026-06-22 20:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'pending', '1', '2023-08-15 11:28:33', '2023-08-15 11:28:33'),
(2, 'Processing', 'processing', '1', '2023-08-15 11:31:22', '2023-08-15 11:31:22'),
(3, 'On The Way', 'on-the-way', '1', '2023-08-15 11:31:34', '2023-08-15 11:31:34'),
(5, 'In Courier', 'in-courier', '0', '2023-08-15 11:31:56', '2025-11-18 18:05:34'),
(6, 'Completed', 'completed', '1', '2023-08-15 11:32:06', '2023-08-21 05:46:06'),
(8, 'Unpaid', 'unpaid', '1', '2024-07-06 17:47:36', '2024-07-06 17:47:36'),
(11, 'Cancelled', 'cancelled', '0', '2025-11-24 04:42:36', '2025-12-11 04:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('creativedesign.com.bd@gmail.com', '$2y$10$Vf/zd29X37nMtyPpSMqabu2Ww8VRSv90i9MISajzGPXp5OFaR5Mu2', '2025-11-10 07:59:11'),
('info@creativedesign.com.bd', '$2y$10$wV0ieC6q6/3JqPT4YH2rk.ZBap5GmgTzoNEL8sdbbNx0InJIJ0tpK', '2025-12-24 12:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `trx_id` varchar(55) DEFAULT NULL,
  `sender_number` varchar(55) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL,
  `payment_status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `customer_id`, `amount`, `trx_id`, `sender_number`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(76, 76, 23, 1070, NULL, NULL, 'Cash On Delivery', 'pending', '2024-11-09 06:15:34', '2024-11-09 06:15:34'),
(1133, 1148, 500, 420, NULL, NULL, 'Cash On Delivery', 'pending', '2026-03-20 14:06:01', '2026-03-20 14:06:07'),
(1134, 1149, 307, 420, NULL, NULL, 'cod', 'pending', '2026-03-20 14:08:32', '2026-03-20 14:08:32'),
(1135, 1150, 306, 720, NULL, NULL, 'cod', 'pending', '2026-03-20 14:14:38', '2026-03-20 14:14:38'),
(1136, 1151, 502, 0, NULL, NULL, 'bkash', 'pending', '2026-04-11 07:07:04', '2026-04-11 07:07:04'),
(1137, 1152, 503, 0, NULL, NULL, 'bkash', 'pending', '2026-04-20 19:08:52', '2026-04-20 19:08:52'),
(1138, 1153, 504, 970, NULL, NULL, 'cod', 'pending', '2026-04-24 14:50:36', '2026-04-24 14:50:36'),
(1139, 1154, 505, 0, NULL, NULL, 'bkash', 'pending', '2026-05-27 19:24:24', '2026-05-27 19:24:24'),
(1140, 1155, 506, 0, NULL, NULL, 'bkash', 'pending', '2026-06-16 01:23:09', '2026-06-16 01:23:09'),
(1141, 1156, 505, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-06-21 17:09:50', '2026-06-21 17:09:50'),
(1142, 1157, 505, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-06-21 17:11:41', '2026-06-21 17:11:41'),
(1143, 1158, 505, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-06-21 17:21:59', '2026-06-21 17:21:59'),
(1144, 1159, 505, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-06-21 17:51:17', '2026-06-21 17:51:17'),
(1145, 1160, 505, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-06-21 18:06:29', '2026-06-21 18:06:29'),
(1146, 1161, 506, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-06-21 23:19:34', '2026-06-21 23:19:34'),
(1147, 1162, 506, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-06-22 00:00:53', '2026-06-22 00:00:53'),
(1148, 1163, 506, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-06-22 00:32:17', '2026-06-22 00:32:17'),
(1149, 1164, 506, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-06-22 00:41:11', '2026-06-22 00:41:11'),
(1150, 1165, 506, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-06-22 00:47:07', '2026-06-22 00:47:07'),
(1151, 1166, 506, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-06-22 00:51:38', '2026-06-22 00:51:38'),
(1152, 1167, 505, 0, NULL, NULL, 'uddoktapay', 'pending', '2026-06-22 20:20:10', '2026-06-22 20:20:10'),
(1153, 1168, 505, 0, NULL, NULL, 'shurjopay', 'pending', '2026-06-22 20:22:18', '2026-06-22 20:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `app_key` varchar(155) DEFAULT NULL,
  `app_secret` varchar(155) DEFAULT NULL,
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `base_url` varchar(99) DEFAULT NULL,
  `success_url` varchar(155) DEFAULT NULL,
  `return_url` varchar(155) DEFAULT NULL,
  `prefix` varchar(25) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `type`, `app_key`, `app_secret`, `username`, `password`, `base_url`, `success_url`, `return_url`, `prefix`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bkash', '4f6o0cjiki2rfm34kfdadl1eqq', '2is7hdktrekvrbljjh44ll3d9l1dtjo4pasmjvs5vl5qr3fug4b', 'sandboxTokenizedUser02', 'sandboxTokenizedUser02@12345', 'https://tokenized.sandbox.bka.sh/v1.2.0-beta', NULL, NULL, NULL, 1, '2024-02-06 11:29:46', '2026-01-02 09:53:08'),
(2, 'shurjopay', '', '', 'sp_sandbox', 'pyyk97hu&6u6', 'https://sandbox.shurjopayment.com', 'https://ecommerce1.creativedesign.com.bdpayment-success', 'https://ecommerce1.creativedesign.com.bd/', 'NOK', 1, '2024-02-06 11:29:46', '2026-01-02 09:53:12'),
(3, 'uddoktapay', 'gPZz30yFeHCywQGrwrlM2pcOfRaVyfaUPwecqaNo', 'YOUR_UDDOKTAPAY_SECRET', NULL, NULL, 'https://digantamartbd.paymently.io/api', NULL, NULL, NULL, 1, '2025-11-06 18:37:36', '2026-06-21 18:05:32'),
(4, 'aamarpay', 'aamarpaytest', 'dbb74894e82415a2f7ff0ec3a97e4183', NULL, NULL, 'https://sandbox.aamarpay.com/jsonpost.php', NULL, NULL, NULL, 1, '2026-01-27 07:04:47', '2026-01-27 07:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'admin', '2023-01-11 06:31:32', '2023-01-11 06:31:32'),
(2, 'role-create', 'admin', '2023-01-11 06:31:33', '2023-01-11 06:31:33'),
(3, 'role-edit', 'admin', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(4, 'role-delete', 'admin', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(5, 'product-list', 'admin', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(6, 'product-create', 'admin', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(7, 'product-edit', 'admin', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(8, 'product-delete', 'admin', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(9, 'permission-list', 'admin', NULL, NULL),
(10, 'permission-create', 'admin', NULL, NULL),
(11, 'setting-delete', 'admin', '2023-01-21 10:50:15', '2023-01-21 10:50:15'),
(12, 'setting-edit', 'admin', '2023-01-21 10:50:35', '2023-01-21 10:50:35'),
(13, 'setting-create', 'admin', '2023-01-21 10:50:50', '2023-01-21 10:50:50'),
(14, 'setting-list', 'admin', '2023-01-21 10:51:01', '2023-01-21 10:51:01'),
(15, 'social-list', 'admin', '2023-01-22 08:33:54', '2023-01-22 08:33:54'),
(16, 'social-create', 'admin', '2023-01-22 08:34:07', '2023-01-22 08:34:07'),
(17, 'social-edit', 'admin', '2023-01-22 08:34:17', '2023-01-22 08:34:17'),
(18, 'social-delete', 'admin', '2023-01-22 08:34:25', '2023-01-22 08:34:25'),
(19, 'contact-list', 'admin', '2023-01-22 10:25:01', '2023-01-22 10:25:01'),
(20, 'contact-create', 'admin', '2023-01-22 10:25:16', '2023-01-22 10:28:19'),
(21, 'permission-edit', 'admin', '2023-01-22 10:26:28', '2023-01-22 10:26:28'),
(22, 'permission-delete', 'admin', '2023-01-22 10:26:39', '2023-01-22 10:26:39'),
(23, 'contact-edit', 'admin', '2023-01-22 10:28:34', '2023-01-22 10:28:34'),
(24, 'contact-delete', 'admin', '2023-01-22 10:28:45', '2023-01-22 10:28:45'),
(25, 'category-list', 'admin', '2023-02-08 10:26:58', '2023-02-08 10:26:58'),
(26, 'category-create', 'admin', '2023-02-08 10:27:19', '2023-02-08 10:27:19'),
(27, 'category-edit', 'admin', '2023-02-08 10:27:28', '2023-02-08 10:27:28'),
(28, 'category-delete', 'admin', '2023-02-08 10:27:38', '2023-02-08 10:27:38'),
(29, 'attribute-list', 'admin', '2023-02-09 02:54:47', '2023-02-09 02:54:47'),
(30, 'attribute-create', 'admin', '2023-02-09 02:55:02', '2023-02-09 02:55:02'),
(31, 'attribute-edit', 'admin', '2023-02-09 02:55:14', '2023-02-09 02:55:14'),
(32, 'attribute-delete', 'admin', '2023-02-09 02:55:23', '2023-02-09 02:55:23'),
(33, 'banner-category-list', 'admin', '2023-02-21 03:00:08', '2023-02-21 03:00:08'),
(34, 'banner-category-create', 'admin', '2023-02-21 03:00:34', '2023-02-21 03:00:34'),
(35, 'banner-category-edit', 'admin', '2023-02-21 03:00:45', '2023-02-21 03:00:45'),
(36, 'banner-category-delete', 'admin', '2023-02-21 03:00:53', '2023-02-21 03:00:53'),
(37, 'banner-list', 'admin', '2023-02-21 03:51:27', '2023-02-21 03:51:27'),
(38, 'banner-create', 'admin', '2023-02-21 03:51:50', '2023-02-21 03:51:50'),
(39, 'banner-edit', 'admin', '2023-02-21 03:52:18', '2023-02-21 03:52:18'),
(40, 'banner-delete', 'admin', '2023-02-21 03:52:32', '2023-02-21 03:52:32'),
(41, 'page-list', 'admin', '2023-02-24 20:42:52', '2023-02-24 20:42:52'),
(42, 'page-create', 'admin', '2023-02-24 20:43:01', '2023-02-24 20:43:01'),
(43, 'page-edit', 'admin', '2023-02-24 20:43:08', '2023-02-24 20:43:08'),
(44, 'page-delete', 'admin', '2023-02-24 20:43:15', '2023-02-24 20:43:15'),
(49, 'shipping-list', 'admin', '2023-08-04 08:46:28', '2023-08-04 08:46:28'),
(50, 'shipping-create', 'admin', '2023-08-04 08:47:09', '2023-08-04 08:47:09'),
(51, 'shipping-edit', 'admin', '2023-08-04 08:47:23', '2023-08-04 08:47:23'),
(52, 'shipping-delete', 'admin', '2023-08-04 08:47:34', '2023-08-04 08:47:34'),
(53, 'color-list', 'admin', '2023-08-15 07:48:52', '2023-08-15 07:48:52'),
(54, 'color-create', 'admin', '2023-08-15 07:49:01', '2023-08-15 07:49:01'),
(55, 'color-edit', 'admin', '2023-08-15 07:49:12', '2023-08-15 07:49:12'),
(56, 'color-delete', 'admin', '2023-08-15 07:49:20', '2023-08-15 07:49:20'),
(69, 'subcategory-list', 'admin', '2024-01-31 10:49:48', '2024-01-31 10:49:48'),
(70, 'subcategory-create', 'admin', '2024-01-31 10:49:56', '2024-01-31 10:49:56'),
(71, 'subcategory-edit', 'admin', '2024-01-31 10:50:04', '2024-01-31 10:50:04'),
(72, 'subcategory-delete', 'admin', '2024-01-31 10:50:13', '2024-01-31 10:50:13'),
(73, 'childcategory-list', 'admin', '2024-01-31 10:51:33', '2024-01-31 10:51:33'),
(74, 'childcategory-create', 'admin', '2024-01-31 10:51:41', '2024-01-31 10:51:41'),
(75, 'childcategory-edit', 'admin', '2024-01-31 10:51:50', '2024-01-31 10:51:50'),
(76, 'childcategory-delete', 'admin', '2024-01-31 10:52:00', '2024-01-31 10:52:00'),
(81, 'order-create', 'web', '2026-01-21 13:24:09', '2026-01-21 13:24:09'),
(82, 'order-list', 'web', '2026-01-21 13:24:43', '2026-01-21 13:24:43'),
(83, 'order-edit', 'web', '2026-01-21 13:24:54', '2026-01-21 13:24:54'),
(84, 'order-list', 'admin', '2026-01-21 13:40:57', '2026-01-21 13:40:57'),
(85, 'order-edit', 'admin', '2026-01-21 13:41:08', '2026-01-21 13:41:08'),
(86, 'order-create', 'admin', '2026-01-21 13:41:22', '2026-01-21 13:41:22'),
(87, 'brand-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(88, 'brand-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(89, 'brand-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(90, 'size-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(91, 'size-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(92, 'size-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(93, 'product-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(94, 'vendor-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(95, 'vendor-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(96, 'vendor-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(97, 'vendor-verification', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(98, 'vendor-withdrawal', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(99, 'reseller-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(100, 'reseller-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(101, 'reseller-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(102, 'reseller-verification', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(103, 'reseller-withdrawal', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(104, 'customer-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(105, 'customer-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(106, 'customer-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(107, 'order-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(108, 'blog-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(109, 'blog-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(110, 'blog-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(111, 'blog-delete', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(112, 'campaign-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(113, 'campaign-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(114, 'coupon-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(115, 'coupon-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(116, 'coupon-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(117, 'coupon-delete', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(118, 'purchase-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(119, 'purchase-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(120, 'purchase-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(121, 'supplier-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(122, 'supplier-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(123, 'supplier-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(124, 'fund-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(125, 'fund-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(126, 'fund-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(127, 'expense-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(128, 'expense-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(129, 'expense-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(130, 'report-view', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(131, 'order-report', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(132, 'purchase-report', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(133, 'expense-report', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(134, 'stock-report', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(135, 'profit-loss-report', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(136, 'review-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(137, 'review-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(138, 'api-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(139, 'pixel-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(140, 'seo-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(141, 'sitemap-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(142, 'fraud-check', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(143, 'fraud-setting-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(144, 'fraud-setting-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(145, 'sms-send', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(146, 'email-setting-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(147, 'license-info', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(148, 'complaint-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(149, 'complaint-create', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(150, 'complaint-edit', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(151, 'popup-list', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09'),
(152, 'popup-manage', 'admin', '2026-01-21 13:47:09', '2026-01-21 13:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `offer_end_text` varchar(255) DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `popups`
--

INSERT INTO `popups` (`id`, `image`, `title`, `description`, `offer_end_text`, `btn_text`, `link`, `status`, `created_at`, `updated_at`) VALUES
(4, 'uploads/popup/1774102600.jpg', '69a7f7ec19e6b-square', NULL, NULL, 'Shop Now', 'https://www.bmitltd.com', 1, '2026-03-21 14:16:40', '2026-04-14 00:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `productcolors`
--

CREATE TABLE `productcolors` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcolors`
--

INSERT INTO `productcolors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 35, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 62, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(3, 35, 44, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(4, 28, 62, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(5, 2, 65, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(6, 131, 32, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(7, 131, 36, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(8, 131, 39, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(9, 131, 40, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(10, 117, 32, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(11, 117, 35, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(12, 117, 39, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(13, 1, 36, '2024-07-06 15:29:32', '2024-07-06 15:29:32'),
(14, 132, 32, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(15, 132, 36, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(16, 133, 36, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(17, 133, 49, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(18, 130, 35, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(19, 130, 36, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(20, 130, 39, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(21, 130, 48, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(22, 135, 35, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(23, 135, 36, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(24, 135, 39, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(25, 137, 35, '2024-11-08 14:54:47', '2024-11-08 14:54:47'),
(26, 139, 62, '2024-11-08 15:09:17', '2024-11-08 15:09:17'),
(27, 150, 62, '2024-11-08 16:59:22', '2024-11-08 16:59:22'),
(28, 156, 35, '2024-11-27 21:33:49', '2024-11-27 21:33:49'),
(29, 156, 39, '2024-11-27 21:33:49', '2024-11-27 21:33:49'),
(30, 155, 35, '2024-12-02 15:11:23', '2024-12-02 15:11:23'),
(31, 157, 40, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(32, 157, 44, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(33, 157, 51, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(34, 157, 62, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(35, 158, 36, '2024-12-05 15:43:20', '2024-12-05 15:43:20'),
(36, 179, 36, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(37, 179, 39, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(38, 179, 40, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(45, 182, 36, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(46, 182, 40, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(47, 182, 41, '2025-10-03 14:36:05', '2025-10-03 14:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `size_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `image`, `product_id`, `color_id`, `size_id`, `created_at`, `updated_at`) VALUES
(224, 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 159, NULL, NULL, '2025-01-10 04:06:35', '2025-01-10 04:06:35'),
(225, 'public/uploads/product/1736431699-2024-07-16-6696741839d29.jpg', 160, NULL, NULL, '2025-01-10 04:08:19', '2025-01-10 04:08:19'),
(226, 'public/uploads/product/1736431804-2024-07-16-66966f64be627.jpg', 161, NULL, NULL, '2025-01-10 04:10:04', '2025-01-10 04:10:04'),
(227, 'public/uploads/product/1736431896-2024-07-16-66966ee025159.jpg', 162, NULL, NULL, '2025-01-10 04:11:36', '2025-01-10 04:11:36'),
(228, 'public/uploads/product/1736432082-2024-07-15-6695b4dbdaf63.webp', 163, NULL, NULL, '2025-01-10 04:14:42', '2025-01-10 04:14:42'),
(229, 'public/uploads/product/1736432215-black-seed-honey-500-1.webp', 164, NULL, NULL, '2025-01-10 04:16:55', '2025-01-10 04:16:55'),
(230, 'public/uploads/product/1736432215-black-seed-honey-500-1.webp', 165, NULL, NULL, '2025-01-10 04:16:55', '2025-01-10 04:16:55'),
(232, 'public/uploads/product/1736437796-malai-400.webp', 167, NULL, NULL, '2025-01-10 05:49:56', '2025-01-10 05:49:56'),
(233, 'public/uploads/product/1736438047-ghee-175gm.webp', 168, NULL, NULL, '2025-01-10 05:54:07', '2025-01-10 05:54:07'),
(234, 'public/uploads/product/1736438310-peanut-butter-1.webp', 169, NULL, NULL, '2025-01-10 05:58:30', '2025-01-10 05:58:30'),
(235, 'public/uploads/product/1736438385-signatute-ghee.webp', 170, NULL, NULL, '2025-01-10 05:59:45', '2025-01-10 05:59:45'),
(236, 'public/uploads/product/1736438461-signatute-lacsa-semai.webp', 171, NULL, NULL, '2025-01-10 06:01:01', '2025-01-10 06:01:01'),
(237, 'public/uploads/product/1736438635-almond.webp', 172, NULL, NULL, '2025-01-10 06:03:55', '2025-01-10 06:03:55'),
(238, 'public/uploads/product/1736438635-almond.webp', 173, NULL, NULL, '2025-01-10 06:03:55', '2025-01-10 06:03:55'),
(239, 'public/uploads/product/1736438717-mariyamdates.webp', 174, NULL, NULL, '2025-01-10 06:05:17', '2025-01-10 06:05:17'),
(242, 'public/uploads/product/1736438895-roasted-cashew-500-h.webp', 177, NULL, NULL, '2025-01-10 06:08:15', '2025-01-10 06:08:15'),
(243, 'public/uploads/product/1736438895-roasted-cashew-500-h.webp', 178, NULL, NULL, '2025-01-10 06:08:15', '2025-01-10 06:08:15'),
(244, 'public/uploads/product/1743836769-screenshot_1.png', 176, NULL, NULL, '2025-04-05 07:06:09', '2025-04-05 07:06:09'),
(247, 'public/uploads/product/1743836818-screenshot_3.png', 166, NULL, NULL, '2025-04-05 07:06:58', '2025-04-05 07:06:58'),
(248, 'public/uploads/product/1759480696-khaas-food-ajwa-dates-খাস-ফুড-আজওয়া-খেজুর.webp', 175, NULL, NULL, '2025-10-03 08:38:16', '2025-10-03 08:38:16'),
(249, 'public/uploads/product/1759499529-61nhot+9ffl.jpg', 179, NULL, NULL, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(250, 'public/uploads/product/1759499529-e32a9939dc1030151c1e0168b9dc1fa5.jpg_720x720q80.jpg', 179, NULL, NULL, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(251, 'public/uploads/product/1759499529-e32a9939dc1030151c1e0168b9dc1fa5.jpg_720x720q80.jpg', 179, NULL, NULL, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(252, 'public/uploads/product/1759499529-b5a9b2b56e61cee18211068aeec6e4af.jpg', 179, NULL, NULL, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(253, 'public/uploads/product/1759501857-1740310249-80910-ugreen-ge.webp', 180, NULL, NULL, '2025-10-03 14:30:57', '2025-10-03 14:30:57'),
(254, 'public/uploads/product/1759501963-1740309960-sku_08295929-202e-487c-983b-6d657f2ba069.webp', 181, NULL, NULL, '2025-10-03 14:32:43', '2025-10-03 14:32:43'),
(255, 'public/uploads/product/1759502165-1757776999-81c9ripib0l._uy1000_.webp', 182, NULL, NULL, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(256, 'public/uploads/product/1759502255-1757777751-thofeb23-03549.webp', 183, NULL, NULL, '2025-10-03 14:37:35', '2025-10-03 14:37:35'),
(257, 'public/uploads/product/1759502330-1757778001-screenshot-at-sep-13-21-39-24.webp', 184, NULL, NULL, '2025-10-03 14:38:50', '2025-10-03 14:38:50'),
(258, 'public/uploads/product/1759503396-1757779801-istockphoto-121111860-612x612.webp', 185, NULL, NULL, '2025-10-03 14:56:36', '2025-10-03 14:56:36'),
(259, 'public/uploads/product/1759503464-1757779231-mustard-oil-100percent-organic-wooden-cold-pressed-and-double-filtered-1000ml-oil-in-reusable-glass-bottle-kachi-ghani-satopradhan-1-32290742599906.webp', 186, NULL, NULL, '2025-10-03 14:57:44', '2025-10-03 14:57:44'),
(260, 'public/uploads/product/1759503555-1757778250-good_vibes_rosehip_radiant_glow_face_ser-good_vibes-0db57-405414.webp', 187, NULL, NULL, '2025-10-03 14:59:15', '2025-10-03 14:59:15'),
(261, 'public/uploads/product/1759503635-1757779000-71snyaacrzl.webp', 188, NULL, NULL, '2025-10-03 15:00:35', '2025-10-03 15:00:35'),
(262, 'public/uploads/product/1759652002-team2-3.jpg', 189, NULL, NULL, '2025-10-05 08:13:22', '2025-10-05 08:13:22'),
(263, 'public/uploads/product/1760772926-1.1.2_1.1.2.png', 190, NULL, NULL, '2025-10-18 07:35:26', '2025-10-18 07:35:26'),
(264, 'public/uploads/product/1760772926-1.8.1_1.8.1.jpg', 190, NULL, NULL, '2025-10-18 07:35:26', '2025-10-18 07:35:26'),
(265, 'public/uploads/product/1761559002-combo-offer.jpg', 191, NULL, NULL, '2025-10-27 09:56:42', '2025-10-27 09:56:42'),
(266, 'public/uploads/product/1762613230-573006044_122174016998393321_2773744375485586145_n.jpg', 193, NULL, NULL, '2025-11-08 14:47:10', '2025-11-08 14:47:10'),
(267, 'public/uploads/product/1762613341-573006044_122174016998393321_2773744375485586145_n.jpg', 194, NULL, NULL, '2025-11-08 14:49:01', '2025-11-08 14:49:01'),
(268, 'public/uploads/product/1762613517-555194582_779396224898995_8823853251691840155_n.jpeg', 195, NULL, NULL, '2025-11-08 14:51:57', '2025-11-08 14:51:57'),
(269, 'public/uploads/product/1762865984-183965129-origpic-8f5ac5.webp', 184, NULL, NULL, '2025-11-11 12:59:44', '2025-11-11 12:59:44'),
(270, 'public/uploads/product/1762865984-images.jfif', 184, NULL, NULL, '2025-11-11 12:59:44', '2025-11-11 12:59:44'),
(271, 'public/uploads/product/1762865984-images (1).jfif', 184, NULL, NULL, '2025-11-11 12:59:44', '2025-11-11 12:59:44'),
(272, 'public/uploads/product/1762866138-images (1).jfif', 183, NULL, NULL, '2025-11-11 13:02:18', '2025-11-11 13:02:18'),
(273, 'public/uploads/product/1762866138-images.jfif', 183, NULL, NULL, '2025-11-11 13:02:18', '2025-11-11 13:02:18'),
(274, 'public/uploads/product/1762866138-premium-chiffon-hijab-heather-960585.webp', 183, NULL, NULL, '2025-11-11 13:02:18', '2025-11-11 13:02:18'),
(275, 'public/uploads/product/1762866138-premium-chiffon-hijab-taupe-841181.webp', 183, NULL, NULL, '2025-11-11 13:02:18', '2025-11-11 13:02:18'),
(276, 'public/uploads/product/1762866283-71e3c97a534922babe9192f4245deeb1.png_720x720q80.png', 186, NULL, NULL, '2025-11-11 13:04:43', '2025-11-11 13:04:43'),
(277, 'public/uploads/product/1762866283-aci-pure-mustard-oil-1-ltr.jfif', 186, NULL, NULL, '2025-11-11 13:04:43', '2025-11-11 13:04:43'),
(278, 'public/uploads/product/1762866283-giant_324301.png', 186, NULL, NULL, '2025-11-11 13:04:43', '2025-11-11 13:04:43'),
(279, 'public/uploads/product/1762866408-fresh-green-vegetables-in-wicker-basket-photo.jpg', 185, NULL, NULL, '2025-11-11 13:06:48', '2025-11-11 13:06:48'),
(280, 'public/uploads/product/1762866408-images.jfif', 185, NULL, NULL, '2025-11-11 13:06:48', '2025-11-11 13:06:48'),
(281, 'public/uploads/product/1762866408-istockphoto-121111860-612x612.jpg', 185, NULL, NULL, '2025-11-11 13:06:48', '2025-11-11 13:06:48'),
(282, 'public/uploads/product/1762866514-images.jfif', 180, NULL, NULL, '2025-11-11 13:08:34', '2025-11-11 13:08:34'),
(283, 'public/uploads/product/1762866514-JOYROOM-JR-CL06-154W-Multi-Port-Car-Cigarette-Lighter-Car-Charger.jpg', 180, NULL, NULL, '2025-11-11 13:08:34', '2025-11-11 13:08:34'),
(284, 'public/uploads/product/1762866514-sku_08295929-202e-487c-983b-6d657f2ba069.webp', 180, NULL, NULL, '2025-11-11 13:08:34', '2025-11-11 13:08:34'),
(285, 'public/uploads/product/1762866561-images.jfif', 181, NULL, NULL, '2025-11-11 13:09:21', '2025-11-11 13:09:21'),
(286, 'public/uploads/product/1762866561-JOYROOM-JR-CL06-154W-Multi-Port-Car-Cigarette-Lighter-Car-Charger.jpg', 181, NULL, NULL, '2025-11-11 13:09:21', '2025-11-11 13:09:21'),
(287, 'public/uploads/product/1762866561-sku_08295929-202e-487c-983b-6d657f2ba069.webp', 181, NULL, NULL, '2025-11-11 13:09:21', '2025-11-11 13:09:21'),
(288, 'public/uploads/product/1762867027-1759503555-1757778250-good_vibes_rosehip_radiant_glow_face_ser-good_vibes-0db57-405414.webp', 196, NULL, NULL, '2025-11-11 13:17:07', '2025-11-11 13:17:07'),
(289, 'public/uploads/product/1762867027-images-(1).jfif', 196, NULL, NULL, '2025-11-11 13:17:07', '2025-11-11 13:17:07'),
(290, 'public/uploads/product/1762867027-good_vibes_rosehip_radiant_glow_face_ser-good_vibes-41fba-405414.jpg', 196, NULL, NULL, '2025-11-11 13:17:07', '2025-11-11 13:17:07'),
(291, 'public/uploads/product/1762867269-1759503635-1757779000-71snyaacrzl.webp', 197, NULL, NULL, '2025-11-11 13:21:09', '2025-11-11 13:21:09'),
(292, 'public/uploads/product/1762867269-images.jfif', 197, NULL, NULL, '2025-11-11 13:21:09', '2025-11-11 13:21:09'),
(293, 'public/uploads/product/1762867269-1759503635-1757779000-71snyaacrzl.webp', 197, NULL, NULL, '2025-11-11 13:21:09', '2025-11-11 13:21:09'),
(294, 'public/uploads/product/1762867269-61bjy+if0ks.jpg', 197, NULL, NULL, '2025-11-11 13:21:09', '2025-11-11 13:21:09'),
(295, 'public/uploads/product/1762867779-4e3bc358294ed154f3763ae25e84d91c.jpg', 198, NULL, NULL, '2025-11-11 13:29:39', '2025-11-11 13:29:39'),
(296, 'public/uploads/product/1762867779-107f548c79d19e4b79ed268bd81cd58d.jpg_720x720q80.jpg', 198, NULL, NULL, '2025-11-11 13:29:39', '2025-11-11 13:29:39'),
(297, 'public/uploads/product/1762867779-833aecc8c7a04d8a20a5fb3d846883ff.jpg_720x720q80.jpg', 198, NULL, NULL, '2025-11-11 13:29:39', '2025-11-11 13:29:39'),
(298, 'public/uploads/product/1762868036-images.jfif', 199, NULL, NULL, '2025-11-11 13:33:56', '2025-11-11 13:33:56'),
(299, 'public/uploads/product/1762868036-4e3bc358294ed154f3763ae25e84d91c.jpg', 199, NULL, NULL, '2025-11-11 13:33:56', '2025-11-11 13:33:56'),
(300, 'public/uploads/product/1762868036-107f548c79d19e4b79ed268bd81cd58d.jpg_720x720q80.jpg', 199, NULL, NULL, '2025-11-11 13:33:56', '2025-11-11 13:33:56'),
(301, 'public/uploads/product/1762868036-833aecc8c7a04d8a20a5fb3d846883ff.jpg_720x720q80.jpg', 199, NULL, NULL, '2025-11-11 13:33:56', '2025-11-11 13:33:56'),
(302, 'public/uploads/product/1762868343-6b3a9e8c518630293a361e7da1762b48.jpg', 200, NULL, NULL, '2025-11-11 13:39:03', '2025-11-11 13:39:03'),
(303, 'public/uploads/product/1762868344-0e1e78da1b33be8787926bbfe26133de.jpg', 200, NULL, NULL, '2025-11-11 13:39:04', '2025-11-11 13:39:04'),
(304, 'public/uploads/product/1762868344-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', 200, NULL, NULL, '2025-11-11 13:39:04', '2025-11-11 13:39:04'),
(305, 'public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', 201, NULL, NULL, '2025-11-11 13:42:23', '2025-11-11 13:42:23'),
(308, 'public/uploads/product/1763312890-screenshot_10.png', 202, NULL, NULL, '2025-11-16 17:08:10', '2025-11-16 17:08:10'),
(309, 'public/uploads/product/1763569354-relax-tea-(linkedin-post).jpg', 203, NULL, NULL, '2025-11-19 16:22:34', '2025-11-19 16:22:34'),
(310, 'public/uploads/product/1763623545-images.jpg', 204, NULL, NULL, '2025-11-20 07:25:45', '2025-11-20 07:25:45'),
(311, 'public/uploads/product/1764306069-589211685_849235617694610_2829143546630379657_n.jpg', 205, NULL, NULL, '2025-11-28 05:01:09', '2025-11-28 05:01:09'),
(312, 'public/uploads/product/1764326847-whatsapp-image-2025-11-09-at-17.26.24_274e29a5.jpg', 206, NULL, NULL, '2025-11-28 10:47:27', '2025-11-28 10:47:27'),
(313, 'public/uploads/product/1764326847-whatsapp-image-2025-11-09-at-17.26.25_3370ce0c.jpg', 206, NULL, NULL, '2025-11-28 10:47:27', '2025-11-28 10:47:27'),
(314, 'public/uploads/product/1764326847-whatsapp-image-2025-11-09-at-17.26.21_04d389e9.jpg', 206, NULL, NULL, '2025-11-28 10:47:27', '2025-11-28 10:47:27'),
(315, 'public/uploads/product/1764326847-whatsapp-image-2025-11-09-at-17.26.23_30b7714c.jpg', 206, NULL, NULL, '2025-11-28 10:47:27', '2025-11-28 10:47:27'),
(317, 'public/uploads/product/1764766501-screenshot_1.png', 207, NULL, NULL, '2025-12-03 12:55:01', '2025-12-03 12:55:01'),
(318, 'public/uploads/product/1764788259-canva_31d.jpg2_.jpg', 208, NULL, NULL, '2025-12-03 18:57:39', '2025-12-03 18:57:39'),
(319, 'public/uploads/product/1764788491-premium-mebership.jpg', 209, NULL, NULL, '2025-12-03 19:01:31', '2025-12-03 19:01:31'),
(320, 'public/uploads/product/1764937354-a07-black.jpg', 210, NULL, NULL, '2025-12-05 12:22:34', '2025-12-05 12:22:34'),
(321, 'public/uploads/product/1764937354-a07-silver.jpg', 210, NULL, NULL, '2025-12-05 12:22:34', '2025-12-05 12:22:34'),
(322, 'public/uploads/product/1764937354-a07-black.jpg', 210, NULL, NULL, '2025-12-05 12:22:34', '2025-12-05 12:22:34'),
(324, 'public/uploads/product/1765475488-error.png', 211, NULL, NULL, '2025-12-11 17:51:28', '2025-12-11 17:51:28'),
(325, 'public/uploads/product/1765480547-screenshot-(2).png', 212, NULL, NULL, '2025-12-11 19:15:47', '2025-12-11 19:15:47'),
(326, 'public/uploads/product/1765726910-fav.png', 213, NULL, NULL, '2025-12-14 15:41:50', '2025-12-14 15:41:50'),
(327, 'public/uploads/product/1765768036-fav.png', 214, NULL, NULL, '2025-12-15 03:07:16', '2025-12-15 03:07:16'),
(328, 'public/uploads/product/1765998955-12e1e27d08f3f31cafc625ed8f456c4b.jpg', 215, NULL, NULL, '2025-12-17 19:15:55', '2025-12-17 19:15:55'),
(329, 'public/uploads/product/1765999213-12e1e27d08f3f31cafc625ed8f456c4b.jpg', 216, NULL, NULL, '2025-12-17 19:20:13', '2025-12-17 19:20:13'),
(330, 'public/uploads/product/1766668528-tvb.png', 217, NULL, NULL, '2025-12-25 13:15:28', '2025-12-25 13:15:28'),
(331, 'public/uploads/product/1768899512-logo.jpeg', 218, NULL, NULL, '2026-01-20 08:58:32', '2026-01-20 08:58:32'),
(332, 'public/uploads/product/1768920278-logo.jpeg', 219, NULL, NULL, '2026-01-20 14:44:38', '2026-01-20 14:44:38'),
(333, 'public/uploads/product/1769092647-img_2323.jpeg', 220, NULL, NULL, '2026-01-22 14:37:27', '2026-01-22 14:37:27'),
(334, 'public/uploads/product/1769192911-5c9cf664fcdfd28efbdfb7a7ab0e397b.jpg_720x720q80.jpg', 221, NULL, NULL, '2026-01-23 18:28:31', '2026-01-23 18:28:31'),
(335, 'public/uploads/product/1769192911-8cf001f7113c8db5554f5563bee70594.jpg', 221, NULL, NULL, '2026-01-23 18:28:31', '2026-01-23 18:28:31'),
(336, 'public/uploads/product/1769192911-images-(1).jfif', 221, NULL, NULL, '2026-01-23 18:28:31', '2026-01-23 18:28:31'),
(337, 'public/uploads/product/1769416997-0653647_3-in-1-travel-pillow-set_400.webp', 222, NULL, NULL, '2026-01-26 08:43:17', '2026-01-26 08:43:17'),
(338, 'public/uploads/product/1769437447-1797da4d9a7a36afc04ec60ec10f8d0d.jpg_960x960q80.jpg_.webp', 223, NULL, NULL, '2026-01-26 14:24:07', '2026-01-26 14:24:07'),
(339, 'public/uploads/product/1769439539-9ff3e2671613d5b7fc84c6fcd96fd16d.jpg_720x720q80.jpg', 224, NULL, NULL, '2026-01-26 14:58:59', '2026-01-26 14:58:59'),
(340, 'public/uploads/product/1769440037-63902183a6b2048cf1f67d74a46db75f.png', 225, NULL, NULL, '2026-01-26 15:07:17', '2026-01-26 15:07:17'),
(341, 'public/uploads/product/1769440755-659851fd907b0485fe61bc0b621db51e.jpg', 226, NULL, NULL, '2026-01-26 15:19:15', '2026-01-26 15:19:15'),
(342, 'public/uploads/product/1769441207-f34d9f24050c32104713693f8c66c1be.jpg', 227, NULL, NULL, '2026-01-26 15:26:47', '2026-01-26 15:26:47'),
(343, 'public/uploads/product/1770100975-screenshot_1.png', 228, NULL, NULL, '2026-02-03 06:42:55', '2026-02-03 06:42:55'),
(344, 'public/uploads/product/1770101233-screenshot_1.png', 229, NULL, NULL, '2026-02-03 06:47:13', '2026-02-03 06:47:13'),
(345, 'public/uploads/product/1770896275-1765987350.jpg', 230, NULL, NULL, '2026-02-12 11:37:55', '2026-02-12 11:37:55'),
(349, 'public/uploads/product/1772902605-69ac58cd150fb-1762868543-0e1e78da1b33be8787926bbfe26133de.jpg', 201, 36, 8, '2026-03-07 16:56:45', '2026-03-07 16:56:45'),
(350, 'public/uploads/product/1772902605-69ac58cd1807e-1762868543-6b3a9e8c518630293a361e7da1762b48.jpg', 201, 35, 7, '2026-03-07 16:56:45', '2026-03-07 16:56:45'),
(351, 'public/uploads/product/1772902605-69ac58cd19a6a-images.jfif', 201, 40, 9, '2026-03-07 16:56:45', '2026-03-07 16:56:45'),
(352, 'public/uploads/product/1773946342-1771041589-1767456084-new-project-55.webp', 231, NULL, NULL, '2026-03-19 18:52:22', '2026-03-19 18:52:22'),
(353, 'public/uploads/product/1773946596-1771041487-1767455662-1764855917-1762932216-1736431595-2024-07-16-6696757bd2081.jpg', 232, NULL, NULL, '2026-03-19 18:56:36', '2026-03-19 18:56:36'),
(354, 'public/uploads/product/1773946699-1771041345-1767455182-1764856396-1762932519-1736431804-2024-07-16-66966f64be627.jpg', 233, NULL, NULL, '2026-03-19 18:58:19', '2026-03-19 18:58:19'),
(355, 'public/uploads/product/1773946840-1771041279-1767455182-1764856396-1762932519-1736431804-2024-07-16-66966f64be627.jpg', 234, NULL, NULL, '2026-03-19 19:00:40', '2026-03-19 19:00:40'),
(356, 'public/uploads/product/1773946936-1771044867-shosti-ghee-500gm.webp', 235, NULL, NULL, '2026-03-19 19:02:16', '2026-03-19 19:02:16'),
(357, 'public/uploads/product/1773947032-1771043113-1767452777-1764859233-400gm.webp', 236, NULL, NULL, '2026-03-19 19:03:52', '2026-03-19 19:03:52'),
(358, 'public/uploads/product/1773947125-1771043060-1767453114-1764858474-1762933997-1736438895-roasted-cashew-500-h.webp', 237, NULL, NULL, '2026-03-19 19:05:25', '2026-03-19 19:05:25'),
(359, 'public/uploads/product/1773947185-1771043004-1767453331-1764858328-1762933846-1743836769-screenshot_1.png', 238, NULL, NULL, '2026-03-19 19:06:25', '2026-03-19 19:06:25'),
(360, 'public/uploads/product/1773947330-1771042960-1767453482-1764858224-1762948704-ajwa-dates-250-gm.png', 239, NULL, NULL, '2026-03-19 19:08:50', '2026-03-19 19:08:50'),
(361, 'public/uploads/product/1773947469-1771042876-1767453751-1764858062-1762933638-1736438717-mariyamdates.webp', 240, NULL, NULL, '2026-03-19 19:11:09', '2026-03-19 19:11:09'),
(362, 'public/uploads/product/1773947549-1771042819-1767453870-1764857874-1762933442-1736438635-almond.webp', 241, NULL, NULL, '2026-03-19 19:12:29', '2026-03-19 19:12:29'),
(363, 'public/uploads/product/1773947615-1771042749-1767454111-1764857313-1762933110-1736438385-signatute-ghee.webp', 242, NULL, NULL, '2026-03-19 19:13:35', '2026-03-19 19:13:35'),
(364, 'public/uploads/product/1773947688-1771042689-1767454292-1764857184-1762933062-1736438310-peanut-butter-1.webp', 243, NULL, NULL, '2026-03-19 19:14:48', '2026-03-19 19:14:48'),
(365, 'public/uploads/product/1773947789-1771042608-1767454486-1764857030-1762932792-1736432215-black-seed-honey-500-1.webp', 244, NULL, NULL, '2026-03-19 19:16:29', '2026-03-19 19:16:29'),
(366, 'public/uploads/product/1773947855-1771042559-1767454636-1764856917-1762932892-1743836818-screenshot_3.png', 245, NULL, NULL, '2026-03-19 19:17:35', '2026-03-19 19:17:35'),
(367, 'public/uploads/product/1773947942-1771042499-1767454767-1764856747-1762932792-1736432215-black-seed-honey-500-1.webp', 246, NULL, NULL, '2026-03-19 19:19:02', '2026-03-19 19:19:02'),
(368, 'public/uploads/product/1773948074-1771042411-1767454937-1764856649-1762932738-1736432082-2024-07-15-6695b4dbdaf63.webp', 247, NULL, NULL, '2026-03-19 19:21:14', '2026-03-19 19:21:14'),
(371, 'public/uploads/product/1773985135-1771042689-1767454292-1764857184-1762933062-1736438310-peanut-butter-1.webp', 248, NULL, NULL, '2026-03-20 05:38:55', '2026-03-20 05:38:55'),
(372, 'public/uploads/product/1774010222-1771042354-1767455074-1764856496-1762932628-1736431896-2024-07-16-66966ee025159.jpg', 249, NULL, NULL, '2026-03-20 12:37:02', '2026-03-20 12:37:02'),
(373, 'public/uploads/product/1781536701-dahua-dh-hac-hfw1509tmp-il-a-5mp-smart-dual-light-hdcvi-fixed-focal-bullet-camera.html', 250, NULL, NULL, '2026-06-16 01:18:21', '2026-06-16 01:18:21'),
(374, 'public/uploads/product/1781536701-6a3017bdc4876-hac-hfw1200clp-il-a-01-500x500.webp', 250, 62, 7, '2026-06-16 01:18:21', '2026-06-16 01:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_type` enum('physical','digital') NOT NULL DEFAULT 'physical',
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `product_code` varchar(155) DEFAULT NULL,
  `purchase_price` int(11) DEFAULT 0,
  `old_price` int(11) DEFAULT NULL,
  `new_price` int(11) NOT NULL,
  `reseller_price` decimal(14,2) DEFAULT NULL,
  `is_wholesale` tinyint(4) NOT NULL DEFAULT 0,
  `wholesale_price` decimal(14,2) DEFAULT NULL,
  `min_wholesale_quantity` int(11) NOT NULL DEFAULT 1,
  `advance_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `ratting` float(2,1) NOT NULL DEFAULT 0.0,
  `stock` int(11) NOT NULL,
  `is_digital` tinyint(1) NOT NULL DEFAULT 0,
  `free_delivery` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes',
  `digital_file` varchar(255) DEFAULT NULL,
  `download_limit` int(11) DEFAULT NULL,
  `download_expire_days` int(11) DEFAULT NULL,
  `pro_unit` varchar(191) DEFAULT NULL,
  `pro_video` varchar(255) DEFAULT NULL,
  `pro_video_type` varchar(20) DEFAULT NULL,
  `pro_video_path` varchar(300) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `topsale` tinyint(4) DEFAULT NULL,
  `flashsale` tinyint(4) DEFAULT NULL,
  `feature_product` tinyint(4) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `facebook_posted_at` timestamp NULL DEFAULT NULL,
  `approval_status` enum('pending','approved','rejected') NOT NULL DEFAULT 'approved',
  `sold` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_type`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `vendor_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `reseller_price`, `is_wholesale`, `wholesale_price`, `min_wholesale_quantity`, `advance_amount`, `ratting`, `stock`, `is_digital`, `free_delivery`, `digital_file`, `download_limit`, `download_expire_days`, `pro_unit`, `pro_video`, `pro_video_type`, `pro_video_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `facebook_posted_at`, `approval_status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(232, 'physical', 'লিচু ফুলের মধু | Litchi Flower Honey', 'লিচু-ফুলের-মধু-|-litchi-flower-honey-232', 39, NULL, NULL, 21, NULL, 'P0232', 500, 1200, 2200, 900.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p>পুষ্টিগুণ ও উপাদেয়তার দিকটি বিবেচনা করে যদি আমরা খাবারের একটি তালিকা করি, সে তালিকার প্রথম সারিতেই থাকবে ‘মধু’র নাম। এটি শরীরের জন্য উপকারী এবং নিয়মিত মধু সেবন করলে অসংখ্য রোগবালাই থেকে পরিত্রাণ পাওয়া যায়। এটি বৈজ্ঞানিকভাবেই প্রমাণিত।</p>', 'লিচু ফুলের মধু | Litchi Flower Honey', 'পুষ্টিগুণ ও উপাদেয়তার দিকটি বিবেচনা করে যদি আমরা খাবারের একটি তালিকা করি, সে তালিকার প্রথম সারিতেই থাকবে ‘মধু’র নাম। এটি শরীরের জন্য উপকারী এবং নিয়মিত মধু সেবন...', '', 'public/uploads/product/1773946596-1771041487-1767455662-1764855917-1762932216-1736431595-2024-07-16-6696757bd2081.jpg', 1, 1, 0, NULL, 1, NULL, 'approved', '100', NULL, '2026-03-19 18:56:36', '2026-03-19 18:58:59'),
(233, 'physical', 'মিশ্র ফুলের মধু | Mix Flower Honey', 'মিশ্র-ফুলের-মধু-|-mix-flower-honey-233', 39, NULL, NULL, 19, NULL, 'P0233', 500, 2009, 10250, 900.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; border: 0px solid rgb(210, 214, 220); padding: 0px; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">পবিত্র কোরআন ও হাদিসের ভাষ্যমতে যেহেতু কালোজিরা কে সাম অর্থাৎ মৃত্যু বাদে সকল রোগের মহৌষধ বলা হয়েছে সেহেতু নিঃসন্দেহে এই মধু সর্বোত্তম। আপনি যদি কালোজিরা মধুর সর্বোত্তম উপকারিতা পেতে চান অবশ্যই আপনাকে রিফাইনকৃত কালোজিরা ফুলের মধু ব্যবহার করতে হবে।</p><h2 style=\"margin-top: 0px; margin-bottom: 0.5em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); font-size: 1.6em; font-family: &quot;Hind Siliguri&quot;, sans-serif; border: 0px solid rgb(210, 214, 220); padding: 0px; text-rendering: optimizespeed; width: 915px;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা মধু&nbsp;</span><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কিভাবে তৈরি করা হয়?</span></h2><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; border: 0px solid rgb(210, 214, 220); padding: 0px; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">আমাদের নিজস্ব খামারে পালিত এপিস মেলিফেরা মৌমাছি কালোজিরা ফুল থেকে নেকটার সংগ্রহ করে ফ্রেমে জমা করে যা পরবর্তীতে কালোজিরা ফুলের মধুতে রুপ নেয় এবং এই খাঁটি কালোজিরা ফুলের মধুটাই রিফাইন করে আমরা পৌঁছে দিচ্ছি আপনার হাতে।</p><h2 style=\"margin-top: 0px; margin-bottom: 0.5em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); font-size: 1.6em; font-family: &quot;Hind Siliguri&quot;, sans-serif; border: 0px solid rgb(210, 214, 220); padding: 0px; text-rendering: optimizespeed; width: 915px;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা মধুর উপকারিতা:</span></h2><ul style=\"padding: 0px; margin-bottom: 1.3em; border: 0px solid rgb(210, 214, 220); list-style-position: initial; list-style-image: initial; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif; margin-right: 0px !important; margin-left: 0px !important;\"><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কালোজিরা মধু শরীরে তাপ ও শক্তির ভালো উৎস যা শরীরে তাপ ও শক্তির যোগান দেয়।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হজম&nbsp;প্রকিয়াতে&nbsp;সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রক্তশূন্যতা রোধে এই মধু কার্যাকারী।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কোষ্ঠকাঠিন্য ও ডায়রিয়া দূর করতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">ফুসফুসের যাবতীয় রোগ ও শ্বাসকষ্ট নিরাময়ে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">এই মধু অনিদ্রার ভালো ঔষুধ।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">প্রশান্তিদায়ক পানি হিসাবে এই মধুর শরবত অনেক উপকারী।&nbsp;</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">মুখগহ্বরের স্বাস্থ্য রক্ষায় এই মধুর ব্যাবহার সর্বোত্তম।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">পাকস্থলীর হাইড্রোক্লোরিক এ্যাসিড ক্ষরন কমিয়ে পাকস্থলীর বিভিন্ন সমস্যা দূর করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">অরুচি,বমিভাব,বুকজ্বালা ইত্যাদি দূর করতে এই মধু সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">পানিশূন্যতা রোধে কার্যকারী।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">সর্দি,কাশি,গলাব্যাথা দূর করতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">দৃষ্টিশক্তি বাড়াতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রূপচর্চায় এই মধুর ব্যাবহার সর্বোত্তম।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হাড় ও দাঁত গঠনে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হাঁপানি রোধে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রক্ত পরিষ্কারক হিসাবে এই মধু উপকারী।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রো প্রতিরোধশক্তি বাড়াতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">উচ্চ রক্তচাপ কমাতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হৃদরোগের ঝুকি কমাতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">চর্বি কমাতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">মধুতে বিদ্যামান বিটা ক্যারোটিন থাকে যা আমাদের চুল পড়া রোধে সাহায্য করে।</li></ul><h2 style=\"margin-top: 0px; margin-bottom: 0.5em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); font-size: 1.6em; font-family: &quot;Hind Siliguri&quot;, sans-serif; border: 0px solid rgb(210, 214, 220); padding: 0px; text-rendering: optimizespeed; width: 915px;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">আমাদের&nbsp;</span><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা&nbsp;</span><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">মধু কেন নিবেন?</span></h2><ul style=\"padding: 0px; margin-bottom: 1.3em; border: 0px solid rgb(210, 214, 220); list-style-position: initial; list-style-image: initial; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif; margin-right: 0px !important; margin-left: 0px !important;\"><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">আমাদের নিজস্ব খামারে নিজস্ব পালিত এপিস মেলিফেরা মৌমাছি দ্বারা নিজ তত্ত্বাবধানে সংগ্রহীত কালোজিরা ফুলের মধু।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">আমাদের কালোজিরা মধু রিফাইন করার ফলে এই মধু ১০০% পানি, ময়লা, মৌমাছির গলিত ডিম, বাচ্চা,পাখনা মুক্ত।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কালোজিরা মধু রিফাইন করার কারণে এইটা ‘র’ মধুর থেকে বেশি দিন সংরক্ষণ করা যায় কিন্তু সর্বোচ্চ ফলাফল পেতে ১-১.৫ বছরের ভেতরেই ব্যবহার করা উত্তম।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">খামার থেকে কালোজিরা মধু সংগ্রহ থেকে শুরু করে প্যাকেজিং পর্যন্ত সম্পূর্ণ নিজস্ব তত্ত্বাবধানে করা হয়।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কালোজিরা মধুতে যে কোন সমস্যা হলে ১০ দিনের ভেতরে পরিবর্তনযোগ্য ও দশ দিন পর্যন্ত ক্যাশব্যাক গ্যারান্টি।</li></ul>', 'মিশ্র ফুলের মধু | Mix Flower Honey', 'পবিত্র কোরআন ও হাদিসের ভাষ্যমতে যেহেতু কালোজিরা কে সাম অর্থাৎ মৃত্যু বাদে সকল রোগের মহৌষধ বলা হয়েছে সেহেতু নিঃসন্দেহে এই মধু সর্বোত্তম। আপনি যদি কালোজিরা মধুর স...', '', 'public/uploads/product/1773946699-1771041345-1767455182-1764856396-1762932519-1736431804-2024-07-16-66966f64be627.jpg', 1, 1, 0, NULL, 1, NULL, 'approved', '10', NULL, '2026-03-19 18:58:19', '2026-03-19 18:59:12'),
(234, 'physical', 'কালোজিরা ফুলের মধু | Black Seed Flower Honey', 'কালোজিরা-ফুলের-মধু-|-black-seed-flower-honey-234', 39, NULL, NULL, 22, NULL, 'P0234', 100, 1200, 600, 900.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; border: 0px solid rgb(210, 214, 220); padding: 0px; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">পবিত্র কোরআন ও হাদিসের ভাষ্যমতে যেহেতু কালোজিরা কে সাম অর্থাৎ মৃত্যু বাদে সকল রোগের মহৌষধ বলা হয়েছে সেহেতু নিঃসন্দেহে এই মধু সর্বোত্তম। আপনি যদি কালোজিরা মধুর সর্বোত্তম উপকারিতা পেতে চান অবশ্যই আপনাকে রিফাইনকৃত কালোজিরা ফুলের মধু ব্যবহার করতে হবে।</p><h2 style=\"margin-top: 0px; margin-bottom: 0.5em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); font-size: 1.6em; font-family: &quot;Hind Siliguri&quot;, sans-serif; border: 0px solid rgb(210, 214, 220); padding: 0px; text-rendering: optimizespeed; width: 915px;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা মধু&nbsp;</span><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কিভাবে তৈরি করা হয়?</span></h2><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; border: 0px solid rgb(210, 214, 220); padding: 0px; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">আমাদের নিজস্ব খামারে পালিত এপিস মেলিফেরা মৌমাছি কালোজিরা ফুল থেকে নেকটার সংগ্রহ করে ফ্রেমে জমা করে যা পরবর্তীতে কালোজিরা ফুলের মধুতে রুপ নেয় এবং এই খাঁটি কালোজিরা ফুলের মধুটাই রিফাইন করে আমরা পৌঁছে দিচ্ছি আপনার হাতে।</p><h2 style=\"margin-top: 0px; margin-bottom: 0.5em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); font-size: 1.6em; font-family: &quot;Hind Siliguri&quot;, sans-serif; border: 0px solid rgb(210, 214, 220); padding: 0px; text-rendering: optimizespeed; width: 915px;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা মধুর উপকারিতা:</span></h2><ul style=\"padding: 0px; margin-bottom: 1.3em; border: 0px solid rgb(210, 214, 220); list-style-position: initial; list-style-image: initial; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif; margin-right: 0px !important; margin-left: 0px !important;\"><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কালোজিরা মধু শরীরে তাপ ও শক্তির ভালো উৎস যা শরীরে তাপ ও শক্তির যোগান দেয়।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হজম&nbsp;প্রকিয়াতে&nbsp;সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রক্তশূন্যতা রোধে এই মধু কার্যাকারী।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কোষ্ঠকাঠিন্য ও ডায়রিয়া দূর করতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">ফুসফুসের যাবতীয় রোগ ও শ্বাসকষ্ট নিরাময়ে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">এই মধু অনিদ্রার ভালো ঔষুধ।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">প্রশান্তিদায়ক পানি হিসাবে এই মধুর শরবত অনেক উপকারী।&nbsp;</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">মুখগহ্বরের স্বাস্থ্য রক্ষায় এই মধুর ব্যাবহার সর্বোত্তম।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">পাকস্থলীর হাইড্রোক্লোরিক এ্যাসিড ক্ষরন কমিয়ে পাকস্থলীর বিভিন্ন সমস্যা দূর করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">অরুচি,বমিভাব,বুকজ্বালা ইত্যাদি দূর করতে এই মধু সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">পানিশূন্যতা রোধে কার্যকারী।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">সর্দি,কাশি,গলাব্যাথা দূর করতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">দৃষ্টিশক্তি বাড়াতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রূপচর্চায় এই মধুর ব্যাবহার সর্বোত্তম।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হাড় ও দাঁত গঠনে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হাঁপানি রোধে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রক্ত পরিষ্কারক হিসাবে এই মধু উপকারী।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রো প্রতিরোধশক্তি বাড়াতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">উচ্চ রক্তচাপ কমাতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হৃদরোগের ঝুকি কমাতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">চর্বি কমাতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">মধুতে বিদ্যামান বিটা ক্যারোটিন থাকে যা আমাদের চুল পড়া রোধে সাহায্য করে।</li></ul><h2 style=\"margin-top: 0px; margin-bottom: 0.5em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); font-size: 1.6em; font-family: &quot;Hind Siliguri&quot;, sans-serif; border: 0px solid rgb(210, 214, 220); padding: 0px; text-rendering: optimizespeed; width: 915px;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">আমাদের&nbsp;</span><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা&nbsp;</span><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">মধু কেন নিবেন?</span></h2><ul style=\"padding: 0px; margin-bottom: 1.3em; border: 0px solid rgb(210, 214, 220); list-style-position: initial; list-style-image: initial; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif; margin-right: 0px !important; margin-left: 0px !important;\"><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">আমাদের নিজস্ব খামারে নিজস্ব পালিত এপিস মেলিফেরা মৌমাছি দ্বারা নিজ তত্ত্বাবধানে সংগ্রহীত কালোজিরা ফুলের মধু।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">আমাদের কালোজিরা মধু রিফাইন করার ফলে এই মধু ১০০% পানি, ময়লা, মৌমাছির গলিত ডিম, বাচ্চা,পাখনা মুক্ত।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কালোজিরা মধু রিফাইন করার কারণে এইটা ‘র’ মধুর থেকে বেশি দিন সংরক্ষণ করা যায় কিন্তু সর্বোচ্চ ফলাফল পেতে ১-১.৫ বছরের ভেতরেই ব্যবহার করা উত্তম।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">খামার থেকে কালোজিরা মধু সংগ্রহ থেকে শুরু করে প্যাকেজিং পর্যন্ত সম্পূর্ণ নিজস্ব তত্ত্বাবধানে করা হয়।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কালোজিরা মধুতে যে কোন সমস্যা হলে ১০ দিনের ভেতরে পরিবর্তনযোগ্য ও দশ দিন পর্যন্ত ক্যাশব্যাক গ্যারান্টি।</li></ul>', 'কালোজিরা ফুলের মধু | Black Seed Flower Honey', 'পবিত্র কোরআন ও হাদিসের ভাষ্যমতে যেহেতু কালোজিরা কে সাম অর্থাৎ মৃত্যু বাদে সকল রোগের মহৌষধ বলা হয়েছে সেহেতু নিঃসন্দেহে এই মধু সর্বোত্তম। আপনি যদি কালোজিরা মধুর স...', '', 'public/uploads/product/1773946840-1771041279-1767455182-1764856396-1762932519-1736431804-2024-07-16-66966f64be627.jpg', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:00:40', '2026-03-19 19:00:40'),
(235, 'physical', 'Gawa Ghee/গাওয়া ঘি (500 গ্রাম)', 'gawa-ghee-গাওয়া-ঘি-(500-গ্রাম)-235', 38, NULL, NULL, 21, NULL, 'P0235', 500, 2500, 2200, 1000.00, 0, NULL, 1, 0.00, 0.0, 9998, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p style=\"margin: 0.75em 0px; border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5019607843137255); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Arimo, sans-serif; font-size: 16px;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5019607843137255); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">খাঁটি গাওয়া ঘি দুধের একটি প্রক্রিয়াজাত খাদ্য উপাদান। হাজার বছর আগে বাঙালির খাবারে ঘি-এর উৎপত্তি। শুধু পোলাও, বিরিয়ানি বা ভর্তা নয়, গরম সাদা ভাতের সাথেও ঘি অনেকের প্রিয়। অনেকে মজা করে বলেন “পান্তা ভাতে ঘি”। সুতরাং প্রাচীন সময় থেকেই গাওয়া ঘি এর চাহিদা রয়েছে।</span></p><p style=\"margin: 0.75em 0px; border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5019607843137255); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Arimo, sans-serif; font-size: 16px;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5019607843137255); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">আর আমরা সবাই জানি বাংলাদেশের পাবনা অঞ্চল সেরা মানের ঘি এর জন্য প্রসিদ্ধ। এখন মনে প্রশ্ন জাগতে পারে পাবনার ঘি এত বিখ্যাত কেন? ৬৪ টি জেলায়ই আমরা পাবনার খাঁটি ঘি নিয়ে এত কথা শুনি কেন? পাবনার খাঁটি ঘি অনেক আগে থেকেই প্রসিদ্ধ। পাবনা অঞ্চলজুড়ে ঘি একটি প্রাচীন ঐতিহ্য।</span></p><p style=\"margin: 0.75em 0px; border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5019607843137255); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: Arimo, sans-serif; font-size: 16px;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5019607843137255); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">ঘরে বসে পাবনার খাঁটি ঘি কোথায় পাবো ? আপনার মনে যদি এমন প্রশ্ন আসে তা হলে আপনি নির্দ্বিধায় Ghorerbazar-এর&nbsp;</span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5019607843137255); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-weight: bolder;\">গাওয়া ঘি</span>&nbsp;<span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5019607843137255); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">খেয়ে দেখতে পারেন।&nbsp;</span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5019607843137255); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">আমরা সারাদেশের ঘি-প্রেমী মানুষের কাছে বিশুদ্ধ পাবনার ঘি নিয়মিত ভাবে পৈৗঁছে দিচ্ছি। আমাদের ঘি এর কারিগরেরা অত্যন্ত যত্ন সহকারে দক্ষ হাতে সময় নিয়ে এই ঘি তৈরি করেন। যুগের পর যুগ এই ঘি তৈরি পেশায় কাজ করার সুবাদে ঘি তৈরিতে তাদের দক্ষতা অনন্য। কয়েক প্রজন্ম ধরে চলতে থাকা ঘি তৈরির এই পেশার প্রতি ভালোবাসা থেকেই তারা ঘি তৈরি করে আসছেন। তাই আমাদের ঘি-তে শুধু স্বাদ আর পুষ্টি নয় মিশে আছে ভালোবাসা।&nbsp; ইতিমধ্যে অনেকেই আমাদের গাওয়া ঘি রান্নায় ব্যবহার করে সন্তষ্টি প্রকাশ করেছেন। কথার ফুলঝুরি দিয়ে পণ্য বিক্রি নয় প্রত্যন্ত অঞ্চল থেকে নিরাপাদ খাদ্য সংগ্রহ ও পুষ্টিগুন বজায় রেখে ক্রেতার হাতে সঠিক মানের পণ্য পৌছে দেওয়ায় আমাদের লক্ষ্য। তাই দেরী না করে অর্ডার করে ফেলুন&nbsp;</span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5019607843137255); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-weight: bolder;\">Ghorerbazar-এর গাওয়া ঘি</span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5019607843137255); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">&nbsp;এবং আপনার পরিবাবের সাথে খাবারের স্বাদ উপভোগ করুন!</span></p>', 'Gawa Ghee/গাওয়া ঘি (500 গ্রাম)', 'খাঁটি গাওয়া ঘি দুধের একটি প্রক্রিয়াজাত খাদ্য উপাদান। হাজার বছর আগে বাঙালির খাবারে ঘি-এর উৎপত্তি। শুধু পোলাও, বিরিয়ানি বা ভর্তা নয়, গরম সাদা ভাতের সাথেও ঘি অন...', '', 'public/uploads/product/1773946936-1771044867-shosti-ghee-500gm.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:02:16', '2026-03-20 14:08:32'),
(236, 'physical', 'Gawa Ghee/গাওয়া ঘি (400 গ্রাম)', 'gawa-ghee-গাওয়া-ঘি-(400-গ্রাম)-236', 38, NULL, NULL, 19, NULL, 'P0236', 500, 1200, 600, 1000.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p>খাঁটি গাওয়া ঘি দুধের একটি প্রক্রিয়াজাত খাদ্য উপাদান। হাজার বছর আগে বাঙালির খাবারে ঘি-এর উৎপত্তি। শুধু পোলাও, বিরিয়ানি বা ভর্তা নয়, গরম সাদা ভাতের সাথেও ঘি অনেকের প্রিয়। অনেকে মজা করে বলেন “পান্তা ভাতে ঘি”। সুতরাং প্রাচীন সময় থেকেই গাওয়া ঘি এর চাহিদা রয়েছে।</p><p>আর আমরা সবাই জানি বাংলাদেশের পাবনা অঞ্চল সেরা মানের ঘি এর জন্য প্রসিদ্ধ। এখন মনে প্রশ্ন জাগতে পারে পাবনার ঘি এত বিখ্যাত কেন? ৬৪ টি জেলায়ই আমরা পাবনার খাঁটি ঘি নিয়ে এত কথা শুনি কেন? পাবনার খাঁটি ঘি অনেক আগে থেকেই প্রসিদ্ধ। পাবনা অঞ্চলজুড়ে ঘি একটি প্রাচীন ঐতিহ্য।</p>', 'Gawa Ghee/গাওয়া ঘি (400 গ্রাম)', 'খাঁটি গাওয়া ঘি দুধের একটি প্রক্রিয়াজাত খাদ্য উপাদান। হাজার বছর আগে বাঙালির খাবারে ঘি-এর উৎপত্তি। শুধু পোলাও, বিরিয়ানি বা ভর্তা নয়, গরম সাদা ভাতের সাথেও ঘি অন...', '', 'public/uploads/product/1773947032-1771043113-1767452777-1764859233-400gm.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:03:52', '2026-03-19 19:03:52'),
(237, 'physical', 'Roasted Cashew Nuts (নোনা কাজু বাদাম)', 'roasted-cashew-nuts-(নোনা-কাজু-বাদাম)-237', 40, NULL, NULL, 20, NULL, 'P0237', 500, 600, 700, 1000.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">কাজু বাদাম (Cashew Nut) দেখতে অনেকটা বাঁকানো, কিডনি আকৃতির। অফ হোয়াইট রঙের এই&nbsp;<a href=\"https://www.khaasfood.com/product/roasted-deshi-peanut-%e0%a6%9a%e0%a6%bf%e0%a6%a8%e0%a6%be-%e0%a6%ac%e0%a6%be%e0%a6%a6%e0%a6%be%e0%a6%ae/\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">বাদাম</a>&nbsp;খেতে যেমন সুস্বাদু তেমনি পুষ্টিগুণেও সেরা। এর উৎপত্তিস্থল ব্রাজিল সহ উত্তর আমেরিকা এবং উত্তর দক্ষিণ আমেরিকার কিছু অংশ। কিন্তু বর্তমানে ইন্দোনেশিয়া, কেনিয়া, ভারত, মালয়েশিয়া, মোজাম্বিক সহ বেশ কিছু দেশে চাষ হচ্ছে এই বাদাম। এই বাদাম মূলত বেলে দোঁআশ মাটি অথবা পাহাড়ের ঢালে ভ্লো জন্মে। ১০ থেকে ১২ মিটার উচ্চতার পূর্ণ বয়স্ক গাছ থেকে বাদাম সংগ্রহ করা হয়।</p><div style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><a href=\"https://bn.wikipedia.org/wiki/%E0%A6%95%E0%A6%BE%E0%A6%9C%E0%A7%81_%E0%A6%AC%E0%A6%BE%E0%A6%A6%E0%A6%BE%E0%A6%AE#:~:text=%E0%A6%8F%E0%A6%9F%E0%A6%BF%20%E0%A6%8F%E0%A6%95%E0%A6%9F%E0%A6%BF%20%E0%A6%AB%E0%A6%BE%E0%A6%87%E0%A6%AC%E0%A6%BE%E0%A6%B0%20%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A7%80%E0%A6%AF%E0%A6%BC%20%E0%A6%96%E0%A6%BE%E0%A6%AC%E0%A6%BE%E0%A6%B0,%E0%A7%AC%E0%A7%AE%20%E0%A6%97%E0%A7%8D%E0%A6%B0%E0%A6%BE%E0%A6%AE%20%E0%A6%9A%E0%A6%BF%E0%A6%A8%E0%A6%BF%20%E0%A6%AA%E0%A6%BE%E0%A6%93%E0%A6%AF%E0%A6%BC%E0%A6%BE%20%E0%A6%AF%E0%A6%BE%E0%A6%AF%E0%A6%BC%E0%A5%A4\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">কাজু বাদাম</a>&nbsp;(Cashew Nut)মূলত ভেজে খাওয়া হয়। খাস ফুড আপনাদের জন্য নিয়ে এসেছে নোনা স্বাদের রোস্টেড কাজু বাদাম।</div><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">কাজু বাদাম কেনো খাবেন?</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। প্রচুর পরিমাণে খাদ্যআঁশ, ভিটামিন ও খনিজ উপাদান বিদ্যমান।<br>২। এতে রয়েছে হাড়ের জন্য প্রয়োজনীয় ক্যালসিয়াম, ফসফরাস, ম্যাগনেশিয়াম ইত্যাদি খনিজ উপাদান।<br>৩। এতে বিদ্যমান দেহের জন্য প্রয়োজনীয় পুষ্টি উপাদান সমূহ দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে।<br>৪। রক্তশূন্যতা প্রতিহত করতে ভূমিকা রাখে।<br>৫। মস্তিষ্কের কার্যক্ষমতা বাড়ায়।<br>৬। দেহে শক্তির যোগান দেয়।<br>৭। এতে আছে প্রোটিন এবং দেহের জন্য প্রয়োজনীয় ভালো ফ্যাট।<br>৮। ওজন কমাতে বিশেষ ভূমিকা রাখে।<br>৯। হৃদরোগ ও স্ট্রোকের ঝুঁকি কমায়।<br>১০। নিয়মিত গ্রহণে উচ্চরক্তচাপ নিয়ন্ত্রণে রাখে।<br>১১। ডায়াবেটিস রোগীদের জন্য বেশ উপাদেয়। কেননা এটি রক্তের শর্করা মাত্রা নিয়ন্ত্রণে রাখতে ভূমিকা রাখে।<br>১২। প্রচুর পরিমাণে অ্যান্টিঅক্সিডেন্ট সমৃদ্ধ যা ত্বকের জন্য বেশ ভালো। একই সাথে দৃষ্টিশক্তি ভালো রাখে।<br>১৩। এটি দেহে খারাপ কোলেস্টেরল হিসেবে খ্যাত LDL এর মাত্র কমায়।<br>১৪। ফ্রি র‍্যডিকেল এর ক্ষতিকর প্রভাব থেকে সুরক্ষা প্রদান করে।<br>১৫। এতে রয়েছে কপার, যা একটি ট্রেস মিনারেল। এই উপাদানটি দেহকে সুরক্ষা দেয়ার পাশাপাশি ত্বক ও চুলের জন্য বিশেষ উপকারী।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">কেনো নিবেন খাস ফুডের রোস্টেড কাজু বাদাম (Cashew Nut)?</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। সরাসরি ভিয়েতনাম থেকে ইম্পোর্ট করা।<br>২। ওভেনে রোস্ট করা হয়। ফলে কাঁচা থাকার বা অতিরিক্ত রোস্ট হয়ে যাওয়ার সম্ভাবনা নেই।<br>৩। সম্পূর্ণ নিজস্ব তত্ত্বাবধানে প্যাকেটজাত করে সরবরাহ করা হয়।<br>৪। সেরা মানের বাছাইকৃত বাদাম সরবরাহ করা হয়।<br>৫। সঠিকভাবে সংরক্ষণ করলে প্যাকেজিং এরপর ৪ মাস পর্যন্ত ভালো থাকে।</p>', 'Roasted Cashew Nuts (নোনা কাজু বাদাম)', 'কাজু বাদাম (Cashew Nut) দেখতে অনেকটা বাঁকানো, কিডনি আকৃতির। অফ হোয়াইট রঙের এই&nbsp;বাদাম&nbsp;খেতে যেমন সুস্বাদু তেমনি পুষ্টিগুণেও সেরা। এর উৎপত্তিস্থল ব্রাজিল...', '', 'public/uploads/product/1773947125-1771043060-1767453114-1764858474-1762933997-1736438895-roasted-cashew-500-h.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:05:25', '2026-03-19 19:05:25'),
(238, 'physical', 'Ajwa Dates (আজওয়া খেজুর)', 'ajwa-dates-(আজওয়া-খেজুর)-238', 40, NULL, NULL, 21, NULL, 'P0238', 350, 1200, 990, 1000.00, 0, NULL, 1, 0.00, 0.0, 1200, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">আজওয়া খেজুর (<a href=\"https://en.wikipedia.org/wiki/Ajwa_(date)#:~:text=Ajwa%20(Arabic%3A%20%D8%B9%D8%AC%D9%88%D9%87)%20is,with%20the%20Islamic%20prophet%20Muhammad.\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">Ajwa</a>&nbsp;Dates) সৌদি আরবের এক অতি পরিচিত&nbsp;<a href=\"https://www.khaasfood.com/?s=%E0%A6%96%E0%A7%87%E0%A6%9C%E0%A7%81%E0%A6%B0&amp;post_type=product&amp;product_cat=0\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">খেজুর</a>। আরবের প্রাচীনতম প্রসিদ্ধ খেজুরগুলোর মধ্যে অন্যতম এই আজওয়া খেজুর। সৌদির বিভিন্ন অঞ্চলে বিশেষত মদীনায় এর উপস্থিতি লক্ষ্যনীয়।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">খাস ফুডের আজওয়া খেজুর (Ajwa Dates) কেনো সেরা?</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। খাস ফুডের আজওয়া খেজুর সরাসরি আমদানিকারকদের থেকে সংগ্রহ করে গ্রাহকদের কাছে পৌঁছে দেওয়া হয়।<br>২। এই খেজুর সংরক্ষণে কোন রূপ কেমিক্যাল এর ব্যবহার করা হয় না।<br>৩। কোল্ড স্টোরেজে সংরক্ষিত এ খেজুর চাহিদা মত গ্রাহকদের কাছে সরবরাহ করা হয়।<br>৪। কোল্ড স্টোরেজে সঠিক তাপমাত্রায় নিরাপদে সংরক্ষণ করা হয় বিধায় এর মান নিয়ে কোন সংশয় থাকে না।<br>৫। এই খেজুরের আকার মাঝারি হওয়ায় সহজে গ্রহণযোগ্য।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">খেজুরের উপকারিতা</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। স্নায়বিক শক্তি বৃদ্ধি করে।<br>২। হৃদরোগীদের জন্য বেশ উপকারী।<br>৩। রুচিবর্ধক হিসেবে কাজ করে।<br>৪। দৃষ্টিশক্তি ভালো রাখে।<br>৫। উচ্চ কোলেস্টেরল রোগীদের জন্য বেশ উপযোগী।<br>৬। দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে।<br>৭। ত্বক ভালো রাখতে খেজুর বেশ উপযোগী খাবার।<br>৮। তাৎক্ষণিক শক্তি প্রদানের ক্ষেত্রে খেজুর ভালো কাজ করে।<br>৯। রক্তশূন্যতা দূর করতে ভূমিকা রাখে।<br>১০। হজম শক্তি বৃদ্ধিতে খেজুর ভূমিকা রাখে।</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">খেজুর অত্যাধিক পুষ্টিগুণ সম্পন্ন একটি ফল। তবে আমদানিকৃত এইসব খেজুর সঠিকভাবে সংরক্ষণের অভাবে নষ্ট হয়ে যাওয়ার আশঙ্কা থাকে। খাস ফুড এক্ষেত্রে যত্নের সাথে সঠিকভাবে খেজুর সংরক্ষণ করে বিধায় খেজুর এক বছর পর্যন্ত ভালো থাকে। এই খেজুর আপনি পাউরুটি, কেক, বিস্কুট বা যেকোন বেকড খাবার, দই ইত্যাদির সাথে গ্রহণ করতে পারবেন।</p>', 'Ajwa Dates (আজওয়া খেজুর)', 'আজওয়া খেজুর (Ajwa&nbsp;Dates) সৌদি আরবের এক অতি পরিচিত&nbsp;খেজুর। আরবের প্রাচীনতম প্রসিদ্ধ খেজুরগুলোর মধ্যে অন্যতম এই আজওয়া খেজুর। সৌদির বিভিন্ন অঞ্চলে বিশেষত...', '', 'public/uploads/product/1773947185-1771043004-1767453331-1764858328-1762933846-1743836769-screenshot_1.png', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:06:25', '2026-03-19 19:07:05'),
(239, 'physical', 'Ajwa Dates (আজওয়া খেজুর)', 'ajwa-dates-(আজওয়া-খেজুর)-239', 40, NULL, NULL, 19, NULL, 'P0239', 690, 700, 1000, 900.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">আজওয়া খেজুর (<a href=\"https://en.wikipedia.org/wiki/Ajwa_(date)#:~:text=Ajwa%20(Arabic%3A%20%D8%B9%D8%AC%D9%88%D9%87)%20is,with%20the%20Islamic%20prophet%20Muhammad.\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">Ajwa</a>&nbsp;Dates) সৌদি আরবের এক অতি পরিচিত&nbsp;<a href=\"https://www.khaasfood.com/?s=%E0%A6%96%E0%A7%87%E0%A6%9C%E0%A7%81%E0%A6%B0&amp;post_type=product&amp;product_cat=0\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">খেজুর</a>। আরবের প্রাচীনতম প্রসিদ্ধ খেজুরগুলোর মধ্যে অন্যতম এই আজওয়া খেজুর। সৌদির বিভিন্ন অঞ্চলে বিশেষত মদীনায় এর উপস্থিতি লক্ষ্যনীয়।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">খাস ফুডের আজওয়া খেজুর (Ajwa Dates) কেনো সেরা?</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। খাস ফুডের আজওয়া খেজুর সরাসরি আমদানিকারকদের থেকে সংগ্রহ করে গ্রাহকদের কাছে পৌঁছে দেওয়া হয়।<br>২। এই খেজুর সংরক্ষণে কোন রূপ কেমিক্যাল এর ব্যবহার করা হয় না।<br>৩। কোল্ড স্টোরেজে সংরক্ষিত এ খেজুর চাহিদা মত গ্রাহকদের কাছে সরবরাহ করা হয়।<br>৪। কোল্ড স্টোরেজে সঠিক তাপমাত্রায় নিরাপদে সংরক্ষণ করা হয় বিধায় এর মান নিয়ে কোন সংশয় থাকে না।<br>৫। এই খেজুরের আকার মাঝারি হওয়ায় সহজে গ্রহণযোগ্য।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">খেজুরের উপকারিতা</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। স্নায়বিক শক্তি বৃদ্ধি করে।<br>২। হৃদরোগীদের জন্য বেশ উপকারী।<br>৩। রুচিবর্ধক হিসেবে কাজ করে।<br>৪। দৃষ্টিশক্তি ভালো রাখে।<br>৫। উচ্চ কোলেস্টেরল রোগীদের জন্য বেশ উপযোগী।<br>৬। দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে।<br>৭। ত্বক ভালো রাখতে খেজুর বেশ উপযোগী খাবার।<br>৮। তাৎক্ষণিক শক্তি প্রদানের ক্ষেত্রে খেজুর ভালো কাজ করে।<br>৯। রক্তশূন্যতা দূর করতে ভূমিকা রাখে।<br>১০। হজম শক্তি বৃদ্ধিতে খেজুর ভূমিকা রাখে।</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">খেজুর অত্যাধিক পুষ্টিগুণ সম্পন্ন একটি ফল। তবে আমদানিকৃত এইসব খেজুর সঠিকভাবে সংরক্ষণের অভাবে নষ্ট হয়ে যাওয়ার আশঙ্কা থাকে। খাস ফুড এক্ষেত্রে যত্নের সাথে সঠিকভাবে খেজুর সংরক্ষণ করে বিধায় খেজুর এক বছর পর্যন্ত ভালো থাকে। এই খেজুর আপনি পাউরুটি, কেক, বিস্কুট বা যেকোন বেকড খাবার, দই ইত্যাদির সাথে গ্রহণ করতে পারবেন।</p>', 'Ajwa Dates (আজওয়া খেজুর)', 'আজওয়া খেজুর (Ajwa&nbsp;Dates) সৌদি আরবের এক অতি পরিচিত&nbsp;খেজুর। আরবের প্রাচীনতম প্রসিদ্ধ খেজুরগুলোর মধ্যে অন্যতম এই আজওয়া খেজুর। সৌদির বিভিন্ন অঞ্চলে বিশেষত...', '', 'public/uploads/product/1773947330-1771042960-1767453482-1764858224-1762948704-ajwa-dates-250-gm.png', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:08:50', '2026-03-19 19:08:50');
INSERT INTO `products` (`id`, `product_type`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `vendor_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `reseller_price`, `is_wholesale`, `wholesale_price`, `min_wholesale_quantity`, `advance_amount`, `ratting`, `stock`, `is_digital`, `free_delivery`, `digital_file`, `download_limit`, `download_expire_days`, `pro_unit`, `pro_video`, `pro_video_type`, `pro_video_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `facebook_posted_at`, `approval_status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(240, 'physical', 'Maryam Dates (Saudi) (মরিয়ম খেজুর)', 'maryam-dates-(saudi)-(মরিয়ম-খেজুর)-240', 40, NULL, NULL, 19, NULL, 'P0240', 5000, 1200, 2200, 900.00, 0, NULL, 1, 0.00, 0.0, 9998, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">মরিয়ম খেজুর (Maryam Dates) সৌদি আরবের এক অতি পরিচিত&nbsp;<a href=\"https://www.khaasfood.com/?s=%E0%A6%96%E0%A7%87%E0%A6%9C%E0%A7%81%E0%A6%B0&amp;post_type=product&amp;product_cat=0\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">খেজুর</a>। আরবের প্রাচীনতম প্রসিদ্ধ খেজুরগুলোর মধ্যে অন্যতম এই মরিয়ম খেজুর। সৌদির বিভিন্ন অঞ্চলে এর উপস্থিতি লক্ষ্যনীয়।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">খাস ফুডের মরিয়ম খেজুর (Maryam Dates) কেনো সেরা?</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। খাস ফুডের মরিয়ম খেজুর সরাসরি আমদানিকারকদের থেকে সংগ্রহ করে গ্রাহকদের কাছে পৌঁছে দেওয়া হয়।<br>২। এই খেজুর সংরক্ষণে কোন রূপ কেমিক্যাল এর ব্যবহার করা হয় না।<br>৩। কোল্ড স্টোরেজে সংরক্ষিত এ খেজুর চাহিদা মত গ্রাহকদের কাছে সরবরাহ করা হয়।<br>৪। কোল্ড স্টোরেজে সঠিক তাপমাত্রায় নিরাপদে সংরক্ষণ করা হয় বিধায় এর মান নিয়ে কোন সংশয় থাকে না।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">খেজুরের উপকারিতা</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। স্নায়বিক শক্তি বৃদ্ধি করে।<br>২। হৃদরোগীদের জন্য বেশ উপকারী।<br>৩। রুচিবর্ধক হিসেবে কাজ করে।<br>৪। দৃষ্টিশক্তি ভালো রাখে।<br>৫। উচ্চ কোলেস্টেরল রোগীদের জন্য বেশ উপযোগী।<br>৬। দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে।<br>৭। ত্বক ভালো রাখতে খেজুর বেশ উপযোগী খাবার।<br>৮। তাৎক্ষণিক শক্তি প্রদানের ক্ষেত্রে খেজুর ভালো কাজ করে।<br>৯।&nbsp;<a href=\"https://bn.wikipedia.org/wiki/%E0%A6%B0%E0%A6%95%E0%A7%8D%E0%A6%A4%E0%A6%B6%E0%A7%82%E0%A6%A8%E0%A7%8D%E0%A6%AF%E0%A6%A4%E0%A6%BE#:~:text=%E0%A6%B0%E0%A6%95%E0%A7%8D%E0%A6%A4%E0%A6%B6%E0%A7%82%E0%A6%A8%E0%A7%8D%E0%A6%AF%E0%A6%A4%E0%A6%BE%20%E0%A6%B9%E0%A6%B2%E0%A7%8B%20%E0%A6%B0%E0%A6%95%E0%A7%8D%E0%A6%A4%E0%A7%87%E0%A6%B0%20%E0%A6%8F%E0%A6%AE%E0%A6%A8%20%E0%A6%8F%E0%A6%95%E0%A6%9F%E0%A6%BF,%E0%A6%8F%E0%A6%AC%E0%A6%82%20%E0%A6%AC%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%AE%20%E0%A6%95%E0%A6%B0%E0%A6%BE%E0%A6%B0%20%E0%A6%95%E0%A6%AE%20%E0%A6%95%E0%A7%8D%E0%A6%B7%E0%A6%AE%E0%A6%A4%E0%A6%BE%E0%A5%A4\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">রক্তশূন্যতা</a>&nbsp;দূর করতে ভূমিকা রাখে।<br>১০। হজম শক্তি বৃদ্ধিতে খেজুর ভূমিকা রাখে।</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">খেজুর অত্যাধিক পুষ্টিগুণ সম্পন্ন একটি ফল। তবে আমদানিকৃত এইসব খেজুর সঠিকভাবে সংরক্ষণের অভাবে নষ্ট হয়ে যাওয়ার আশঙ্কা থাকে। খাস ফুড এক্ষেত্রে যত্নের সাথে সঠিকভাবে খেজুর সংরক্ষণ করে বিধায় খেজুর এক বছর পর্যন্ত ভালো থাকে। এই খেজুর আপনি পাউরুটি, কেক, বিস্কুট বা যেকোন বেকড খাবার, দই ইত্যাদির সাথে গ্রহণ করতে পারবেন।</p>', 'Maryam Dates (Saudi) (মরিয়ম খেজুর)', 'মরিয়ম খেজুর (Maryam Dates) সৌদি আরবের এক অতি পরিচিত&nbsp;খেজুর। আরবের প্রাচীনতম প্রসিদ্ধ খেজুরগুলোর মধ্যে অন্যতম এই মরিয়ম খেজুর। সৌদির বিভিন্ন অঞ্চলে এর উপস্থিত...', '', 'public/uploads/product/1773947469-1771042876-1767453751-1764858062-1762933638-1736438717-mariyamdates.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:11:09', '2026-04-20 19:08:52'),
(241, 'physical', 'Almond (কাঠ বাদাম)', 'almond-(কাঠ-বাদাম)-241', 40, NULL, NULL, 19, NULL, 'P0241', 2000, 1200, 2200, 900.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">কাঠ বাদাম (Almond) বেশ জনপ্রিয় ও স্বাস্থ্যকর খাবাদের তালিকায় এক অনন্য জায়গা ধরে রেখেছে। যদিও অনেকে বাদামকে ফ্যাটের ভালো উৎস ভেবে গ্রহণ করা থেকে বিরত থাকেন। তবে বাদামে উপস্থিত ফ্যাট দেহের জন্য উপকারী ফ্যাট। তাই কিছু পরিমাণ বাদামের নিয়মিত গ্রহণ সুস্থতায় ভালো ভূমিকা রাখে।</p><h2 dir=\"ltr\" data-placeholder=\"Translation\" style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">কাঠ বাদামের স্বাস্থ্য উপকারিতা</h2><p dir=\"ltr\" data-placeholder=\"Translation\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। ক্যালসিয়াম, ফাইবার, পটাসিয়াম, ম্যাগনেসিয়াম, ফসফরাস, ভিটামিন ই এর মতন গুরুত্বপূর্ণ পুষ্টি উপাদানের চমৎকার উৎস।<br>২। মস্তিষ্কের কর্মক্ষমতা বৃদ্ধিতে এবং শিশুদের পরিপূর্ণ বিকাশে অত্যন্ত গুরুত্বপূর্ণ ভূমিকা রাখে।<br>৩। কোলন ভালো রাখে ও কোলন ক্যান্সার প্রতিহত করতে সহায়তা করে এই বাদাম।<br>৪। হৃদসুরক্ষা প্রদানে এই বাদাম অত্যন্ত চমৎকার কাজ করে। এতে বিদ্যমান পটাসিয়াম, ম্যাগনেসিয়াম, ভিটামিন ই হৃদরোগের ঝুঁকি কমায় এবং হার্ট অ্যাটাক প্রতিরোধে ভূমিকা রাখে। এমনকি নিয়মিত এই&nbsp;<a href=\"https://www.khaasfood.com/?s=nuts&amp;post_type=product&amp;product_cat=0\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">বাদাম</a>&nbsp;গ্রহণ করলে হার্ট অ্যাটাকের ঝুঁকি ৫০% পর্যন্ত কমে।<br>৫। ডায়াবেটির রোগীদের ক্ষেত্রে ইনসুলিনের মাত্রা কমাতে সাহায্য করে এটি।<br>৬। উচ্চ রক্তচাপ নিয়ন্ত্রণে রাখতে কাজ করে এটি।<br>৭। ক্ষিদে কমাতে এটি বেশ ভালো কাজ করে। ফলে স্বাস্থ্যকর উপায়ে ওজন নিয়ন্ত্রণে রাখা সহজ হয়।<br>৮। খারাপ কোলেস্টেরল কমিয়ে সুস্থতা বজায় রাখতে সাহায্য করে এই বাদাম।<br>৯। স্ট্রোকের ঝুঁকি হ্রাস করে।<br>১০। এতে বিদ্যমান ভিটামিন ই ত্বকের যত্নে দারুণ কার্যকরী ভূমিকা রাখে।<br>১১। রূপচর্চায়ও এই বাদাম বিশেষভাবে ভূমিকা রাখে।<br>১২। ত্বকের ঔজ্জ্বল্য ধরে রাখতে এর জুড়ি মেলা ভার।</p><h2 dir=\"ltr\" data-placeholder=\"Translation\" style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">কেনো খাস ফুডের কাঠ বাদাম (Almond) নিবেন?</h2><p dir=\"ltr\" data-placeholder=\"Translation\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। আমেরিকা থেকে আমদানিকৃত কাঠ বাদাম সরবরাহ করা হয়।<br>২। নিজস্ব তত্ত্বাবধানে বাছাইকৃত বাদাম আলাদা করে প্যাকেটজাত করা হয়।<br>৩। প্যাকেজিং এর তারিখ হতে ৪ মাস পর্যন্ত এই বাদামের মেয়াদ থাকে।</p>', 'Almond (কাঠ বাদাম)', 'কাঠ বাদাম (Almond) বেশ জনপ্রিয় ও স্বাস্থ্যকর খাবাদের তালিকায় এক অনন্য জায়গা ধরে রেখেছে। যদিও অনেকে বাদামকে ফ্যাটের ভালো উৎস ভেবে গ্রহণ করা থেকে বিরত থাকেন। তবে...', '', 'public/uploads/product/1773947549-1771042819-1767453870-1764857874-1762933442-1736438635-almond.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:12:29', '2026-03-19 19:12:29'),
(242, 'physical', 'Khaas Signature Ghee', 'khaas-signature-ghee-242', 38, NULL, NULL, 21, NULL, 'P0242', 500, 1200, 10250, 1000.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">KHAAS SIGNATURE&nbsp; GHEE: PURE, ARTISANAL, AND LUXURIOUS</span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">Discover the Essence of Tradition with Khaas Signature Ghee</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">PURE ARTISANAL CRAFTSMANSHIP</span><br>Experience the pinnacle of culinary excellence with Khaas Signature Ghee. Crafted using traditional methods passed down through generations, our ghee is a celebration of heritage and quality. Each batch is meticulously prepared by expert artisans, ensuring that you receive nothing but the finest product, rich in flavor and history.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">EXCEPTIONAL QUALITY INGREDIENTS</span><br>Khaas Signature Ghee is made from the&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">freshest, GRASS-FED COW’S A2 MILK</span>, sourced from pristine pastures. Our commitment to quality begins at the source, where our cows graze on natural, nutrient-rich grass, resulting in milk of superior purity and taste. This milk is then slowly simmered to perfection, allowing the butterfat to separate and develop its distinctive, golden hue and nutty aroma.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">NUTRIENT-RICH AND HEALTHFUL</span><br>Packed with essential vitamins and nutrients, Khaas Signature Ghee is more than just a cooking ingredient—it’s a powerhouse of health benefits. Rich in Vitamins A, D, E, and K, our ghee supports a healthy immune system, aids in digestion, and promotes overall well-being. Its high smoke point makes it perfect for frying, and roasting, while its creamy texture and delightful taste enhance any dish. Our ghee promises to transform your culinary creations into gourmet masterpieces!</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">LUXURIOUS AND SUSTAINABLE PACKAGING</span><br>Presented in elegantly designed, reusable glass jars, Khaas Signature Ghee not only stands out on your kitchen shelf but also aligns with sustainable practices. Our packaging ensures the ghee retains its freshness and quality, while the minimalist yet luxurious design reflects the premium nature of our product. Each jar is sealed with care, guaranteeing that you receive ghee of the highest standard every time.</p>', 'Khaas Signature Ghee', 'KHAAS SIGNATURE&nbsp; GHEE: PURE, ARTISANAL, AND LUXURIOUSDiscover the Essence of Tradition with Khaas Signature GheePURE ARTISANAL CRAFTSMANSHIPExperience the...', '', 'public/uploads/product/1773947615-1771042749-1767454111-1764857313-1762933110-1736438385-signatute-ghee.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:13:35', '2026-03-19 19:13:35'),
(243, 'physical', 'Peanut Butter (Diabetics)', 'peanut-butter-(diabetics)-243', 40, NULL, NULL, 19, NULL, 'P0243', 5000, 12000, 10250, 1000.00, 0, NULL, 1, 500.00, 0.0, 1198, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><a href=\"https://en.wikipedia.org/wiki/Peanut_butter\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">Peanut Butter</a>&nbsp;(Diabetics) মূলত ডায়াবেটিক রোগীদের কথা বিবেচনায় রেখে প্রস্তুত করা। ডায়াবেটিক রোগীদের চিনি বা চিনিজাতীয় খাবারের প্রতি একটা আকর্ষণ থাকে। কিন্তু তাদের স্বাস্থ্য বিবেচনায় মিষ্টির উপর এক প্রকার নিষেধাজ্ঞা জারি হয়। এই ব্যপারগুলো বিবেচনায় রেখে&nbsp;<a href=\"https://www.khaasfood.com/\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">খাস ফুড</a>&nbsp;নিয়ে এসেছে Peanut Butter (Diabetic) যা চিনি বিহীন।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">খাস Peanut Butter (Diabetics) এর উপকরণ –</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">রোস্টেড চিনাবাদাম, লবণ ও খাঁটি ঘি।</span></p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Peanut Butter (Diabetic) এর উপকারিতা –</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১। এতে রয়েছে প্রোটিন, ফাইবার, স্বাস্থ্যকর ফ্যাট, ম্যাগনেসিয়াম, ভিটামিন ই। এছাড়াও পটাশিয়াম সমৃদ্ধ পিনাট বাটারে অল্প পরিমাণ জিঙ্কও রয়েছে। প্রতিটি উপাদানই আমাদের স্বাস্থ্যের পক্ষে অত্যন্ত গুরুত্বপূর্ণ।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">২। প্রতিদিন এর খাদ্য তালিকায় পিনাট বাটার রাখলে এটি ওজন নিয়ন্ত্রণে ভূমিকা রাখে। ফলে ওজন অতিরিক্ত বেড়ে যাবে না,&nbsp; আবার শরীরেও যথাযথ পুষ্টি যোগাবে। তবে অবশ্যই অতিরিক্ত মাত্রায় গ্রহণ করা থেকে বিরত থাকতে হবে।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৩। এতে প্রচুর পরিমাণে অ্যান্টি-অক্সিডেন্ট বিদ্যমান যা আমাদের দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধিতে ভূমিকা রাখে।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৪। হৃদপিণ্ডের জন্য স্বাস্থ্যকর মনোস্যাচুরেটেড ফ্যাট রয়েছে এই পিনাট বাটারে।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৫। এটি কোলেস্টেরলের মাত্রা কমায়।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৬। এটি টাইপ টু ডায়াবিটিসের ঝুঁকি কমায়।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৭। এই পিনাট বাটার কোলন ক্যান্সার, প্রস্টেট ক্যান্সার এবং স্তন ক্যানসার প্রতিরোধ করে।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৮। গলব্লাডার স্টোন বা গলস্টোনের ঝুঁকি কমায়।</span></p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">যেভাবে খাবেন –</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">শুধু ডায়াবেটিক রোগীই নয় বরং হাল্কা স্ন্যাক্স হিসেবে ছোট বড় সবাই যেকোনো&nbsp; সময় খেতে পারবেন। প্রতিদিনের নাস্তায় রুটি বা ব্রেডের সাথে পরিমাণ মত মিশিয়ে নিলেই হয়ে যাবে চমৎকার পুষ্টিসম্পন্ন সকালের নাস্তা।</span></p><h3 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 22px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">সংরক্ষণ পদ্ধতিঃ</span></h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">স্বাভাবিক তাপমাত্রায় ৩ মাস পর্যন্ত রাখা যায় এবং পরবর্তীতে ফ্রিজে রাখলে আরও ৪ মাস পর্যন্ত রাখা যাবে। তবে ভেজা হাত এবং ভেজা চামচ ব্যবহার করা যাবে না এবং এয়ার টাইট রাখতে।</span></p>', 'Peanut Butter (Diabetics)', 'Peanut Butter&nbsp;(Diabetics) মূলত ডায়াবেটিক রোগীদের কথা বিবেচনায় রেখে প্রস্তুত করা। ডায়াবেটিক রোগীদের চিনি বা চিনিজাতীয় খাবারের প্রতি একটা আকর্ষণ থাকে। কিন্তু...', '', 'public/uploads/product/1773947688-1771042689-1767454292-1764857184-1762933062-1736438310-peanut-butter-1.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:14:48', '2026-06-22 20:22:18'),
(244, 'physical', 'Pure Ghee (ঘি)', 'pure-ghee-(ঘি)-244', 38, NULL, NULL, 20, NULL, 'P0244', 500, 1200, 600, 1000.00, 0, NULL, 1, 0.00, 0.0, 9999, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">ঘি (Ghee) বাঙালি রসনার এক ঐতিহ্যবাহী উপাদান। গরম ভাত অথবা ভর্তার সাথে একটুখানি&nbsp;&nbsp;<a href=\"https://bn.wikipedia.org/wiki/%E0%A6%98%E0%A6%BF#:~:text=%E0%A6%98%E0%A6%BF%20%E0%A6%AD%E0%A6%BE%E0%A6%B0%E0%A6%A4%E0%A7%80%E0%A6%AF%E0%A6%BC%20%E0%A6%89%E0%A6%AA%E0%A6%AE%E0%A6%B9%E0%A6%BE%E0%A6%A6%E0%A7%87%E0%A6%B6%E0%A7%87%20%E0%A6%89%E0%A6%A6%E0%A7%8D%E0%A6%AD%E0%A7%82%E0%A6%A4%20%E0%A6%B9%E0%A6%93%E0%A6%AF%E0%A6%BC%E0%A6%BE,%E0%A6%AC%E0%A6%B9%E0%A7%81%E0%A6%A6%E0%A6%BF%E0%A6%A8%20%E0%A6%A7%E0%A6%B0%E0%A7%87%20%E0%A6%AC%E0%A7%8D%E0%A6%AF%E0%A6%AC%E0%A6%B9%E0%A7%83%E0%A6%A4%20%E0%A6%B9%E0%A6%AF%E0%A6%BC%E0%A7%87%20%E0%A6%86%E0%A6%B8%E0%A6%9B%E0%A7%87%E0%A5%A4\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">ঘি</a>&nbsp;খাবারের স্বাদকে বাড়িয়ে দেয় বহুগুণে। শুধু ভাত ভর্তাই নয়, পোলাও, কোরমা বা বিরিয়ানী থেকে শুরু করে মিষ্টান্ন সব ধরনের খাবার প্রস্তুতিতেই এর ব্যবহার লক্ষ্যনীয়। এটি মূলত এক ধরনের&nbsp;<a href=\"https://www.khaasfood.com/product-category/dairy/\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">দুগ্ধ জাত</a>&nbsp;খাবার। দুধ থেকে ননী বা দুধের ক্রিম আলাদা করে তা জ্বাল দিয়ে তৈরি করা হয় এই খাবারটি। মাখনের সাথে এর একটি পার্থক্য হচ্ছে এটি রেফ্রিজারেটরে না রেখেও দীর্ঘদিন সংরক্ষণ করা যায়।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">ঘি এর উপকারিতা –</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। স্বাস্থ্যকর ফ্যাট জাতীয় খাবার।<br>২। এটি হজমজনিত সমস্যা দূর করে। পাশাপাশি গ্যাস্ট্রিকের সমস্যা নিরসনেও ভূমিকা রাখে।<br>৩। মানসিক চাপ ও উদ্বেগ কমাতে ভূমিকা রাখে।<br>৪। হৃদস্বাস্থ্যের জন্য বেশ ভালো।<br>৫। এটি প্রদাহবিরোধী একটি খাবার।<br>৬। ত্বক ভালো রাখে। একই সাথে মুখের ঘা দূর করতে সাহায্য করে।<br>৭। ক্ষুধামন্দা দূর করতে ভূমিকা রাখে।<br>৮। আয়ুর্বেদিক শাস্ত্রে এর বিশেষ ব্যবহার রয়েছে।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">খাস খাঁটি ঘি (Ghee) কেনো আলাদা?</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১।&nbsp;</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">খাস ফুডের ঘি গরুর শতভাগ খাঁটি দুধ থেকে তৈরি।</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">২। বেস্ট কোয়ালিটির ক্রিম থেকে তৈরি।</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৩। কোন ধরণের ডালডা বা ভেজালের মিশ্রণ নেই।</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৪। ফুড কালার, ফ্লেভার বা কেমিক্যালের মিশ্রণ নেই।</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৫। উৎপাদনের সময় বিশেষ ফর্মুলা মেন্টেইন করা হয়, ফলে কোয়ালিটি হয় সেরা।</span></p>', 'Pure Ghee (ঘি)', 'ঘি (Ghee) বাঙালি রসনার এক ঐতিহ্যবাহী উপাদান। গরম ভাত অথবা ভর্তার সাথে একটুখানি&nbsp;&nbsp;ঘি&nbsp;খাবারের স্বাদকে বাড়িয়ে দেয় বহুগুণে। শুধু ভাত ভর্তাই নয়, পোলাও,...', '', 'public/uploads/product/1773947789-1771042608-1767454486-1764857030-1762932792-1736432215-black-seed-honey-500-1.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:16:29', '2026-06-21 17:11:41');
INSERT INTO `products` (`id`, `product_type`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `vendor_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `reseller_price`, `is_wholesale`, `wholesale_price`, `min_wholesale_quantity`, `advance_amount`, `ratting`, `stock`, `is_digital`, `free_delivery`, `digital_file`, `download_limit`, `download_expire_days`, `pro_unit`, `pro_video`, `pro_video_type`, `pro_video_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `facebook_posted_at`, `approval_status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(245, 'physical', 'Gawa Ghee – গাওয়া ঘি', 'gawa-ghee-–-গাওয়া-ঘি-245', 38, NULL, NULL, 19, NULL, 'P0245', 500, 2500, 2200, 900.00, 0, NULL, 1, 0.00, 0.0, 10000, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Gawa ghee</span>&nbsp;is specially customized for the East Indian taste palette. It is made from good quality milk; it has a rich brownish color. Its aroma will give your family a hint that something special is on the way.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Product Type:&nbsp;</span>Gawa Ghee</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Type:</span>&nbsp;Natural and Organic</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Brand:</span>&nbsp;Organic Online Bangladesh</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Net Weight:</span>&nbsp;200, 400, 1000 gm</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Made In:</span>&nbsp;Bangladesh</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Health Benefits of Gawa Ghee</span></p><ul style=\"padding: 0px 0px 0px 17px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; color: rgb(119, 119, 119);\"><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Soothes and Heals Skin</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Reduces exposure to cancer-causing agents</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Helps moisturize dry skin and hair</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">It has anti-inflammatory properties</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Contains heart-healthy fats</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Nutritional powerhouse</li></ul><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Why Organic Online Bangladesh?</span></p><ul style=\"padding: 0px 0px 0px 17px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; color: rgb(119, 119, 119);\"><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">100% pure</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Completely adulterated Chemical free</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Proper quality and nutrition</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Own supervision in the production process</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">High in demand</li></ul><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">To order your desired products with guaranteed purity – follow any of the steps below, and we will do the rest for you with care!</p>', 'Gawa Ghee – গাওয়া ঘি', 'Gawa ghee&nbsp;is specially customized for the East Indian taste palette. It is made from good quality milk; it has a rich brownish color. Its aroma will give y...', '', 'public/uploads/product/1773947855-1771042559-1767454636-1764856917-1762932892-1743836818-screenshot_3.png', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:17:35', '2026-03-19 19:17:35'),
(246, 'physical', 'Black Seed Honey', 'black-seed-honey-246', 39, NULL, NULL, 21, NULL, 'P0246', 350, 650, 850, 900.00, 0, NULL, 1, 0.00, 0.0, 9990, 0, 0, NULL, NULL, NULL, 'PCS', NULL, NULL, NULL, '<h3 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 22px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">সুস্বাস্থ্য ও রূপচর্চায় কালোজিরা মধুর প্রাকৃতিক গুণাবলি</h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। এতে রয়েছে বেশ কিছু খনিজ উপাদান যা শারীরিক সুস্থতা প্রদানে বেশ গুরুত্বপূর্ণ ভূমিকা রাখে।<br>২। দেহে তাপ ও শক্তির যোগান দেয়।<br>৩। হজমক্রিয়াকে ত্বরান্বিত করে হজমে সহায়তা করে।<br>৪। অ্যাসিডিটি উপশমে বেশ ভালো কাজ করে।<br>৫। কোষ্ঠ্যকাঠিন্য এবং ডায়রিয়াতেও এটি বেশ উপযোগী।<br>৬। দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে দেহকে সুরক্ষিত রাখে।<br>৭। ঘুমের সমস্যা সমাধানে এটি বেশ ভালো কাজ করে। রাতে ঘুমাতে যাওয়ার পূর্বে এক চা চামচ মধু হতে পারে অনিদ্রার ক্ষেত্রে বিশেষ কার্যকরী।<br>৮। রক্তশূন্যতা দূর করে ভূমিকা রাখে।<br>৯। দেহের পানিশূন্যতা দূর করতে ভূমিকা রাখে।<br>১০। অতিরিক্ত মেদ কমিয়ে ওজন হ্রাসে ভূমিকা রাখে।<br>১১। ত্বক মসৃণ ও সজীব রাখতে কাজ করে এটি।<br>১২। রূপচর্চায় এক বহুল ব্যবহৃত উপাদান।<br>১৩। উচ্চ রক্তচাপ নিয়ন্ত্রণে রাখতে বেশ ভালো কাজ করে।<br>১৪। হাঁপানি ও ফুসফুসের সমস্যা সমাধানে কার্যকরী।<br>১৫। সর্দি, কাশি, গলা ব্যথা দূর করতে চমৎকার কাজ করে।</p><h3 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 22px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">খাস ফুডের কালিজিরা মধু কেনো নিবেন?</h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। কালিজিরা ফুলের নেকটার থেকে সংগৃহীত মধুর নিশ্চয়তা।<br>২। শতভাগ খাঁটি মধুর নিশ্চয়তা।<br>৩। মধু সংগ্রহ থেকে প্যাকেজিং পর্যন্ত কার্যাবলী নিজস্ব তত্ত্বাবধানে সম্পন্ন করা হয়।</p>', 'Black Seed Honey', 'সুস্বাস্থ্য ও রূপচর্চায় কালোজিরা মধুর প্রাকৃতিক গুণাবলি১। এতে রয়েছে বেশ কিছু খনিজ উপাদান যা শারীরিক সুস্থতা প্রদানে বেশ গুরুত্বপূর্ণ ভূমিকা রাখে।২। দেহে তাপ ও শ...', '', 'public/uploads/product/1773947942-1771042499-1767454767-1764856747-1762932792-1736432215-black-seed-honey-500-1.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:19:01', '2026-06-22 00:51:38'),
(247, 'physical', 'Blended Floral Honey (ব্লেন্ডেড ফ্লোরাল হানি)', 'blended-floral-honey-(ব্লেন্ডেড-ফ্লোরাল-হানি)-247', 39, NULL, NULL, 18, NULL, 'P0247', 1200, 1200, 450, 900.00, 0, NULL, 1, 0.00, 0.0, 9991, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: lato, Arial, Helvetica, sans-serif; border: 0px; padding: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">ব্লেন্ডেড ফ্লোরাল হানি (Blended Floral Honey)</span></h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; border: 0px; padding: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">ব্লেন্ডেড ফ্লোরাল মধু (Blended Floral Honey) মূলত মৌমাছি কর্তৃক সরিষা ও লিচু ফুলের নেক্টার থেকে সংগৃহীত এক প্রকার ব্লেন্ডেড হানি। পুষ্টিগুণ সম্পন্ন সরিষা ফুলের মধুর স্বাদে ভিন্নতা এনেছে ব্লেন্ডেড ফ্লোরাল হানি। অর্থাৎ লিচুর স্বাদে সরিষার সমস্ত পুষ্টি উপাদান রয়েছে ব্লেন্ডেড ফ্লোরাল হানিতে। এই মধুর রয়েছে নানাবিধ স্বাস্থ্য উপকারিতা। এছাড়া চিনির বিকল্প হিসেবেও করা যাবে এই মধুর ব্যবহার।</span></p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: lato, Arial, Helvetica, sans-serif; border: 0px; padding: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"></h2><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: lato, Arial, Helvetica, sans-serif; border: 0px; padding: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">ব্লেন্ডেড ফ্লোরাল মধুর উপকারিতা</span></h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; border: 0px; padding: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১। এতে রয়েছে বেশ কিছু খনিজ উপাদান যা শারীরিক সুস্থতা প্রদানে বেশ গুরুত্বপূর্ণ ভূমিকা রাখে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">২। দেহে তাপ ও শক্তির যোগান দেয়।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৩। হজমক্রিয়াকে ত্বরান্বিত করে হজমে সহায়তা করে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৪। উচ্চ রক্তচাপ নিয়ন্ত্রণে রাখতে বেশ ভালো কাজ করে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৫। অতিরিক্ত মেদ কমিয়ে ওজন হ্রাসে ভূমিকা রাখে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৬। দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে দেহকে সুরক্ষিত রাখে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৭। ঘুমের সমস্যা সমাধানে এটি বেশ ভালো কাজ করে। রাতে ঘুমাতে যাওয়ার পূর্বে এক চা চামচ মধু হতে পারে অনিদ্রার ক্ষেত্রে বিশেষ কার্যকরী।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৮। রক্তশূন্যতা দূর করে ভূমিকা রাখে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৯। দেহের পানিশূন্যতা দূর করতে ভূমিকা রাখে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১০। কোষ্ঠ্যকাঠিন্য এবং ডায়রিয়াতেও এটি বেশ উপযোগী।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১১। ত্বক মসৃণ ও সজীব রাখতে কাজ করে এটি।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১২। রূপচর্চায় এক বহুল ব্যবহৃত উপাদান।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১৩। অ্যাসিডিটি উপশমে বেশ ভালো কাজ করে।<br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span>১৪। হাঁপানি ও ফুসফুসের সমস্যা সমাধানে কার্যকরী।<br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\">১৫। সর্দি, কাশি, গলা ব্যথা দূর করতে চমৎকার কাজ করে।</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; border: 0px; padding: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">&nbsp;</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: lato, Arial, Helvetica, sans-serif; border: 0px; padding: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">কেনো খাস ব্লেন্ডেড ফ্লোরাল হানি (Blended Floral Honey) নিবেন?</span></h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; border: 0px; padding: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১। সরিষা ও লিচু ফুলের নেক্টার থেকে সংগৃহীত মধুর নিশ্চয়তা।<br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">২। শতভাগ খাঁটি মধুর নিশ্চয়তা।<br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৩। নিজস্ব তত্ত্বাবধানে চাষকৃত মধু।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৪। মধু সংগ্রহ থেকে প্যাকেজিং পর্যন্ত কার্যাবলী নিজস্ব তত্ত্বাবধানে সম্পন্ন করা হয়।</span></p>', 'Blended Floral Honey (ব্লেন্ডেড ফ্লোরাল হানি)', 'ব্লেন্ডেড ফ্লোরাল হানি (Blended Floral Honey)ব্লেন্ডেড ফ্লোরাল মধু (Blended Floral Honey) মূলত মৌমাছি কর্তৃক সরিষা ও লিচু ফুলের নেক্টার থেকে সংগৃহীত এক প্রকার ব...', '', 'public/uploads/product/1773948074-1771042411-1767454937-1764856649-1762932738-1736432082-2024-07-15-6695b4dbdaf63.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-19 19:21:14', '2026-06-22 20:20:10');
INSERT INTO `products` (`id`, `product_type`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `vendor_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `reseller_price`, `is_wholesale`, `wholesale_price`, `min_wholesale_quantity`, `advance_amount`, `ratting`, `stock`, `is_digital`, `free_delivery`, `digital_file`, `download_limit`, `download_expire_days`, `pro_unit`, `pro_video`, `pro_video_type`, `pro_video_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `facebook_posted_at`, `approval_status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(248, 'physical', 'Peanut Butter (Diabetics)', 'peanut-butter-(diabetics)-248', 38, NULL, NULL, 22, NULL, 'P0248', 2000, 1200, 600, 1000.00, 0, NULL, 1, 0.00, 0.0, 9998, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(119, 119, 119); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><a href=\"https://en.wikipedia.org/wiki/Peanut_butter\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; outline-offset: 0px; outline: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">Peanut Butter</a>&nbsp;(Diabetics) মূলত ডায়াবেটিক রোগীদের কথা বিবেচনায় রেখে প্রস্তুত করা। ডায়াবেটিক রোগীদের চিনি বা চিনিজাতীয় খাবারের প্রতি একটা আকর্ষণ থাকে। কিন্তু তাদের স্বাস্থ্য বিবেচনায় মিষ্টির উপর এক প্রকার নিষেধাজ্ঞা জারি হয়। এই ব্যপারগুলো বিবেচনায় রেখে&nbsp;<a href=\"https://www.khaasfood.com/\" style=\"color: rgb(63, 63, 63); text-decoration: none; margin: 0px; padding: 0px; border: 0px; outline-offset: 0px; outline: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s;\">খাস ফুড</a>&nbsp;নিয়ে এসেছে Peanut Butter (Diabetic) যা চিনি বিহীন।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; border: 0px; padding: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">খাস Peanut Butter (Diabetics) এর উপকরণ –</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(119, 119, 119); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">রোস্টেড চিনাবাদাম, লবণ ও খাঁটি ঘি।</span></p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; border: 0px; padding: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Peanut Butter (Diabetic) এর উপকারিতা –</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(119, 119, 119); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১। এতে রয়েছে প্রোটিন, ফাইবার, স্বাস্থ্যকর ফ্যাট, ম্যাগনেসিয়াম, ভিটামিন ই। এছাড়াও পটাশিয়াম সমৃদ্ধ পিনাট বাটারে অল্প পরিমাণ জিঙ্কও রয়েছে। প্রতিটি উপাদানই আমাদের স্বাস্থ্যের পক্ষে অত্যন্ত গুরুত্বপূর্ণ।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">২। প্রতিদিন এর খাদ্য তালিকায় পিনাট বাটার রাখলে এটি ওজন নিয়ন্ত্রণে ভূমিকা রাখে। ফলে ওজন অতিরিক্ত বেড়ে যাবে না,&nbsp; আবার শরীরেও যথাযথ পুষ্টি যোগাবে। তবে অবশ্যই অতিরিক্ত মাত্রায় গ্রহণ করা থেকে বিরত থাকতে হবে।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৩। এতে প্রচুর পরিমাণে অ্যান্টি-অক্সিডেন্ট বিদ্যমান যা আমাদের দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধিতে ভূমিকা রাখে।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৪। হৃদপিণ্ডের জন্য স্বাস্থ্যকর মনোস্যাচুরেটেড ফ্যাট রয়েছে এই পিনাট বাটারে।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৫। এটি কোলেস্টেরলের মাত্রা কমায়।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৬। এটি টাইপ টু ডায়াবিটিসের ঝুঁকি কমায়।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৭। এই পিনাট বাটার কোলন ক্যান্সার, প্রস্টেট ক্যান্সার এবং স্তন ক্যানসার প্রতিরোধ করে।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৮। গলব্লাডার স্টোন বা গলস্টোনের ঝুঁকি কমায়।</span></p><h2 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 24px; font-family: Poppins, Arial, Helvetica, sans-serif; border: 0px; padding: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">যেভাবে খাবেন –</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(119, 119, 119); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">শুধু ডায়াবেটিক রোগীই নয় বরং হাল্কা স্ন্যাক্স হিসেবে ছোট বড় সবাই যেকোনো&nbsp; সময় খেতে পারবেন। প্রতিদিনের নাস্তায় রুটি বা ব্রেডের সাথে পরিমাণ মত মিশিয়ে নিলেই হয়ে যাবে চমৎকার পুষ্টিসম্পন্ন সকালের নাস্তা।</span></p><h3 style=\"margin-top: 0px; margin-bottom: 20px; font-weight: 600; line-height: 1.4; color: rgb(45, 42, 42); font-size: 22px; font-family: Poppins, Arial, Helvetica, sans-serif; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">সংরক্ষণ পদ্ধতিঃ</span></h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(119, 119, 119); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">স্বাভাবিক তাপমাত্রায় ৩ মাস পর্যন্ত রাখা যায় এবং পরবর্তীতে ফ্রিজে রাখলে আরও ৪ মাস পর্যন্ত রাখা যাবে। তবে ভেজা হাত এবং ভেজা চামচ ব্যবহার করা যাবে না এবং এয়ার টাইট রাখতে।</span></p>', 'Peanut Butter (Diabetics)', 'Peanut Butter&nbsp;(Diabetics) মূলত ডায়াবেটিক রোগীদের কথা বিবেচনায় রেখে প্রস্তুত করা। ডায়াবেটিক রোগীদের চিনি বা চিনিজাতীয় খাবারের প্রতি একটা আকর্ষণ থাকে। কিন্তু...', '', 'public/uploads/product/1773985135-1771042689-1767454292-1764857184-1762933062-1736438310-peanut-butter-1.webp', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-20 05:38:55', '2026-05-27 19:24:24'),
(249, 'physical', 'সুন্দরবনের চাকের মধু | Sundarbans Natural Honey', 'সুন্দরবনের-চাকের-মধু-|-sundarbans-natural-honey-249', 39, NULL, NULL, 22, NULL, 'P0249', 500, 1200, 600, 900.00, 0, NULL, 1, 0.00, 0.0, 9997, 0, 0, NULL, NULL, NULL, 'KG', NULL, NULL, NULL, '<p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px solid rgb(210, 214, 220); font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">সুন্দরবনের প্রাকৃতিক চাকের মধু (Sundarbans Natural Honey) এর চাহিদা বরাবরই ভিন্ন। খাঁটি মধু বলতেই সবার আগে এর কথাই মাথায় আসে। প্রাকৃতিক মধু সংগ্রহের জন্য&nbsp;আমাদের মৌয়ালরা সুন্দরবনের গহীনে চলে যায়। বছরের বিভিন্ন সময় সংগ্রহ করা গেলেও ফেব্রুয়ারি থেকে এপ্রিল মাস এর জন্য উৎকৃষ্ট সময়। মৌয়ালরা মধু সংগ্রহের জন্য বিভিন্ন নৌকাতে করে চাকের খোঁজে পাড়ি জমায় বনের গহীনে। সুন্দরবনের প্রাকৃতিক চাকের মধুতে খলিসা ফুলের নির্যাস বেশি থাকে। এই প্রাকৃতিক চাকের মধু অনেক পাতলা এবং সুস্বাদু হয়।</p><h1 style=\"margin-top: 0px; margin-bottom: 0.5em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); font-size: 1.7em; font-family: &quot;Hind Siliguri&quot;, sans-serif; border: 0px solid rgb(210, 214, 220); padding: 0px; text-rendering: optimizespeed; width: 915px;\"><span style=\"margin: 0px; padding: 0px; border: 0px solid rgb(210, 214, 220); -webkit-box-decoration-break: clone; font-weight: 400;\">সুন্দরবনের খাঁটি মধুর বৈশিষ্ট্যঃ</span></h1><ul style=\"padding: 0px; margin-bottom: 1.3em; border: 0px solid rgb(210, 214, 220); list-style: none; color: rgb(29, 29, 31); font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif; margin-right: 0px !important; margin-left: 0px !important;\"><li style=\"margin: 0px 0px 0.6em 1.3em; padding: 0px; border: 0px solid rgb(210, 214, 220); list-style: inside square; font-size: 16px; line-height: 30px; position: relative;\">সুন্দরবনের প্রাকৃতিক মধু দেখতে সাধারণত হালকা হলুদ বর্ণের (Light Amber) রঙের হয় (তবে সময়, চাক ও ফুল ভেদে কিছুটা হালকা (Light) বা গাড়ো (Dark) হতে পারে)।</li><li style=\"margin: 0px 0px 0.6em 1.3em; padding: 0px; border: 0px solid rgb(210, 214, 220); list-style: inside square; font-size: 16px; line-height: 30px; position: relative;\">সুন্দরবনের প্রাকৃতিক মধু খেতে খুবই সুস্বাদু, হালকা টকটক মিষ্টি লাগে।</li><li style=\"margin: 0px 0px 0.6em 1.3em; padding: 0px; border: 0px solid rgb(210, 214, 220); list-style: inside square; font-size: 16px; line-height: 30px; position: relative;\">কিছু মানুষের কাছে- সুন্দরবনের মধু অনেকটা আখের রসের মতো লাগে।</li><li style=\"margin: 0px 0px 0.6em 1.3em; padding: 0px; border: 0px solid rgb(210, 214, 220); list-style: inside square; font-size: 16px; line-height: 30px; position: relative;\">সুন্দরবনের প্রাকৃতিক চাকের মধুর ঘনত্ব সবসময় পাতলা হবে।</li><li style=\"margin: 0px 0px 0.6em 1.3em; padding: 0px; border: 0px solid rgb(210, 214, 220); list-style: inside square; font-size: 16px; line-height: 30px; position: relative;\">সুন্দরবনের প্রাকৃতিক চাকের মধুর অন্যতম বৈশিষ্ট্য হচ্ছে- একটু ঝাঁকি লাগলেই প্রচুর পরিমাণে ফেনা হয়ে যাবে। তবে শীতকালে ফেনা হওয়ার প্রবণতা কম দেখা যায়।</li><li style=\"margin: 0px 0px 0.6em 1.3em; padding: 0px; border: 0px solid rgb(210, 214, 220); list-style: inside square; font-size: 16px; line-height: 30px; position: relative;\">সুন্দরবনের প্রাকৃতিক চাকের খাটি মধু আমরা কখনই জমতে দেখা যায়নি। হোক সেটা ফ্রিজের ভেতরে বা বাইরে।</li><li style=\"margin: 0px 0px 0.6em 1.3em; padding: 0px; border: 0px solid rgb(210, 214, 220); list-style: inside square; font-size: 16px; line-height: 30px; position: relative;\">এই সুন্দরবনের প্রাকৃতিক চাকের মধুর আরেকটি বড় বৈশিষ্ট্য হচ্ছে- হাতে চাক কাটা পদ্ধতিতে সংগ্রহ করা মধুর উপরে হলুদ রঙের পোলেন জমা হয়। এটাকে অনেকে গাদ জমা বলে থাকেন।</li><li style=\"margin: 0px 0px 0.6em 1.3em; padding: 0px; border: 0px solid rgb(210, 214, 220); list-style: inside square; font-size: 16px; line-height: 30px; position: relative;\">এই সুন্দরবনের প্রাকৃতিক চাকের মধু খেতে কিছুটা ঝাঁঝালো হয় ।</li></ul><h1 style=\"margin-top: 0px; margin-bottom: 0.5em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); font-size: 1.7em; font-family: &quot;Hind Siliguri&quot;, sans-serif; border: 0px solid rgb(210, 214, 220); padding: 0px; text-rendering: optimizespeed; width: 915px;\"><span style=\"margin: 0px; padding: 0px; border: 0px solid rgb(210, 214, 220); -webkit-box-decoration-break: clone; font-weight: 400;\">সুন্দরবনের মধু সাধারনত দুই প্রকার হয়ে থাকেঃ</span></h1><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px solid rgb(210, 214, 220); font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">১। সুন্দরবনের প্রাকৃতিক চাকের মধু – এপিস ডরসাটা বা বুনো মৌমাছি সুন্দরবনের গহীনে ফোঁটা খলিশা, গরান, কেওড়া, গেওয়া ইত্যাদি ফুলের থেকে নেকটার সংগ্রহ করে এবং সেই নেকটার চাকে জমা করে। আর মৌয়ালরা সেই প্রাকিতিক চাক থেকেই সেই খাঁটি মধু সংগ্রহ করে। এই মধু তৈরিতে মানুষের কোনরূপ হাতের ছোঁয়া ছাড়াই সম্পূর্ণ প্রাকৃতিক ভাবে তৈরি হয়।</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px solid rgb(210, 214, 220); font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">২। সুন্দরবনের চাষের মধু- এপিস মেলিফেরা ও এপিস ফ্লোরিয়া মৌমাছি&nbsp; যেগুলা&nbsp; থেকে এই চাষের মধু সংগ্রহ কর হয়। এই চাষের মধুতে সুন্দরবনের ফুলের নেকটার ছাড়াও অন্যান্য ফুলের নেকটার থাকে। এই মধুটা চাষের মৌবক্স থেকে সংগ্রহ করা হয় আর নেকটার সংকট থাকলে এই মৌমাছিদের কে চিনি খাওয়ানো হয়।</p><h1 style=\"margin-top: 0px; margin-bottom: 0.5em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); font-size: 1.7em; font-family: &quot;Hind Siliguri&quot;, sans-serif; border: 0px solid rgb(210, 214, 220); padding: 0px; text-rendering: optimizespeed; width: 915px;\"><span style=\"margin: 0px; padding: 0px; border: 0px solid rgb(210, 214, 220); -webkit-box-decoration-break: clone; font-weight: 400;\">আমাদের সুন্দরবনের মধুটা কেন আলাদাঃ</span></h1><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px solid rgb(210, 214, 220); font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">আমরা আপনাদেরকে দিচ্ছি সুন্দরবনের প্রাকৃতিক চাকের “র” মধু যা সম্পূর্ণরূপে খাঁটি। কারন এই মধু আমাদের নিজস্ব তত্ত্বাবধানে গহীন বন থেকে আমাদের নিজস্ব মৌয়ালরা এপিস ডরসাটা বা বুনো মৌমাছির প্রাকৃতিক চাক থেকে মধু সংগ্রহ করে। আর এই খাঁটি সুন্দরবনের প্রাকৃতিক চাকের “র” মধুটা আমরা পৌঁছে দিচ্ছি আপনার হাতে ।&nbsp;</p><h1 style=\"margin-top: 0px; margin-bottom: 0.5em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); font-size: 1.7em; font-family: &quot;Hind Siliguri&quot;, sans-serif; border: 0px solid rgb(210, 214, 220); padding: 0px; text-rendering: optimizespeed; width: 915px;\"><span style=\"margin: 0px; padding: 0px; border: 0px solid rgb(210, 214, 220); -webkit-box-decoration-break: clone; font-weight: 400;\">সুন্দরবনের “র” মধুর PH:</span></h1><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px solid rgb(210, 214, 220); font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">সুন্দরবনের “র” মধুর PH সাধারনত ২.৮ থেকে ৫.৫ হয়ে থাকে বা ৩.১ থেকে ৬.০ হয়ে থাকে। যদি সুন্দরবনের মধুর PH ৬ এর থেকে বেশি হয় তাহলে বুঝতে হবে সেই মধুতে নিশ্চিত ভেজাল দেওয়া আছে।</p>', 'সুন্দরবনের চাকের মধু | Sundarbans Natural Honey', 'সুন্দরবনের প্রাকৃতিক চাকের মধু (Sundarbans Natural Honey) এর চাহিদা বরাবরই ভিন্ন। খাঁটি মধু বলতেই সবার আগে এর কথাই মাথায় আসে। প্রাকৃতিক মধু সংগ্রহের জন্য&nbsp;আ...', '', 'public/uploads/product/1774010222-1771042354-1767455074-1764856496-1762932628-1736431896-2024-07-16-66966ee025159.jpg', 1, 1, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-03-20 12:37:02', '2026-06-16 01:23:09'),
(250, 'physical', 'Dahua', 'dahua-250', 47, 71, 157, NULL, NULL, 'P0250', 100, 90, 150, 120.00, 0, NULL, 1, 100.00, 0.0, 5, 0, 0, NULL, NULL, NULL, '1', 'R03L15eeTLQ', 'youtube', NULL, '<p>Dahua Technology, founded in 2001, offers AIoT video-centric solutions featuring high-resolution IP and HDCVI cameras integrated with advanced technologies like WizSense and AcuPick. These systems provide robust security through features such as full-color night vision and active deterrence, catering to diverse environments. For more information</p>', 'Dahua', 'Dahua Technology, founded in 2001, offers AIoT video-centric solutions featuring high-resolution IP and HDCVI cameras integrated with advanced technologies like...', 'Dahua', 'public/uploads/product/1781536701-dahua-dh-hac-hfw1509tmp-il-a-5mp-smart-dual-light-hdcvi-fixed-focal-bullet-camera.html', 0, NULL, 0, NULL, 1, NULL, 'approved', NULL, NULL, '2026-06-16 01:18:21', '2026-06-16 01:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `productsizes`
--

CREATE TABLE `productsizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsizes`
--

INSERT INTO `productsizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 13, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(4, 1, 15, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(5, 35, 7, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(6, 35, 8, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(7, 35, 9, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(8, 28, 6, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(9, 28, 7, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(10, 28, 8, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(11, 28, 9, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(12, 2, 6, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(13, 2, 7, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(14, 2, 8, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(15, 131, 6, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(16, 131, 7, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(17, 131, 8, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(18, 131, 9, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(19, 131, 10, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(20, 117, 6, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(21, 117, 7, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(22, 117, 8, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(23, 117, 9, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(24, 1, 10, '2024-07-06 15:29:32', '2024-07-06 15:29:32'),
(25, 132, 7, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(26, 132, 8, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(27, 133, 6, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(28, 133, 8, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(29, 130, 6, '2024-09-04 13:28:03', '2024-09-04 13:28:03'),
(30, 130, 8, '2024-09-04 13:28:03', '2024-09-04 13:28:03'),
(31, 130, 9, '2024-09-04 13:28:03', '2024-09-04 13:28:03'),
(32, 135, 6, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(33, 135, 7, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(34, 135, 8, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(35, 135, 9, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(36, 135, 10, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(39, 157, 7, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(40, 157, 8, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(41, 157, 9, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(42, 157, 10, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(43, 158, 7, '2024-12-05 15:43:20', '2024-12-05 15:43:20'),
(44, 179, 6, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(45, 179, 8, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(46, 179, 9, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(53, 182, 7, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(54, 182, 8, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(55, 182, 9, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(64, 190, 6, '2025-10-18 07:35:26', '2025-10-18 07:35:26'),
(65, 190, 9, '2025-10-18 07:35:26', '2025-10-18 07:35:26'),
(66, 190, 10, '2025-10-18 07:35:26', '2025-10-18 07:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_prices`
--

CREATE TABLE `product_variant_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `size_id` int(10) UNSIGNED DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) DEFAULT 0,
  `sku` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_prices`
--

INSERT INTO `product_variant_prices` (`id`, `product_id`, `color_id`, `size_id`, `price`, `stock`, `sku`) VALUES
(448, 232, NULL, 19, 2500.00, 1000, NULL),
(449, 232, NULL, 20, 2500.00, 1000, NULL),
(450, 233, NULL, 19, 300.00, 1000, NULL),
(451, 233, NULL, 20, 300.00, 1000, NULL),
(452, 234, NULL, 18, 400.00, 100, NULL),
(453, 234, NULL, 19, 400.00, 100, NULL),
(454, 234, NULL, 20, 400.00, 100, NULL),
(455, 235, NULL, 19, 350.00, 1000, NULL),
(456, 235, NULL, 20, 350.00, 1000, NULL),
(457, 236, NULL, 19, 500.00, 100, NULL),
(458, 236, NULL, 20, 500.00, 100, NULL),
(459, 237, NULL, 19, 450.00, 1000, NULL),
(460, 237, NULL, 20, 450.00, 1000, NULL),
(463, 238, NULL, 19, 850.00, 1000, NULL),
(464, 238, NULL, 20, 850.00, 1000, NULL),
(465, 239, NULL, 19, 300.00, 1000, NULL),
(466, 239, NULL, 20, 300.00, 1000, NULL),
(467, 240, NULL, 19, 800.00, 1000, NULL),
(468, 240, NULL, 20, 800.00, 1000, NULL),
(469, 241, NULL, 19, 600.00, 700, NULL),
(470, 241, NULL, 20, 600.00, 700, NULL),
(471, 242, NULL, 17, 600.00, 1000, NULL),
(472, 242, NULL, 18, 600.00, 1000, NULL),
(473, 243, NULL, 19, 1200.00, 100, NULL),
(474, 243, NULL, 20, 1200.00, 100, NULL),
(475, 244, NULL, 19, 650.00, 1000, NULL),
(476, 244, NULL, 20, 650.00, 1000, NULL),
(477, 245, NULL, 19, 1200.00, 1000, NULL),
(478, 245, NULL, 20, 1200.00, 1000, NULL),
(479, 246, NULL, 19, 650.00, 100, NULL),
(480, 246, NULL, 20, 650.00, 100, NULL),
(487, 248, NULL, 19, 900.00, 1000, NULL),
(488, 248, NULL, 20, 900.00, 1000, NULL),
(489, 249, NULL, 19, 450.00, 1000, NULL),
(490, 249, NULL, 20, 450.00, 1000, NULL),
(491, 247, 35, 19, 500.00, 200, NULL),
(492, 247, 35, 20, 500.00, 200, NULL),
(493, 250, 62, 7, 150.00, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_wholesale_prices`
--

CREATE TABLE `product_wholesale_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `min_quantity` int(11) NOT NULL,
  `max_quantity` int(11) DEFAULT NULL,
  `wholesale_price` decimal(14,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `purchase_date` date NOT NULL,
  `total_qty` int(11) NOT NULL DEFAULT 0,
  `subtotal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(15,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'completed',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `invoice_no`, `purchase_date`, `total_qty`, `subtotal`, `discount`, `shipping_cost`, `grand_total`, `paid_amount`, `due_amount`, `note`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'PUR-1764103831', '2025-11-26', 200, 20000.00, 0.00, 0.00, 20000.00, 20000.00, 0.00, 'hellio', 'completed', 1, '2025-11-25 20:51:00', '2025-12-19 09:19:17'),
(2, 2, 'PUR-1765430839', '2025-12-11', 1, 63000.00, 50.00, 50.00, 63000.00, 63000.00, 0.00, 'h ii', 'completed', 1, '2025-12-11 05:28:10', '2025-12-19 09:19:27'),
(4, 3, 'PUR-1766135846', '2025-12-19', 21, 22050.00, 0.00, 50.00, 22100.00, 22000.00, 100.00, NULL, 'completed', 13, '2025-12-19 09:18:17', '2025-12-19 09:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_price_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `unit_cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `line_total` decimal(15,2) NOT NULL DEFAULT 0.00,
  `returned_qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_logs`
--

CREATE TABLE `purchase_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` enum('edit','delete') NOT NULL,
  `old_invoice_no` varchar(255) DEFAULT NULL,
  `new_invoice_no` varchar(255) DEFAULT NULL,
  `old_purchase_date` date DEFAULT NULL,
  `new_purchase_date` date DEFAULT NULL,
  `old_paid_amount` decimal(15,2) DEFAULT NULL,
  `new_paid_amount` decimal(15,2) DEFAULT NULL,
  `old_grand_total` decimal(15,2) DEFAULT NULL,
  `new_grand_total` decimal(15,2) DEFAULT NULL,
  `old_note` text DEFAULT NULL,
  `new_note` text DEFAULT NULL,
  `fund_balance_before` decimal(15,2) NOT NULL,
  `fund_balance_after` decimal(15,2) NOT NULL,
  `description` text DEFAULT NULL,
  `performed_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_logs`
--

INSERT INTO `purchase_logs` (`id`, `purchase_id`, `action`, `old_invoice_no`, `new_invoice_no`, `old_purchase_date`, `new_purchase_date`, `old_paid_amount`, `new_paid_amount`, `old_grand_total`, `new_grand_total`, `old_note`, `new_note`, `fund_balance_before`, `fund_balance_after`, `description`, `performed_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'delete', 'PUR-1765782672', NULL, '2025-12-15', NULL, 100.00, NULL, 100.00, NULL, NULL, NULL, -36789.00, -36689.00, 'Purchase deleted: Invoice \'PUR-1765782672\' (Paid: 100.00, Total: 100.00). Fund balance changed from -36789 to -36689 (+100)', 1, '2026-01-21 18:39:41', '2026-01-21 18:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `refund_id` varchar(255) NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `shipping_charge` decimal(14,2) NOT NULL DEFAULT 0.00,
  `reason` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `status` enum('pending','approved','rejected','processed') NOT NULL DEFAULT 'pending',
  `refund_method` enum('original_payment','bkash','nagad','bank','manual') NOT NULL DEFAULT 'original_payment',
  `refund_account` varchar(255) DEFAULT NULL,
  `refund_account_name` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `processed_by` int(10) UNSIGNED DEFAULT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_deposits`
--

CREATE TABLE `reseller_deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `payment_gateway` varchar(50) NOT NULL DEFAULT 'uddoktapay',
  `transaction_id` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reseller_deposits`
--

INSERT INTO `reseller_deposits` (`id`, `user_id`, `amount`, `payment_gateway`, `transaction_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 29, 500.00, 'uddoktapay', '5445545456', 'completed', '2026-03-10 11:22:08', '2026-03-10 11:22:38'),
(2, 29, 1000.00, 'uddoktapay', '1511515444', 'completed', '2026-03-10 11:27:41', '2026-03-10 11:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `reseller_landing_contact_messages`
--

CREATE TABLE `reseller_landing_contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reseller_landing_page_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `details` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_landing_newsletter_subscribers`
--

CREATE TABLE `reseller_landing_newsletter_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reseller_landing_page_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reseller_landing_newsletter_subscribers`
--

INSERT INTO `reseller_landing_newsletter_subscribers` (`id`, `reseller_landing_page_id`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, 'okibkhan420@gmail.com', '2026-03-11 11:44:00', '2026-03-11 11:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `reseller_landing_pages`
--

CREATE TABLE `reseller_landing_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scrolling_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_pixel_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gtm_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok_pixel_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_capi_access_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_newsletter_footer` tinyint(1) NOT NULL DEFAULT 1,
  `show_social_footer` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reseller_landing_pages`
--

INSERT INTO `reseller_landing_pages` (`id`, `user_id`, `slug`, `custom_domain`, `logo`, `title`, `tagline`, `scrolling_text`, `slider_images`, `banner_image`, `favicon`, `phone`, `email`, `address`, `facebook_url`, `twitter_url`, `whatsapp_url`, `youtube_url`, `instagram_url`, `facebook_pixel_id`, `gtm_id`, `tiktok_pixel_id`, `facebook_capi_access_token`, `show_newsletter_footer`, `show_social_footer`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 20, 'creative-shoper', 'creativeshoper.com', 'public/uploads/reseller/landing/20/logo.1773157416.webp', 'Creative Shoper', 'আপনার বিশ্বস্ত পার্টনার', 'Gadget BD অনলাইন শপে আপনাকে স্বাগতম || অনলাইনে আস্থা ও বিশ্বস্ততার সাথে  সারা বাংলাদেশে হোম ডেলিভারী দিয়ে থাকি অর্ডার করতে অগ্রিম টাকা দিতে হবে না এ্যাডভান্স বিকাশ পেমেন্টে ৫% ডিসকাউন্ট ৩-৫ দিনে সারাদেশে হোম ডেলিভারী দেওয়া হয় ক্যাশঅন ডেলিভারীর সুবিধা রয়েছে, তাই অর্ডার করুন নিশ্চিন্তে ধন্যবাদ', '[\"public\\/uploads\\/reseller\\/landing\\/20\\/slider_0.1773157419.webp\"]', 'public/uploads/reseller/landing/20/banner.1773157417.webp', 'public/uploads/reseller/landing/20/favicon.1773229738.webp', '01775457008', 'info@creativeshoper.com', 'House no 23, Road no 15, Section 3, Uttara C/A, Dhaka, 1230', 'https://www.youtube.com/shorts/YCbP5fnryG4', 'https://www.youtube.com/shorts/YCbP5fnryG4', 'https://www.youtube.com/shorts/YCbP5fnryG4', 'https://www.youtube.com/shorts/YCbP5fnryG4', 'https://www.youtube.com/shorts/YCbP5fnryG4', NULL, NULL, NULL, NULL, 1, 1, 1, '2026-03-10 15:41:03', '2026-03-11 12:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `reseller_landing_products`
--

CREATE TABLE `reseller_landing_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reseller_landing_page_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `custom_price` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_wallet_transactions`
--

CREATE TABLE `reseller_wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(30) NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `balance_after` decimal(14,2) DEFAULT NULL,
  `reference_type` varchar(50) DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reseller_wallet_transactions`
--

INSERT INTO `reseller_wallet_transactions` (`id`, `user_id`, `type`, `amount`, `balance_after`, `reference_type`, `reference_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 29, 'order_profit', 200.00, 1700.00, 'Order', 1145, 'অর্ডার #73104 প্রফিট', '2026-03-10 12:30:51', '2026-03-10 12:30:51'),
(2, 20, 'withdrawal', -170.00, 6010.00, 'ResellerWithdrawal', 3, 'উইথড্র রিকুয়েস্ট #3', '2026-03-10 15:10:53', '2026-03-10 15:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `reseller_withdrawals`
--

CREATE TABLE `reseller_withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `charge` decimal(14,2) NOT NULL DEFAULT 0.00,
  `payout_method` varchar(255) NOT NULL DEFAULT 'manual',
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `admin_note` text DEFAULT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reseller_withdrawals`
--

INSERT INTO `reseller_withdrawals` (`id`, `user_id`, `amount`, `charge`, `payout_method`, `account_name`, `account_number`, `note`, `status`, `admin_note`, `processed_at`, `created_at`, `updated_at`) VALUES
(1, 20, 1000.00, 0.00, 'bkash', 'Md Nazrul Islam', '01775457008', 'hello', 'rejected', 'nn', '2026-01-25 15:59:46', '2026-01-25 15:57:40', '2026-01-25 15:59:46'),
(2, 20, 170.00, 0.00, 'nagad', 'Md Nazrul Islam', '01775457008', 'gghhg', 'approved', 'done last 7008', '2026-01-25 15:59:15', '2026-01-25 15:57:53', '2026-01-25 15:59:15'),
(3, 20, 170.00, 0.00, 'bkash', 'Md Nazrul Islam', '01775457008', 'hh', 'pending', NULL, NULL, '2026-03-10 15:10:53', '2026-03-10 15:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `ratting` varchar(4) NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `ratting`, `review`, `product_id`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Jononi Madical Hall', 'info@dhakacoaching.com', '5', '\"আমি এই প্যান্টটি কিনেছি এবং আমার অভিজ্ঞতা বেশ ভালো।', 201, 215, 'active', '2025-11-11 13:49:23', '2025-11-11 14:11:46'),
(12, 'Jononi Madical Hall', 'N / A', '5', 'প্যান্টটি পরতে খুবই আরামদায়ক (comfortable)। ফিটিং (fitting) একদম পারফেক্ট।', 201, 215, 'active', '2025-11-11 14:32:28', '2025-11-11 14:32:56'),
(13, 'Jononi Madical Hall', 'info@dhakacoaching.com', '5', 'সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 201, 215, 'active', '2025-11-11 14:33:32', '2025-11-11 14:50:29'),
(14, 'Jakir Hosain', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 201, 213, 'active', '2025-11-11 14:52:32', '2025-11-11 14:52:32'),
(15, 'Jakir Hosain', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 201, 213, 'active', '2025-11-11 14:52:32', '2025-11-11 14:52:32'),
(16, 'Md Abdul Aziz', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 197, 214, 'active', '2025-11-11 14:53:57', '2025-11-11 14:53:57'),
(17, 'Jakir Hosain', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 181, 213, 'active', '2025-11-11 14:54:11', '2025-11-11 14:54:11'),
(18, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 183, 215, 'active', '2025-11-11 14:54:25', '2025-11-11 14:54:25'),
(19, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 184, 215, 'active', '2025-11-11 14:54:39', '2025-11-11 14:54:39'),
(20, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 184, 215, 'active', '2025-11-11 14:54:39', '2025-11-11 14:54:39'),
(21, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 185, 215, 'active', '2025-11-11 14:54:52', '2025-11-11 14:54:52'),
(22, 'Jakir Hosain', 'N / A', '4', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 186, 213, 'active', '2025-11-11 14:55:06', '2025-11-11 14:55:06'),
(23, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 196, 215, 'active', '2025-11-11 14:55:21', '2025-11-11 14:55:21'),
(24, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 196, 215, 'active', '2025-11-11 14:55:21', '2025-11-11 14:55:21'),
(29, 'Jononi Madical Hall', 'okibkhan420@gmail.com', '5', 'hhbkjbbjkbjbk', 180, 286, 'active', '2026-01-21 16:10:24', '2026-01-21 16:13:06'),
(30, 'Jononi Madical Hall', 'info@talentsedu2.com', '5', 'Good Selller', 221, 286, 'active', '2026-01-26 09:44:02', '2026-01-26 09:44:35'),
(31, 'Jononi Madical Hall', 'info@talentsedu2.com', '4', 'Good Product', 227, 286, 'active', '2026-01-26 15:29:17', '2026-01-26 15:30:55'),
(32, 'Jononi Madical Hall', 'info@talentsedu2.com', '5', 'Nice', 226, 286, 'active', '2026-01-26 15:29:42', '2026-01-26 15:30:57'),
(33, 'Jononi Madical Hall', 'info@talentsedu2.com', '5', 'Good', 225, 286, 'active', '2026-01-26 15:33:58', '2026-01-26 15:34:38'),
(34, 'Jononi Madical Hall', 'info@talentsedu2.com', '5', 'Good', 224, 286, 'active', '2026-01-26 15:34:13', '2026-01-26 15:34:40'),
(35, 'Jononi Madical Hall', 'info@talentsedu2.com', '5', 'Good', 223, 286, 'active', '2026-01-26 15:34:30', '2026-01-26 15:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2023-01-11 06:33:09', '2023-01-11 06:33:09'),
(3, 'Salesman', 'admin', '2025-12-12 12:04:01', '2025-12-16 13:50:23'),
(4, 'vendor', 'admin', '2026-01-20 08:15:22', '2026-01-20 08:15:22'),
(5, 'customer', 'customer', '2026-01-20 08:15:22', '2026-01-20 08:15:22'),
(6, 'reseller', 'admin', '2026-01-20 17:08:30', '2026-01-20 17:08:30'),
(8, 'Super Viser', 'admin', '2026-01-21 13:10:27', '2026-01-21 13:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 8),
(2, 1),
(2, 3),
(2, 8),
(3, 1),
(3, 3),
(3, 8),
(4, 1),
(4, 3),
(4, 8),
(5, 1),
(5, 3),
(5, 8),
(6, 1),
(6, 3),
(6, 8),
(7, 1),
(7, 3),
(7, 8),
(8, 1),
(8, 3),
(8, 8),
(9, 1),
(9, 3),
(9, 8),
(10, 1),
(10, 3),
(10, 8),
(11, 1),
(11, 3),
(11, 8),
(12, 1),
(12, 3),
(12, 8),
(13, 1),
(13, 3),
(13, 8),
(14, 1),
(14, 3),
(14, 8),
(15, 1),
(15, 3),
(15, 8),
(16, 1),
(16, 3),
(16, 8),
(17, 1),
(17, 3),
(17, 8),
(18, 1),
(18, 3),
(18, 8),
(19, 1),
(19, 3),
(19, 8),
(20, 1),
(20, 3),
(20, 8),
(21, 1),
(21, 3),
(21, 8),
(22, 1),
(22, 3),
(22, 8),
(23, 1),
(23, 3),
(23, 8),
(24, 1),
(24, 3),
(24, 8),
(25, 1),
(25, 3),
(25, 8),
(26, 1),
(26, 3),
(26, 8),
(27, 1),
(27, 3),
(27, 8),
(28, 1),
(28, 3),
(28, 8),
(29, 1),
(29, 3),
(29, 8),
(30, 1),
(30, 3),
(30, 8),
(31, 1),
(31, 3),
(31, 8),
(32, 1),
(32, 3),
(32, 8),
(33, 1),
(33, 3),
(33, 8),
(34, 1),
(34, 3),
(34, 8),
(35, 1),
(35, 3),
(35, 8),
(36, 1),
(36, 3),
(36, 8),
(37, 1),
(37, 3),
(37, 8),
(38, 1),
(38, 3),
(38, 8),
(39, 1),
(39, 3),
(39, 8),
(40, 1),
(40, 3),
(40, 8),
(41, 1),
(41, 3),
(41, 8),
(42, 1),
(42, 3),
(42, 8),
(43, 1),
(43, 3),
(43, 8),
(44, 1),
(44, 3),
(44, 8),
(49, 1),
(49, 3),
(49, 8),
(50, 1),
(50, 3),
(50, 8),
(51, 1),
(51, 3),
(51, 8),
(52, 1),
(52, 3),
(52, 8),
(53, 1),
(53, 3),
(53, 8),
(54, 1),
(54, 3),
(54, 8),
(55, 1),
(55, 3),
(55, 8),
(56, 1),
(56, 3),
(56, 8),
(69, 1),
(69, 3),
(69, 8),
(70, 1),
(70, 3),
(70, 8),
(71, 1),
(71, 3),
(71, 8),
(72, 1),
(72, 3),
(72, 8),
(73, 1),
(73, 3),
(73, 8),
(74, 1),
(74, 3),
(74, 8),
(75, 1),
(75, 3),
(75, 8),
(76, 1),
(76, 3),
(76, 8),
(84, 8),
(85, 8),
(86, 8),
(87, 8),
(88, 8),
(89, 8),
(90, 8),
(91, 8),
(92, 8),
(93, 8),
(94, 8),
(95, 8),
(96, 8),
(97, 8),
(98, 8),
(99, 8),
(100, 8),
(101, 8),
(102, 8),
(103, 8),
(104, 8),
(105, 8),
(106, 8),
(107, 8),
(108, 8),
(109, 8),
(110, 8),
(111, 8),
(112, 8),
(113, 8),
(114, 8),
(115, 8),
(116, 8),
(117, 8),
(118, 8),
(119, 8),
(120, 8),
(121, 8),
(122, 8),
(123, 8),
(124, 8),
(125, 8),
(126, 8),
(127, 8),
(128, 8),
(129, 8),
(130, 8),
(131, 8),
(132, 8),
(133, 8),
(134, 8),
(135, 8),
(136, 8),
(137, 8),
(138, 8),
(139, 8),
(140, 8),
(141, 8),
(142, 8),
(143, 8),
(144, 8),
(145, 8),
(146, 8),
(147, 8),
(148, 8),
(149, 8),
(150, 8),
(151, 8),
(152, 8);

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_tags` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `search_console_verification` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `meta_title`, `meta_tags`, `meta_description`, `search_console_verification`, `created_at`, `updated_at`) VALUES
(1, 'Organic Shop | Best Laravel Ecommerce Website', 'Gadget BD, Online Shopping Bangladesh, Best Ecommerce Website, Laravel Shopping Cart, Electronics Shop BD, Buy Gadgets Online, Mobile Accessories, Smartwatch Price in BD, Original Products, Tech Shop Bangladesh, Fast Delivery Ecommerce.', 'Gadget BD বাংলাদেশের অন্যতম সেরা লারাভেল ভিত্তিক ই-কমার্স প্ল্যাটফর্ম। আমাদের এখানে পাবেন লেটেস্ট স্মার্টফোন, গ্যাজেট, ল্যাপটপ এবং অরিজিনাল টেক অ্যাক্সেসরিজ। সুলভ মূল্য, দ্রুত ডেলিভারি এবং চমৎকার ইউজার এক্সপেরিয়েন্সের জন্য আজই আমাদের সাইট ভিজিট করুন।', NULL, '2025-11-07 21:11:35', '2026-03-20 14:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `area` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `customer_id`, `name`, `phone`, `address`, `area`, `created_at`, `updated_at`) VALUES
(1136, 1148, 500, 'Md Khalid hasan', '01775457009', 'House:35/3/1-B,Section-13,Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-20 14:06:01', '2026-03-20 14:06:07'),
(1137, 1149, 307, 'Engineering Lab', '01796825863', 'Dhaka, Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-20 14:08:32', '2026-03-20 14:08:32'),
(1138, 1150, 306, 'Redwan Ahmed', '01327949940', 'Dhaka, Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2026-03-20 14:14:38', '2026-03-20 14:14:38'),
(1139, 1151, 502, 'lund', '01300132051', 'dhaka chittagong india sylhrt', 'ঢাকার বাহিরে  ১২০ টাকা', '2026-04-11 07:07:04', '2026-04-11 07:07:04'),
(1140, 1152, 503, 'test', '01737053333', 'kha 19 south badda', 'ঢাকার ভিতরে ৭০ টাকা', '2026-04-20 19:08:52', '2026-04-20 19:08:52'),
(1141, 1153, 504, 'Shimanto Arif', '01715528252', 'House: 18, Road: 9, West Dhanmondi housing Bosila.', 'ঢাকার ভিতরে ৭০ টাকা', '2026-04-24 14:50:36', '2026-04-24 14:50:36'),
(1142, 1154, 505, 'Khandoker Golam Masud Rana', '01713113743', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-05-27 19:24:24', '2026-05-27 19:24:24'),
(1143, 1155, 506, 'Diganta IT', '01735156614', '17/J Modhubag Road', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-16 01:23:09', '2026-06-16 01:23:09'),
(1144, 1156, 505, 'Khandoker Golam Masud Rana', '01713113743', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-21 17:09:50', '2026-06-21 17:09:50'),
(1145, 1157, 505, 'Khandoker Golam Masud Rana', '01713113743', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-21 17:11:41', '2026-06-21 17:11:41'),
(1146, 1158, 505, 'Amber IT Ltd', '01713113743', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-21 17:21:59', '2026-06-21 17:21:59'),
(1147, 1159, 505, 'Khandoker Golam Masud Rana', '01713113743', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-21 17:51:17', '2026-06-21 17:51:17'),
(1148, 1160, 505, 'Khandoker Golam Masud Rana', '01713113743', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-21 18:06:29', '2026-06-21 18:06:29'),
(1149, 1161, 506, 'K G Masud Rana', '01735156614', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-21 23:19:34', '2026-06-21 23:19:34'),
(1150, 1162, 506, 'K G Masud Rana', '01735156614', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-22 00:00:53', '2026-06-22 00:00:53'),
(1151, 1163, 506, 'K G Masud Rana', '01735156614', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-22 00:32:17', '2026-06-22 00:32:17'),
(1152, 1164, 506, 'K G Masud Rana', '01735156614', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-22 00:41:11', '2026-06-22 00:41:11'),
(1153, 1165, 506, 'K G Masud Rana', '01735156614', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-22 00:47:07', '2026-06-22 00:47:07'),
(1154, 1166, 506, 'K G Masud Rana', '01735156614', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-22 00:51:38', '2026-06-22 00:51:38'),
(1155, 1167, 505, 'Khandoker Golam Masud Rana', '01713113743', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-22 20:20:10', '2026-06-22 20:20:10'),
(1156, 1168, 505, 'Khandoker Golam Masud Rana', '01713113743', '17/J, Mudhubag, Mugbazar, dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2026-06-22 20:22:18', '2026-06-22 20:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `name`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ঢাকার ভিতরে ৭০ টাকা', 70, '1', '2023-08-04 10:34:54', '2026-01-03 06:38:55'),
(2, 'ঢাকার বাহিরে  ১২০ টাকা', 120, '1', '2023-08-04 10:35:57', '2025-12-26 05:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sizeName` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `sizeName`, `status`, `created_at`, `updated_at`) VALUES
(6, 'S', '1', '2024-02-05 09:38:42', '2024-02-05 09:38:42'),
(7, 'M', '1', '2024-02-05 09:38:46', '2024-02-05 09:38:46'),
(8, 'L', '1', '2024-02-05 09:38:51', '2024-02-05 09:38:51'),
(9, 'XL', '1', '2024-02-05 09:38:57', '2024-02-05 09:38:57'),
(10, 'XXL', '1', '2024-02-05 09:39:03', '2024-02-05 09:39:03'),
(11, '12 Inchi', '1', '2024-02-05 09:39:19', '2024-11-10 04:43:12'),
(12, '10 Inchi', '1', '2024-02-05 09:39:25', '2024-11-10 04:42:40'),
(13, '8.5 Inch', '1', '2024-02-05 09:39:30', '2024-11-10 04:42:17'),
(14, '20 mm', '1', '2024-02-05 09:39:34', '2024-11-10 04:41:48'),
(15, '22 mm', '1', '2024-02-05 09:39:39', '2024-11-10 04:41:35'),
(17, '500gm', '1', '2025-11-19 16:19:07', '2025-11-19 16:19:07'),
(18, '250gm', '1', '2025-11-19 16:19:14', '2025-11-19 16:19:14'),
(19, '1 kg', '1', '2025-11-19 16:19:18', '2025-11-19 16:19:18'),
(20, '2kg', '1', '2025-11-19 16:19:31', '2025-11-19 16:19:31'),
(21, '12 month to 5 years', '1', '2025-11-20 07:27:48', '2025-11-20 07:27:48'),
(22, '1 to 5 years', '1', '2025-11-28 04:40:57', '2025-11-28 04:40:57'),
(23, 'RAM 4GB', '1', '2025-12-07 09:30:13', '2025-12-07 09:30:13'),
(24, 'RAM 6GB', '1', '2025-12-07 09:30:22', '2025-12-07 09:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(99) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `serderid` varchar(155) DEFAULT NULL,
  `order` varchar(11) DEFAULT NULL,
  `forget_pass` varchar(11) DEFAULT NULL,
  `password_g` varchar(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_phone_list` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `url`, `api_key`, `serderid`, `order`, `forget_pass`, `password_g`, `status`, `created_at`, `updated_at`, `admin_phone_list`) VALUES
(1, 'https://www.creativedesign.com.bd/api/smsapi', 'YtqHDyODWXlRF3RFv5bsmzp4K5eCBb6SEdjcXfg02WdAGTkjUeMVzqKB1CuV', '#', '1', '1', '1', '1', '2024-02-06 11:29:46', '2026-05-27 19:10:46', '01840144646');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(155) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `title`, `icon`, `link`, `color`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', 'fab fa-facebook-f', 'https://www.facebook.com/bmitbd', '#0b0f89', 1, '2023-02-12 11:32:20', '2026-03-29 05:15:47'),
(3, 'Official Mail', 'fab fa-twitter', 'https://www.facebook.com/bmitbd', '#c53302', 1, '2023-02-14 03:29:41', '2026-03-29 05:15:39'),
(4, 'Whatsapp', 'fab fa-whatsapp', '01840144646', '#5ca314', 1, '2024-11-10 06:36:32', '2026-03-29 05:15:32'),
(5, 'youtube.com', 'fab fa-youtube', 'https://www.youtube.com/@bmitLive/videos', '#ff0000', 1, '2024-11-10 06:37:34', '2026-03-29 05:15:10'),
(6, 'Instagram', 'fab fa-instagram', 'https://web.facebook.com/bmitbd', '#000000', 1, '2024-11-10 14:52:24', '2026-03-29 05:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `stolen_reports`
--

CREATE TABLE `stolen_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `license_key` varchar(100) DEFAULT NULL,
  `status` enum('pending','reviewed') NOT NULL DEFAULT 'pending',
  `reported_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `subcategoryName` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategoryName`, `slug`, `category_id`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(71, 'CCTV Surveillance', 'cctv-surveillance', 47, NULL, 'Dahua', '<h1 class=\"product_title entry-title wd-entities-title\" style=\"margin-top: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: 1.2; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-language-override: inherit; color: rgb(51, 51, 51); --wd-link-decor: none; --wd-link-decor-hover: none; overflow-wrap: break-word; --page-title-display: block; margin-bottom: 8px !important; font-size: 22px !important;\">Dahua DH-HAC-HFW1509TMP-IL-A 5MP Smart Dual Light HDCVI Fixed-focal Bullet Camera</h1>', 1, '2026-06-16 01:06:51', '2026-06-16 01:06:51');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `opening_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_due` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `email`, `address`, `opening_balance`, `current_due`, `created_at`, `updated_at`) VALUES
(1, 'Redwan Ahmed', '01327949940', 'creativedesign.com.bd@gmail.com', 'Dhaka, Bangladesh\r\nBoro Bari, Noayar Hat', 0.00, 0.00, '2025-11-25 20:49:16', '2026-01-21 18:39:41'),
(2, 'a', '1', '1@gmail.com', '1', 0.00, 0.00, '2025-12-11 02:43:36', '2025-12-19 09:19:27'),
(3, 'Biplob Hossen', '01711337542', 'biplobadsagency@gmail.com', 'Sherpur', 0.00, 100.00, '2025-12-19 09:17:24', '2025-12-19 09:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payments`
--

CREATE TABLE `supplier_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `payment_date` date NOT NULL,
  `method` varchar(50) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `fund_transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_payments`
--

INSERT INTO `supplier_payments` (`id`, `supplier_id`, `purchase_id`, `amount`, `payment_date`, `method`, `note`, `fund_transaction_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 200.00, '2025-11-26', 'fund', 'Initial payment', 9, 1, '2025-11-25 20:51:00', '2025-11-25 20:51:00'),
(2, 1, 1, 100.00, '2025-11-26', 'fund', NULL, 10, 1, '2025-11-25 20:51:49', '2025-11-25 20:51:49'),
(3, 1, 1, 200.00, '2025-11-26', 'fund', NULL, 11, 1, '2025-11-25 20:53:07', '2025-11-25 20:53:07'),
(4, 2, 2, 1000.00, '2025-12-11', 'fund', 'Initial payment', 36, 1, '2025-12-11 05:28:10', '2025-12-11 05:28:10'),
(5, 2, 2, 800.00, '2025-12-13', 'fund', NULL, 39, 1, '2025-12-13 13:34:30', '2025-12-13 13:34:30'),
(6, 1, 1, 200.00, '2025-12-25', 'fund', NULL, 43, 1, '2025-12-15 07:12:12', '2025-12-15 07:12:12'),
(7, 3, 4, 5000.00, '2025-12-19', 'fund', 'Initial payment', 50, 13, '2025-12-19 09:18:17', '2025-12-19 09:18:17'),
(8, 1, 1, 19300.00, '2025-12-19', 'fund', NULL, 51, 13, '2025-12-19 09:19:17', '2025-12-19 09:19:17'),
(9, 2, 2, 61200.00, '2025-12-19', 'fund', NULL, 52, 13, '2025-12-19 09:19:27', '2025-12-19 09:19:27'),
(11, 3, 4, 17000.00, '2025-12-19', 'fund', NULL, 54, 13, '2025-12-19 09:20:02', '2025-12-19 09:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `tiktok_pixels`
--

CREATE TABLE `tiktok_pixels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/default/user.png',
  `status` tinyint(4) DEFAULT 0,
  `role` enum('admin','vendor','reseller','customer') NOT NULL DEFAULT 'customer',
  `wallet_balance` decimal(14,2) NOT NULL DEFAULT 0.00,
  `verification_status` enum('pending','approved','rejected') DEFAULT 'pending',
  `voter_id_front` varchar(255) DEFAULT NULL,
  `voter_id_back` varchar(255) DEFAULT NULL,
  `self_image` varchar(255) DEFAULT NULL,
  `verification_note` text DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `shop_name`, `email`, `email_verified_at`, `password`, `remember_token`, `image`, `status`, `role`, `wallet_balance`, `verification_status`, `voter_id_front`, `voter_id_back`, `self_image`, `verification_note`, `verified_at`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 'info@digantamartbd.com', '2024-11-21 15:43:10', '$2y$10$2rts1eGcYEIdEXQx2C.ZoO3enPJ6HYSe8ljvxaYIu/GNe31gyy2gm', 'WQhm8K2PtQ4K8UbX5EAJTYt2CBN6Zo2FDX0hyiFU4U5MOE0xg9znYPgr2rrj', 'public/uploads/users/1736271519-defualt.webp', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-04 16:48:38'),
(17, 'Jononi Madical Hall', NULL, 'info@abmicbd.com', NULL, '$2y$10$nrd1sPXp8GnXELrVhESFW.UrnJGelLENLmsrU4Z7DvPmuuzUHto6i', 'w8FRTweGQif9ZCoIeVs16t384XZjXydCoqXVl5pyRQZMSO9iQfV2CAiVpV7c', 'public/uploads/users/1768988830-logo.webp', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-21 09:47:11', '2026-01-21 09:51:43'),
(19, 'Md Nazrul Islam', NULL, 'nazrul@creativedesign.com.bd', NULL, '$2y$10$xji0e9Iwj2HOPSsUJxg4yu2yrHfvd.zN7B6AVkc/Au/GZvci0VoWC', NULL, 'public/uploads/user/1769187994-profile-images.jfif', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 7, '2026-01-23 16:58:26', '2026-01-25 17:02:37'),
(20, 'Md Nayeem Hossain', 'Creative Shoper', 'info.elitedesign.com.bd@gmail.com', NULL, '$2y$10$PyeMR5iF43Ceeamt9zRaxub8gEa4KhkAFHFbeG8zJNnmlh5MQ621a', NULL, 'public/uploads/reseller/profile/1769234296-reseller-profile-20.webp', 1, 'reseller', 6010.00, 'approved', 'public/uploads/reseller/verification/1769232510-voter-front-6974587e367c3.webp', 'public/uploads/reseller/verification/1769232511-voter-back-6974587f33351.webp', 'public/uploads/reseller/verification/1769232511-self-6974587f48c51.webp', 'approved', '2026-01-24 06:17:42', NULL, '2026-01-24 05:28:31', '2026-03-10 15:10:53'),
(21, 'Eco Bazar', NULL, 'ecoshop@gmail.com', NULL, '$2y$10$ooCY2BCz.iPZc6RmCgf/telWeFaSNobAzjyJLd8NkbZ8aiaL0ssty', NULL, 'public/uploads/user/1769437168-profile-images.jfif', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 8, '2026-01-26 14:18:49', '2026-01-26 14:19:28'),
(22, 'Super Me', NULL, 'info@666abmicbd.com', NULL, '$2y$10$yYEVluT54uhQpyt4P.qYvO79wyGtnVZg5.XovODi0CgqlbiSQn096', NULL, 'public/uploads/user/1769439347-profile-images (1).png', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 9, '2026-01-26 14:55:20', '2026-01-26 14:55:47'),
(23, 'Tech Vai', NULL, 'techvai@gmail.com', NULL, '$2y$10$St/qVyc45ka9Pz3izENdGOI3r8UxHYx6j9ZKxh6y5f/EHul.rCE8u', NULL, 'public/uploads/user/1769439805-profile-0653647_3-in-1-travel-pillow-set_400.webp', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 10, '2026-01-26 15:02:55', '2026-01-26 15:03:25'),
(24, 'My Shoper', NULL, 'info@talentsed4u.com', NULL, '$2y$10$IGo6Va6T2Xcl889SnOFu9.z3J98FfTzTR.YFLPG/fz7oHJcGfaTZ2', NULL, 'public/uploads/user/1769440468-profile-0653647_3-in-1-travel-pillow-set_400.webp', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 11, '2026-01-26 15:13:48', '2026-01-26 15:14:28'),
(25, 'Shopno', NULL, 'shopnoshop@gmail.com', NULL, '$2y$10$KcIncUQd0QmNs7x4C6BeXeGIJvhXEW2e3oHpf7KynIo8Q3PTJDPFO', NULL, 'public/uploads/user/1769441027-profile-unnamed.webp', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 12, '2026-01-26 15:23:23', '2026-01-26 15:23:47'),
(26, 'MD ABDULLAH ALL MAMAUN', NULL, 'mabdullahbd77@gmail.com', NULL, '$2y$10$aIKe/QwzzPE44a1SXrlZF.0p2PT.miPAZ8aNmviqK6cpKsGpszSDC', NULL, 'public/uploads/default/user.png', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 13, '2026-02-13 09:13:28', '2026-02-13 09:13:28'),
(27, 'Redwan Ahmed', 'Hdhhsh', 'vorarkhonthotrw@gmail.com', NULL, '$2y$10$l9nX30DN0U88U3YQY/CwPeZ7Pt0W9kKoURWo8PLAc8DVV6bP8YaX.', NULL, 'public/uploads/default/user.png', 1, 'reseller', 0.00, 'pending', 'public/uploads/reseller/verification/1771327415-voter-front-69944fb78e0b9.webp', 'public/uploads/reseller/verification/1771327415-voter-back-69944fb7ad268.webp', 'public/uploads/reseller/verification/1771327415-self-69944fb7c9f0e.webp', NULL, NULL, NULL, '2026-02-17 11:23:35', '2026-02-17 11:23:35'),
(28, 'Henry Henry', NULL, 'hasanshahadat712@gmail.com', NULL, '$2y$10$SPeT.f6ACSVuRla.8Fsy5./TFxs6kHc51dYle3QWrQWvtH9B9Ctie', NULL, 'public/uploads/default/user.png', 1, 'customer', 0.00, 'pending', NULL, NULL, NULL, NULL, NULL, 14, '2026-03-01 12:12:52', '2026-03-01 12:12:52'),
(29, 'Md Kader Ali', 'Bangladesh', 'vorarkhontho5454@gmail.com', NULL, '$2y$10$txYRF8c5iSsAdKKdCX6np.MPUR7WQ32XTGuSlgyHfXXVa8FveR8kC', NULL, 'public/uploads/default/user.png', 1, 'reseller', 1700.00, 'approved', 'public/uploads/reseller/verification/1773141440-voter-front-69affdc0872d7.webp', 'public/uploads/reseller/verification/1773141441-voter-back-69affdc121131.webp', 'public/uploads/reseller/verification/1773141441-self-69affdc12abea.webp', NULL, '2026-03-10 11:20:38', NULL, '2026-03-10 11:17:21', '2026-03-10 12:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `forgot` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `verification_status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `voter_id_front` varchar(255) DEFAULT NULL,
  `voter_id_back` varchar(255) DEFAULT NULL,
  `self_image` varchar(255) DEFAULT NULL,
  `verification_note` text DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `commission_rate` decimal(5,2) NOT NULL DEFAULT 10.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `shop_name`, `slug`, `owner_name`, `email`, `phone`, `forgot`, `address`, `logo`, `banner`, `status`, `verification_status`, `voter_id_front`, `voter_id_back`, `self_image`, `verification_note`, `verified_at`, `commission_rate`, `created_at`, `updated_at`) VALUES
(7, 'Bangla Mart', 'bangla-mart', 'Md Nazrul Islam', 'nazrul@creativedesign.com.bd', '01870829343', '1', 'Coomunity Center Road, Hasnabad Housing, South Keraniganj, Dhaka-1311', 'public/uploads/vendor/logo/1769188012-logo-240673652_3835680819990661_8991696992032477091_n.jpg', 'public/uploads/vendor/banner/1769188022-banner-494526150_1215032290662968_4467841498774900556_n.jpg', 1, 'approved', 'public/uploads/vendor/verification/1769187690-voter-front-7.webp', 'public/uploads/vendor/verification/1769187691-voter-back-7.webp', 'public/uploads/vendor/verification/1769187691-self-7.webp', 'Good', '2026-01-23 17:03:05', 10.00, '2026-01-23 16:58:26', '2026-01-25 17:15:41'),
(8, 'Eco Shop', 'eco-shop', 'Eco Bazar', 'ecoshop@gmail.com', '01915711409', NULL, 'AL TAZER RAHMAN ROAD, CHARNOABAD, BHOLA SADAR, BHOLA, BANGLADESH', 'public/uploads/vendor/logo/1769437147-logo-unnamed.png', 'public/uploads/vendor/banner/1769437147-banner-Screenshot_7.png', 1, 'approved', 'public/uploads/vendor/verification/1769437195-voter-front-8.webp', 'public/uploads/vendor/verification/1769437195-voter-back-8.webp', 'public/uploads/vendor/verification/1769437196-self-8.webp', NULL, '2026-01-26 14:21:03', 10.00, '2026-01-26 14:18:49', '2026-01-26 14:21:03'),
(9, 'Super Me', 'super-me', 'Super Me', 'info@666abmicbd.com', '01721261979', NULL, 'House no 23, Road no 15, Section 3, Uttara C/A, Dhaka, 1230', 'public/uploads/vendor/logo/1769439340-logo-images (1).png', 'public/uploads/vendor/banner/1769439340-banner-Screenshot_9.png', 1, 'approved', 'public/uploads/vendor/verification/1769439364-voter-front-9.webp', 'public/uploads/vendor/verification/1769439364-voter-back-9.webp', 'public/uploads/vendor/verification/1769439365-self-9.webp', NULL, '2026-01-26 14:56:25', 10.00, '2026-01-26 14:55:20', '2026-01-26 14:56:25'),
(10, 'Amar Tech', 'amar-tech', 'Tech Vai', 'techvai@gmail.com', '01896314504', NULL, 'Mudhur More, RK Road, Kurigram', 'public/uploads/vendor/logo/1769439789-logo-images (2).jfif', 'public/uploads/vendor/banner/1769439789-banner-SteelSeries-Landing-Page-Banner-(1920x700)-All-Products-1920x700.jpg', 1, 'approved', 'public/uploads/vendor/verification/1769439825-voter-front-10.webp', 'public/uploads/vendor/verification/1769439825-voter-back-10.webp', 'public/uploads/vendor/verification/1769439825-self-10.webp', NULL, '2026-01-26 15:04:05', 10.00, '2026-01-26 15:02:55', '2026-01-26 15:04:05'),
(11, 'My Shoper', 'my-shoper', 'My Shoper', 'info@talentsed4u.com', '01721261970', NULL, 'Coomunity Center Road, Hasnabad Housing, South Keraniganj, Dhaka-1311', 'public/uploads/vendor/logo/1769440460-logo-Screenshot_10.png', 'public/uploads/vendor/banner/1769440460-banner-Screenshot_11.png', 1, 'approved', 'public/uploads/vendor/verification/1769440487-voter-front-11.webp', 'public/uploads/vendor/verification/1769440487-voter-back-11.webp', 'public/uploads/vendor/verification/1769440488-self-11.webp', NULL, '2026-01-26 15:15:09', 10.00, '2026-01-26 15:13:48', '2026-01-26 15:15:09'),
(12, 'Shapno', 'shapno', 'Shopno', 'shopnoshop@gmail.com', '01305069555', NULL, 'Dhaka, Bangladesh\r\nBoro Bari, Noayar Hat', 'public/uploads/vendor/logo/1769441017-logo-unnamed.webp', 'public/uploads/vendor/banner/1769441017-banner-Main banner (1).png', 1, 'approved', 'public/uploads/vendor/verification/1769441043-voter-front-12.webp', 'public/uploads/vendor/verification/1769441043-voter-back-12.webp', 'public/uploads/vendor/verification/1769441044-self-12.webp', NULL, '2026-01-26 15:24:29', 10.00, '2026-01-26 15:23:23', '2026-01-26 15:24:29'),
(13, 'ecombd', 'ecombd,top', 'MD ABDULLAH ALL MAMAUN', 'mabdullahbd77@gmail.com', '01788145575', NULL, 'Sonapukur Chairman Para', NULL, NULL, 1, 'pending', NULL, NULL, NULL, NULL, NULL, 10.00, '2026-02-13 09:13:28', '2026-02-13 09:13:28'),
(14, 'Fason', 'fason', 'Henry Henry', 'hasanshahadat712@gmail.com', '01325765213', NULL, 'Daka', 'uploads/vendor/logo/bANoc7c77TWXm5DK3LZ30SY8JdmlyEe0iHKWXBnK.jpg', 'uploads/vendor/banner/TTPtzVGiIDLIZWpnEhwzG4xwlSm1w7kAeIy6tzAO.jpg', 1, 'pending', NULL, NULL, NULL, NULL, NULL, 10.00, '2026-03-01 12:12:51', '2026-03-01 12:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_wallets`
--

CREATE TABLE `vendor_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `balance` decimal(14,2) NOT NULL DEFAULT 0.00,
  `total_earned` decimal(14,2) NOT NULL DEFAULT 0.00,
  `total_withdrawn` decimal(14,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_wallets`
--

INSERT INTO `vendor_wallets` (`id`, `vendor_id`, `balance`, `total_earned`, `total_withdrawn`, `created_at`, `updated_at`) VALUES
(7, 7, 560.00, 1260.00, 0.00, '2026-01-23 18:56:04', '2026-01-26 10:24:06'),
(8, 10, 9450.00, 9450.00, 0.00, '2026-03-06 13:43:15', '2026-03-06 13:43:15'),
(9, 12, 720.00, 720.00, 0.00, '2026-03-10 12:30:51', '2026-03-10 12:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_wallet_transactions`
--

CREATE TABLE `vendor_wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'completed',
  `amount` decimal(14,2) NOT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_wallet_transactions`
--

INSERT INTO `vendor_wallet_transactions` (`id`, `vendor_id`, `type`, `status`, `amount`, `source_type`, `source_id`, `note`, `created_at`, `updated_at`) VALUES
(5, 7, 'earning', 'completed', 450.00, 'order', 1268, 'Order #35907 item earning', '2026-01-23 18:56:04', '2026-01-23 18:56:04'),
(6, 7, 'withdraw', 'pending', 100.00, 'withdraw', 4, 'Withdraw request pending approval', '2026-01-23 19:06:21', '2026-01-23 19:06:21'),
(7, 7, 'earning', 'completed', 810.00, 'order', 1292, 'Order #13771 item earning', '2026-01-26 09:59:22', '2026-01-26 09:59:22'),
(8, 7, 'withdraw', 'pending', 500.00, 'withdraw', 5, 'Withdraw request pending approval', '2026-01-26 10:16:39', '2026-01-26 10:16:39'),
(9, 7, 'withdraw', 'pending', 100.00, 'withdraw', 6, 'Withdraw request pending approval', '2026-01-26 10:24:06', '2026-01-26 10:24:06'),
(10, 10, 'earning', 'completed', 9450.00, 'order', 1393, 'Order #69923 item earning', '2026-03-06 13:43:15', '2026-03-06 13:43:15'),
(11, 12, 'earning', 'completed', 720.00, 'order', 1399, 'Order #73104 item earning', '2026-03-10 12:30:51', '2026-03-10 12:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_withdrawals`
--

CREATE TABLE `vendor_withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `charge` decimal(14,2) NOT NULL DEFAULT 0.00,
  `payout_method` varchar(255) NOT NULL DEFAULT 'manual',
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `admin_note` text DEFAULT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_withdrawals`
--

INSERT INTO `vendor_withdrawals` (`id`, `vendor_id`, `amount`, `charge`, `payout_method`, `account_name`, `account_number`, `note`, `status`, `admin_note`, `processed_at`, `created_at`, `updated_at`) VALUES
(4, 7, 100.00, 0.00, 'bkash', 'Md Nazrul Islam', '01775457008', 'need Urjent', 'pending', NULL, NULL, '2026-01-23 19:06:21', '2026-01-23 19:06:21'),
(5, 7, 500.00, 0.00, 'bkash', 'Md Nazrul Islam', '01775457008', 'jhkkhjkhj', 'pending', NULL, NULL, '2026-01-26 10:16:39', '2026-01-26 10:16:39'),
(6, 7, 100.00, 0.00, 'nagad', 'Md Nazrul Islam', '01775457008', 'vbnvbnn', 'pending', NULL, NULL, '2026-01-26 10:24:06', '2026-01-26 10:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(20) NOT NULL,
  `release_date` date NOT NULL,
  `changelog` text DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `requires_migration` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wholesale_products`
--

CREATE TABLE `wholesale_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `product_code` varchar(255) NOT NULL,
  `purchase_price` decimal(14,2) NOT NULL,
  `wholesale_price` decimal(14,2) NOT NULL,
  `retail_price` decimal(14,2) DEFAULT NULL,
  `min_quantity` int(11) NOT NULL DEFAULT 1,
  `stock` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `approval_status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `feature_product` tinyint(4) NOT NULL DEFAULT 0,
  `unit` varchar(255) NOT NULL DEFAULT 'piece',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wholesale_product_images`
--

CREATE TABLE `wholesale_product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wholesale_product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads_analytics_settings`
--
ALTER TABLE `ads_analytics_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_categories`
--
ALTER TABLE `banner_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_product`
--
ALTER TABLE `campaign_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `courierapis`
--
ALTER TABLE `courierapis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_pages`
--
ALTER TABLE `create_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_job_settings`
--
ALTER TABLE `cron_job_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cron_job_settings_job_key_unique` (`job_key`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_downloads`
--
ALTER TABLE `digital_downloads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `digital_downloads_token_unique` (`token`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_pixels`
--
ALTER TABLE `ecom_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_employee_id_unique` (`employee_id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_employee_id_index` (`employee_id`),
  ADD KEY `employees_user_id_index` (`user_id`),
  ADD KEY `employees_status_index` (`status`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_attendances_employee_id_attendance_date_unique` (`employee_id`,`attendance_date`),
  ADD KEY `employee_attendances_attendance_date_index` (`attendance_date`),
  ADD KEY `employee_attendances_status_index` (`status`);

--
-- Indexes for table `employee_bonuses`
--
ALTER TABLE `employee_bonuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_bonuses_employee_id_index` (`employee_id`),
  ADD KEY `employee_bonuses_status_index` (`status`),
  ADD KEY `employee_bonuses_salary_month_index` (`salary_month`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_leaves_employee_id_index` (`employee_id`),
  ADD KEY `employee_leaves_status_index` (`status`),
  ADD KEY `employee_leaves_start_date_index` (`start_date`),
  ADD KEY `employee_leaves_end_date_index` (`end_date`);

--
-- Indexes for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_salaries_employee_id_salary_month_unique` (`employee_id`,`salary_month`),
  ADD KEY `employee_salaries_salary_month_index` (`salary_month`),
  ADD KEY `employee_salaries_status_index` (`status`);

--
-- Indexes for table `employee_salary_payments`
--
ALTER TABLE `employee_salary_payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_salary_payments_payment_id_unique` (`payment_id`),
  ADD KEY `employee_salary_payments_salary_id_foreign` (`salary_id`),
  ADD KEY `employee_salary_payments_employee_id_index` (`employee_id`),
  ADD KEY `employee_salary_payments_payment_month_index` (`payment_month`),
  ADD KEY `employee_salary_payments_status_index` (`status`),
  ADD KEY `employee_salary_payments_payment_date_index` (`payment_date`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_fund_transaction_id_index` (`fund_transaction_id`);

--
-- Indexes for table `expense_logs`
--
ALTER TABLE `expense_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_logs_expense_id_index` (`expense_id`),
  ADD KEY `expense_logs_action_index` (`action`),
  ADD KEY `expense_logs_performed_by_index` (`performed_by`),
  ADD KEY `expense_logs_created_at_index` (`created_at`);

--
-- Indexes for table `facebook_capi_settings`
--
ALTER TABLE `facebook_capi_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_page_settings`
--
ALTER TABLE `facebook_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fund_transactions`
--
ALTER TABLE `fund_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_transaction_logs`
--
ALTER TABLE `fund_transaction_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fund_transaction_logs_fund_transaction_id_index` (`fund_transaction_id`),
  ADD KEY `fund_transaction_logs_action_index` (`action`),
  ADD KEY `fund_transaction_logs_performed_by_index` (`performed_by`),
  ADD KEY `fund_transaction_logs_created_at_index` (`created_at`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomplete_orders`
--
ALTER TABLE `incomplete_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletter_subscribers_email_unique` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productimages_product_id_color_id_size_id_index` (`product_id`,`color_id`,`size_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `productsizes`
--
ALTER TABLE `productsizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product` (`product_id`),
  ADD KEY `fk_color` (`color_id`),
  ADD KEY `fk_size` (`size_id`);

--
-- Indexes for table `product_wholesale_prices`
--
ALTER TABLE `product_wholesale_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_wholesale_prices_product_id_index` (`product_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_items_product_id_foreign` (`product_id`),
  ADD KEY `purchase_items_variant_price_id_foreign` (`variant_price_id`);

--
-- Indexes for table `purchase_logs`
--
ALTER TABLE `purchase_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_logs_purchase_id_index` (`purchase_id`),
  ADD KEY `purchase_logs_action_index` (`action`),
  ADD KEY `purchase_logs_performed_by_index` (`performed_by`),
  ADD KEY `purchase_logs_created_at_index` (`created_at`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `refunds_refund_id_unique` (`refund_id`),
  ADD KEY `refunds_order_id_index` (`order_id`),
  ADD KEY `refunds_customer_id_index` (`customer_id`),
  ADD KEY `refunds_status_index` (`status`),
  ADD KEY `refunds_vendor_id_index` (`vendor_id`);

--
-- Indexes for table `reseller_deposits`
--
ALTER TABLE `reseller_deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reseller_deposits_user_id_foreign` (`user_id`);

--
-- Indexes for table `reseller_landing_contact_messages`
--
ALTER TABLE `reseller_landing_contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlc_landing_fk` (`reseller_landing_page_id`);

--
-- Indexes for table `reseller_landing_newsletter_subscribers`
--
ALTER TABLE `reseller_landing_newsletter_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_newsletter_landing_fk` (`reseller_landing_page_id`);

--
-- Indexes for table `reseller_landing_pages`
--
ALTER TABLE `reseller_landing_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reseller_landing_pages_slug_unique` (`slug`),
  ADD KEY `reseller_landing_pages_slug_index` (`slug`),
  ADD KEY `reseller_landing_pages_user_id_index` (`user_id`);

--
-- Indexes for table `reseller_landing_products`
--
ALTER TABLE `reseller_landing_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rlp_product_unique` (`reseller_landing_page_id`,`product_id`),
  ADD KEY `reseller_landing_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `reseller_wallet_transactions`
--
ALTER TABLE `reseller_wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reseller_wallet_transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `reseller_withdrawals`
--
ALTER TABLE `reseller_withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reseller_withdrawals_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stolen_reports`
--
ALTER TABLE `stolen_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stolen_reports_domain_index` (`domain`),
  ADD KEY `stolen_reports_status_index` (`status`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_payments_supplier_id_foreign` (`supplier_id`),
  ADD KEY `supplier_payments_purchase_id_foreign` (`purchase_id`),
  ADD KEY `supplier_payments_fund_transaction_id_foreign` (`fund_transaction_id`);

--
-- Indexes for table `tiktok_pixels`
--
ALTER TABLE `tiktok_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_slug_unique` (`slug`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indexes for table `vendor_wallets`
--
ALTER TABLE `vendor_wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendor_wallets_vendor_id_unique` (`vendor_id`);

--
-- Indexes for table `vendor_wallet_transactions`
--
ALTER TABLE `vendor_wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_wallet_transactions_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `vendor_withdrawals`
--
ALTER TABLE `vendor_withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_withdrawals_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `versions_version_unique` (`version`);

--
-- Indexes for table `wholesale_products`
--
ALTER TABLE `wholesale_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wholesale_products_slug_unique` (`slug`),
  ADD UNIQUE KEY `wholesale_products_product_code_unique` (`product_code`),
  ADD KEY `wholesale_products_category_id_index` (`category_id`),
  ADD KEY `wholesale_products_vendor_id_index` (`vendor_id`),
  ADD KEY `wholesale_products_status_index` (`status`),
  ADD KEY `wholesale_products_approval_status_index` (`approval_status`);

--
-- Indexes for table `wholesale_product_images`
--
ALTER TABLE `wholesale_product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wholesale_product_images_wholesale_product_id_foreign` (`wholesale_product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads_analytics_settings`
--
ALTER TABLE `ads_analytics_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `banner_categories`
--
ALTER TABLE `banner_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `campaign_product`
--
ALTER TABLE `campaign_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courierapis`
--
ALTER TABLE `courierapis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `create_pages`
--
ALTER TABLE `create_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cron_job_settings`
--
ALTER TABLE `cron_job_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT for table `digital_downloads`
--
ALTER TABLE `digital_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ecom_pixels`
--
ALTER TABLE `ecom_pixels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_bonuses`
--
ALTER TABLE `employee_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_salary_payments`
--
ALTER TABLE `employee_salary_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_logs`
--
ALTER TABLE `expense_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facebook_capi_settings`
--
ALTER TABLE `facebook_capi_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facebook_page_settings`
--
ALTER TABLE `facebook_page_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fund_transactions`
--
ALTER TABLE `fund_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `fund_transaction_logs`
--
ALTER TABLE `fund_transaction_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `incomplete_orders`
--
ALTER TABLE `incomplete_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1034;

--
-- AUTO_INCREMENT for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1169;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1424;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1154;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `productsizes`
--
ALTER TABLE `productsizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;

--
-- AUTO_INCREMENT for table `product_wholesale_prices`
--
ALTER TABLE `product_wholesale_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_logs`
--
ALTER TABLE `purchase_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reseller_deposits`
--
ALTER TABLE `reseller_deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reseller_landing_contact_messages`
--
ALTER TABLE `reseller_landing_contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reseller_landing_newsletter_subscribers`
--
ALTER TABLE `reseller_landing_newsletter_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reseller_landing_pages`
--
ALTER TABLE `reseller_landing_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reseller_landing_products`
--
ALTER TABLE `reseller_landing_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reseller_wallet_transactions`
--
ALTER TABLE `reseller_wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reseller_withdrawals`
--
ALTER TABLE `reseller_withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1157;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stolen_reports`
--
ALTER TABLE `stolen_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tiktok_pixels`
--
ALTER TABLE `tiktok_pixels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vendor_wallets`
--
ALTER TABLE `vendor_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vendor_wallet_transactions`
--
ALTER TABLE `vendor_wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vendor_withdrawals`
--
ALTER TABLE `vendor_withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wholesale_products`
--
ALTER TABLE `wholesale_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wholesale_product_images`
--
ALTER TABLE `wholesale_product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD CONSTRAINT `employee_attendances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_bonuses`
--
ALTER TABLE `employee_bonuses`
  ADD CONSTRAINT `employee_bonuses_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD CONSTRAINT `employee_leaves_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD CONSTRAINT `employee_salaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_salary_payments`
--
ALTER TABLE `employee_salary_payments`
  ADD CONSTRAINT `employee_salary_payments_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_salary_payments_salary_id_foreign` FOREIGN KEY (`salary_id`) REFERENCES `employee_salaries` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `expense_logs`
--
ALTER TABLE `expense_logs`
  ADD CONSTRAINT `expense_logs_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `fund_transaction_logs`
--
ALTER TABLE `fund_transaction_logs`
  ADD CONSTRAINT `fund_transaction_logs_fund_transaction_id_foreign` FOREIGN KEY (`fund_transaction_id`) REFERENCES `fund_transactions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  ADD CONSTRAINT `fk_color` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_size` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `product_wholesale_prices`
--
ALTER TABLE `product_wholesale_prices`
  ADD CONSTRAINT `product_wholesale_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_items_variant_price_id_foreign` FOREIGN KEY (`variant_price_id`) REFERENCES `product_variant_prices` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchase_logs`
--
ALTER TABLE `purchase_logs`
  ADD CONSTRAINT `purchase_logs_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refunds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refunds_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `reseller_deposits`
--
ALTER TABLE `reseller_deposits`
  ADD CONSTRAINT `reseller_deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseller_landing_contact_messages`
--
ALTER TABLE `reseller_landing_contact_messages`
  ADD CONSTRAINT `rlc_landing_fk` FOREIGN KEY (`reseller_landing_page_id`) REFERENCES `reseller_landing_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseller_landing_newsletter_subscribers`
--
ALTER TABLE `reseller_landing_newsletter_subscribers`
  ADD CONSTRAINT `rlp_newsletter_landing_fk` FOREIGN KEY (`reseller_landing_page_id`) REFERENCES `reseller_landing_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseller_landing_pages`
--
ALTER TABLE `reseller_landing_pages`
  ADD CONSTRAINT `reseller_landing_pages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseller_landing_products`
--
ALTER TABLE `reseller_landing_products`
  ADD CONSTRAINT `reseller_landing_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reseller_landing_products_reseller_landing_page_id_foreign` FOREIGN KEY (`reseller_landing_page_id`) REFERENCES `reseller_landing_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseller_wallet_transactions`
--
ALTER TABLE `reseller_wallet_transactions`
  ADD CONSTRAINT `reseller_wallet_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reseller_withdrawals`
--
ALTER TABLE `reseller_withdrawals`
  ADD CONSTRAINT `reseller_withdrawals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  ADD CONSTRAINT `supplier_payments_fund_transaction_id_foreign` FOREIGN KEY (`fund_transaction_id`) REFERENCES `fund_transactions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `supplier_payments_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `supplier_payments_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vendor_wallets`
--
ALTER TABLE `vendor_wallets`
  ADD CONSTRAINT `vendor_wallets_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_wallet_transactions`
--
ALTER TABLE `vendor_wallet_transactions`
  ADD CONSTRAINT `vendor_wallet_transactions_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_withdrawals`
--
ALTER TABLE `vendor_withdrawals`
  ADD CONSTRAINT `vendor_withdrawals_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wholesale_products`
--
ALTER TABLE `wholesale_products`
  ADD CONSTRAINT `wholesale_products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wholesale_products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wholesale_product_images`
--
ALTER TABLE `wholesale_product_images`
  ADD CONSTRAINT `wholesale_product_images_wholesale_product_id_foreign` FOREIGN KEY (`wholesale_product_id`) REFERENCES `wholesale_products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
