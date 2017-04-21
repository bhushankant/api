-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2017 at 04:08 PM
-- Server version: 5.6.33-0ubuntu0.14.04.1
-- PHP Version: 7.0.15-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE IF NOT EXISTS `api_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` smallint(6) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_keys_key_unique` (`key`),
  KEY `api_keys_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '7643eaac6ba7550ff5300952e72dea839fde4f85', 10000, 0, '2016-10-13 04:16:55', '2016-10-13 04:16:55', NULL),
(2, 2, 'c6c5eac806bd9218595fae25358ee63710e97574', 10000, 0, '2017-04-06 02:36:21', '2017-04-06 02:36:21', NULL),
(3, 3, '97de5df87b566b300b47db4df8348a189dbd344a', 10000, 0, '2017-04-06 04:38:13', '2017-04-06 04:38:13', NULL),
(4, 4, '173f5c797e2c5b6ba5fbcfb34acab9b30d1fbfeb', 10000, 0, '2017-04-06 05:35:19', '2017-04-06 05:35:19', NULL),
(5, 5, 'e033210ae67d88e654f7b39c5b87c963ec42a491', 10000, 0, '2017-04-06 06:47:30', '2017-04-06 06:47:30', NULL),
(6, 6, '75f677911f733140fd9fb8dd6a41063c444dbdfc', 10000, 0, '2017-04-07 00:36:17', '2017-04-07 00:36:17', NULL),
(7, 7, '1316bcf4b2eded80287266708ba1f27a3e66febd', 10000, 0, '2017-04-17 06:16:01', '2017-04-17 06:16:01', NULL),
(8, 8, 'aef259efead086b72651ede8a15dd646bbcd952b', 10000, 0, '2017-04-18 04:34:12', '2017-04-18 04:34:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api_logs`
--

CREATE TABLE IF NOT EXISTS `api_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `api_key_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `api_logs_api_key_id_foreign` (`api_key_id`),
  KEY `api_logs_route_index` (`route`),
  KEY `api_logs_method_index` (`method`),
  KEY `api_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=497 ;

--
-- Dumping data for table `api_logs`
--

INSERT INTO `api_logs` (`id`, `api_key_id`, `user_id`, `route`, `method`, `params`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 02:09:49', '2017-04-06 02:09:49'),
(2, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 02:14:27', '2017-04-06 02:14:27'),
(3, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 02:14:59', '2017-04-06 02:14:59'),
(4, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 02:15:22', '2017-04-06 02:15:22'),
(5, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 02:15:29', '2017-04-06 02:15:29'),
(6, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 02:16:53', '2017-04-06 02:16:53'),
(7, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prema+Kumar&email=bhushankant1%40gmail.com&password=kant%40141', '127.0.0.1', '2017-04-06 02:36:21', '2017-04-06 02:36:21'),
(8, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prema+Kumar&email=bhushankant1%40gmail.com&password=kant%40141', '127.0.0.1', '2017-04-06 02:38:49', '2017-04-06 02:38:49'),
(9, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', '', '127.0.0.1', '2017-04-06 02:41:29', '2017-04-06 02:41:29'),
(10, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 02:47:23', '2017-04-06 02:47:23'),
(11, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=prema&email=prem%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:38:13', '2017-04-06 04:38:13'),
(12, 3, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 04:38:13', '2017-04-06 04:38:13'),
(13, 3, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 04:38:53', '2017-04-06 04:38:53'),
(14, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:24', '2017-04-06 04:39:24'),
(15, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:26', '2017-04-06 04:39:26'),
(16, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:27', '2017-04-06 04:39:27'),
(17, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:27', '2017-04-06 04:39:27'),
(18, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:27', '2017-04-06 04:39:27'),
(19, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:34', '2017-04-06 04:39:34'),
(20, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:34', '2017-04-06 04:39:34'),
(21, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:35', '2017-04-06 04:39:35'),
(22, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:35', '2017-04-06 04:39:35'),
(23, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=prem%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:42', '2017-04-06 04:39:42'),
(24, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=prem%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:42', '2017-04-06 04:39:42'),
(25, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=prem%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:43', '2017-04-06 04:39:43'),
(26, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=prem%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:43', '2017-04-06 04:39:43'),
(27, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Prem&email=prem%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:39:43', '2017-04-06 04:39:43'),
(28, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:40:46', '2017-04-06 04:40:46'),
(29, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:41:00', '2017-04-06 04:41:00'),
(30, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:41:51', '2017-04-06 04:41:51'),
(31, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:42:37', '2017-04-06 04:42:37'),
(32, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:42:53', '2017-04-06 04:42:53'),
(33, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:47:06', '2017-04-06 04:47:06'),
(34, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:47:35', '2017-04-06 04:47:35'),
(35, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:48:16', '2017-04-06 04:48:16'),
(36, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:50:16', '2017-04-06 04:50:16'),
(37, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:50:36', '2017-04-06 04:50:36'),
(38, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:53:09', '2017-04-06 04:53:09'),
(39, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 04:54:00', '2017-04-06 04:54:00'),
(40, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:21:47', '2017-04-06 05:21:47'),
(41, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:22:20', '2017-04-06 05:22:20'),
(42, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:22:22', '2017-04-06 05:22:22'),
(43, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:22:41', '2017-04-06 05:22:41'),
(44, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:23:40', '2017-04-06 05:23:40'),
(45, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:23:43', '2017-04-06 05:23:43'),
(46, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:23:44', '2017-04-06 05:23:44'),
(47, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:23:44', '2017-04-06 05:23:44'),
(48, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:23:45', '2017-04-06 05:23:45'),
(49, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:23:45', '2017-04-06 05:23:45'),
(50, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=sdgdsfg&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:23:53', '2017-04-06 05:23:53'),
(51, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=sdgdsfg&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:23:54', '2017-04-06 05:23:54'),
(52, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=sdgdsfg&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:23:54', '2017-04-06 05:23:54'),
(53, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=sdgdsfg&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:23:54', '2017-04-06 05:23:54'),
(54, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=sdgdsfg&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:23:54', '2017-04-06 05:23:54'),
(55, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:24:36', '2017-04-06 05:24:36'),
(56, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:24:40', '2017-04-06 05:24:40'),
(57, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:24:40', '2017-04-06 05:24:40'),
(58, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:24:40', '2017-04-06 05:24:40'),
(59, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:24:40', '2017-04-06 05:24:40'),
(60, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:24:41', '2017-04-06 05:24:41'),
(61, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:24:41', '2017-04-06 05:24:41'),
(62, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:24:41', '2017-04-06 05:24:41'),
(63, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:25', '2017-04-06 05:25:25'),
(64, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:26', '2017-04-06 05:25:26'),
(65, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:27', '2017-04-06 05:25:27'),
(66, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:27', '2017-04-06 05:25:27'),
(67, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:27', '2017-04-06 05:25:27'),
(68, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:27', '2017-04-06 05:25:27'),
(69, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:28', '2017-04-06 05:25:28'),
(70, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:28', '2017-04-06 05:25:28'),
(71, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:52', '2017-04-06 05:25:52'),
(72, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:57', '2017-04-06 05:25:57'),
(73, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:57', '2017-04-06 05:25:57'),
(74, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:57', '2017-04-06 05:25:57'),
(75, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:57', '2017-04-06 05:25:57'),
(76, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:58', '2017-04-06 05:25:58'),
(77, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:58', '2017-04-06 05:25:58'),
(78, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:25:58', '2017-04-06 05:25:58'),
(79, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:33:25', '2017-04-06 05:33:25'),
(80, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=kumari&email=bhushankant555%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:35:19', '2017-04-06 05:35:19'),
(81, 4, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 05:35:19', '2017-04-06 05:35:19'),
(82, 4, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-06 05:35:21', '2017-04-06 05:35:21'),
(83, 4, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 05:35:23', '2017-04-06 05:35:23'),
(84, 4, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 05:35:24', '2017-04-06 05:35:24'),
(85, 4, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 05:35:26', '2017-04-06 05:35:26'),
(86, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:35:35', '2017-04-06 05:35:35'),
(87, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:39:03', '2017-04-06 05:39:03'),
(88, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:39:30', '2017-04-06 05:39:30'),
(89, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:40:11', '2017-04-06 05:40:11'),
(90, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:41:28', '2017-04-06 05:41:28'),
(91, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:42:36', '2017-04-06 05:42:36'),
(92, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:43:16', '2017-04-06 05:43:16'),
(93, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:44:26', '2017-04-06 05:44:26'),
(94, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:44:33', '2017-04-06 05:44:33'),
(95, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:46:10', '2017-04-06 05:46:10'),
(96, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:46:59', '2017-04-06 05:46:59'),
(97, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:47:15', '2017-04-06 05:47:15'),
(98, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:48:07', '2017-04-06 05:48:07'),
(99, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:49:14', '2017-04-06 05:49:14'),
(100, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:49:45', '2017-04-06 05:49:45'),
(101, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:50:42', '2017-04-06 05:50:42'),
(102, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:51:00', '2017-04-06 05:51:00'),
(103, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:51:28', '2017-04-06 05:51:28'),
(104, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:51:47', '2017-04-06 05:51:47'),
(105, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 05:52:09', '2017-04-06 05:52:09'),
(106, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:05:46', '2017-04-06 06:05:46'),
(107, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:05:48', '2017-04-06 06:05:48'),
(108, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:15:52', '2017-04-06 06:15:52'),
(109, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:16:24', '2017-04-06 06:16:24'),
(110, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:17:15', '2017-04-06 06:17:15'),
(111, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=ytuiytui&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:17:24', '2017-04-06 06:17:24'),
(112, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=&password=', '127.0.0.1', '2017-04-06 06:17:40', '2017-04-06 06:17:40'),
(113, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:19:25', '2017-04-06 06:19:25'),
(114, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:19:58', '2017-04-06 06:19:58'),
(115, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:21:08', '2017-04-06 06:21:08'),
(116, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:24:15', '2017-04-06 06:24:15'),
(117, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:26:43', '2017-04-06 06:26:43'),
(118, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:27:17', '2017-04-06 06:27:17'),
(119, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:28:13', '2017-04-06 06:28:13'),
(120, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:28:23', '2017-04-06 06:28:23'),
(121, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:28:44', '2017-04-06 06:28:44'),
(122, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:29:02', '2017-04-06 06:29:02'),
(123, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:29:12', '2017-04-06 06:29:12'),
(124, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:33:13', '2017-04-06 06:33:13'),
(125, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:34:10', '2017-04-06 06:34:10'),
(126, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:36:17', '2017-04-06 06:36:17'),
(127, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:37:09', '2017-04-06 06:37:09'),
(128, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:39:13', '2017-04-06 06:39:13'),
(129, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:39:47', '2017-04-06 06:39:47'),
(130, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:40:37', '2017-04-06 06:40:37'),
(131, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=sdfgdsfg&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:40:47', '2017-04-06 06:40:47'),
(132, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:41:14', '2017-04-06 06:41:14'),
(133, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:42:30', '2017-04-06 06:42:30'),
(134, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:43:17', '2017-04-06 06:43:17'),
(135, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:43:21', '2017-04-06 06:43:21'),
(136, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:46:37', '2017-04-06 06:46:37'),
(137, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 06:46:37', '2017-04-06 06:46:37'),
(138, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 06:46:40', '2017-04-06 06:46:40'),
(139, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=mamta+kumar&email=mamta%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-06 06:47:29', '2017-04-06 06:47:29'),
(140, 5, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 06:47:30', '2017-04-06 06:47:30'),
(141, 5, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-06 06:47:33', '2017-04-06 06:47:33'),
(142, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:29:19', '2017-04-07 00:29:19'),
(143, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:29:20', '2017-04-07 00:29:20'),
(144, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:29:22', '2017-04-07 00:29:22'),
(145, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:29:26', '2017-04-07 00:29:26'),
(146, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:29:26', '2017-04-07 00:29:26'),
(147, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:29:31', '2017-04-07 00:29:31'),
(148, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:29:32', '2017-04-07 00:29:32'),
(149, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:29:34', '2017-04-07 00:29:34'),
(150, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.comff&password=kant%401411', '127.0.0.1', '2017-04-07 00:29:43', '2017-04-07 00:29:43'),
(151, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.comff&password=kant%401411', '127.0.0.1', '2017-04-07 00:29:49', '2017-04-07 00:29:49'),
(152, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:29:53', '2017-04-07 00:29:53'),
(153, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=aff&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:29:58', '2017-04-07 00:29:58'),
(154, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=aff&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:30:04', '2017-04-07 00:30:04'),
(155, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=aff&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:30:06', '2017-04-07 00:30:06'),
(156, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:30:20', '2017-04-07 00:30:20'),
(157, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:30:48', '2017-04-07 00:30:48'),
(158, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:30:49', '2017-04-07 00:30:49'),
(159, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:30:49', '2017-04-07 00:30:49'),
(160, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:30:50', '2017-04-07 00:30:50'),
(161, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:31:40', '2017-04-07 00:31:40'),
(162, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:31:41', '2017-04-07 00:31:41'),
(163, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:32:53', '2017-04-07 00:32:53'),
(164, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:32:53', '2017-04-07 00:32:53'),
(165, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:32:56', '2017-04-07 00:32:56'),
(166, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%40141122', '127.0.0.1', '2017-04-07 00:33:03', '2017-04-07 00:33:03'),
(167, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%40141122', '127.0.0.1', '2017-04-07 00:33:06', '2017-04-07 00:33:06'),
(168, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:33:16', '2017-04-07 00:33:16'),
(169, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:33:16', '2017-04-07 00:33:16'),
(170, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:33:23', '2017-04-07 00:33:23'),
(171, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:33:23', '2017-04-07 00:33:23'),
(172, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:33:48', '2017-04-07 00:33:48'),
(173, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:33:53', '2017-04-07 00:33:53'),
(174, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:33:53', '2017-04-07 00:33:53'),
(175, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:34:08', '2017-04-07 00:34:08'),
(176, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:34:08', '2017-04-07 00:34:08'),
(177, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:34:14', '2017-04-07 00:34:14'),
(178, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:34:14', '2017-04-07 00:34:14'),
(179, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:35:58', '2017-04-07 00:35:58'),
(180, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:36:05', '2017-04-07 00:36:05'),
(181, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:36:06', '2017-04-07 00:36:06'),
(182, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=safsadf&email=bhushankant5555%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:36:17', '2017-04-07 00:36:17'),
(183, 6, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:36:17', '2017-04-07 00:36:17'),
(184, 6, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:36:40', '2017-04-07 00:36:40'),
(185, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=prem%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:36:52', '2017-04-07 00:36:52'),
(186, 3, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:36:52', '2017-04-07 00:36:52'),
(187, 3, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:37:44', '2017-04-07 00:37:44'),
(188, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:37:50', '2017-04-07 00:37:50'),
(189, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:37:52', '2017-04-07 00:37:52'),
(190, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=safd&email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:37:55', '2017-04-07 00:37:55'),
(191, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:38:01', '2017-04-07 00:38:01'),
(192, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:38:01', '2017-04-07 00:38:01'),
(193, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:39:05', '2017-04-07 00:39:05'),
(194, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:41:58', '2017-04-07 00:41:58'),
(195, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:42:02', '2017-04-07 00:42:02'),
(196, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:42:03', '2017-04-07 00:42:03'),
(197, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:43:49', '2017-04-07 00:43:49'),
(198, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:43:49', '2017-04-07 00:43:49'),
(199, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:45:09', '2017-04-07 00:45:09'),
(200, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:45:09', '2017-04-07 00:45:09'),
(201, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:45:28', '2017-04-07 00:45:28'),
(202, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:45:28', '2017-04-07 00:45:28'),
(203, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:45:43', '2017-04-07 00:45:43'),
(204, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:45:44', '2017-04-07 00:45:44'),
(205, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:46:15', '2017-04-07 00:46:15'),
(206, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:46:15', '2017-04-07 00:46:15'),
(207, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:48:38', '2017-04-07 00:48:38'),
(208, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:48:39', '2017-04-07 00:48:39'),
(209, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:48:46', '2017-04-07 00:48:46'),
(210, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:48:46', '2017-04-07 00:48:46'),
(211, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411fff', '127.0.0.1', '2017-04-07 00:49:12', '2017-04-07 00:49:12'),
(212, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:51:52', '2017-04-07 00:51:52'),
(213, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:51:52', '2017-04-07 00:51:52'),
(214, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=dddkant%401411', '127.0.0.1', '2017-04-07 00:51:59', '2017-04-07 00:51:59'),
(215, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=dddkant%401411', '127.0.0.1', '2017-04-07 00:52:29', '2017-04-07 00:52:29'),
(216, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:52:38', '2017-04-07 00:52:38'),
(217, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:52:38', '2017-04-07 00:52:38'),
(218, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:52:49', '2017-04-07 00:52:49'),
(219, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:52:49', '2017-04-07 00:52:49'),
(220, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 00:56:59', '2017-04-07 00:56:59'),
(221, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:56:59', '2017-04-07 00:56:59'),
(222, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-07 00:57:00', '2017-04-07 00:57:00'),
(223, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 00:57:02', '2017-04-07 00:57:02'),
(224, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-07 00:57:05', '2017-04-07 00:57:05'),
(225, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=', '127.0.0.1', '2017-04-07 01:07:29', '2017-04-07 01:07:29'),
(226, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=', '127.0.0.1', '2017-04-07 01:07:53', '2017-04-07 01:07:53'),
(227, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=', '127.0.0.1', '2017-04-07 01:07:54', '2017-04-07 01:07:54'),
(228, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=', '127.0.0.1', '2017-04-07 01:07:54', '2017-04-07 01:07:54'),
(229, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=', '127.0.0.1', '2017-04-07 01:08:13', '2017-04-07 01:08:13'),
(230, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=', '127.0.0.1', '2017-04-07 01:09:03', '2017-04-07 01:09:03'),
(231, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=', '127.0.0.1', '2017-04-07 01:09:03', '2017-04-07 01:09:03'),
(232, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=', '127.0.0.1', '2017-04-07 01:09:03', '2017-04-07 01:09:03'),
(233, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=', '127.0.0.1', '2017-04-07 01:09:04', '2017-04-07 01:09:04'),
(234, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 01:15:36', '2017-04-07 01:15:36'),
(235, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-07 01:47:55', '2017-04-07 01:47:55'),
(236, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 01:47:55', '2017-04-07 01:47:55'),
(237, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-07 01:47:56', '2017-04-07 01:47:56'),
(238, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-07 01:47:57', '2017-04-07 01:47:57'),
(239, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 02:36:04', '2017-04-17 02:36:04'),
(240, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 02:36:04', '2017-04-17 02:36:04'),
(241, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 02:36:06', '2017-04-17 02:36:06'),
(242, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 02:41:51', '2017-04-17 02:41:51'),
(243, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 02:41:51', '2017-04-17 02:41:51'),
(244, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 03:20:05', '2017-04-17 03:20:05'),
(245, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 03:20:24', '2017-04-17 03:20:24'),
(246, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 03:20:37', '2017-04-17 03:20:37'),
(247, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 03:20:37', '2017-04-17 03:20:37'),
(248, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 03:49:21', '2017-04-17 03:49:21'),
(249, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 03:49:22', '2017-04-17 03:49:22'),
(250, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 04:08:19', '2017-04-17 04:08:19'),
(251, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 04:08:19', '2017-04-17 04:08:19'),
(252, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 04:08:22', '2017-04-17 04:08:22'),
(253, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 04:08:22', '2017-04-17 04:08:22'),
(254, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 04:09:17', '2017-04-17 04:09:17'),
(255, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 04:11:38', '2017-04-17 04:11:38'),
(256, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 04:18:27', '2017-04-17 04:18:27'),
(257, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 04:18:27', '2017-04-17 04:18:27'),
(258, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 04:18:29', '2017-04-17 04:18:29'),
(259, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 04:18:31', '2017-04-17 04:18:31'),
(260, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 04:18:36', '2017-04-17 04:18:36'),
(261, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 04:18:36', '2017-04-17 04:18:36'),
(262, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 04:18:38', '2017-04-17 04:18:38'),
(263, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 04:27:21', '2017-04-17 04:27:21'),
(264, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 04:27:21', '2017-04-17 04:27:21'),
(265, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:13:41', '2017-04-17 05:13:41'),
(266, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:13:41', '2017-04-17 05:13:41'),
(267, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:13:42', '2017-04-17 05:13:42'),
(268, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 05:13:51', '2017-04-17 05:13:51'),
(269, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:13:51', '2017-04-17 05:13:51'),
(270, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 05:13:52', '2017-04-17 05:13:52'),
(271, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:13:53', '2017-04-17 05:13:53'),
(272, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 05:13:57', '2017-04-17 05:13:57'),
(273, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:19:25', '2017-04-17 05:19:25'),
(274, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:19:28', '2017-04-17 05:19:28'),
(275, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:19:41', '2017-04-17 05:19:41'),
(276, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:19:41', '2017-04-17 05:19:41'),
(277, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 05:26:30', '2017-04-17 05:26:30'),
(278, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:26:30', '2017-04-17 05:26:30'),
(279, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:32:34', '2017-04-17 05:32:34'),
(280, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:32:35', '2017-04-17 05:32:35'),
(281, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:32:39', '2017-04-17 05:32:39'),
(282, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:32:49', '2017-04-17 05:32:49'),
(283, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:32:50', '2017-04-17 05:32:50'),
(284, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 05:33:10', '2017-04-17 05:33:10'),
(285, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:33:10', '2017-04-17 05:33:10'),
(286, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:34:54', '2017-04-17 05:34:54');
INSERT INTO `api_logs` (`id`, `api_key_id`, `user_id`, `route`, `method`, `params`, `ip_address`, `created_at`, `updated_at`) VALUES
(287, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:34:55', '2017-04-17 05:34:55'),
(288, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:34:56', '2017-04-17 05:34:56'),
(289, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:34:57', '2017-04-17 05:34:57'),
(290, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:34:58', '2017-04-17 05:34:58'),
(291, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=root&password=kant%401411', '127.0.0.1', '2017-04-17 05:35:03', '2017-04-17 05:35:03'),
(292, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 05:35:08', '2017-04-17 05:35:08'),
(293, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:35:08', '2017-04-17 05:35:08'),
(294, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:35:11', '2017-04-17 05:35:11'),
(295, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:35:11', '2017-04-17 05:35:11'),
(296, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:37:09', '2017-04-17 05:37:09'),
(297, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:37:12', '2017-04-17 05:37:12'),
(298, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 05:37:30', '2017-04-17 05:37:30'),
(299, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 05:42:04', '2017-04-17 05:42:04'),
(300, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:04', '2017-04-17 05:42:04'),
(301, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 05:42:08', '2017-04-17 05:42:08'),
(302, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:10', '2017-04-17 05:42:10'),
(303, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:11', '2017-04-17 05:42:11'),
(304, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 05:42:12', '2017-04-17 05:42:12'),
(305, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:13', '2017-04-17 05:42:13'),
(306, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:14', '2017-04-17 05:42:14'),
(307, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 05:42:15', '2017-04-17 05:42:15'),
(308, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:16', '2017-04-17 05:42:16'),
(309, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 05:42:23', '2017-04-17 05:42:23'),
(310, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:23', '2017-04-17 05:42:23'),
(311, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:30', '2017-04-17 05:42:30'),
(312, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:32', '2017-04-17 05:42:32'),
(313, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:32', '2017-04-17 05:42:32'),
(314, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:33', '2017-04-17 05:42:33'),
(315, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 05:42:38', '2017-04-17 05:42:38'),
(316, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:38', '2017-04-17 05:42:38'),
(317, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:42:44', '2017-04-17 05:42:44'),
(318, 1, NULL, 'App\\Http\\Controllers\\HeroesController@store', 'POST', 'name=Namas+Shivay', '127.0.0.1', '2017-04-17 05:42:55', '2017-04-17 05:42:55'),
(319, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:43:03', '2017-04-17 05:43:03'),
(320, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 05:43:06', '2017-04-17 05:43:06'),
(321, 1, NULL, 'App\\Http\\Controllers\\HeroesController@update', 'PUT', 'id=17&name=Namas+Shivay111', '127.0.0.1', '2017-04-17 05:43:11', '2017-04-17 05:43:11'),
(322, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:43:12', '2017-04-17 05:43:12'),
(323, 1, NULL, 'App\\Http\\Controllers\\HeroesController@destroy', 'DELETE', '', '127.0.0.1', '2017-04-17 05:43:17', '2017-04-17 05:43:17'),
(324, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:43:22', '2017-04-17 05:43:22'),
(325, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 05:46:38', '2017-04-17 05:46:38'),
(326, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:46:39', '2017-04-17 05:46:39'),
(327, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:46:47', '2017-04-17 05:46:47'),
(328, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:46:48', '2017-04-17 05:46:48'),
(329, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:46:50', '2017-04-17 05:46:50'),
(330, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 05:46:51', '2017-04-17 05:46:51'),
(331, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:08:52', '2017-04-17 06:08:52'),
(332, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:08:53', '2017-04-17 06:08:53'),
(333, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 06:10:00', '2017-04-17 06:10:00'),
(334, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:10:00', '2017-04-17 06:10:00'),
(335, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 06:10:04', '2017-04-17 06:10:04'),
(336, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:10:05', '2017-04-17 06:10:05'),
(337, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:10:07', '2017-04-17 06:10:07'),
(338, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 06:10:09', '2017-04-17 06:10:09'),
(339, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:10:11', '2017-04-17 06:10:11'),
(340, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:10:12', '2017-04-17 06:10:12'),
(341, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:10:15', '2017-04-17 06:10:15'),
(342, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:10:18', '2017-04-17 06:10:18'),
(343, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 06:10:19', '2017-04-17 06:10:19'),
(344, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:10:20', '2017-04-17 06:10:20'),
(345, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Saman+Basu&email=basu%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 06:16:01', '2017-04-17 06:16:01'),
(346, 7, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:16:01', '2017-04-17 06:16:01'),
(347, 7, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:16:05', '2017-04-17 06:16:05'),
(348, 7, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:16:06', '2017-04-17 06:16:06'),
(349, 7, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-17 06:16:07', '2017-04-17 06:16:07'),
(350, 7, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:16:09', '2017-04-17 06:16:09'),
(351, 7, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:16:10', '2017-04-17 06:16:10'),
(352, 7, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:16:14', '2017-04-17 06:16:14'),
(353, 7, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:16:15', '2017-04-17 06:16:15'),
(354, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=&password=', '127.0.0.1', '2017-04-17 06:16:18', '2017-04-17 06:16:18'),
(355, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=&email=&password=', '127.0.0.1', '2017-04-17 06:16:20', '2017-04-17 06:16:20'),
(356, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=&password=', '127.0.0.1', '2017-04-17 06:20:54', '2017-04-17 06:20:54'),
(357, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 06:21:19', '2017-04-17 06:21:19'),
(358, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:21:19', '2017-04-17 06:21:19'),
(359, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=&password=', '127.0.0.1', '2017-04-17 06:21:39', '2017-04-17 06:21:39'),
(360, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 06:22:03', '2017-04-17 06:22:03'),
(361, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:22:03', '2017-04-17 06:22:03'),
(362, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:22:09', '2017-04-17 06:22:09'),
(363, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:22:10', '2017-04-17 06:22:10'),
(364, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:22:10', '2017-04-17 06:22:10'),
(365, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:22:19', '2017-04-17 06:22:19'),
(366, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:22:20', '2017-04-17 06:22:20'),
(367, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=&password=', '127.0.0.1', '2017-04-17 06:23:15', '2017-04-17 06:23:15'),
(368, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=&password=', '127.0.0.1', '2017-04-17 06:23:24', '2017-04-17 06:23:24'),
(369, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-17 06:38:57', '2017-04-17 06:38:57'),
(370, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:38:57', '2017-04-17 06:38:57'),
(371, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:39:01', '2017-04-17 06:39:01'),
(372, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:39:01', '2017-04-17 06:39:01'),
(373, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-17 06:39:02', '2017-04-17 06:39:02'),
(374, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=&password=', '127.0.0.1', '2017-04-17 06:39:05', '2017-04-17 06:39:05'),
(375, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=&password=', '127.0.0.1', '2017-04-17 06:39:07', '2017-04-17 06:39:07'),
(376, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=&password=', '127.0.0.1', '2017-04-17 06:39:08', '2017-04-17 06:39:08'),
(377, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=&password=', '127.0.0.1', '2017-04-17 06:39:08', '2017-04-17 06:39:08'),
(378, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=&password=', '127.0.0.1', '2017-04-17 06:39:08', '2017-04-17 06:39:08'),
(379, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@for_check', 'GET', '', '127.0.0.1', '2017-04-18 00:14:53', '2017-04-18 00:14:53'),
(380, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:39:03', '2017-04-18 00:39:03'),
(381, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:39:05', '2017-04-18 00:39:05'),
(382, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:39:07', '2017-04-18 00:39:07'),
(383, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:39:08', '2017-04-18 00:39:08'),
(384, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 00:39:10', '2017-04-18 00:39:10'),
(385, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:40:46', '2017-04-18 00:40:46'),
(386, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:40:47', '2017-04-18 00:40:47'),
(387, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:40:51', '2017-04-18 00:40:51'),
(388, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:40:52', '2017-04-18 00:40:52'),
(389, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 00:40:54', '2017-04-18 00:40:54'),
(390, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:40:57', '2017-04-18 00:40:57'),
(391, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:40:57', '2017-04-18 00:40:57'),
(392, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:41:28', '2017-04-18 00:41:28'),
(393, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:41:29', '2017-04-18 00:41:29'),
(394, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:41:29', '2017-04-18 00:41:29'),
(395, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:41:31', '2017-04-18 00:41:31'),
(396, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 00:41:33', '2017-04-18 00:41:33'),
(397, 1, NULL, 'App\\Http\\Controllers\\HeroesController@update', 'PUT', 'id=2&name=Narco+City1', '127.0.0.1', '2017-04-18 00:41:38', '2017-04-18 00:41:38'),
(398, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:41:38', '2017-04-18 00:41:38'),
(399, 1, NULL, 'App\\Http\\Controllers\\HeroesController@destroy', 'DELETE', '', '127.0.0.1', '2017-04-18 00:42:13', '2017-04-18 00:42:13'),
(400, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 00:42:22', '2017-04-18 00:42:22'),
(401, 1, NULL, 'App\\Http\\Controllers\\HeroesController@store', 'POST', 'name=kesav', '127.0.0.1', '2017-04-18 00:42:35', '2017-04-18 00:42:35'),
(402, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 01:33:16', '2017-04-18 01:33:16'),
(403, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 01:36:04', '2017-04-18 01:36:04'),
(404, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 01:36:05', '2017-04-18 01:36:05'),
(405, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 01:36:17', '2017-04-18 01:36:17'),
(406, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 01:36:18', '2017-04-18 01:36:18'),
(407, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 01:36:23', '2017-04-18 01:36:23'),
(408, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 01:36:24', '2017-04-18 01:36:24'),
(409, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=root&password=kant%401411', '127.0.0.1', '2017-04-18 03:34:21', '2017-04-18 03:34:21'),
(410, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmai.com&password=kant%401411', '127.0.0.1', '2017-04-18 03:34:46', '2017-04-18 03:34:46'),
(411, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmai.com&password=kant%401411', '127.0.0.1', '2017-04-18 03:34:49', '2017-04-18 03:34:49'),
(412, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 03:35:12', '2017-04-18 03:35:12'),
(413, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 03:37:15', '2017-04-18 03:37:15'),
(414, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 03:37:30', '2017-04-18 03:37:30'),
(415, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 03:39:43', '2017-04-18 03:39:43'),
(416, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 03:39:43', '2017-04-18 03:39:43'),
(417, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 03:39:47', '2017-04-18 03:39:47'),
(418, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 03:39:48', '2017-04-18 03:39:48'),
(419, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 03:52:27', '2017-04-18 03:52:27'),
(420, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:07:30', '2017-04-18 04:07:30'),
(421, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:07:31', '2017-04-18 04:07:31'),
(422, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=root&password=kant%401411', '127.0.0.1', '2017-04-18 04:10:48', '2017-04-18 04:10:48'),
(423, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=root&password=kant%401411', '127.0.0.1', '2017-04-18 04:16:04', '2017-04-18 04:16:04'),
(424, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=root&password=kant%401411', '127.0.0.1', '2017-04-18 04:16:05', '2017-04-18 04:16:05'),
(425, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=root&password=kant%401411', '127.0.0.1', '2017-04-18 04:16:23', '2017-04-18 04:16:23'),
(426, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 04:16:47', '2017-04-18 04:16:47'),
(427, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:16:47', '2017-04-18 04:16:47'),
(428, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 04:16:51', '2017-04-18 04:16:51'),
(429, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:16:52', '2017-04-18 04:16:52'),
(430, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 04:21:33', '2017-04-18 04:21:33'),
(431, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:21:33', '2017-04-18 04:21:33'),
(432, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 04:22:10', '2017-04-18 04:22:10'),
(433, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:22:12', '2017-04-18 04:22:12'),
(434, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:22:13', '2017-04-18 04:22:13'),
(435, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 04:31:00', '2017-04-18 04:31:00'),
(436, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:31:00', '2017-04-18 04:31:00'),
(437, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:31:12', '2017-04-18 04:31:12'),
(438, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:31:14', '2017-04-18 04:31:14'),
(439, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:31:15', '2017-04-18 04:31:15'),
(440, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_register', 'POST', 'name=Lakshman&email=lk%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 04:34:12', '2017-04-18 04:34:12'),
(441, 8, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:34:13', '2017-04-18 04:34:13'),
(442, 8, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 04:34:18', '2017-04-18 04:34:18'),
(443, 8, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:34:19', '2017-04-18 04:34:19'),
(444, 8, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:35:00', '2017-04-18 04:35:00'),
(445, 8, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:35:01', '2017-04-18 04:35:01'),
(446, 8, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 04:36:54', '2017-04-18 04:36:54'),
(447, 8, NULL, 'App\\Http\\Controllers\\HeroesController@update', 'PUT', 'id=5&name=Magneta222', '127.0.0.1', '2017-04-18 04:36:59', '2017-04-18 04:36:59'),
(448, 8, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:37:00', '2017-04-18 04:37:00'),
(449, 8, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:37:03', '2017-04-18 04:37:03'),
(450, 8, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:37:03', '2017-04-18 04:37:03'),
(451, 8, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:37:05', '2017-04-18 04:37:05'),
(452, 8, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:37:06', '2017-04-18 04:37:06'),
(453, 8, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:37:07', '2017-04-18 04:37:07'),
(454, 8, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 04:37:09', '2017-04-18 04:37:09'),
(455, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 04:46:49', '2017-04-18 04:46:49'),
(456, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:46:49', '2017-04-18 04:46:49'),
(457, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:46:51', '2017-04-18 04:46:51'),
(458, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:46:52', '2017-04-18 04:46:52'),
(459, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:46:53', '2017-04-18 04:46:53'),
(460, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 04:47:45', '2017-04-18 04:47:45'),
(461, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=asdfasdfsdf', '127.0.0.1', '2017-04-18 04:48:46', '2017-04-18 04:48:46'),
(462, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 04:48:52', '2017-04-18 04:48:52'),
(463, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 04:49:00', '2017-04-18 04:49:00'),
(464, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:49:01', '2017-04-18 04:49:01'),
(465, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:49:02', '2017-04-18 04:49:02'),
(466, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:49:03', '2017-04-18 04:49:03'),
(467, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:49:14', '2017-04-18 04:49:14'),
(468, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 04:49:19', '2017-04-18 04:49:19'),
(469, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:49:20', '2017-04-18 04:49:20'),
(470, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 04:49:21', '2017-04-18 04:49:21'),
(471, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:49:22', '2017-04-18 04:49:22'),
(472, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:49:23', '2017-04-18 04:49:23'),
(473, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 04:49:24', '2017-04-18 04:49:24'),
(474, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 04:59:56', '2017-04-18 04:59:56'),
(475, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:00:34', '2017-04-18 05:00:34'),
(476, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 05:00:36', '2017-04-18 05:00:36'),
(477, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:00:38', '2017-04-18 05:00:38'),
(478, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:00:39', '2017-04-18 05:00:39'),
(479, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 05:00:39', '2017-04-18 05:00:39'),
(480, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 05:01:29', '2017-04-18 05:01:29'),
(481, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:01:29', '2017-04-18 05:01:29'),
(482, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 05:01:30', '2017-04-18 05:01:30'),
(483, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:01:31', '2017-04-18 05:01:31'),
(484, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 05:02:02', '2017-04-18 05:02:02'),
(485, NULL, NULL, 'App\\Http\\Controllers\\HeroesController@do_login', 'POST', 'email=bhushankant%40gmail.com&password=kant%401411', '127.0.0.1', '2017-04-18 05:03:10', '2017-04-18 05:03:10'),
(486, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:03:46', '2017-04-18 05:03:46'),
(487, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:03:51', '2017-04-18 05:03:51'),
(488, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:03:52', '2017-04-18 05:03:52'),
(489, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:03:54', '2017-04-18 05:03:54'),
(490, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:03:55', '2017-04-18 05:03:55'),
(491, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:03:59', '2017-04-18 05:03:59'),
(492, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:04:02', '2017-04-18 05:04:02'),
(493, 1, NULL, 'App\\Http\\Controllers\\HeroesController@show', 'GET', '', '127.0.0.1', '2017-04-18 05:04:07', '2017-04-18 05:04:07'),
(494, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:04:09', '2017-04-18 05:04:09'),
(495, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:04:15', '2017-04-18 05:04:15'),
(496, 1, NULL, 'App\\Http\\Controllers\\HeroesController@index', 'GET', '', '127.0.0.1', '2017-04-18 05:04:16', '2017-04-18 05:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Chandra bhushan Tiwari', '2016-10-12 18:30:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Prema Ranjan', '2016-10-13 07:18:11', '2016-10-13 07:18:11', '0000-00-00 00:00:00'),
(5, 'lalla Ranjan', '2016-06-27 05:21:30', '2016-06-28 06:45:04', '0000-00-00 00:00:00'),
(6, 'dasfdsafas Ranjan', '2016-06-27 05:21:30', '2016-06-28 06:45:04', '0000-00-00 00:00:00'),
(7, 'dasfdsafas Ranjan', '2016-06-27 05:21:30', '2016-06-28 06:45:04', '0000-00-00 00:00:00'),
(8, 'dasfdsafas Ranjan', '2016-06-27 05:21:30', '2016-06-28 06:45:04', '0000-00-00 00:00:00'),
(9, 'dasfdsafas Ranjan', '2016-06-27 05:21:30', '2016-06-28 06:45:04', '0000-00-00 00:00:00'),
(11, 'chandra', '2016-06-27 05:21:30', '2016-06-27 05:21:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE IF NOT EXISTS `heroes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `name`) VALUES
(3, 'Bombasto'),
(4, 'Celeritas1111'),
(5, 'Magneta222'),
(6, 'RubberMan'),
(7, 'Dynama'),
(8, 'Dr IQ'),
(9, 'Magma'),
(11, 'chandra'),
(12, 'kumari asdfsaf'),
(16, 'kkkkkkkkkkkkkkkk'),
(17, 'kesav');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_03_02_031822_create_api_keys_table', 1),
('2016_10_13_080806_create_books_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('bhushankant@gmail.com', '10d2508b8eec039e241b3b09472a5ae591a6857d5348d364d5437b19bf98e2b3', '2016-10-13 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `tax_table`
--

CREATE TABLE IF NOT EXISTS `tax_table` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tax` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tax_table`
--

INSERT INTO `tax_table` (`id`, `tax`, `name`) VALUES
(1, 'A', 'Apple'),
(2, 'B', 'Banana'),
(3, 'C', 'Cat'),
(4, 'D', 'Dog');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `salary` decimal(10,2) NOT NULL,
  `mn` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `mngr_id` int(10) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50004 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `salary`, `mn`, `fname`, `lname`, `mngr_id`, `tax1`, `tax2`) VALUES
(50000, '2500.00', 'n', 'CHANDRA', 'BHUSHAN', 50000, 'A', 'C'),
(50001, '3600.00', 'm', 'PREMA', 'RANJAN', 50001, 'D', 'D'),
(50002, '1200.00', 'n', 'PANKAJ', 'KUMAR', 0, 'B', 'D'),
(50003, '3800.00', 'm', 'CHANDRA', 'KUMAR', 0, 'A', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Chandra Bhushan Tiwari', 'bhushankant@gmail.com', '$2y$10$1ROVE8tYrjIqcmnMRU.sM.7EOkgFAPCWe7KYPM/SnLcDh/DP/Lqq.', 'GVw6DF0pcr9jH0GWrwLgdq0cOKozhi6f0zErKQlov3UiXRiuTUUKzwGg1nWm', '2016-10-13 02:22:18', '2017-04-05 04:15:26'),
(2, 'Prema Kumar', 'bhushankant1@gmail.com', '$2y$10$IL1Rpep8X1W/zvJmklUjou7HYqzuenRUan6FP8R4LVEsp/ELqC8He', NULL, '2017-04-06 02:36:21', NULL),
(3, 'prema', 'prem@gmail.com', '$2y$10$7Rr4LJib19netvufQWB7dOWY65rj.2TuAXg3PPHHENVfvppQL5BGG', NULL, '2017-04-06 04:38:13', NULL),
(4, 'kumari', 'bhushankant555@gmail.com', '$2y$10$ndPZMIUm2pNSzt3l02uAvuG0ORrD6ff1/1KAZI0H/qtUtSBtWrrPe', NULL, '2017-04-06 05:35:19', NULL),
(5, 'mamta kumar', 'mamta@gmail.com', '$2y$10$KiAga7tdlMEFMBdVVfHIeuBJjjcwd5d60O4mFAeJFRftklX6XWiAe', NULL, '2017-04-06 06:47:30', NULL),
(6, 'safsadf', 'bhushankant5555@gmail.com', '$2y$10$IdT9TOgqj0e3p5MZh6PyR.oGxpqIcCoAxbSelw5M1KqmF/PbCtvOe', NULL, '2017-04-07 00:36:17', NULL),
(7, 'Saman Basu', 'basu@gmail.com', '$2y$10$hofziutbH8fG9rA9z3ulq.IfBw.AMWXLjFWz4frtLMAUIBdJMxcHq', NULL, '2017-04-17 06:16:01', NULL),
(8, 'Lakshman', 'lk@gmail.com', '$2y$10$.c28AjZf36EbYECSZHjHi.DmSq046ClOP3C2OLRewLq79E8kDzKFq', NULL, '2017-04-18 04:34:12', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `api_logs`
--
ALTER TABLE `api_logs`
  ADD CONSTRAINT `api_logs_api_key_id_foreign` FOREIGN KEY (`api_key_id`) REFERENCES `api_keys` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
