-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 16, 2021 at 05:04 AM
-- Server version: 10.3.31-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezfoodon_ttt`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `apartment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intercom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `address`, `created_at`, `updated_at`, `lat`, `lng`, `active`, `user_id`, `apartment`, `intercom`, `floor`, `entry`) VALUES
(1, '674 Hyatt Mall Apt. 491\nEast Christyview, CO 92589', '2021-10-15 09:00:07', '2021-10-15 09:00:07', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(2, '77197 Runolfsson Via Apt. 353\nFerminhaven, NY 39377', '2021-10-15 09:00:07', '2021-10-15 09:00:07', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(3, '4982 Heller Park\nEmardton, VA 79037-5667', '2021-10-15 09:00:07', '2021-10-15 09:00:07', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(4, '4292 Hermiston Extensions Suite 792\nNorth Alexieberg, KY 58049', '2021-10-15 09:00:07', '2021-10-15 09:00:07', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(5, '9546 Randall Flats Apt. 161\nDaishabury, NJ 83198-3276', '2021-10-15 09:00:07', '2021-10-15 09:00:07', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(6, '93148 Della Dale\nEast Eloy, OH 13017', '2021-10-15 09:00:07', '2021-10-15 09:00:07', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(7, '740 Bauch Island Suite 320\nMarkschester, HI 81078', '2021-10-15 09:00:07', '2021-10-15 09:00:07', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(8, '3081 Chadd Unions Apt. 077\nFredborough, ID 54430', '2021-10-15 09:00:07', '2021-10-15 09:00:07', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(9, '657 Eliza Fords\nSouth Rupertport, WA 79477-0483', '2021-10-15 09:00:07', '2021-10-15 09:00:07', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(10, '308 Lulu Radial\nVolkmantown, NM 12169', '2021-10-15 09:00:07', '2021-10-15 09:00:07', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Vendor, 1 - Blog',
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_storage`
--

CREATE TABLE `cart_storage` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `receipt_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_index` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `restorant_id`, `created_at`, `updated_at`, `order_index`, `active`) VALUES
(1, 'Salads', 1, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(2, 'Pizza', 1, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(3, 'Fresh Pasta and Risotto', 1, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(4, 'Lasagna', 1, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(5, 'Burgers', 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(6, 'Garnish', 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(7, 'Salads', 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(8, 'Starters', 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(9, 'Drinks', 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(10, 'Burrito', 3, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(11, 'Quesadilla', 3, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(12, 'Taco', 3, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(13, 'Burrito In A Bowl', 3, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(14, 'Salads', 4, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(15, 'Pizza', 4, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(16, 'Burrito', 4, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(17, 'Drinks', 4, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 0, 1),
(18, 'Pizza', 5, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(19, 'Fresh Pasta and Risotto', 5, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(20, 'Salads', 5, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(21, 'Lasagna', 5, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(22, 'Burrito', 6, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(23, 'Burrito In A Bowl', 6, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(24, 'Taco', 6, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(25, 'Quesadilla', 6, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(26, 'Garnish', 7, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(27, 'Burgers', 7, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(28, 'Drinks', 7, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(29, 'Starters', 7, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(30, 'Salads', 7, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(31, 'Salads', 8, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(32, 'Burrito', 8, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(33, 'Pizza', 8, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(34, 'Drinks', 8, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(35, 'Salads', 9, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 0, 1),
(36, 'Fresh Pasta and Risotto', 9, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(37, 'Lasagna', 9, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(38, 'Pizza', 9, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(39, 'Taco', 10, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(40, 'Burrito', 10, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(41, 'Burrito In A Bowl', 10, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(42, 'Quesadilla', 10, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(43, 'Salads', 11, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(44, 'Drinks', 11, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(45, 'Starters', 11, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(46, 'Burgers', 11, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(47, 'Garnish', 11, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(48, 'Drinks', 12, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(49, 'Burrito', 12, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(50, 'Salads', 12, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(51, 'Pizza', 12, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(52, 'Lasagna', 13, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(53, 'Salads', 13, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(54, 'Fresh Pasta and Risotto', 13, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(55, 'Pizza', 13, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 0, 1),
(56, 'Burrito In A Bowl', 14, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1),
(57, 'Burrito', 14, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1),
(58, 'Taco', 14, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1),
(59, 'Quesadilla', 14, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1),
(60, 'Burgers', 15, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1),
(61, 'Garnish', 15, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1),
(62, 'Starters', 15, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1),
(63, 'Salads', 15, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1),
(64, 'Drinks', 15, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1),
(65, 'Burrito', 16, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1),
(66, 'Pizza', 16, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1),
(67, 'Salads', 16, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1),
(68, 'Drinks', 16, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `name`, `alias`, `image`, `header_title`, `header_subtitle`, `deleted_at`) VALUES
(1, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Bronx', 'bx', 'https://foodtiger.mobidonia.com/uploads/settings/177686e2-8597-46e0-bf70-daa8d5ff0085_large.jpg', 'Food Delivery from<br /><strong>Bronx</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(2, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Brooklyn', 'br', 'https://foodtiger.mobidonia.com/uploads/settings/6d001b6c-2ba1-499e-9f57-09b7dc46ace3_large.jpg', 'Food Delivery from<br /><strong>Brooklyn</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(3, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Queens', 'qe', 'https://foodtiger.mobidonia.com/uploads/settings/492b78df-1756-4c30-910a-d3923b66aa97_large.jpg', 'Food Delivery from<br /><strong>Queens</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(4, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Manhattn', 'mh', 'https://foodtiger.mobidonia.com/uploads/settings/01f41f56-1acf-44f0-8e8d-fedceb5267cf_large.jpg', 'Food Delivery from<br /><strong>Manhattn</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(5, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Richmond', 'ri', 'https://foodtiger.mobidonia.com/uploads/settings/fe6c500b-3410-41ff-9734-94c58351ba60_large.jpg', 'Food Delivery from<br /><strong>Richmond</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(6, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Buffalo', 'bf', 'https://foodtiger.mobidonia.com/uploads/settings/0c3c8fb0-c252-4758-9699-6851b15796ef_large.jpg', 'Food Delivery from<br /><strong>Buffalo</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(7, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Rochester', 'rh', 'https://foodtiger.mobidonia.com/uploads/settings/c7f21267-7149-4311-9fd9-4a08904f67a3_large.jpg', 'Food Delivery from<br /><strong>Rochester</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(8, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Yonkers', 'yo', 'https://foodtiger.mobidonia.com/uploads/settings/8c65269a-3bbc-4899-be13-75d1bc35e9cd_large.jpg', 'Food Delivery from<br /><strong>Yonkers</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(9, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Syracuse', 'sy', 'https://foodtiger.mobidonia.com/uploads/settings/1e5fcde5-5dc0-4c29-8f49-314658836fb8_large.jpg', 'Food Delivery from<br /><strong>Syracuse</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(10, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Albany', 'al', 'https://foodtiger.mobidonia.com/uploads/settings/b521e77f-1d3e-4695-b871-bac8262c85dc_large.jpg', 'Food Delivery from<br /><strong>Albany</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(11, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'New Rochelle', 'nr', 'https://foodtiger.mobidonia.com/uploads/settings/8b3ebb83-2e2e-43dd-8747-4f9c6f451199_large.jpg', 'Food Delivery from<br /><strong>New Rochelle</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(12, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Mount Vernon', 'mv', 'https://foodtiger.mobidonia.com/uploads/settings/daecfb93-677f-43a9-9e7e-4cf109194399_large.jpg', 'Food Delivery from<br /><strong>Mount Vernon</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(13, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Schenectady', 'sc', 'https://foodtiger.mobidonia.com/uploads/settings/177686e2-8597-46e0-bf70-daa8d5ff0085_large.jpg', 'Food Delivery from<br /><strong>Schenectady</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(14, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Utica', 'ut', 'https://foodtiger.mobidonia.com/uploads/settings/507847c5-1896-4ecf-bfe8-9c5f198ce41e_large.jpg', 'Food Delivery from<br /><strong>Utica</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(15, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'White Plains', 'wp', 'https://foodtiger.mobidonia.com/uploads/settings/a8e96a74-dc3a-403c-8fd0-b4528838e98c_large.jpg', 'Food Delivery from<br /><strong>White Plains</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(16, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Niagara Falls', 'nf', 'https://foodtiger.mobidonia.com/uploads/settings/99d5b4c3-0bb4-428a-96cf-0e510bc3ab57_large.jpg', 'Food Delivery from<br /><strong>Niagara Falls</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdomain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fee` double(8,2) NOT NULL DEFAULT 0.00,
  `static_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `radius` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `city_id` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `can_pickup` int(11) NOT NULL DEFAULT 1,
  `can_deliver` int(11) NOT NULL DEFAULT 1,
  `self_deliver` int(11) NOT NULL DEFAULT 0,
  `free_deliver` int(11) NOT NULL DEFAULT 0,
  `whatsapp_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_covertion` int(11) NOT NULL DEFAULT 1,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_payment_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `created_at`, `updated_at`, `name`, `subdomain`, `logo`, `cover`, `active`, `user_id`, `lat`, `lng`, `address`, `phone`, `minimum`, `description`, `fee`, `static_fee`, `radius`, `is_featured`, `city_id`, `views`, `can_pickup`, `can_deliver`, `self_deliver`, `free_deliver`, `whatsapp_phone`, `fb_username`, `do_covertion`, `currency`, `payment_info`, `mollie_payment_key`, `deleted_at`) VALUES
(1, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 'Leuka Pizza', 'leukapizza', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', '', 1, 2, '40.654509', '-73.948990', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, pasta, pizza', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 'Oasis Burgers', 'oasisburgers', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', '', 1, 2, '40.588894', '-73.939175', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'burgers, drinks, best chicken', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(3, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 'Brooklyn Taco', 'brooklyntaco', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', '', 1, 2, '40.607402', '-73.987272', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'yummy taco, wraps, fast food', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(4, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 'The Brooklyn tree', 'thebrooklyntree', 'https://foodtiger.mobidonia.com/uploads/restorants/6fa5233f-00f3-4f52-950c-5a1705583dfc', '', 1, 2, '40.621997', '-73.938831', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(5, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 'Awang Italian Restorant', 'awangitalianrestorant', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', '', 1, 2, '40.716729', '-73.793035', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, pasta, pizza', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(6, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 'Wendy Taco', 'wendytaco', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', '', 1, 2, '40.751418', '-73.809531', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'yummy taco, wraps, fast food', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(7, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 'Burger 2Go', 'burger2go', 'https://foodtiger.mobidonia.com/uploads/restorants/80a49037-07e9-4e28-b23e-66fd641c1c77', '', 1, 2, '40.753759', '-73.799224', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'burgers, drinks, best chicken', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(8, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 'Titan Foods', 'titanfoods', 'https://foodtiger.mobidonia.com/uploads/restorants/56e90ea7-5321-4cfd-8b2c-918ccd3c3f77', '', 1, 2, '40.749078', '-73.812623', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(9, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 'Pizza Manhattn', 'pizzamanhattn', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', '', 1, 2, '40.726358', '-73.996879', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, international, pasta', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(10, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 'il Buco', 'ilbuco', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', '', 1, 2, '40.724883', '-74.001985', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'tacos, wraps, Quesadilla', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(11, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 'Vandal Burgers', 'vandalburgers', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', '', 1, 2, '40.724102', '-73.999064', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, beef burgers', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(12, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 'Malibu Diner', 'malibudiner', 'https://foodtiger.mobidonia.com/uploads/restorants/a2b5b612-9fec-4e28-bb7d-88a06d97bda6', '', 1, 2, '40.717857', '-74.004561', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(13, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 'Pizza Relham', 'pizzarelham', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', '', 1, 2, '40.842930', '-73.866629', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, international, pasta', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(14, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 'NorWood Burito', 'norwoodburito', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', '', 1, 2, '40.850218', '-73.887522', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'tacos, wraps, Quesadilla', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(15, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 'Morris Park Burger', 'morrisparkburger', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', '', 1, 2, '40.842427', '-73.866908', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, beef burgers', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL),
(16, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 'Bronx VanNest Restorant', 'bronxvannestrestorant', 'https://foodtiger.mobidonia.com/uploads/restorants/a2b5b612-9fec-4e28-bb7d-88a06d97bda6', '', 1, 2, '40.832557', '-73.889583', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Fixed, 1 - Percentage',
  `price` double(8,2) NOT NULL,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL,
  `limit_to_num_uses` int(11) NOT NULL,
  `used_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expenses_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expenses_vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `date`, `reference`, `description`, `amount`, `restaurant_id`, `expenses_category_id`, `expenses_vendor_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2021-09-29', 'EXP0', '', 25.00, 1, 1, 2, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(2, '2021-09-06', 'EXP1', '', 28.00, 1, 2, 1, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(3, '2021-09-02', 'EXP2', '', 29.00, 1, 1, 3, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(4, '2021-08-27', 'EXP3', '', 30.00, 1, 1, 3, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(5, '2021-10-02', 'EXP4', '', 14.00, 1, 2, 2, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(6, '2021-08-29', 'EXP5', '', 44.00, 1, 2, 2, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(7, '2021-09-26', 'EXP6', '', 15.00, 1, 2, 1, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(8, '2021-09-17', 'EXP7', '', 23.00, 1, 2, 1, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(9, '2021-10-07', 'EXP8', '', 36.00, 1, 2, 2, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(10, '2021-10-06', 'EXP9', '', 32.00, 1, 1, 1, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(11, '2021-09-12', 'EXP10', '', 21.00, 1, 1, 3, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(12, '2021-08-27', 'EXP11', '', 44.00, 1, 2, 1, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(13, '2021-09-26', 'EXP12', '', 33.00, 1, 1, 1, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(14, '2021-08-23', 'EXP13', '', 24.00, 1, 2, 3, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(15, '2021-08-21', 'EXP14', '', 16.00, 1, 1, 2, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(16, '2021-09-02', 'EXP15', '', 48.00, 1, 1, 1, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(17, '2021-09-16', 'EXP16', '', 31.00, 1, 2, 2, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(18, '2021-08-24', 'EXP17', '', 41.00, 1, 1, 3, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(19, '2021-09-01', 'EXP18', '', 18.00, 1, 2, 1, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(20, '2021-08-16', 'EXP19', '', 41.00, 1, 2, 1, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses_category`
--

CREATE TABLE `expenses_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses_category`
--

INSERT INTO `expenses_category` (`id`, `name`, `code`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Suppliers', 'C1', 1, NULL, NULL, NULL),
(2, 'Utilities', 'C2', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses_vendor`
--

CREATE TABLE `expenses_vendor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses_vendor`
--

INSERT INTO `expenses_vendor` (`id`, `name`, `code`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Supplier 1', 'S1', 1, NULL, NULL, NULL),
(2, 'Supplier 2', 'S2', 1, NULL, NULL, NULL),
(3, 'Supplier 3', 'S3', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `extra_for_all_variants` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `item_id`, `price`, `name`, `created_at`, `updated_at`, `deleted_at`, `extra_for_all_variants`) VALUES
(1, 1, 1.20, 'Extra cheese', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(2, 1, 0.30, 'Extra olives', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(3, 1, 1.50, 'Tuna', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(4, 2, 1.20, 'Extra cheese', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(5, 2, 0.30, 'Extra olives', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(6, 2, 1.50, 'Tuna', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(7, 3, 1.20, 'Extra cheese', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(8, 3, 0.30, 'Extra olives', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(9, 3, 1.50, 'Tuna', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(10, 4, 1.20, 'Extra cheese', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(11, 4, 0.30, 'Extra olives', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(12, 4, 1.50, 'Tuna', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(13, 5, 1.20, 'Extra cheese', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(14, 5, 0.30, 'Extra olives', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(15, 5, 1.50, 'Tuna', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(16, 6, 1.20, 'Extra cheese', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(17, 6, 0.30, 'Extra olives', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(18, 6, 1.50, 'Tuna', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(19, 7, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(20, 7, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(21, 7, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(22, 7, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(23, 8, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(24, 8, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(25, 8, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(26, 8, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(27, 9, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(28, 9, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(29, 9, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(30, 9, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(31, 10, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(32, 10, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(33, 10, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(34, 10, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(35, 11, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(36, 11, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(37, 11, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(38, 11, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(39, 12, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(40, 12, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(41, 12, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(42, 12, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(43, 13, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(44, 13, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(45, 13, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(46, 13, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(47, 14, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(48, 14, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(49, 14, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(50, 14, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(51, 15, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(52, 15, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(53, 15, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(54, 15, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(55, 16, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(56, 16, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(57, 16, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(58, 16, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(59, 17, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(60, 17, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(61, 17, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(62, 17, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(63, 61, 1.20, 'Extra cheese', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(64, 61, 0.30, 'Extra olives', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(65, 61, 1.50, 'Tuna', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(66, 62, 1.20, 'Extra cheese', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(67, 62, 0.30, 'Extra olives', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(68, 62, 1.50, 'Tuna', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(69, 63, 1.20, 'Extra cheese', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(70, 63, 0.30, 'Extra olives', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(71, 63, 1.50, 'Tuna', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(72, 64, 1.20, 'Extra cheese', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(73, 64, 0.30, 'Extra olives', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(74, 64, 1.50, 'Tuna', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(75, 65, 1.20, 'Extra cheese', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(76, 65, 0.30, 'Extra olives', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(77, 65, 1.50, 'Tuna', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(78, 66, 1.20, 'Extra cheese', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(79, 66, 0.30, 'Extra olives', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(80, 66, 1.50, 'Tuna', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(81, 67, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(82, 67, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(83, 67, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(84, 67, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(85, 68, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(86, 68, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(87, 68, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(88, 68, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(89, 69, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(90, 69, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(91, 69, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(92, 69, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(93, 70, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(94, 70, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(95, 70, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(96, 70, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(97, 71, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(98, 71, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(99, 71, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(100, 71, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(101, 72, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(102, 72, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(103, 72, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(104, 72, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(105, 73, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(106, 73, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(107, 73, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(108, 73, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(109, 74, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(110, 74, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(111, 74, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(112, 74, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(113, 75, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(114, 75, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(115, 75, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(116, 75, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(117, 76, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(118, 76, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(119, 76, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(120, 76, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(121, 77, 1.00, 'Olive', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(122, 77, 0.50, 'Mushroom', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 1),
(123, 77, 2.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(124, 77, 1.00, 'Peperoni', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL, 0),
(125, 86, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(126, 86, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(127, 86, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(128, 86, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(129, 87, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(130, 87, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(131, 87, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(132, 87, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(133, 88, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(134, 88, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(135, 88, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(136, 88, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(137, 89, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(138, 89, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(139, 89, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(140, 89, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(141, 90, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(142, 90, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(143, 90, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(144, 90, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(145, 91, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(146, 91, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(147, 91, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(148, 91, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(149, 92, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(150, 92, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(151, 92, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(152, 92, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(153, 93, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(154, 93, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(155, 93, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(156, 93, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(157, 94, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(158, 94, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(159, 94, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(160, 94, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(161, 95, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(162, 95, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(163, 95, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(164, 95, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(165, 96, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(166, 96, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(167, 96, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(168, 96, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(169, 103, 1.20, 'Extra cheese', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(170, 103, 0.30, 'Extra olives', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(171, 103, 1.50, 'Tuna', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(172, 104, 1.20, 'Extra cheese', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(173, 104, 0.30, 'Extra olives', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(174, 104, 1.50, 'Tuna', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(175, 105, 1.20, 'Extra cheese', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(176, 105, 0.30, 'Extra olives', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(177, 105, 1.50, 'Tuna', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(178, 106, 1.20, 'Extra cheese', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(179, 106, 0.30, 'Extra olives', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(180, 106, 1.50, 'Tuna', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(181, 107, 1.20, 'Extra cheese', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(182, 107, 0.30, 'Extra olives', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(183, 107, 1.50, 'Tuna', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(184, 108, 1.20, 'Extra cheese', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(185, 108, 0.30, 'Extra olives', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(186, 108, 1.50, 'Tuna', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(187, 146, 1.20, 'Extra cheese', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(188, 146, 0.30, 'Extra olives', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(189, 146, 1.50, 'Tuna', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(190, 147, 1.20, 'Extra cheese', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(191, 147, 0.30, 'Extra olives', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(192, 147, 1.50, 'Tuna', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(193, 148, 1.20, 'Extra cheese', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(194, 148, 0.30, 'Extra olives', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(195, 148, 1.50, 'Tuna', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(196, 149, 1.20, 'Extra cheese', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(197, 149, 0.30, 'Extra olives', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(198, 149, 1.50, 'Tuna', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(199, 150, 1.20, 'Extra cheese', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(200, 150, 0.30, 'Extra olives', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(201, 150, 1.50, 'Tuna', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(202, 151, 1.20, 'Extra cheese', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(203, 151, 0.30, 'Extra olives', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(204, 151, 1.50, 'Tuna', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(205, 156, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(206, 156, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(207, 156, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(208, 156, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(209, 157, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(210, 157, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(211, 157, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(212, 157, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(213, 158, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(214, 158, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(215, 158, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(216, 158, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(217, 159, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(218, 159, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(219, 159, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(220, 159, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(221, 160, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(222, 160, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(223, 160, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(224, 160, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(225, 161, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(226, 161, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(227, 161, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(228, 161, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(229, 162, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(230, 162, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(231, 162, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(232, 162, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(233, 163, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(234, 163, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(235, 163, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(236, 163, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(237, 164, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(238, 164, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(239, 164, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(240, 164, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(241, 165, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(242, 165, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(243, 165, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(244, 165, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(245, 166, 1.00, 'Olive', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(246, 166, 0.50, 'Mushroom', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 1),
(247, 166, 2.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(248, 166, 1.00, 'Peperoni', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL, 0),
(249, 171, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(250, 171, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(251, 171, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(252, 172, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(253, 172, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(254, 172, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(255, 173, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(256, 173, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(257, 173, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(258, 174, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(259, 174, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(260, 174, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(261, 175, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(262, 175, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(263, 175, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(264, 176, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(265, 176, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(266, 176, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(267, 186, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(268, 186, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(269, 186, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(270, 186, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(271, 187, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(272, 187, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(273, 187, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(274, 187, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(275, 188, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(276, 188, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(277, 188, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(278, 188, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(279, 189, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(280, 189, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(281, 189, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(282, 189, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(283, 190, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(284, 190, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(285, 190, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(286, 190, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(287, 191, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(288, 191, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(289, 191, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(290, 191, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(291, 192, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(292, 192, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(293, 192, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(294, 192, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(295, 193, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(296, 193, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(297, 193, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(298, 193, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(299, 194, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(300, 194, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(301, 194, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(302, 194, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(303, 195, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(304, 195, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(305, 195, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(306, 195, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(307, 196, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(308, 196, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(309, 196, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(310, 196, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(311, 239, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(312, 239, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(313, 239, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(314, 240, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(315, 240, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(316, 240, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(317, 241, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(318, 241, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(319, 241, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(320, 242, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(321, 242, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(322, 242, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(323, 243, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(324, 243, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(325, 243, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(326, 244, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(327, 244, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(328, 244, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(329, 245, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(330, 245, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(331, 245, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(332, 245, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(333, 246, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(334, 246, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(335, 246, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(336, 246, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(337, 247, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(338, 247, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(339, 247, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(340, 247, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(341, 248, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(342, 248, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(343, 248, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(344, 248, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(345, 249, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(346, 249, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(347, 249, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(348, 249, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(349, 250, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(350, 250, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(351, 250, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(352, 250, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(353, 251, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(354, 251, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(355, 251, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(356, 251, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(357, 252, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(358, 252, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(359, 252, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(360, 252, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(361, 253, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(362, 253, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(363, 253, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(364, 253, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(365, 254, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(366, 254, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(367, 254, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(368, 254, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(369, 255, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(370, 255, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(371, 255, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(372, 255, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(373, 259, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(374, 259, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(375, 259, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(376, 260, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(377, 260, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(378, 260, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(379, 261, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(380, 261, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(381, 261, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(382, 262, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(383, 262, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(384, 262, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(385, 263, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(386, 263, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(387, 263, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(388, 264, 1.20, 'Extra cheese', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(389, 264, 0.30, 'Extra olives', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(390, 264, 1.50, 'Tuna', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(391, 271, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(392, 271, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(393, 271, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(394, 271, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(395, 272, 1.00, 'Olive', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(396, 272, 0.50, 'Mushroom', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 1),
(397, 272, 2.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(398, 272, 1.00, 'Peperoni', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL, 0),
(399, 273, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(400, 273, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(401, 273, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(402, 273, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(403, 274, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(404, 274, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(405, 274, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(406, 274, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(407, 275, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(408, 275, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(409, 275, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(410, 275, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(411, 276, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(412, 276, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(413, 276, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(414, 276, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(415, 277, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(416, 277, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(417, 277, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(418, 277, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(419, 278, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(420, 278, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(421, 278, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(422, 278, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(423, 279, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(424, 279, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(425, 279, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(426, 279, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(427, 280, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(428, 280, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(429, 280, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(430, 280, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(431, 281, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(432, 281, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(433, 281, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(434, 281, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(435, 320, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(436, 320, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(437, 320, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(438, 320, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(439, 321, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(440, 321, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(441, 321, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(442, 321, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(443, 322, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(444, 322, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(445, 322, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(446, 322, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(447, 323, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(448, 323, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(449, 323, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(450, 323, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(451, 324, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(452, 324, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(453, 324, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(454, 324, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(455, 325, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(456, 325, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(457, 325, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(458, 325, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(459, 326, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(460, 326, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(461, 326, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(462, 326, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(463, 327, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(464, 327, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(465, 327, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(466, 327, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(467, 328, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(468, 328, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(469, 328, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(470, 328, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(471, 329, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(472, 329, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(473, 329, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(474, 329, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(475, 330, 1.00, 'Olive', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(476, 330, 0.50, 'Mushroom', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(477, 330, 2.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(478, 330, 1.00, 'Peperoni', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 0),
(479, 331, 1.20, 'Extra cheese', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(480, 331, 0.30, 'Extra olives', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(481, 331, 1.50, 'Tuna', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(482, 332, 1.20, 'Extra cheese', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(483, 332, 0.30, 'Extra olives', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(484, 332, 1.50, 'Tuna', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(485, 333, 1.20, 'Extra cheese', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(486, 333, 0.30, 'Extra olives', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(487, 333, 1.50, 'Tuna', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(488, 334, 1.20, 'Extra cheese', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(489, 334, 0.30, 'Extra olives', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(490, 334, 1.50, 'Tuna', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(491, 335, 1.20, 'Extra cheese', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(492, 335, 0.30, 'Extra olives', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(493, 335, 1.50, 'Tuna', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(494, 336, 1.20, 'Extra cheese', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(495, 336, 0.30, 'Extra olives', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1),
(496, 336, 1.50, 'Tuna', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `0_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `0_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`id`, `created_at`, `updated_at`, `0_from`, `0_to`, `1_from`, `1_to`, `2_from`, `2_to`, `3_from`, `3_to`, `4_from`, `4_to`, `5_from`, `5_to`, `6_from`, `6_to`, `restorant_id`) VALUES
(1, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 1),
(2, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 2),
(3, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 3),
(4, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 4),
(5, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 5),
(6, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 6),
(7, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 7),
(8, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 8),
(9, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 9),
(10, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 10),
(11, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 11),
(12, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 12),
(13, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 13),
(14, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 14),
(15, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 15),
(16, NULL, NULL, '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', '00:01', '23:58', 16);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(455) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT 1,
  `has_variants` int(11) NOT NULL DEFAULT 0,
  `vat` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`) VALUES
(1, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 1, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(2, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 1, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(3, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 1, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(4, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 1, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(5, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 1, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(6, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 1, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(7, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(8, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(9, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(10, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(11, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(12, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(13, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(14, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(15, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(16, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(17, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(18, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 3, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(19, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 3, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(20, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 3, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(21, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 3, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(22, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 3, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(23, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 3, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(24, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 4, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(25, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 4, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(26, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 4, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(27, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 5, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(28, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 5, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(29, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 5, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(30, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 5, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(31, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 5, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(32, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 5, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(33, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 5, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(34, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 6, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(35, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 6, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(36, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 6, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(37, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(38, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(39, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(40, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(41, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(42, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(43, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(44, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(45, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(46, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(47, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(48, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(49, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(50, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(51, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(52, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(53, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(54, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(55, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(56, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(57, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(58, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(59, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(60, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(61, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(62, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(63, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(64, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(65, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(66, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(67, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(68, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(69, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(70, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(71, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(72, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(73, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(74, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(75, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(76, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(77, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 1, 21.00, NULL),
(78, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(79, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(80, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(81, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(82, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(83, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(84, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(85, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 0, 21.00, NULL),
(86, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 18, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(87, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 18, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(88, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 18, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(89, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 18, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(90, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 18, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(91, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 18, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(92, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 18, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(93, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 18, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(94, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 18, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(95, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 18, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(96, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 18, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(97, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 19, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(98, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 19, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(99, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 19, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(100, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 19, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(101, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 19, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(102, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 19, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(103, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 20, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(104, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 20, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(105, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 20, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(106, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 20, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(107, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 20, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(108, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 20, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(109, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 21, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(110, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 21, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(111, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 21, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(112, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 22, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(113, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 22, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(114, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 22, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(115, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 22, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(116, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 23, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(117, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 23, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(118, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 23, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(119, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 23, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(120, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 24, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(121, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 24, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(122, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 24, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(123, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 24, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(124, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 25, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(125, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 25, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(126, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 25, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(127, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 25, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(128, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 26, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(129, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 26, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(130, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 26, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(131, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 27, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(132, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 27, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(133, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 27, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(134, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 27, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(135, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 27, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(136, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 27, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(137, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 27, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(138, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 28, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(139, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 28, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(140, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 28, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(141, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 28, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(142, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 29, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(143, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 29, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(144, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 29, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(145, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 30, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(146, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 31, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(147, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 31, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(148, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 31, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(149, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 31, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(150, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 31, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(151, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 31, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(152, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 32, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(153, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 32, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(154, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 32, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(155, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 32, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(156, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 33, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(157, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 33, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(158, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 33, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(159, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 33, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(160, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 33, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(161, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 33, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(162, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 33, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(163, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 33, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(164, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 33, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(165, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 33, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(166, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 33, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 1, 21.00, NULL),
(167, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 34, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(168, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 34, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(169, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 34, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(170, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 34, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, 0, 21.00, NULL),
(171, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 35, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(172, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 35, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL);
INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`) VALUES
(173, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 35, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(174, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 35, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(175, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 35, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(176, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 35, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(177, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 36, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(178, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 36, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(179, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 36, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(180, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 36, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(181, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 36, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(182, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 36, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(183, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 37, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(184, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 37, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(185, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 37, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(186, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 38, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(187, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 38, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(188, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 38, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(189, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 38, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(190, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 38, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(191, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 38, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(192, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 38, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(193, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 38, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(194, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 38, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(195, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 38, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(196, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 38, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(197, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 39, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(198, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 39, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(199, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 39, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(200, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 39, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(201, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 40, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(202, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 40, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(203, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 40, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(204, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 40, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(205, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 41, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(206, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 41, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(207, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 41, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(208, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 41, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(209, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 42, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(210, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 42, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(211, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 42, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(212, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 42, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(213, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 43, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(214, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 44, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(215, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 44, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(216, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 44, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(217, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 44, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(218, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 45, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(219, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 45, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(220, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 45, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(221, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 46, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(222, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 46, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(223, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 46, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(224, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 46, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(225, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 46, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(226, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 46, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(227, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 46, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(228, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 47, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(229, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 47, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(230, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 47, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(231, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 48, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(232, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 48, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(233, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 48, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(234, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 48, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(235, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 49, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(236, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 49, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(237, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 49, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(238, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 49, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(239, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 50, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(240, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 50, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(241, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 50, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(242, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 50, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(243, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 50, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(244, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 50, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(245, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 51, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(246, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 51, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(247, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 51, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(248, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 51, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(249, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 51, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(250, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 51, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(251, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 51, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(252, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 51, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(253, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 51, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(254, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 51, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(255, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 51, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(256, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 52, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(257, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 52, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(258, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 52, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(259, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 53, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(260, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 53, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(261, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 53, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(262, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 53, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(263, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 53, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(264, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 53, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(265, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 54, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(266, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 54, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(267, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 54, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(268, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 54, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(269, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 54, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(270, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 54, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 0, 21.00, NULL),
(271, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 55, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(272, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 55, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, 1, 21.00, NULL),
(273, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 55, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(274, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 55, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(275, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 55, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(276, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 55, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(277, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 55, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(278, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 55, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(279, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 55, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(280, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 55, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(281, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 55, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(282, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 56, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(283, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 56, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(284, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 56, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(285, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 56, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(286, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 57, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(287, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 57, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(288, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 57, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(289, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 57, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(290, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 58, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(291, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 58, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(292, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 58, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(293, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 58, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(294, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 59, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(295, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 59, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(296, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 59, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(297, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 59, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(298, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 60, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(299, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 60, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(300, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 60, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(301, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 60, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(302, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 60, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(303, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 60, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(304, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 60, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(305, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 61, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(306, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 61, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(307, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 61, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(308, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 62, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(309, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 62, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(310, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 62, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(311, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 63, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(312, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 64, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(313, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 64, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(314, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 64, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(315, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 64, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(316, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 65, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(317, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 65, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(318, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 65, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(319, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 65, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(320, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 66, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(321, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 66, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(322, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 66, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(323, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 66, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(324, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 66, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(325, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 66, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(326, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 66, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(327, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 66, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(328, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 66, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(329, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 66, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(330, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 66, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 1, 21.00, NULL),
(331, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 67, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(332, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 67, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(333, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 67, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(334, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 67, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(335, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 67, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(336, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 67, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(337, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 68, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(338, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 68, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(339, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 68, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL),
(340, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 68, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, 0, 21.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `localmenus`
--

CREATE TABLE `localmenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languageName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` int(11) NOT NULL DEFAULT 0 COMMENT '0 - No, 1 - Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_29_200844_create_languages_table', 1),
(4, '2018_08_29_205156_create_translations_table', 1),
(5, '2019_05_03_000001_create_customer_columns', 1),
(6, '2019_05_03_000002_create_subscriptions_table', 1),
(7, '2019_05_03_000003_create_subscription_items_table', 1),
(8, '2020_02_06_010033_create_permission_tables', 1),
(9, '2020_02_06_022212_create_restorants_table', 1),
(10, '2020_02_09_015116_create_status_table', 1),
(11, '2020_02_09_152551_create_categories_table', 1),
(12, '2020_02_09_152656_create_items_table', 1),
(13, '2020_02_11_052117_create_address_table', 1),
(14, '2020_02_11_054259_create_orders_table', 1),
(15, '2020_02_20_094727_create_settings_table', 1),
(16, '2020_03_25_134914_create_pages_table', 1),
(17, '2020_04_03_143518_update_settings_table', 1),
(18, '2020_04_10_202027_create_payments_table', 1),
(19, '2020_04_11_165819_update_table_orders', 1),
(20, '2020_04_22_105556_update_items_table', 1),
(21, '2020_04_23_212320_update_restorants_table', 1),
(22, '2020_04_23_212502_update_orders_table', 1),
(23, '2020_04_28_112519_update_address_table', 1),
(24, '2020_05_07_122727_create_hours_table', 1),
(25, '2020_05_09_012646_update_orders_add_delivery_table', 1),
(26, '2020_05_09_024507_add_options_to_settings_table', 1),
(27, '2020_05_20_232204_create_notifications_table', 1),
(28, '2020_06_03_134258_change_radius_to_delivery_area_restorants_table', 1),
(29, '2020_06_26_131803_create_sms_verifications_table', 1),
(30, '2020_07_12_182829_create_extras_table', 1),
(31, '2020_07_14_155509_create_plan_table', 1),
(32, '2020_07_23_183000_update_restorants_with_featured', 1),
(33, '2020_07_28_131511_update_users_sms_verification', 1),
(34, '2020_07_30_102916_change_json_to_string', 1),
(35, '2020_08_01_014851_create_variants', 1),
(36, '2020_08_14_003718_create_ratings_table', 1),
(37, '2020_08_18_035731_update_table_plans', 1),
(38, '2020_08_18_053012_update_user_add_plan', 1),
(39, '2020_09_02_131604_update_orders_time_to_prepare', 1),
(40, '2020_09_09_080747_create_cities_table', 1),
(41, '2020_09_28_131250_update_item_softdelete', 1),
(42, '2020_10_24_150254_create_tables_table', 1),
(43, '2020_10_25_021321_create_visits_table', 1),
(44, '2020_10_26_004421_update_orders_client_nullable', 1),
(45, '2020_10_26_104351_update_restorant_table', 1),
(46, '2020_10_26_190049_update_plan', 1),
(47, '2020_10_27_180123_create_stripe_payment', 1),
(48, '2020_11_01_190615_update_user_table', 1),
(49, '2020_11_05_081140_create_paths_table', 1),
(50, '2020_11_14_111220_create_phone_in_orders', 1),
(51, '2020_11_17_211252_update_logo_in_settings', 1),
(52, '2020_11_25_182453_create_paypal_payment', 1),
(53, '2020_11_25_225536_update_user_for_paypal_subsc', 1),
(54, '2020_11_27_102829_update_restaurants_for_delivery_pickup', 1),
(55, '2020_11_27_165901_create_coupons_table', 1),
(56, '2020_12_02_192213_update_for_whatsapp_order', 1),
(57, '2020_12_02_195333_update_for_mollie_payment', 1),
(58, '2020_12_07_142304_create_banners_table', 1),
(59, '2020_12_10_155335_wp_address', 1),
(60, '2020_12_14_195627_update_for_paystack_sub', 1),
(61, '2020_12_15_130511_update_paystack_verification', 1),
(62, '2020_12_27_155822_create_restaurant_multilanguage', 1),
(63, '2020_12_27_162902_update_restaurant_with_currency', 1),
(64, '2021_01_16_093708_update_restorant_with_pay_link', 1),
(65, '2021_01_22_142723_create_crud_for_whatsapp_landing', 1),
(66, '2021_02_16_065037_create_configs_table', 2),
(67, '2021_02_18_140330_allow_null_on_config_value', 2),
(68, '2021_02_22_135519_update_settinga_table', 2),
(69, '2021_02_26_113854_order_fee_update', 2),
(70, '2021_03_23_135952_update_config_table', 2),
(71, '2021_04_17_002457_update_restables', 2),
(72, '2021_04_17_231310_update_restablesagain', 2),
(73, '2021_04_22_184249_update_user_with_staff', 2),
(74, '2021_04_26_190410_create_cart_storage_table', 2),
(75, '2021_05_19_032734_update_order_with_employee_id', 2),
(76, '2021_05_19_124342_create_simple_delivery_areas', 2),
(77, '2021_05_28_070715_create_expenses', 2),
(78, '2021_07_01_084847_make_restaurant_soft_delete', 2),
(79, '2021_07_16_170627_make_user_soft_delete', 2),
(80, '2021_07_16_172430_make_user_email_not_unique', 2),
(81, '2021_07_21_153807_rename_to_company', 2),
(82, '2021_07_21_162114_make_pure_saas', 2),
(83, '2021_08_04_073843_add_md_to_orders', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(3, 'App\\User', 35),
(3, 'App\\User', 38),
(4, 'App\\User', 36),
(4, 'App\\User', 37),
(5, 'App\\User', 3),
(5, 'App\\User', 4),
(5, 'App\\User', 5),
(5, 'App\\User', 6),
(5, 'App\\User', 7),
(5, 'App\\User', 8),
(5, 'App\\User', 9),
(5, 'App\\User', 10),
(5, 'App\\User', 11),
(5, 'App\\User', 12),
(5, 'App\\User', 13),
(5, 'App\\User', 14),
(5, 'App\\User', 15),
(5, 'App\\User', 16),
(5, 'App\\User', 17),
(5, 'App\\User', 18),
(5, 'App\\User', 19),
(5, 'App\\User', 20),
(5, 'App\\User', 21),
(5, 'App\\User', 22),
(5, 'App\\User', 23),
(5, 'App\\User', 24),
(5, 'App\\User', 25),
(5, 'App\\User', 26),
(5, 'App\\User', 27),
(5, 'App\\User', 28),
(5, 'App\\User', 29),
(5, 'App\\User', 30),
(5, 'App\\User', 31),
(5, 'App\\User', 32),
(5, 'App\\User', 33),
(5, 'App\\User', 34);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `item_id`, `name`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(2, 7, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(3, 8, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(4, 8, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(5, 9, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(6, 9, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(7, 10, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(8, 10, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(9, 11, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(10, 11, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(11, 12, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(12, 12, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(13, 13, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(14, 13, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(15, 14, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(16, 14, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(17, 15, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(18, 15, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(19, 16, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(20, 16, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(21, 17, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(22, 17, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(23, 67, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(24, 67, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(25, 68, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(26, 68, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(27, 69, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(28, 69, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(29, 70, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(30, 70, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(31, 71, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(32, 71, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(33, 72, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(34, 72, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(35, 73, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(36, 73, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(37, 74, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(38, 74, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(39, 75, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(40, 75, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(41, 76, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(42, 76, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(43, 77, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(44, 77, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(45, 86, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(46, 86, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(47, 87, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(48, 87, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(49, 88, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(50, 88, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(51, 89, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(52, 89, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(53, 90, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(54, 90, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(55, 91, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(56, 91, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(57, 92, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(58, 92, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(59, 93, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(60, 93, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(61, 94, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(62, 94, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(63, 95, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(64, 95, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(65, 96, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(66, 96, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(67, 156, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(68, 156, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(69, 157, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(70, 157, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(71, 158, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(72, 158, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(73, 159, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(74, 159, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(75, 160, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(76, 160, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(77, 161, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(78, 161, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(79, 162, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(80, 162, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(81, 163, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(82, 163, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(83, 164, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(84, 164, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(85, 165, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(86, 165, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(87, 166, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(88, 166, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(89, 186, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(90, 186, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(91, 187, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(92, 187, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(93, 188, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(94, 188, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(95, 189, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(96, 189, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(97, 190, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(98, 190, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(99, 191, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(100, 191, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(101, 192, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(102, 192, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(103, 193, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(104, 193, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(105, 194, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(106, 194, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(107, 195, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(108, 195, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(109, 196, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(110, 196, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(111, 245, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(112, 245, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(113, 246, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(114, 246, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(115, 247, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(116, 247, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(117, 248, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(118, 248, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(119, 249, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(120, 249, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(121, 250, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(122, 250, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(123, 251, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(124, 251, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(125, 252, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(126, 252, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(127, 253, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(128, 253, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(129, 254, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(130, 254, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(131, 255, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(132, 255, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(133, 271, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(134, 271, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(135, 272, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(136, 272, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(137, 273, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(138, 273, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(139, 274, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(140, 274, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(141, 275, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(142, 275, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(143, 276, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(144, 276, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(145, 277, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(146, 277, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(147, 278, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(148, 278, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(149, 279, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(150, 279, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(151, 280, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(152, 280, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(153, 281, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(154, 281, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(155, 320, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(156, 320, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(157, 321, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(158, 321, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(159, 322, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(160, 322, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(161, 323, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(162, 323, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(163, 324, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(164, 324, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(165, 325, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(166, 325, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(167, 326, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(168, 326, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(169, 327, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(170, 327, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(171, 328, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(172, 328, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(173, 329, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(174, 329, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(175, 330, 'Size', 'Small,Medium,Large,Family', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(176, 330, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_price` double(8,2) NOT NULL,
  `order_price` double(8,2) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `srtipe_payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` double(8,2) NOT NULL DEFAULT 0.00,
  `fee_value` double NOT NULL DEFAULT 0,
  `static_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_method` int(11) NOT NULL DEFAULT 1 COMMENT '1- Delivery, 2- Pickup',
  `delivery_pickup_interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatvalue` double(8,2) DEFAULT 0.00,
  `payment_processor_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `time_to_prepare` int(11) DEFAULT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `md` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`) VALUES
(1, '2021-08-27 13:37:44', '2021-10-15 09:00:07', 2, 4, 1, NULL, 9.00, 74.00, NULL, 'paid', 'Vitae illum ut fugit dolorem inventore molestiae. Quia reiciendis autem quia commodi quam in reprehenderit. Fugit aut eos vel et sed distinctio omnis. Distinctio deserunt distinctio nesciunt earum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(2, '2021-06-14 11:27:13', '2021-10-15 09:00:07', 3, 4, 2, NULL, 8.00, 84.00, NULL, 'paid', 'Blanditiis nemo dolores aut sit sed culpa. Ipsum eum nihil necessitatibus. Cumque vel voluptate animi consectetur velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(3, '2020-11-12 00:45:29', '2021-10-15 09:00:07', 1, 5, 3, NULL, 6.00, 49.00, NULL, 'paid', 'Asperiores quos excepturi quidem. Officiis aperiam doloremque quae rerum. Quo aut voluptatem quidem nulla molestiae minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(4, '2021-08-25 15:57:35', '2021-10-15 09:00:07', 1, 4, 3, NULL, 8.00, 50.00, NULL, 'paid', 'Occaecati rerum soluta voluptas dolor. Numquam sed a ratione sunt accusamus cumque. Eum nulla nisi laborum nostrum accusantium fugiat. Temporibus alias aperiam tempore reiciendis fugiat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(5, '2021-05-04 09:30:36', '2021-10-15 09:00:07', 3, 5, 2, NULL, 10.00, 53.00, NULL, 'paid', 'Perferendis est itaque necessitatibus quo accusantium ex aut. Non aut in commodi explicabo. Ex porro aut consequatur sit consectetur vero sequi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(6, '2021-09-25 05:37:03', '2021-10-15 09:00:07', 2, 5, 1, NULL, 7.00, 74.00, NULL, 'paid', 'Aspernatur est omnis dolor voluptas molestias id blanditiis. Rerum aperiam dolorem quidem fuga quia. Enim magnam eum saepe qui est expedita. Et laudantium autem omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(7, '2021-05-23 20:19:28', '2021-10-15 09:00:07', 1, 4, 2, NULL, 7.00, 80.00, NULL, 'paid', 'Ex iste eos rerum quisquam et. Enim sunt pariatur reiciendis omnis cumque vel et. Quibusdam inventore fugiat autem et fuga tempora maiores. At est distinctio dignissimos adipisci magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(8, '2021-02-28 08:49:13', '2021-10-15 09:00:07', 1, 4, 2, NULL, 6.00, 49.00, NULL, 'paid', 'Suscipit dolor neque ipsam quae. Inventore sed deleniti sint nobis ut atque corporis. Quia corporis aliquam tempora fuga nihil. Accusamus autem reiciendis ullam nobis ea fuga.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(9, '2020-10-21 09:04:23', '2021-10-15 09:00:07', 3, 5, 1, NULL, 7.00, 64.00, NULL, 'paid', 'Quia animi quidem doloribus ducimus cum. Est ipsum quasi sunt rem magni fugiat temporibus nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(10, '2021-06-09 19:25:31', '2021-10-15 09:00:07', 4, 4, 1, NULL, 6.00, 80.00, NULL, 'paid', 'Officia deleniti magnam voluptates expedita quae repellendus qui. Quia ea blanditiis et ut error sint laborum qui. Sint facere dolore ea autem quia quo aut quasi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(11, '2021-03-17 15:43:15', '2021-10-15 09:00:07', 5, 4, 2, NULL, 9.00, 44.00, NULL, 'paid', 'Tempore alias cupiditate sit voluptatum eum mollitia. Et unde mollitia tempora ut. Maxime in dolorem autem perspiciatis nihil aliquid.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(12, '2020-11-29 02:12:46', '2021-10-15 09:00:07', 2, 5, 3, NULL, 9.00, 58.00, NULL, 'paid', 'Ad perferendis distinctio totam sit. Ut magni vel sint quasi. Est eos aut debitis nemo esse.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(13, '2021-03-22 05:04:56', '2021-10-15 09:00:07', 3, 5, 2, NULL, 10.00, 96.00, NULL, 'paid', 'Inventore dolores eos beatae quasi odit debitis sapiente. Tempora molestias tenetur occaecati explicabo esse quae illo assumenda. A repellat sit distinctio nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(14, '2021-06-15 02:10:33', '2021-10-15 09:00:07', 4, 5, 1, NULL, 6.00, 54.00, NULL, 'paid', 'Voluptate autem doloremque harum sint. Nihil totam eaque voluptas nemo aperiam. Et at quo consectetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(15, '2021-04-29 22:02:12', '2021-10-15 09:00:07', 4, 5, 1, NULL, 9.00, 52.00, NULL, 'paid', 'Commodi quis dolores eveniet voluptates illum optio provident. Nulla possimus ab sit eos possimus voluptatibus. Quisquam ut iste incidunt. Sunt qui autem veritatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(16, '2020-11-25 20:02:51', '2021-10-15 09:00:07', 4, 4, 1, NULL, 8.00, 54.00, NULL, 'paid', 'Non praesentium quia voluptatem perspiciatis. Totam tempora eos ipsa earum magni. Laudantium veritatis quam dolores ipsam. Dolorum repellat doloremque asperiores qui illo aut quo omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(17, '2021-09-21 17:53:25', '2021-10-15 09:00:07', 1, 4, 3, NULL, 8.00, 98.00, NULL, 'paid', 'Ut praesentium aut sapiente veniam et. Adipisci in repellendus facilis autem cum. Quis enim quam consectetur officiis animi adipisci. Est minima qui quae voluptas aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(18, '2021-03-20 17:05:04', '2021-10-15 09:00:07', 4, 4, 1, NULL, 9.00, 30.00, NULL, 'paid', 'Eos veritatis nesciunt doloribus. Et rerum commodi qui. Voluptas deserunt non dolore et dolore quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(19, '2021-05-25 01:42:30', '2021-10-15 09:00:07', 1, 5, 2, NULL, 5.00, 33.00, NULL, 'paid', 'Ut autem quas facilis assumenda. Voluptas dolor est beatae enim voluptas minus quo quo. Provident ullam et autem ut qui et labore omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(20, '2021-03-28 00:30:10', '2021-10-15 09:00:07', 4, 4, 2, NULL, 8.00, 86.00, NULL, 'paid', 'Tenetur quasi consequatur quis voluptatem atque reprehenderit perferendis. Nobis quia cumque fuga.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(21, '2021-10-03 17:18:33', '2021-10-15 09:00:07', 5, 4, 1, NULL, 5.00, 90.00, NULL, 'paid', 'Earum aliquid ipsa officia et minima sint eligendi. Asperiores cupiditate iste sint aliquam ad mollitia. Magnam dolores debitis optio eos enim ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(22, '2021-09-22 16:29:28', '2021-10-15 09:00:07', 5, 4, 2, NULL, 10.00, 59.00, NULL, 'paid', 'Reiciendis quia optio commodi maxime. Autem voluptate maxime iure odio ullam exercitationem placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(23, '2020-10-23 16:24:36', '2021-10-15 09:00:07', 4, 4, 3, NULL, 5.00, 75.00, NULL, 'paid', 'Molestiae quis adipisci qui rem nihil optio voluptatem. Sed quia sapiente aut a. Exercitationem dolores dolor quia doloremque eligendi nemo numquam sit. Perspiciatis eum tenetur voluptas sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(24, '2020-12-01 02:05:03', '2021-10-15 09:00:07', 2, 4, 3, NULL, 10.00, 73.00, NULL, 'paid', 'Ullam ad aut odio id in consectetur id. Nobis dolorem ut esse voluptatem. Sit odit quis sequi aut est. Iste distinctio corporis et ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(25, '2021-07-28 19:42:28', '2021-10-15 09:00:07', 1, 5, 2, NULL, 10.00, 97.00, NULL, 'paid', 'Consequuntur magni quis blanditiis tenetur blanditiis quia. Occaecati asperiores et sapiente et voluptas exercitationem. Omnis id possimus qui incidunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(26, '2021-09-11 15:23:08', '2021-10-15 09:00:07', 5, 5, 3, NULL, 8.00, 96.00, NULL, 'paid', 'Voluptatum voluptate itaque consequatur quae eligendi qui. Omnis mollitia ut alias odio ipsum eius. Cumque repudiandae minus illum et odit ipsam. Sunt qui voluptatem corrupti autem laboriosam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(27, '2021-03-14 04:42:53', '2021-10-15 09:00:07', 1, 5, 2, NULL, 5.00, 76.00, NULL, 'paid', 'Perferendis fugit aut non in delectus minus. Aut nulla delectus et. At doloremque vel quod voluptatem non nihil rerum et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(28, '2020-12-04 01:22:33', '2021-10-15 09:00:07', 1, 4, 1, NULL, 7.00, 89.00, NULL, 'paid', 'Neque et enim voluptas voluptatem sed qui. Aut magnam a magnam sed eius maxime. Ducimus facilis laudantium qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(29, '2021-03-15 04:49:11', '2021-10-15 09:00:07', 4, 4, 1, NULL, 7.00, 47.00, NULL, 'paid', 'Voluptas dicta qui animi magni. Voluptatem quam mollitia voluptatum consequatur doloremque. Ducimus alias quod distinctio dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(30, '2021-07-07 05:49:27', '2021-10-15 09:00:07', 4, 4, 1, NULL, 7.00, 72.00, NULL, 'paid', 'Vitae quia tempora aspernatur aut. Qui illo corporis modi et vel cumque quidem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(31, '2021-07-06 01:23:00', '2021-10-15 09:00:07', 3, 4, 2, NULL, 8.00, 46.00, NULL, 'paid', 'Saepe similique non quam molestias qui inventore. Deleniti aut reiciendis delectus ut esse velit. Ipsa dolor voluptatum ab omnis numquam voluptatum quas officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(32, '2021-02-25 02:48:10', '2021-10-15 09:00:07', 2, 5, 3, NULL, 6.00, 41.00, NULL, 'paid', 'Consequatur consectetur et odit et id. Iure doloribus iure officia voluptate. Eos assumenda eum adipisci aliquam voluptatum omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(33, '2021-08-25 00:37:14', '2021-10-15 09:00:07', 4, 4, 1, NULL, 10.00, 53.00, NULL, 'paid', 'Autem maxime sit omnis harum ipsa necessitatibus vel et. Nulla ut laborum totam dicta harum temporibus. Consequatur rerum occaecati facilis quibusdam sint animi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(34, '2021-01-28 10:42:11', '2021-10-15 09:00:07', 4, 5, 2, NULL, 6.00, 39.00, NULL, 'paid', 'Occaecati magni aut iste. Dolores deleniti et magni fuga deleniti aut. Rerum culpa unde cum in natus provident. Provident laborum suscipit quia enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(35, '2021-03-02 19:22:34', '2021-10-15 09:00:07', 3, 4, 2, NULL, 8.00, 95.00, NULL, 'paid', 'Rem ex possimus corporis quisquam. Necessitatibus delectus enim asperiores perspiciatis ad ipsam magnam illo. Doloremque adipisci porro quia similique in quia. Delectus et ipsa eius ipsum et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(36, '2021-07-06 21:18:44', '2021-10-15 09:00:07', 5, 4, 3, NULL, 8.00, 44.00, NULL, 'paid', 'Ex natus quod repudiandae est corrupti. Nobis et deserunt nemo provident suscipit amet. Sunt rerum et aut nesciunt. Odit et sit omnis autem ut labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(37, '2021-06-05 06:54:04', '2021-10-15 09:00:07', 2, 4, 3, NULL, 6.00, 44.00, NULL, 'paid', 'Blanditiis tempora voluptatum sint eligendi deserunt voluptatem. Fugiat maiores velit facere qui. Velit cupiditate corrupti porro dolorum doloremque ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(38, '2021-04-19 06:59:00', '2021-10-15 09:00:07', 4, 4, 1, NULL, 6.00, 50.00, NULL, 'paid', 'Minus aut aperiam qui distinctio. Qui aut voluptas accusamus hic. Rerum ipsum fugiat eaque. Et praesentium voluptatem odit temporibus numquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(39, '2021-01-28 19:03:46', '2021-10-15 09:00:07', 2, 5, 2, NULL, 5.00, 67.00, NULL, 'paid', 'Sed ut suscipit nihil ad ullam accusamus autem. Sed ipsa eaque blanditiis odit aut. Culpa ad rerum aperiam ipsam deleniti quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(40, '2021-09-05 18:37:50', '2021-10-15 09:00:07', 3, 4, 2, NULL, 8.00, 30.00, NULL, 'paid', 'Fugiat doloremque sit libero saepe adipisci. Mollitia iusto quia odit sint officiis. Quasi voluptatem nihil eum voluptas. Qui eum nam quidem ducimus voluptatem quo quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(41, '2021-09-19 07:24:08', '2021-10-15 09:00:07', 1, 5, 2, NULL, 10.00, 91.00, NULL, 'paid', 'Sed dolores assumenda neque provident. Eos asperiores dolore blanditiis sed amet. Hic totam totam doloremque rerum. Asperiores vel perspiciatis deleniti ipsa nostrum ab qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(42, '2021-06-11 21:07:09', '2021-10-15 09:00:07', 5, 5, 2, NULL, 7.00, 86.00, NULL, 'paid', 'Sunt voluptatem odio possimus doloremque quae. Alias molestiae et sit autem. Assumenda dolores dolorem aspernatur velit ipsam nesciunt facilis enim. Veniam aut quo libero doloribus et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(43, '2021-09-24 00:02:46', '2021-10-15 09:00:07', 5, 4, 2, NULL, 5.00, 76.00, NULL, 'paid', 'Et quia placeat consequuntur libero aperiam sequi dignissimos. Quisquam assumenda voluptas est ad. Magnam ducimus quibusdam est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(44, '2021-03-10 10:23:38', '2021-10-15 09:00:07', 5, 5, 1, NULL, 5.00, 65.00, NULL, 'paid', 'Libero voluptatem recusandae id sed non sed rerum. Culpa natus sit odit sint officia commodi quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(45, '2021-01-02 07:11:36', '2021-10-15 09:00:07', 1, 4, 1, NULL, 9.00, 42.00, NULL, 'paid', 'Perspiciatis qui odit voluptatem necessitatibus. Asperiores eos et dolore voluptas. Placeat tenetur nesciunt nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(46, '2021-10-09 18:52:19', '2021-10-15 09:00:07', 1, 5, 2, NULL, 5.00, 35.00, NULL, 'paid', 'Aut voluptatem non praesentium. Repellat non rerum eos consectetur cumque non. Est fuga doloremque ad quia quidem deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(47, '2021-06-02 14:07:35', '2021-10-15 09:00:07', 2, 4, 3, NULL, 5.00, 98.00, NULL, 'paid', 'Ipsa nemo cupiditate voluptatem in ad quia sit. Sint hic voluptatibus voluptatem quia ut qui dolore. Illo eum quia et esse assumenda. Nulla quia maxime est qui excepturi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(48, '2021-07-25 08:34:25', '2021-10-15 09:00:07', 5, 4, 1, NULL, 8.00, 49.00, NULL, 'paid', 'Reiciendis deserunt voluptas natus velit et. Qui qui voluptatem eaque doloremque omnis quia. Doloribus nemo ipsa molestias repellat non illo quia tempore. Ipsa quod corporis molestias eligendi hic.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(49, '2021-04-17 07:38:01', '2021-10-15 09:00:07', 5, 4, 3, NULL, 8.00, 70.00, NULL, 'paid', 'Autem tempora corporis voluptas est unde in quis. Dolor laboriosam repellat odio et quia expedita ut. Voluptatibus sequi veniam totam ratione. Rerum dolores aliquid consequatur est tempore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(50, '2020-10-28 00:36:31', '2021-10-15 09:00:07', 2, 5, 1, NULL, 5.00, 58.00, NULL, 'paid', 'Dolores molestias quasi officia qui. Nihil dolores cumque repellendus dolores quam. Magnam totam maiores voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(51, '2020-12-14 16:46:11', '2021-10-15 09:00:07', 4, 5, 1, NULL, 10.00, 95.00, NULL, 'paid', 'Deleniti asperiores occaecati laudantium quaerat mollitia ea. Beatae officia quam voluptates illum. Possimus nostrum itaque facere delectus reprehenderit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(52, '2021-09-05 21:30:38', '2021-10-15 09:00:07', 1, 4, 3, NULL, 5.00, 83.00, NULL, 'paid', 'Dolore ea tenetur similique mollitia. Repellat quaerat quo ea rerum. Voluptas voluptas accusamus quia molestias tempora.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(53, '2020-10-22 21:16:09', '2021-10-15 09:00:07', 1, 5, 3, NULL, 6.00, 100.00, NULL, 'paid', 'Perspiciatis quo quis eos doloribus sapiente perferendis sit. Ipsum fugit fugiat molestiae sit quos. Ipsum quas labore aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(54, '2021-09-22 19:43:31', '2021-10-15 09:00:07', 4, 4, 1, NULL, 10.00, 61.00, NULL, 'paid', 'Aut dignissimos laboriosam sunt voluptates hic occaecati quia. Et ea possimus ab quibusdam alias distinctio. Est nulla praesentium architecto facere.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(55, '2021-04-29 11:35:28', '2021-10-15 09:00:07', 2, 4, 1, NULL, 9.00, 78.00, NULL, 'paid', 'Quaerat numquam in dolore quia earum consequatur debitis quo. Perferendis molestias occaecati aperiam quaerat ratione molestiae. Quae ullam ut quia in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(56, '2021-07-09 17:35:06', '2021-10-15 09:00:07', 3, 4, 1, NULL, 6.00, 50.00, NULL, 'paid', 'Modi perferendis quasi quasi repellat quia. Voluptatum quisquam non sapiente rerum. Alias nihil in vel. Mollitia sit qui et aut vel quas id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(57, '2021-02-20 10:05:48', '2021-10-15 09:00:07', 5, 4, 1, NULL, 6.00, 81.00, NULL, 'paid', 'Odit eum quaerat corporis est porro minima. Quod repellendus nesciunt voluptatem praesentium nemo. Inventore sed debitis ipsum omnis. Excepturi nesciunt qui facere quos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(58, '2021-02-11 11:17:27', '2021-10-15 09:00:07', 1, 5, 1, NULL, 9.00, 59.00, NULL, 'paid', 'Voluptatem dolorem aut quia eos possimus labore. Ea quam possimus aspernatur aspernatur natus nesciunt aliquid. Voluptates officia amet incidunt vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(59, '2021-05-31 11:04:00', '2021-10-15 09:00:07', 5, 5, 2, NULL, 8.00, 46.00, NULL, 'paid', 'Beatae delectus facilis recusandae in aliquam. Molestiae et reprehenderit doloremque reprehenderit libero sed est. Ipsa repellat eum nisi voluptatem provident. At sunt aut voluptatem et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(60, '2021-07-23 02:38:39', '2021-10-15 09:00:07', 5, 4, 2, NULL, 9.00, 31.00, NULL, 'paid', 'Non neque dolores officiis dolor. Sunt qui corporis aut laborum nesciunt quidem. Cum voluptas quo voluptas animi. Vitae aliquam et est unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(61, '2021-03-16 21:54:17', '2021-10-15 09:00:07', 4, 4, 3, NULL, 9.00, 94.00, NULL, 'paid', 'Omnis doloribus aut maiores laborum similique. Veniam aspernatur quo non aliquid. Et aliquid corporis omnis ut cum. Laboriosam eum fugit numquam qui sit nulla.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(62, '2021-02-09 18:00:09', '2021-10-15 09:00:07', 1, 4, 2, NULL, 5.00, 65.00, NULL, 'paid', 'Esse voluptatem amet aliquam alias. Porro quia nam cum ab odio et ducimus. Et magnam voluptate exercitationem quaerat eligendi voluptatem quia. Voluptates earum molestiae occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(63, '2021-08-22 13:34:58', '2021-10-15 09:00:07', 1, 5, 1, NULL, 9.00, 51.00, NULL, 'paid', 'Sunt minus laboriosam necessitatibus id. Minus deleniti quia dicta voluptatibus magni voluptatem. Fugit non unde voluptatum aut dolor aperiam hic. Provident voluptatem quas repellendus ab totam unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(64, '2021-04-06 13:43:23', '2021-10-15 09:00:07', 4, 5, 1, NULL, 6.00, 50.00, NULL, 'paid', 'Tempora blanditiis soluta accusamus non. Vero tempore ut provident incidunt. Excepturi fugit numquam nostrum quisquam facere.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(65, '2021-07-26 06:49:50', '2021-10-15 09:00:07', 4, 4, 1, NULL, 10.00, 100.00, NULL, 'paid', 'Veritatis mollitia repellendus sint accusamus unde distinctio magni mollitia. Error repellat facilis et tempora. Et adipisci facilis consequatur nulla.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(66, '2021-10-07 21:38:35', '2021-10-15 09:00:07', 4, 4, 3, NULL, 9.00, 88.00, NULL, 'paid', 'Et sint earum repellendus suscipit dicta eos. Maxime magni quaerat ipsam aliquid cumque ut nisi. Esse vitae recusandae et illum mollitia voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(67, '2021-05-18 06:29:08', '2021-10-15 09:00:07', 2, 4, 1, NULL, 6.00, 96.00, NULL, 'paid', 'Facere sunt est possimus et eligendi. Dolore eos inventore eum. Est magnam vel voluptas itaque et. Nemo et et consequatur quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(68, '2020-12-08 13:23:34', '2021-10-15 09:00:07', 5, 5, 1, NULL, 10.00, 81.00, NULL, 'paid', 'Nobis sequi voluptatem error omnis. Illum mollitia nobis possimus iusto aut autem itaque. Magnam iusto sint corrupti necessitatibus labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(69, '2020-11-07 17:35:26', '2021-10-15 09:00:07', 1, 4, 2, NULL, 8.00, 96.00, NULL, 'paid', 'Voluptatem consequatur similique error quasi. Molestiae possimus enim necessitatibus corrupti quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(70, '2021-08-01 18:54:38', '2021-10-15 09:00:07', 5, 4, 1, NULL, 7.00, 90.00, NULL, 'paid', 'Perspiciatis molestiae adipisci nostrum impedit labore. Officia quis voluptatem quo sunt illo iste. Aut autem eum laudantium ullam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(71, '2020-10-20 13:04:22', '2021-10-15 09:00:07', 2, 4, 1, NULL, 8.00, 68.00, NULL, 'paid', 'Maxime sit beatae eaque qui expedita hic quis. Qui doloremque et dolorem vel voluptas necessitatibus. Ipsa qui exercitationem saepe. Sapiente sit ut dolor aut molestias quibusdam error iure.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(72, '2021-06-12 05:20:24', '2021-10-15 09:00:07', 4, 4, 1, NULL, 7.00, 74.00, NULL, 'paid', 'Velit minima animi et eligendi. Atque quia incidunt autem iste expedita a. Debitis quia non et nisi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(73, '2021-03-04 11:39:16', '2021-10-15 09:00:07', 1, 5, 1, NULL, 10.00, 63.00, NULL, 'paid', 'Quam expedita sit blanditiis qui asperiores sed. Enim et aliquam fuga molestias doloribus laborum ratione id. Quibusdam accusantium dolor repellat illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(74, '2021-04-19 11:28:43', '2021-10-15 09:00:07', 5, 4, 3, NULL, 6.00, 49.00, NULL, 'paid', 'Suscipit optio illum excepturi. Ea temporibus sunt dolorem et repudiandae quaerat corporis. Architecto hic nam dolor numquam voluptatem accusamus sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(75, '2021-09-04 16:08:49', '2021-10-15 09:00:07', 2, 4, 2, NULL, 6.00, 40.00, NULL, 'paid', 'Impedit enim harum nesciunt repellendus autem quas libero. Quasi id laudantium officia hic. Impedit voluptas inventore est aut quibusdam expedita ipsa quis. Recusandae eos quas enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(76, '2020-10-23 17:34:51', '2021-10-15 09:00:07', 2, 5, 2, NULL, 10.00, 32.00, NULL, 'paid', 'Dolor doloremque sunt est nostrum nihil perferendis et incidunt. Vitae voluptatem similique non sit voluptatem et mollitia fugiat. Nisi amet nam et iste qui corporis et nostrum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(77, '2020-10-15 19:38:51', '2021-10-15 09:00:07', 5, 4, 2, NULL, 6.00, 85.00, NULL, 'paid', 'Ab ut tenetur consectetur eos ea. Amet commodi voluptatem vitae exercitationem. Ut dolorem qui odio molestiae fugiat. Dolores facere aut totam quis aut harum harum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(78, '2021-06-29 22:44:10', '2021-10-15 09:00:07', 4, 4, 2, NULL, 8.00, 93.00, NULL, 'paid', 'Non ex quia qui quo temporibus perferendis dicta. Nobis ut labore tempore molestias ullam eveniet incidunt. Voluptatem voluptatem quasi corrupti repellat est quia qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(79, '2021-08-15 11:26:58', '2021-10-15 09:00:07', 5, 4, 2, NULL, 9.00, 33.00, NULL, 'paid', 'Qui ut aliquam minima debitis consectetur. Consequatur delectus deleniti minima eum accusamus. Facilis consequatur et sit doloremque quibusdam rerum. Labore dolor recusandae et in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(80, '2020-10-18 16:30:42', '2021-10-15 09:00:07', 5, 5, 2, NULL, 6.00, 54.00, NULL, 'paid', 'Aut vitae quae officia libero. Aperiam totam amet vitae corporis. Deleniti ipsa sed reiciendis culpa nemo. Voluptatem et eligendi odit ipsa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(81, '2021-03-13 12:43:14', '2021-10-15 09:00:07', 3, 4, 2, NULL, 6.00, 96.00, NULL, 'paid', 'Est quo velit libero suscipit vero ea aut. Atque officiis nihil magni temporibus vero minus. Fugit ea qui et enim voluptatem consectetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(82, '2021-07-31 02:52:19', '2021-10-15 09:00:07', 2, 5, 2, NULL, 10.00, 78.00, NULL, 'paid', 'Ratione velit velit sit nihil. Et veritatis ratione sint quis sapiente delectus ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(83, '2021-09-17 18:08:46', '2021-10-15 09:00:07', 2, 4, 1, NULL, 8.00, 76.00, NULL, 'paid', 'Est explicabo et nam velit. Perferendis numquam nulla temporibus voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(84, '2021-09-14 05:41:16', '2021-10-15 09:00:07', 1, 4, 1, NULL, 6.00, 74.00, NULL, 'paid', 'Nisi enim quidem a omnis placeat vel. Ducimus in a ut sunt praesentium. Eos totam est incidunt perspiciatis. Velit veniam dolorum quis praesentium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(85, '2021-03-01 09:22:07', '2021-10-15 09:00:07', 1, 4, 1, NULL, 7.00, 81.00, NULL, 'paid', 'Rerum velit rem minus et fugit sit. Pariatur aliquam consequatur et non aliquid dolore aut. Ea nemo architecto saepe molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(86, '2021-06-09 07:46:18', '2021-10-15 09:00:07', 3, 5, 1, NULL, 5.00, 99.00, NULL, 'paid', 'Omnis beatae voluptas dolore molestiae velit. Dolorem quis et officia harum quia voluptatibus nulla ut. Impedit velit dolores quo ut dolorem minima. Enim velit doloribus aliquid repellat amet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(87, '2021-07-13 18:01:22', '2021-10-15 09:00:07', 4, 4, 3, NULL, 6.00, 69.00, NULL, 'paid', 'Eum tempora quae sit repudiandae aut dolor. Saepe quia non aliquam ducimus dolore dolores sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(88, '2020-10-27 21:27:46', '2021-10-15 09:00:07', 3, 4, 2, NULL, 10.00, 95.00, NULL, 'paid', 'Quis aut totam assumenda non eos quia recusandae. A et accusamus fugit numquam dignissimos doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(89, '2021-03-07 21:53:57', '2021-10-15 09:00:07', 5, 4, 2, NULL, 9.00, 65.00, NULL, 'paid', 'Provident et occaecati nam et quis sed. Ea quos dolor sed dolore velit quidem. Perferendis in sequi facere quidem dolorem. Sed expedita velit ratione aut odio ipsum autem pariatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(90, '2021-08-25 22:18:17', '2021-10-15 09:00:07', 4, 4, 3, NULL, 5.00, 50.00, NULL, 'paid', 'Vitae et non nihil error velit. Praesentium rem perspiciatis quas ut qui. Officiis fugit esse consectetur ea rem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(91, '2021-05-27 09:25:10', '2021-10-15 09:00:07', 4, 4, 1, NULL, 8.00, 86.00, NULL, 'paid', 'Omnis et voluptas aut ea. Voluptas quasi nesciunt facere atque quasi consequatur dolore suscipit. Laborum veritatis cumque et necessitatibus ut eum et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(92, '2021-07-09 05:28:04', '2021-10-15 09:00:07', 3, 4, 3, NULL, 9.00, 52.00, NULL, 'paid', 'Sed non ut quia voluptates ratione eos rerum. Incidunt unde voluptas in exercitationem exercitationem est. Corporis laboriosam et dolor consequatur unde vitae eos architecto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(93, '2021-07-28 11:42:57', '2021-10-15 09:00:07', 1, 5, 2, NULL, 5.00, 74.00, NULL, 'paid', 'In qui et ratione placeat. Dolorum accusantium nemo consequatur. Ut reprehenderit assumenda incidunt modi quasi iste. Aut veniam cupiditate itaque quia perferendis voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(94, '2021-02-10 20:38:55', '2021-10-15 09:00:07', 4, 4, 2, NULL, 7.00, 96.00, NULL, 'paid', 'Ut debitis excepturi itaque corporis amet a. Quia omnis ut deleniti cupiditate sapiente ut et. Ad aut accusamus expedita dolorem et vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(95, '2020-12-25 00:15:18', '2021-10-15 09:00:07', 4, 5, 2, NULL, 8.00, 91.00, NULL, 'paid', 'Facere rerum voluptatem in quas. Perferendis ullam sit quibusdam eos. Voluptatibus dolorem quod ut fuga voluptas. Dolorem blanditiis culpa in delectus exercitationem dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(96, '2021-04-01 15:51:31', '2021-10-15 09:00:07', 4, 4, 3, NULL, 9.00, 91.00, NULL, 'paid', 'Earum consequuntur eum quia. Ad eligendi soluta porro. Unde facilis ipsa aspernatur. Earum earum rem culpa eos amet facilis laboriosam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(97, '2021-07-15 01:19:12', '2021-10-15 09:00:07', 4, 5, 2, NULL, 5.00, 61.00, NULL, 'paid', 'Et omnis quia itaque tenetur ipsam dolores nemo. Soluta illo dolor inventore repellendus. Voluptas quidem at animi eum perferendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(98, '2021-10-13 03:14:22', '2021-10-15 09:00:07', 3, 5, 1, NULL, 9.00, 87.00, NULL, 'paid', 'Sit in explicabo aut quasi itaque repellendus aut dolores. Quia placeat atque sed eos a. Consequatur molestiae unde in expedita eveniet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(99, '2020-10-31 13:45:45', '2021-10-15 09:00:07', 3, 5, 2, NULL, 5.00, 93.00, NULL, 'paid', 'Doloribus in nihil quisquam tempore. Vel rem eos veniam dicta fugiat illum beatae neque. Et officiis aspernatur nemo reprehenderit ab provident eveniet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(100, '2021-06-22 07:09:37', '2021-10-15 09:00:07', 2, 4, 1, NULL, 7.00, 31.00, NULL, 'paid', 'Quis nulla laborum temporibus est est repudiandae. Quod voluptatem est et maxime aut expedita voluptate. Molestiae iusto quia quo ducimus blanditiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(101, '2021-07-03 22:00:41', '2021-10-15 09:00:07', 2, 5, 3, NULL, 9.00, 50.00, NULL, 'paid', 'Autem qui enim rerum harum natus sit odit. Ut sed voluptate quidem voluptatem ea quas. Repellat esse laborum ab tenetur aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(102, '2021-07-04 17:10:18', '2021-10-15 09:00:07', 3, 5, 2, NULL, 7.00, 72.00, NULL, 'paid', 'Voluptatem et eaque commodi quia mollitia sequi ut sunt. Hic voluptatum maiores fugiat quis voluptas quo tempora. Est est est sint iure recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(103, '2021-05-22 17:31:45', '2021-10-15 09:00:07', 4, 5, 1, NULL, 6.00, 40.00, NULL, 'paid', 'Rem perspiciatis officiis maxime et enim beatae tempore. Sunt temporibus repudiandae dicta aut quia non aut. Et rerum perspiciatis enim. Quidem tempora saepe qui recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(104, '2021-01-13 09:14:36', '2021-10-15 09:00:07', 2, 4, 2, NULL, 5.00, 99.00, NULL, 'paid', 'Adipisci aut quis quibusdam reiciendis deleniti animi. Voluptate aut aut possimus. Expedita quis sed voluptatem aliquid nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(105, '2021-05-27 16:22:38', '2021-10-15 09:00:07', 4, 4, 3, NULL, 7.00, 39.00, NULL, 'paid', 'Voluptatem corrupti modi quo quae. Molestiae et earum eos vel tempora ut. Debitis cupiditate provident id corrupti dolore temporibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(106, '2021-04-11 04:22:57', '2021-10-15 09:00:07', 3, 5, 2, NULL, 10.00, 66.00, NULL, 'paid', 'Reiciendis qui in autem quae unde numquam quas. Voluptas rerum accusantium fugiat sit est quaerat. Eveniet animi qui esse laborum. Omnis quam totam ut assumenda. Aut quisquam ut impedit qui sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(107, '2020-10-25 15:20:29', '2021-10-15 09:00:07', 4, 5, 2, NULL, 8.00, 69.00, NULL, 'paid', 'Recusandae ipsam numquam beatae non perspiciatis non sit. Quasi eveniet numquam ea. Assumenda delectus magni nihil molestias accusantium ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(108, '2021-09-23 01:52:19', '2021-10-15 09:00:07', 2, 4, 3, NULL, 5.00, 59.00, NULL, 'paid', 'Officia non rem ut corporis distinctio et omnis. Nulla esse est et ea eum. Suscipit aut odio rerum sit ut. Sit cum sint in provident.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(109, '2021-03-25 05:44:50', '2021-10-15 09:00:07', 1, 4, 3, NULL, 10.00, 55.00, NULL, 'paid', 'Et non quas ut dolores. Vel repellendus facere quis quibusdam atque. Ad voluptas cumque enim aut minus. Iusto dolores voluptatum ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(110, '2021-09-01 01:20:07', '2021-10-15 09:00:07', 5, 4, 1, NULL, 9.00, 46.00, NULL, 'paid', 'Officiis dignissimos unde id error quam consequatur minima. Quia aliquam aliquid quasi et aut aut dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(111, '2020-11-22 19:05:15', '2021-10-15 09:00:07', 2, 5, 3, NULL, 5.00, 60.00, NULL, 'paid', 'Expedita nostrum facilis quod voluptas ad est excepturi praesentium. Doloribus impedit ex aut omnis quidem ut. Temporibus ut ut modi dolor. Aspernatur a ducimus laudantium velit accusantium eum ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(112, '2021-01-04 09:40:43', '2021-10-15 09:00:07', 1, 4, 1, NULL, 10.00, 82.00, NULL, 'paid', 'Labore amet at fugit voluptatem et ex explicabo. Fugit laborum omnis expedita in. Cum cupiditate vitae voluptates provident.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(113, '2020-10-19 18:27:40', '2021-10-15 09:00:07', 5, 4, 3, NULL, 10.00, 53.00, NULL, 'paid', 'Quo veritatis nam aut quis et hic ab magnam. Consectetur aperiam quibusdam ipsam. Quaerat mollitia est et est fugit nemo officiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(114, '2021-07-15 06:35:58', '2021-10-15 09:00:07', 3, 5, 3, NULL, 10.00, 64.00, NULL, 'paid', 'Natus libero et et quia assumenda. Sit inventore mollitia nobis libero culpa incidunt voluptatem nihil. Cupiditate maxime dolorem tenetur ut ullam similique.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(115, '2021-04-10 20:57:59', '2021-10-15 09:00:07', 5, 5, 2, NULL, 7.00, 35.00, NULL, 'paid', 'Explicabo velit qui enim. Ea unde distinctio eum voluptate. Voluptas nostrum nihil excepturi dignissimos laborum suscipit quidem distinctio. Alias modi soluta necessitatibus blanditiis et illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(116, '2021-03-26 01:12:07', '2021-10-15 09:00:07', 4, 4, 3, NULL, 9.00, 38.00, NULL, 'paid', 'Quaerat odio suscipit repellendus dicta. Sit blanditiis voluptatem voluptas harum ullam non odit. Reiciendis quidem possimus sit repellendus est quos. Sit est laborum ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(117, '2021-10-09 03:28:04', '2021-10-15 09:00:07', 3, 5, 1, NULL, 8.00, 82.00, NULL, 'paid', 'Deserunt architecto expedita voluptatum qui amet. Error iste quo cupiditate voluptatem repellat ut. Vero qui aut quia quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(118, '2021-05-06 18:55:34', '2021-10-15 09:00:07', 3, 4, 3, NULL, 5.00, 32.00, NULL, 'paid', 'Veritatis culpa unde sunt expedita. Voluptates provident ratione ipsum. Nobis et dolorem quis molestias velit nisi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(119, '2020-11-19 19:31:07', '2021-10-15 09:00:07', 1, 4, 2, NULL, 10.00, 89.00, NULL, 'paid', 'Soluta eum dignissimos vero delectus adipisci. Ea provident aut officia ut voluptatem voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(120, '2020-11-09 02:29:14', '2021-10-15 09:00:07', 1, 4, 2, NULL, 5.00, 91.00, NULL, 'paid', 'Et beatae eum molestias sit sit id autem. Dignissimos illum consequatur et accusantium expedita qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(121, '2021-02-28 05:57:09', '2021-10-15 09:00:07', 2, 4, 1, NULL, 10.00, 51.00, NULL, 'paid', 'Libero autem ea omnis assumenda enim illo. Ut quis voluptatem id neque quae deserunt sequi ad. Esse sunt amet odio. Quaerat aut delectus consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(122, '2021-06-27 10:10:56', '2021-10-15 09:00:07', 2, 4, 3, NULL, 9.00, 85.00, NULL, 'paid', 'Accusantium sapiente aliquid ut excepturi pariatur occaecati ut. Consequatur reprehenderit autem aut expedita voluptatem maxime aut laudantium. Ab et unde vel magni animi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(123, '2021-08-15 15:02:52', '2021-10-15 09:00:07', 3, 4, 2, NULL, 6.00, 70.00, NULL, 'paid', 'Laboriosam non debitis veritatis ut. Sunt libero suscipit quos sed. Quia nisi voluptatibus suscipit quis vel aperiam libero. Voluptas exercitationem in expedita.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(124, '2021-06-29 18:20:08', '2021-10-15 09:00:07', 5, 5, 3, NULL, 8.00, 100.00, NULL, 'paid', 'Eum ipsa aut animi aut labore a eligendi sunt. Voluptate qui quidem quasi ut in. Ipsum nostrum voluptates reprehenderit cum nam aspernatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(125, '2021-06-13 02:39:59', '2021-10-15 09:00:07', 1, 4, 2, NULL, 8.00, 45.00, NULL, 'paid', 'Sequi ipsa ullam laborum dignissimos asperiores ullam aut facilis. Dolores sunt necessitatibus omnis architecto possimus similique non. Ipsam vitae corrupti architecto aliquid ratione at rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(126, '2021-02-06 05:24:15', '2021-10-15 09:00:07', 4, 5, 1, NULL, 7.00, 33.00, NULL, 'paid', 'Quod nesciunt harum ea hic. Et magni officiis optio et ut possimus. Vitae numquam tempora et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(127, '2021-06-14 01:23:10', '2021-10-15 09:00:07', 3, 5, 2, NULL, 10.00, 48.00, NULL, 'paid', 'Aut aut voluptatem cupiditate magnam qui cum. Eos quo aut consequatur incidunt incidunt in exercitationem quos. Mollitia aut quia incidunt maiores magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(128, '2020-11-27 19:02:10', '2021-10-15 09:00:07', 1, 5, 3, NULL, 5.00, 57.00, NULL, 'paid', 'Saepe doloribus aspernatur dolore soluta dolore eius non qui. Reprehenderit impedit commodi iusto est nemo quae officiis tempora. Nihil ipsam omnis a fugit animi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(129, '2020-10-30 09:26:09', '2021-10-15 09:00:07', 3, 4, 2, NULL, 7.00, 91.00, NULL, 'paid', 'Itaque quo officiis ipsam perspiciatis quia consectetur sunt. Quod doloribus omnis et voluptas possimus cumque. Aut quia dolorem quis maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(130, '2020-11-20 18:57:39', '2021-10-15 09:00:07', 1, 4, 3, NULL, 7.00, 89.00, NULL, 'paid', 'Cum necessitatibus corrupti non. Aut dicta qui eum in ab explicabo et. Dolore ut exercitationem in id aut. Deleniti quia asperiores sapiente rerum eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(131, '2020-12-28 00:46:33', '2021-10-15 09:00:07', 1, 4, 3, NULL, 9.00, 82.00, NULL, 'paid', 'Et velit eius doloribus dignissimos reiciendis et sed. Nemo natus et consequatur nostrum ratione quas debitis. Est commodi non non. Et et in repellat temporibus. Tenetur magni omnis nobis voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(132, '2021-07-22 10:56:07', '2021-10-15 09:00:07', 3, 5, 2, NULL, 10.00, 74.00, NULL, 'paid', 'Qui ad voluptates voluptatem eos eos. Voluptas placeat mollitia et deleniti eum. Quibusdam rerum quas deleniti consequuntur corporis aut molestias libero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(133, '2021-05-26 15:48:12', '2021-10-15 09:00:07', 3, 4, 3, NULL, 10.00, 95.00, NULL, 'paid', 'Qui ut enim consequatur fugit culpa fuga vero et. Molestiae enim perferendis dolorem qui. Voluptatum sed et itaque non. Sunt et nulla maxime modi quod.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(134, '2020-10-16 09:48:55', '2021-10-15 09:00:07', 4, 4, 3, NULL, 9.00, 50.00, NULL, 'paid', 'Et ex eum ut aut fuga ipsa recusandae eos. Est debitis voluptates illo distinctio pariatur maiores omnis. Nostrum et ipsam quia quos est est. Nam omnis placeat laudantium sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(135, '2021-05-05 08:29:03', '2021-10-15 09:00:07', 2, 5, 2, NULL, 6.00, 59.00, NULL, 'paid', 'Fugit omnis officiis nulla. Doloribus tempore suscipit nisi culpa velit. Qui natus numquam optio. Eum qui distinctio ipsum distinctio. Non expedita odit et ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(136, '2021-07-19 05:46:47', '2021-10-15 09:00:07', 4, 4, 1, NULL, 10.00, 54.00, NULL, 'paid', 'Ut officia consequatur rerum aut harum. Aut veniam rem qui labore nisi animi. Debitis dolores neque nihil eos. Exercitationem enim ipsum expedita ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(137, '2021-09-14 21:05:37', '2021-10-15 09:00:07', 4, 5, 2, NULL, 6.00, 65.00, NULL, 'paid', 'Totam delectus impedit beatae soluta. Quasi minima rerum in fugit recusandae nisi. Facilis non omnis tenetur fuga incidunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(138, '2021-08-23 14:37:21', '2021-10-15 09:00:07', 1, 5, 3, NULL, 5.00, 55.00, NULL, 'paid', 'Qui repellendus est pariatur fuga nobis sed occaecati. Iste laboriosam ipsam in rerum nulla nemo. Reprehenderit dolore voluptas necessitatibus itaque enim tenetur eaque error.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(139, '2020-11-20 13:09:20', '2021-10-15 09:00:07', 3, 4, 2, NULL, 8.00, 51.00, NULL, 'paid', 'Aliquid rem quibusdam dolore mollitia ipsa aut. Blanditiis commodi fugit nulla eum ut. Sunt ut nobis illum voluptatibus velit culpa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(140, '2021-07-03 05:10:53', '2021-10-15 09:00:07', 5, 5, 1, NULL, 7.00, 91.00, NULL, 'paid', 'Est eligendi est molestiae nihil. Nulla aliquid non quibusdam quos est illo aliquid. Aut quis repellat voluptate blanditiis nihil debitis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(141, '2021-02-02 12:20:22', '2021-10-15 09:00:07', 4, 5, 3, NULL, 7.00, 71.00, NULL, 'paid', 'Dolorem id dolorem enim doloribus. Et dolorum veniam a enim quis. Sit totam autem dolorum voluptatem consequuntur doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(142, '2021-09-02 03:09:10', '2021-10-15 09:00:07', 5, 5, 1, NULL, 7.00, 88.00, NULL, 'paid', 'Adipisci soluta consequatur est natus. Vel laudantium libero eos. Adipisci magni rerum quidem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(143, '2020-11-02 02:31:54', '2021-10-15 09:00:07', 1, 5, 1, NULL, 10.00, 84.00, NULL, 'paid', 'Facilis quis minus perspiciatis ut qui. Velit et natus et voluptatem quo. Aspernatur modi corrupti qui quas ad ipsam. Eum corrupti blanditiis omnis doloremque voluptate dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`) VALUES
(144, '2021-05-30 21:22:30', '2021-10-15 09:00:07', 3, 5, 1, NULL, 8.00, 57.00, NULL, 'paid', 'Eum sit aut aut labore aut sapiente. Corrupti mollitia numquam at et. Eos velit voluptatum dolor quibusdam enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(145, '2021-06-10 06:28:41', '2021-10-15 09:00:07', 4, 4, 3, NULL, 7.00, 35.00, NULL, 'paid', 'Animi possimus quibusdam dolor id. Minus et sunt ratione expedita illum. Dolorem iure eveniet at cumque dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(146, '2021-03-27 13:12:20', '2021-10-15 09:00:07', 2, 4, 2, NULL, 8.00, 92.00, NULL, 'paid', 'Inventore soluta culpa suscipit omnis soluta. Cum quia dolores ipsum rem in quia iure. Sit sed aliquid illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(147, '2020-12-22 12:31:09', '2021-10-15 09:00:07', 1, 5, 2, NULL, 5.00, 42.00, NULL, 'paid', 'Deleniti quas architecto numquam deleniti atque in possimus. Repellendus velit veritatis eum. Error voluptatem voluptate alias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(148, '2021-09-29 07:34:24', '2021-10-15 09:00:07', 4, 5, 2, NULL, 6.00, 49.00, NULL, 'paid', 'Hic exercitationem et sunt voluptatem sit. Inventore aut omnis enim voluptatem ea tempore et. Distinctio eos voluptas laborum facere. Numquam quaerat sit corporis corrupti nesciunt totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(149, '2021-05-03 11:02:57', '2021-10-15 09:00:07', 3, 4, 1, NULL, 8.00, 43.00, NULL, 'paid', 'Temporibus numquam est et ullam officia. Sed dolor sunt dicta beatae tempore. Aliquam et nemo nihil repellendus. Eveniet qui debitis qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(150, '2021-10-07 09:11:47', '2021-10-15 09:00:07', 5, 5, 1, NULL, 5.00, 38.00, NULL, 'paid', 'Sapiente consequatur eum nisi ipsa. Accusantium eum eum vitae. Odit quis porro ut eos aut fugiat molestiae. Vero sed itaque rem perspiciatis vero ut voluptates.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(151, '2021-06-20 07:10:59', '2021-10-15 09:00:07', 3, 5, 1, NULL, 10.00, 35.00, NULL, 'paid', 'Nihil quam accusamus fuga placeat sunt impedit non. Voluptas dolor ad cupiditate. Neque pariatur eos aperiam velit qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(152, '2020-12-04 02:32:52', '2021-10-15 09:00:07', 4, 4, 3, NULL, 5.00, 46.00, NULL, 'paid', 'Similique velit quo doloremque quo consectetur ipsam nobis. Tempore ab ipsa aliquid impedit. Ut rem illo eos omnis unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(153, '2021-09-14 10:08:39', '2021-10-15 09:00:07', 3, 4, 2, NULL, 9.00, 50.00, NULL, 'paid', 'Ex veritatis consectetur illum aperiam. Ut doloribus beatae et sit recusandae. Provident voluptatum odio accusamus et cupiditate qui delectus. Consectetur quisquam vel nam excepturi blanditiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(154, '2021-10-01 07:29:24', '2021-10-15 09:00:07', 1, 4, 3, NULL, 6.00, 92.00, NULL, 'paid', 'Ipsa consectetur fugit in voluptas ducimus quia sint. Animi repellendus quis optio eveniet dolore voluptatem. Suscipit quisquam temporibus dolorum est dolores. Itaque amet quam sit enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(155, '2021-08-16 01:38:31', '2021-10-15 09:00:07', 5, 4, 3, NULL, 6.00, 93.00, NULL, 'paid', 'Aut eius voluptatem in inventore recusandae. Quibusdam quia sunt ut id expedita. Sed qui deleniti nihil quam. Sint molestiae veniam voluptatum esse. A eum cum non et earum qui ullam minima.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(156, '2020-11-12 07:48:10', '2021-10-15 09:00:07', 1, 4, 1, NULL, 7.00, 34.00, NULL, 'paid', 'Eligendi aut voluptatem et voluptatem. Fuga ducimus ut iste et aliquam delectus. Numquam aut illum laudantium praesentium itaque occaecati. Et ut ab a quasi aut aut quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(157, '2020-11-08 16:29:35', '2021-10-15 09:00:07', 5, 5, 1, NULL, 9.00, 76.00, NULL, 'paid', 'Est hic ut praesentium enim et vitae. Saepe iusto nisi veritatis quisquam consequatur rerum natus. Et sit consectetur labore id qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(158, '2021-09-29 15:07:32', '2021-10-15 09:00:07', 2, 4, 1, NULL, 10.00, 39.00, NULL, 'paid', 'Aperiam minus dolore consequatur porro illum quis deleniti. Fugit perspiciatis quia reiciendis pariatur atque. Soluta provident consectetur ea. Unde commodi labore voluptas voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(159, '2021-05-31 10:13:29', '2021-10-15 09:00:07', 1, 5, 3, NULL, 5.00, 89.00, NULL, 'paid', 'A esse cupiditate doloribus rem rem ut. Explicabo dolore nam voluptas. Dolorum quibusdam est amet modi. Maiores in quia inventore earum quaerat deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(160, '2020-11-14 16:01:37', '2021-10-15 09:00:07', 3, 4, 2, NULL, 5.00, 49.00, NULL, 'paid', 'Ut dolorum aspernatur enim sit accusantium qui quia. Voluptatibus sit sint quidem cumque non nesciunt ipsa. Harum molestiae magnam et dicta mollitia illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(161, '2021-08-13 18:52:14', '2021-10-15 09:00:07', 4, 5, 2, NULL, 7.00, 77.00, NULL, 'paid', 'Sed nulla quo aliquam sequi. Et sed nobis omnis voluptatem voluptas a nihil placeat. Animi labore nam vel adipisci cupiditate qui ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(162, '2020-10-18 18:53:27', '2021-10-15 09:00:07', 4, 5, 3, NULL, 8.00, 78.00, NULL, 'paid', 'Mollitia ut exercitationem exercitationem quia labore earum qui. Dolorem tempora asperiores sint natus earum aut exercitationem earum. Nesciunt cupiditate reiciendis alias veniam ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(163, '2021-04-23 14:54:23', '2021-10-15 09:00:07', 5, 5, 1, NULL, 6.00, 71.00, NULL, 'paid', 'Ad enim aut at deserunt. Consequatur aliquid placeat provident vel aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(164, '2021-05-13 18:58:19', '2021-10-15 09:00:07', 5, 5, 3, NULL, 6.00, 89.00, NULL, 'paid', 'Voluptatem voluptas tempora pariatur est. Optio atque explicabo voluptatem voluptatem. Sint tenetur deleniti sapiente et. Facilis in delectus sint est. Quisquam minus nihil mollitia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(165, '2021-03-28 19:59:54', '2021-10-15 09:00:07', 3, 5, 3, NULL, 10.00, 56.00, NULL, 'paid', 'Eum error assumenda quo est placeat. Ea cumque cumque debitis. Ea qui eum esse et ut ut ab voluptatum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(166, '2020-10-23 23:15:13', '2021-10-15 09:00:07', 2, 5, 2, NULL, 6.00, 94.00, NULL, 'paid', 'Vitae similique animi laborum et eos. Est consectetur repellat voluptatem sed incidunt quae. Aut iure aut possimus veniam adipisci id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(167, '2021-03-07 17:08:15', '2021-10-15 09:00:07', 4, 4, 1, NULL, 8.00, 53.00, NULL, 'paid', 'Magni corporis consequuntur et voluptas. In rerum tenetur error laboriosam esse. Dicta a beatae consequatur quas iure quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(168, '2021-07-24 00:18:33', '2021-10-15 09:00:07', 2, 5, 3, NULL, 7.00, 62.00, NULL, 'paid', 'Maxime qui qui quis dolorem nostrum nisi. Dolorem ut iure nobis architecto voluptas. Ut autem consequatur voluptatum consectetur vero id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(169, '2021-01-29 08:23:18', '2021-10-15 09:00:07', 3, 4, 1, NULL, 7.00, 98.00, NULL, 'paid', 'Accusamus dicta repellat ut libero quas velit. Ad odit ipsum consequatur ut ratione blanditiis. Quibusdam placeat laboriosam expedita odit vitae. Cum est neque ad totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(170, '2021-04-19 12:49:56', '2021-10-15 09:00:07', 3, 5, 1, NULL, 9.00, 51.00, NULL, 'paid', 'Modi qui culpa sint nemo eum facere. Eos cum consequatur est autem illo. Quisquam non dicta voluptate in animi alias accusamus. Assumenda ratione perspiciatis voluptatum laborum cum tempore eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(171, '2021-07-10 02:01:21', '2021-10-15 09:00:07', 3, 4, 3, NULL, 6.00, 98.00, NULL, 'paid', 'Est explicabo commodi amet quia. Ut perspiciatis id voluptas exercitationem tenetur numquam quos magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(172, '2021-08-23 16:15:46', '2021-10-15 09:00:07', 3, 5, 1, NULL, 7.00, 68.00, NULL, 'paid', 'Culpa sunt non voluptatem debitis. Qui facere maxime assumenda. Ut tempora et et. Sed ab quis deleniti et saepe qui. Natus facere tempora quia explicabo aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(173, '2021-03-13 21:48:52', '2021-10-15 09:00:07', 1, 4, 1, NULL, 8.00, 44.00, NULL, 'paid', 'Aut non ad quia. Laboriosam ipsam facere numquam vel porro exercitationem. Iste doloribus perspiciatis sequi omnis facilis enim facilis. Est incidunt sapiente sequi nostrum sequi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(174, '2020-12-04 21:45:47', '2021-10-15 09:00:07', 2, 5, 3, NULL, 8.00, 47.00, NULL, 'paid', 'Iure tempora ut voluptas vel dolorum. Quas qui cum neque voluptatum rerum illo excepturi facilis. Eaque est est ut. Et molestiae quas voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(175, '2020-10-18 07:11:04', '2021-10-15 09:00:07', 3, 5, 3, NULL, 9.00, 58.00, NULL, 'paid', 'Alias iure a atque sint beatae incidunt. Distinctio dignissimos dolor ut libero magnam. Accusamus voluptas sit saepe non excepturi consequatur. Autem aliquam eos excepturi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(176, '2020-10-23 14:36:12', '2021-10-15 09:00:07', 4, 5, 3, NULL, 10.00, 77.00, NULL, 'paid', 'Aut doloremque deserunt vitae quam ea delectus. Quo cum sint modi natus. Ipsa quo dicta consequatur neque. Officia vel minima exercitationem neque aut sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(177, '2020-11-16 20:29:43', '2021-10-15 09:00:07', 1, 4, 1, NULL, 6.00, 41.00, NULL, 'paid', 'Optio aut quod voluptatem nesciunt. Aut quia optio earum ut soluta aut. Quia est aspernatur occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(178, '2020-10-24 22:31:32', '2021-10-15 09:00:07', 3, 5, 1, NULL, 9.00, 62.00, NULL, 'paid', 'A sequi iure et aut dolor deleniti et quia. Vel pariatur omnis aut corporis nobis ipsa. Qui praesentium dolorem dolorum molestiae accusamus et aspernatur. Minus itaque sequi eum perferendis id sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(179, '2021-05-02 00:39:11', '2021-10-15 09:00:07', 3, 4, 2, NULL, 10.00, 90.00, NULL, 'paid', 'Possimus in itaque necessitatibus illum in sed rerum. Aut consequatur ea officia sit. Eveniet error qui ipsum dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(180, '2021-06-09 13:47:48', '2021-10-15 09:00:07', 1, 5, 1, NULL, 10.00, 61.00, NULL, 'paid', 'Eveniet eum quam rerum ipsa commodi. Nam ipsum voluptatibus debitis quia voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(181, '2020-12-12 20:01:01', '2021-10-15 09:00:07', 1, 5, 1, NULL, 8.00, 37.00, NULL, 'paid', 'Voluptatem officiis vel autem consequatur perferendis recusandae blanditiis. Sint praesentium earum et aut voluptatem et et. Et sint eos veritatis minima voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(182, '2021-01-25 11:44:06', '2021-10-15 09:00:07', 4, 4, 2, NULL, 8.00, 41.00, NULL, 'paid', 'Non molestiae eveniet officiis. Quas repudiandae fugiat ea nihil itaque in recusandae. Quam consequatur perferendis mollitia rerum itaque nihil nihil. Reiciendis aut et facere occaecati sed qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(183, '2021-06-25 02:12:45', '2021-10-15 09:00:07', 1, 4, 3, NULL, 7.00, 57.00, NULL, 'paid', 'Voluptatibus labore et doloremque harum minus et. Dolorum nisi est est omnis sint fugit et. Reprehenderit non dolor non non ex. Omnis praesentium excepturi alias rerum repudiandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(184, '2021-04-28 23:43:10', '2021-10-15 09:00:07', 1, 4, 1, NULL, 10.00, 67.00, NULL, 'paid', 'Sit labore atque facere exercitationem labore quisquam. Quisquam doloribus non totam. Ipsum aut facilis eaque odit similique. Iste dolores rerum id et omnis asperiores officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(185, '2021-03-30 07:23:39', '2021-10-15 09:00:07', 2, 5, 3, NULL, 6.00, 62.00, NULL, 'paid', 'Enim dignissimos officia eos dolor. Et omnis omnis eius aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(186, '2021-10-11 16:32:30', '2021-10-15 09:00:07', 3, 5, 1, NULL, 7.00, 59.00, NULL, 'paid', 'Officiis rerum aut delectus voluptatum. Qui sunt fugiat qui praesentium. Culpa modi nihil hic porro. Qui laborum laboriosam at voluptate doloribus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(187, '2021-05-25 16:04:49', '2021-10-15 09:00:07', 1, 4, 3, NULL, 10.00, 98.00, NULL, 'paid', 'Amet molestias repudiandae blanditiis sunt. Impedit doloribus sint quaerat. Minima eaque ratione qui. Et tempora porro consequatur eveniet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(188, '2020-12-11 13:45:51', '2021-10-15 09:00:07', 5, 5, 2, NULL, 7.00, 98.00, NULL, 'paid', 'Fugit dolor sint consequatur sequi numquam et. Consequatur sit non aut facere quasi magni corporis. Eos minus blanditiis rerum blanditiis iste molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(189, '2021-10-06 17:11:48', '2021-10-15 09:00:07', 2, 5, 2, NULL, 5.00, 59.00, NULL, 'paid', 'Assumenda hic fuga voluptatem aliquam non sit. Et voluptatem numquam magni maxime velit sed. Quia eaque quidem doloribus sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(190, '2021-09-04 19:34:44', '2021-10-15 09:00:07', 4, 5, 2, NULL, 7.00, 42.00, NULL, 'paid', 'Deleniti rem perspiciatis numquam iusto quam. Quo dolores occaecati molestiae sapiente totam autem. Eaque dolor ab aut. Nesciunt ullam porro molestiae voluptatum labore qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(191, '2021-10-06 10:38:15', '2021-10-15 09:00:07', 5, 5, 3, NULL, 10.00, 40.00, NULL, 'paid', 'Et aut aut voluptatum animi. Ut temporibus et et et quia quibusdam. Dolores quo vitae autem itaque. Ea id voluptatibus et cumque ut a tempora assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(192, '2021-04-15 23:48:52', '2021-10-15 09:00:07', 5, 4, 3, NULL, 5.00, 63.00, NULL, 'paid', 'Aut officiis officiis natus voluptatum impedit ut maxime minima. Illo dicta esse minus consectetur libero qui culpa. Laudantium dignissimos totam dolorem eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(193, '2021-07-11 11:31:21', '2021-10-15 09:00:07', 1, 4, 1, NULL, 5.00, 36.00, NULL, 'paid', 'Quae consequatur est consequatur consequuntur quia. Ab non occaecati error delectus esse inventore. Et ipsam praesentium omnis cupiditate natus. Cupiditate veniam dicta voluptas provident.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(194, '2020-12-12 06:49:27', '2021-10-15 09:00:07', 1, 5, 1, NULL, 5.00, 87.00, NULL, 'paid', 'Et culpa inventore fuga voluptatum. Voluptatem unde excepturi provident et. Qui omnis error officiis similique voluptatem sed. Harum quam labore blanditiis quae vitae qui quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(195, '2020-12-21 14:27:22', '2021-10-15 09:00:07', 1, 4, 1, NULL, 5.00, 82.00, NULL, 'paid', 'Aut id aut saepe error tempore. Accusamus ipsam vel pariatur repudiandae. Sed assumenda pariatur exercitationem temporibus. Officia qui magni deleniti modi sed et dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(196, '2021-07-22 20:57:16', '2021-10-15 09:00:07', 4, 4, 3, NULL, 6.00, 54.00, NULL, 'paid', 'Quis sed ut libero veniam tempore iusto dicta commodi. Cum quaerat omnis perferendis ducimus exercitationem est eum. Aut nihil ea distinctio magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(197, '2021-04-11 12:13:10', '2021-10-15 09:00:07', 5, 5, 3, NULL, 7.00, 89.00, NULL, 'paid', 'Dolorem omnis quisquam accusantium. Blanditiis iure beatae dolor dolores aut veritatis. Sunt et eligendi quo vero rerum mollitia. Totam maiores et tempora ipsum id ut alias non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(198, '2020-10-24 07:00:24', '2021-10-15 09:00:07', 3, 4, 2, NULL, 7.00, 83.00, NULL, 'paid', 'Omnis cumque cum vel aut sit. Quos qui accusantium sunt asperiores non autem reiciendis. Voluptates reprehenderit fugiat voluptatem est. Necessitatibus dolores quia nihil labore dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(199, '2021-01-09 14:41:58', '2021-10-15 09:00:07', 3, 4, 2, NULL, 9.00, 95.00, NULL, 'paid', 'Sapiente et praesentium eaque. Omnis doloribus sapiente sunt veniam quidem ut. Explicabo natus totam officia iusto aut. Incidunt amet quaerat fuga nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(200, '2021-08-31 09:22:33', '2021-10-15 09:00:07', 4, 5, 1, NULL, 7.00, 45.00, NULL, 'paid', 'Impedit voluptatibus corrupti soluta. Dolores quis et minima et fuga. Vitae facilis voluptatem vel totam officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(201, '2020-12-25 08:10:30', '2021-10-15 09:00:07', 5, 4, 1, NULL, 9.00, 41.00, NULL, 'paid', 'Optio ut aspernatur cumque quisquam eos culpa corrupti reprehenderit. Voluptatibus quia quae atque tempora. Qui voluptatem excepturi ipsam recusandae facilis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(202, '2021-03-30 13:31:08', '2021-10-15 09:00:07', 5, 4, 1, NULL, 10.00, 96.00, NULL, 'paid', 'Minima rerum itaque dolorem possimus. Consequatur harum reprehenderit commodi aut. Esse hic sit architecto magnam. Reprehenderit temporibus aut voluptas tenetur et facere fugit est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(203, '2021-09-09 10:11:04', '2021-10-15 09:00:07', 2, 5, 3, NULL, 10.00, 33.00, NULL, 'paid', 'Minima ut cumque similique illum cupiditate voluptatum. Rem vel et sint odio doloribus. Fugit quas ea dolore ut eos omnis labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(204, '2020-12-23 15:15:51', '2021-10-15 09:00:07', 5, 4, 3, NULL, 5.00, 47.00, NULL, 'paid', 'Sunt nam harum illum. Velit enim tenetur blanditiis id quam quod reprehenderit. Sint voluptas voluptatem iste qui animi. Odit ipsum repellendus delectus unde vitae dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(205, '2021-05-24 17:04:04', '2021-10-15 09:00:07', 1, 5, 1, NULL, 6.00, 58.00, NULL, 'paid', 'Maxime suscipit ducimus ipsam accusantium magni amet. Itaque voluptatem et maxime et. Dicta porro tempora velit aperiam sequi. Unde recusandae eos fugiat. Quod expedita consequatur cupiditate sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(206, '2021-03-21 02:23:24', '2021-10-15 09:00:07', 2, 5, 2, NULL, 7.00, 75.00, NULL, 'paid', 'In iusto eveniet eos neque quibusdam. Rem vitae mollitia laborum qui. Qui exercitationem eius recusandae atque veritatis laboriosam ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(207, '2021-03-02 13:41:59', '2021-10-15 09:00:07', 5, 4, 2, NULL, 7.00, 63.00, NULL, 'paid', 'Ut reiciendis eligendi voluptatem reiciendis. Consequuntur rerum eaque recusandae accusamus culpa nobis. Vel laborum atque et pariatur eveniet culpa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(208, '2020-11-16 16:26:14', '2021-10-15 09:00:07', 2, 5, 2, NULL, 9.00, 41.00, NULL, 'paid', 'Iste debitis officia omnis illum fuga atque molestiae. Qui consequatur necessitatibus dignissimos provident iusto. Nihil laboriosam quos officiis explicabo quidem eos amet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(209, '2021-05-21 06:53:09', '2021-10-15 09:00:07', 3, 4, 1, NULL, 6.00, 63.00, NULL, 'paid', 'Porro enim rem alias illo hic ipsum harum. Qui suscipit alias sequi quidem aut porro. Aut minima aliquam sit et labore nobis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(210, '2021-01-29 04:18:22', '2021-10-15 09:00:07', 2, 5, 2, NULL, 8.00, 33.00, NULL, 'paid', 'Error rerum dolores cupiditate inventore est ratione ut. Consequatur praesentium et totam eaque ut et consequatur. Et molestiae et non fugiat quisquam in labore est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(211, '2021-06-20 17:38:00', '2021-10-15 09:00:07', 2, 4, 3, NULL, 9.00, 38.00, NULL, 'paid', 'Nobis sunt ipsam aut velit. Vel ipsum aliquid mollitia et aut voluptas et. Quos et velit voluptatibus libero dolores. Cupiditate quo voluptas temporibus officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(212, '2021-09-01 11:19:10', '2021-10-15 09:00:07', 1, 5, 1, NULL, 7.00, 49.00, NULL, 'paid', 'Nostrum debitis a sequi. Id enim veniam cumque cum cupiditate. Quo quibusdam facere quo voluptatem nostrum nesciunt dolorem. Id quibusdam libero odio sapiente et facere aliquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(213, '2020-11-14 07:31:59', '2021-10-15 09:00:07', 1, 4, 2, NULL, 5.00, 43.00, NULL, 'paid', 'Quo odit placeat numquam magnam rerum distinctio quos velit. Quaerat eveniet delectus architecto qui aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(214, '2021-05-30 11:48:53', '2021-10-15 09:00:07', 1, 4, 3, NULL, 8.00, 96.00, NULL, 'paid', 'Rerum dignissimos consequatur non sed itaque dolore. Nemo voluptas odit quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(215, '2021-05-13 09:10:56', '2021-10-15 09:00:07', 1, 4, 1, NULL, 9.00, 59.00, NULL, 'paid', 'Vitae laborum consequatur tempore libero eum et. Unde expedita sint praesentium aut quas accusantium. Dolores voluptas cum officia neque vel natus ipsum sunt. Nihil qui consequatur aut ut aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(216, '2021-05-28 02:37:37', '2021-10-15 09:00:07', 3, 5, 3, NULL, 7.00, 55.00, NULL, 'paid', 'Debitis autem at vitae. Quo id sint at similique vitae similique architecto autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(217, '2020-11-16 13:21:18', '2021-10-15 09:00:07', 1, 4, 2, NULL, 8.00, 82.00, NULL, 'paid', 'Recusandae amet in autem. Non id est suscipit voluptatem et eos eos. Numquam aspernatur in fugiat ipsam autem. Quidem dolores sed nulla tempora totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(218, '2021-01-27 03:35:30', '2021-10-15 09:00:07', 2, 5, 3, NULL, 7.00, 95.00, NULL, 'paid', 'Aut omnis sunt est repellendus eos repudiandae et. Quae eligendi blanditiis ipsam incidunt. Autem quo quia et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(219, '2021-09-29 20:55:21', '2021-10-15 09:00:07', 5, 4, 2, NULL, 6.00, 56.00, NULL, 'paid', 'In beatae rerum molestias quo. Omnis dicta iusto repudiandae. Architecto illo rerum quos incidunt. Itaque exercitationem numquam et soluta praesentium quaerat mollitia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(220, '2021-07-01 20:52:07', '2021-10-15 09:00:07', 1, 4, 2, NULL, 8.00, 34.00, NULL, 'paid', 'Velit consequuntur ratione vero a sapiente. Qui et suscipit ipsum non illum. Sequi illo sequi est harum est vel sequi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(221, '2021-03-20 16:02:18', '2021-10-15 09:00:07', 2, 4, 1, NULL, 6.00, 76.00, NULL, 'paid', 'Occaecati libero maxime voluptatum similique ipsam consectetur. Nostrum et et dolorem sit. Non officia tempore quibusdam provident aut dignissimos quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(222, '2020-10-16 23:08:51', '2021-10-15 09:00:07', 3, 5, 1, NULL, 8.00, 53.00, NULL, 'paid', 'Autem tempore porro sed. Eos expedita nostrum qui aliquam quasi. Nostrum molestias optio laborum doloribus vel ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(223, '2021-05-17 03:49:26', '2021-10-15 09:00:07', 5, 5, 2, NULL, 7.00, 68.00, NULL, 'paid', 'Illo alias ducimus tenetur. Exercitationem ullam mollitia quaerat animi rerum. Perspiciatis quos quia qui est iste.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(224, '2021-09-12 12:47:07', '2021-10-15 09:00:07', 2, 5, 3, NULL, 7.00, 42.00, NULL, 'paid', 'Deleniti maxime iure dolores molestiae. Omnis nulla non eveniet ullam reprehenderit hic. Aut eligendi eligendi ex velit aspernatur est ut dolorem. Molestiae amet et exercitationem vel ipsum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(225, '2021-08-06 03:37:43', '2021-10-15 09:00:07', 5, 5, 2, NULL, 5.00, 50.00, NULL, 'paid', 'Ex ullam laboriosam dolor voluptatem nesciunt cupiditate nulla. Enim et atque quam autem vel. Ut occaecati consequatur aliquid quo tenetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(226, '2021-06-04 10:44:08', '2021-10-15 09:00:07', 2, 5, 3, NULL, 9.00, 95.00, NULL, 'paid', 'Est distinctio eos praesentium sint nostrum. Distinctio repellendus vero aspernatur a qui. Corrupti voluptatem enim repudiandae sed velit. Atque deserunt nesciunt nisi non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(227, '2021-02-01 09:31:18', '2021-10-15 09:00:07', 1, 4, 1, NULL, 6.00, 92.00, NULL, 'paid', 'Odio sed aut maxime rem quia qui. Blanditiis qui voluptates nostrum dicta. Cum sed quibusdam et enim laborum odit qui. Exercitationem sed rerum et et laboriosam vitae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(228, '2021-10-03 06:25:08', '2021-10-15 09:00:07', 2, 5, 3, NULL, 10.00, 87.00, NULL, 'paid', 'Est laborum quas impedit. Nisi eos error delectus quis. Incidunt inventore nemo iure aut quidem. Commodi non eum excepturi rerum consectetur necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(229, '2021-08-21 21:50:19', '2021-10-15 09:00:07', 1, 5, 1, NULL, 9.00, 39.00, NULL, 'paid', 'Culpa officiis quos placeat ex et. Et qui et aliquam natus. Laborum omnis nostrum molestiae temporibus dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(230, '2020-12-27 04:11:35', '2021-10-15 09:00:07', 1, 4, 1, NULL, 10.00, 50.00, NULL, 'paid', 'Sed maiores delectus blanditiis occaecati dolore veritatis. Eveniet voluptatum eaque autem qui labore nobis. Id sed qui explicabo. Repellendus ullam quibusdam maiores labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(231, '2020-11-24 01:41:18', '2021-10-15 09:00:07', 1, 5, 3, NULL, 10.00, 59.00, NULL, 'paid', 'Sed vitae eligendi consequatur possimus architecto dolores. Aperiam sit possimus ipsam iste. Nihil impedit consequuntur consequatur et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(232, '2021-01-04 04:22:47', '2021-10-15 09:00:07', 3, 4, 3, NULL, 5.00, 96.00, NULL, 'paid', 'Beatae nostrum aperiam in consequatur asperiores et et. Possimus cupiditate vitae dolor sapiente dolores. Sed inventore ea quam fugit ab vero enim quo. Itaque deserunt ut ipsa ut assumenda quos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(233, '2021-07-11 02:38:38', '2021-10-15 09:00:07', 2, 5, 3, NULL, 8.00, 81.00, NULL, 'paid', 'Perferendis nulla laboriosam quia enim et maiores et. Sunt labore sint alias ratione. Maiores nemo accusamus quidem. Dicta velit similique natus neque debitis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(234, '2021-09-16 23:06:34', '2021-10-15 09:00:07', 3, 5, 1, NULL, 9.00, 66.00, NULL, 'paid', 'Omnis ut eum maxime fuga magni. Reiciendis sit exercitationem quos atque temporibus omnis omnis. Rerum incidunt a ea qui consequatur laudantium eaque incidunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(235, '2020-11-08 11:27:21', '2021-10-15 09:00:07', 3, 4, 3, NULL, 6.00, 59.00, NULL, 'paid', 'Ut molestias magnam provident in recusandae provident fuga. Exercitationem dolorum vel tempora similique sit. Temporibus et consequatur et libero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(236, '2020-11-26 19:09:12', '2021-10-15 09:00:07', 2, 4, 1, NULL, 6.00, 31.00, NULL, 'paid', 'Adipisci dolorum quis minima ut ex velit. Vero dignissimos fuga omnis id est id. Natus impedit ducimus qui consequuntur et aliquid officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(237, '2021-03-18 06:44:13', '2021-10-15 09:00:07', 3, 5, 1, NULL, 7.00, 95.00, NULL, 'paid', 'Accusamus tenetur est ipsam accusamus error. Libero occaecati illo unde id voluptatem quisquam. Consectetur reprehenderit quia facere quisquam modi quos. Soluta qui quo dolor dolore quibusdam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(238, '2020-11-17 22:52:19', '2021-10-15 09:00:07', 5, 4, 1, NULL, 9.00, 60.00, NULL, 'paid', 'Velit iure consequatur quidem laborum. Voluptas exercitationem qui dolores deserunt error accusantium. Eaque quia eum laboriosam tempora. Incidunt molestias unde vitae dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(239, '2021-01-15 07:55:06', '2021-10-15 09:00:07', 2, 4, 2, NULL, 5.00, 49.00, NULL, 'paid', 'Eum quasi aut consequatur ut totam sed id maxime. Eos est velit ipsam nam aut fugiat. Dignissimos autem consectetur quas corporis iste.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(240, '2020-12-09 09:03:39', '2021-10-15 09:00:07', 3, 5, 1, NULL, 10.00, 100.00, NULL, 'paid', 'Est quis et et blanditiis aut. Assumenda dignissimos ratione magni odio necessitatibus et deserunt. Sed in quam eligendi voluptas perspiciatis. Aut earum quisquam ipsam nemo temporibus repellendus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(241, '2021-06-28 17:18:43', '2021-10-15 09:00:07', 2, 5, 3, NULL, 6.00, 80.00, NULL, 'paid', 'Eos enim odio sequi vel animi. Et molestiae ut reprehenderit tempore molestias nobis saepe. Necessitatibus ut expedita provident impedit. Aut quia iusto dolores aperiam est veniam aspernatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(242, '2021-04-24 22:42:41', '2021-10-15 09:00:07', 1, 5, 2, NULL, 9.00, 46.00, NULL, 'paid', 'Optio quibusdam dolorem ut et consequuntur dolorem omnis dignissimos. Quam quasi assumenda ut ut placeat officiis et. Exercitationem vel a perferendis doloremque dolor sed ut reprehenderit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(243, '2021-04-28 11:46:22', '2021-10-15 09:00:07', 2, 4, 1, NULL, 8.00, 64.00, NULL, 'paid', 'Corrupti qui architecto perspiciatis facere rerum quidem mollitia eos. Non fugiat minima impedit assumenda illum repellat quod.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(244, '2021-10-14 23:17:24', '2021-10-15 09:00:07', 1, 4, 2, NULL, 7.00, 79.00, NULL, 'paid', 'Quia magnam voluptate quidem. Alias est tempora excepturi quia molestias. Maxime quia fugiat officiis eos suscipit aliquam ratione et. Deleniti debitis est error.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(245, '2021-09-12 19:31:34', '2021-10-15 09:00:07', 3, 4, 2, NULL, 10.00, 54.00, NULL, 'paid', 'Dignissimos in vel eum. Neque quia assumenda quaerat vel sapiente inventore in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(246, '2021-02-26 01:13:39', '2021-10-15 09:00:07', 1, 5, 2, NULL, 6.00, 50.00, NULL, 'paid', 'Quidem voluptas asperiores et mollitia at eos. In aut recusandae voluptatibus porro dolorem dolor. Nulla id id tenetur molestiae amet dolorem dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(247, '2021-04-10 18:20:40', '2021-10-15 09:00:07', 4, 5, 1, NULL, 6.00, 81.00, NULL, 'paid', 'Itaque aut facere soluta et debitis sunt in laudantium. Asperiores rerum aperiam sunt tempora repellat ut est. Est vel eos maxime porro. Quia dignissimos iusto aut dolore qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(248, '2021-08-21 04:03:08', '2021-10-15 09:00:07', 1, 5, 2, NULL, 6.00, 96.00, NULL, 'paid', 'Aut consequatur reprehenderit similique saepe illo eum ipsa molestiae. Facere a magni quasi aut. Exercitationem in et et repellendus iure. Ducimus et ullam consequuntur amet et velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(249, '2021-06-25 13:18:50', '2021-10-15 09:00:07', 1, 5, 2, NULL, 5.00, 93.00, NULL, 'paid', 'Ex omnis doloremque non velit. Voluptas qui officiis in totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(250, '2021-07-12 03:04:12', '2021-10-15 09:00:07', 3, 5, 1, NULL, 9.00, 36.00, NULL, 'paid', 'Est et id qui deleniti. Aut qui perferendis quas at voluptas. Dicta odio earum perferendis quasi ducimus accusamus. Quis odit inventore et rerum aspernatur quo porro.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(251, '2021-05-31 16:50:27', '2021-10-15 09:00:07', 4, 5, 2, NULL, 10.00, 38.00, NULL, 'paid', 'Fugit rerum voluptatem consequatur omnis. Est corrupti assumenda molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(252, '2020-12-22 04:52:44', '2021-10-15 09:00:07', 3, 4, 2, NULL, 5.00, 53.00, NULL, 'paid', 'Nam qui quos omnis est illum debitis voluptatum. Dolorem rerum tenetur repellat fugiat deserunt eos consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(253, '2021-10-10 12:55:22', '2021-10-15 09:00:07', 4, 5, 2, NULL, 9.00, 36.00, NULL, 'paid', 'Laudantium provident sed qui soluta ut excepturi. Ducimus neque debitis ipsam itaque unde. Accusantium porro similique deserunt modi qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(254, '2021-02-10 10:21:16', '2021-10-15 09:00:07', 1, 4, 3, NULL, 7.00, 81.00, NULL, 'paid', 'Minima et libero illo eaque minima. Tenetur nulla quidem voluptate voluptatem accusamus adipisci. Tenetur sint nemo atque in eaque saepe deserunt magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(255, '2021-03-17 11:02:08', '2021-10-15 09:00:07', 4, 5, 2, NULL, 6.00, 96.00, NULL, 'paid', 'Sed accusamus totam blanditiis dolore aspernatur quo ea. Aperiam tempora qui voluptas saepe. Sit est aspernatur id sed nesciunt. Dolorem provident debitis debitis perferendis fugit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(256, '2021-09-13 22:18:38', '2021-10-15 09:00:07', 1, 4, 3, NULL, 8.00, 43.00, NULL, 'paid', 'Sed quidem laborum sunt beatae voluptate maxime. Eius consequatur accusamus exercitationem est asperiores nam. Tempore facere sunt nostrum iste.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(257, '2021-03-06 04:54:06', '2021-10-15 09:00:07', 1, 5, 3, NULL, 6.00, 55.00, NULL, 'paid', 'Vel quia et iure velit. Recusandae iste quis ullam quia. Repellendus consectetur sed error id. Eos perferendis debitis esse dolores et aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(258, '2021-04-22 07:57:01', '2021-10-15 09:00:07', 2, 5, 3, NULL, 6.00, 87.00, NULL, 'paid', 'Consequatur est accusamus eos voluptatem dolorem quo. Eos ut commodi quis. Laudantium exercitationem saepe quos atque et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(259, '2021-04-14 18:07:54', '2021-10-15 09:00:07', 2, 5, 3, NULL, 7.00, 44.00, NULL, 'paid', 'Omnis ut excepturi corrupti tempora. Est reprehenderit qui temporibus assumenda odio asperiores. Sunt unde sit aliquam consequuntur rerum nemo eveniet numquam. Sint est voluptas nulla unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(260, '2021-07-19 16:58:45', '2021-10-15 09:00:07', 4, 4, 1, NULL, 6.00, 73.00, NULL, 'paid', 'Non aperiam dolores asperiores cumque ut vero ducimus. Voluptate tempore officiis similique debitis incidunt. Qui perspiciatis ab dolore consequatur fugit quia illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(261, '2021-07-05 21:19:45', '2021-10-15 09:00:07', 2, 4, 1, NULL, 5.00, 86.00, NULL, 'paid', 'Et impedit inventore quaerat blanditiis omnis fugit corporis. Adipisci aut quia ut quaerat molestiae ut. Debitis aliquam nulla adipisci.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(262, '2021-03-28 09:04:17', '2021-10-15 09:00:07', 3, 5, 3, NULL, 6.00, 71.00, NULL, 'paid', 'Voluptatibus aspernatur aliquid commodi consectetur aut. Cumque blanditiis ipsam laudantium quam necessitatibus consequatur autem et. Quo ipsum accusamus voluptatum suscipit perspiciatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(263, '2021-02-04 11:19:57', '2021-10-15 09:00:07', 3, 4, 3, NULL, 8.00, 71.00, NULL, 'paid', 'Voluptates sint et nam adipisci. Culpa quia magni iusto ut voluptatum. Rem qui nostrum exercitationem id aperiam sit fugiat et. Quia cum assumenda nemo aliquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(264, '2021-04-29 05:33:01', '2021-10-15 09:00:07', 1, 4, 3, NULL, 10.00, 94.00, NULL, 'paid', 'Repellendus autem fugiat quam dolorem esse cupiditate commodi. Et vel et est quidem. Animi fugiat fuga iusto doloribus eum consequuntur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(265, '2021-06-23 07:03:12', '2021-10-15 09:00:07', 1, 5, 2, NULL, 5.00, 38.00, NULL, 'paid', 'Ab sed veritatis et enim. Et est atque sunt voluptatem cum. Non omnis dolor temporibus reiciendis. Odit facilis illo recusandae labore sit porro id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(266, '2021-09-22 21:22:36', '2021-10-15 09:00:07', 4, 4, 2, NULL, 5.00, 46.00, NULL, 'paid', 'Quibusdam nisi officia aut. Corporis dolorem aut aut voluptas fugit odio dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(267, '2021-10-14 08:34:41', '2021-10-15 09:00:07', 3, 5, 3, NULL, 6.00, 51.00, NULL, 'paid', 'Molestiae eum dolorum aperiam quis accusantium. Eaque nesciunt non ut minus autem. Non non et odio repellendus. Explicabo iste aliquam earum qui dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(268, '2021-09-03 04:42:36', '2021-10-15 09:00:07', 2, 4, 2, NULL, 10.00, 91.00, NULL, 'paid', 'Nihil dolore aut provident rem. Tenetur molestias est inventore voluptate molestias. Voluptatibus ad ipsum quod praesentium. Id et distinctio aut dolorem dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(269, '2020-10-29 10:45:53', '2021-10-15 09:00:07', 5, 4, 3, NULL, 6.00, 47.00, NULL, 'paid', 'Molestiae laudantium cumque sint atque. Placeat repudiandae pariatur aliquam minima autem. Fugiat nobis eius sapiente sunt. Laborum ratione rerum aut iure maiores autem rerum nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(270, '2021-04-26 07:03:07', '2021-10-15 09:00:07', 2, 5, 3, NULL, 7.00, 31.00, NULL, 'paid', 'Nam commodi similique vitae natus. Aut repellendus sapiente iure exercitationem quidem facere deleniti. Rerum perspiciatis perspiciatis repellat sit. Aut adipisci et rerum omnis sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(271, '2021-02-24 11:21:43', '2021-10-15 09:00:07', 4, 5, 2, NULL, 10.00, 35.00, NULL, 'paid', 'Commodi tenetur illum deleniti est ducimus qui quia. Nam qui qui nisi ad voluptatum eaque maiores. Ipsam accusantium architecto repellat rerum esse quasi explicabo. Id sint ut ut provident cum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(272, '2021-05-01 17:57:49', '2021-10-15 09:00:07', 3, 5, 2, NULL, 5.00, 64.00, NULL, 'paid', 'Architecto illum ut id eligendi illum voluptatem laborum. Expedita repudiandae magnam qui ut qui. Nemo voluptatem doloremque facilis et quia itaque nemo. Excepturi qui odio qui numquam et rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(273, '2021-02-10 12:32:17', '2021-10-15 09:00:07', 2, 5, 2, NULL, 6.00, 51.00, NULL, 'paid', 'Soluta et minima est hic dolorum quo sint. Itaque accusantium totam quas dolores. Est ut ut suscipit blanditiis atque. Et porro saepe quibusdam rem voluptates similique.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(274, '2021-02-27 17:18:17', '2021-10-15 09:00:07', 5, 5, 1, NULL, 9.00, 86.00, NULL, 'paid', 'Maiores saepe placeat magni illum. Corrupti aut quia illo itaque adipisci ad laborum. Veritatis nam voluptate rem ad. Omnis qui illum ipsum praesentium quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(275, '2021-07-27 00:51:02', '2021-10-15 09:00:07', 4, 4, 1, NULL, 10.00, 73.00, NULL, 'paid', 'Adipisci alias repellendus odit quaerat ipsum. Aut omnis qui ab sed et quo rerum. Aut voluptatem qui consequatur eum adipisci. Eum qui repellat ut ut ea corporis harum dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(276, '2021-08-12 05:43:56', '2021-10-15 09:00:07', 4, 5, 1, NULL, 9.00, 65.00, NULL, 'paid', 'Et ut sed omnis doloremque. Culpa rerum nostrum eaque nam et. Itaque voluptatem sed et deserunt quia. Sit in et odio molestias. Asperiores velit voluptatem voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(277, '2020-10-29 20:48:58', '2021-10-15 09:00:07', 5, 4, 3, NULL, 5.00, 61.00, NULL, 'paid', 'Id ab dicta a nesciunt maiores. Dolorum expedita explicabo illo est quo magni et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(278, '2021-02-17 00:38:52', '2021-10-15 09:00:07', 4, 4, 2, NULL, 8.00, 91.00, NULL, 'paid', 'Molestiae eos eum fugiat ut. Fuga omnis placeat et ratione ipsum ad quo. Eum incidunt recusandae inventore facilis illo ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(279, '2021-09-15 04:29:12', '2021-10-15 09:00:07', 1, 4, 1, NULL, 6.00, 94.00, NULL, 'paid', 'Nam illo quaerat numquam sit temporibus sit. Est optio corrupti a alias illo illum dignissimos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(280, '2021-03-11 12:07:24', '2021-10-15 09:00:07', 3, 4, 3, NULL, 9.00, 58.00, NULL, 'paid', 'Est quia incidunt rerum aspernatur eum qui sint. Rerum odit culpa iusto ex quidem quisquam. Tempore corrupti praesentium cupiditate. Illum dignissimos ut repellendus qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(281, '2021-01-21 20:25:45', '2021-10-15 09:00:07', 2, 5, 1, NULL, 10.00, 73.00, NULL, 'paid', 'Tempore unde beatae provident. At adipisci adipisci necessitatibus est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(282, '2021-05-11 21:04:37', '2021-10-15 09:00:07', 3, 5, 3, NULL, 5.00, 64.00, NULL, 'paid', 'Voluptas blanditiis dolorem quo ducimus blanditiis. Ducimus voluptas et ab. Quod aliquam odio ut blanditiis dolor tempora.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(283, '2021-02-14 18:37:19', '2021-10-15 09:00:07', 2, 4, 2, NULL, 8.00, 63.00, NULL, 'paid', 'Rem vitae et quia omnis. Nihil iure consequuntur iusto odit ut asperiores molestiae. Sint recusandae soluta possimus quae sit necessitatibus. Ratione nihil quos repellendus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(284, '2021-09-07 13:37:52', '2021-10-15 09:00:07', 1, 5, 2, NULL, 9.00, 82.00, NULL, 'paid', 'Natus voluptate sed provident est ipsa. Assumenda quo vel provident corporis. Ea nesciunt optio vitae asperiores quae quia qui. Dolorem quasi repellat mollitia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`) VALUES
(285, '2021-07-04 07:22:44', '2021-10-15 09:00:07', 2, 4, 1, NULL, 9.00, 83.00, NULL, 'paid', 'Non accusantium quo quia porro. Velit nobis reprehenderit explicabo minus. Quae voluptatem facere autem repudiandae dolorem. Laborum aut in et rerum ut voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(286, '2021-10-10 01:26:28', '2021-10-15 09:00:07', 4, 4, 2, NULL, 5.00, 68.00, NULL, 'paid', 'Nobis vel in fugiat facere et est. Ex quis provident nostrum. Repudiandae voluptas minima vero neque. Quia ex provident cum saepe.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(287, '2021-09-16 19:38:06', '2021-10-15 09:00:07', 4, 4, 3, NULL, 8.00, 47.00, NULL, 'paid', 'Excepturi fuga repellat est aut. Unde accusantium qui autem sint adipisci. Dolore provident ullam adipisci quas. Dolor natus quos occaecati rerum quaerat aspernatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(288, '2021-07-04 17:26:53', '2021-10-15 09:00:07', 4, 4, 3, NULL, 7.00, 44.00, NULL, 'paid', 'Est incidunt mollitia sunt laudantium commodi sed. Est qui nemo error ullam minus deserunt minus. Voluptatibus harum id nesciunt aut dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(289, '2021-02-11 10:09:45', '2021-10-15 09:00:07', 1, 5, 3, NULL, 9.00, 48.00, NULL, 'paid', 'Quia quas ut quidem facilis. Facilis ut quis excepturi et. Tenetur minima deserunt repellendus autem sint molestias officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(290, '2021-09-25 07:06:05', '2021-10-15 09:00:07', 2, 5, 2, NULL, 10.00, 32.00, NULL, 'paid', 'Fugiat ea assumenda vero reprehenderit. Fugiat quae vel repudiandae. Eaque qui quae qui minus. Consequatur quas labore dolorem libero voluptas atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(291, '2021-06-12 14:48:14', '2021-10-15 09:00:07', 5, 4, 2, NULL, 7.00, 46.00, NULL, 'paid', 'Incidunt voluptates consequatur quibusdam vel. Eius assumenda omnis molestias ex. Aperiam fugit explicabo tempore ipsa illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(292, '2021-09-12 09:26:46', '2021-10-15 09:00:07', 4, 5, 1, NULL, 10.00, 100.00, NULL, 'paid', 'Est temporibus hic placeat et quod dolores eligendi. Enim et qui quia accusamus non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(293, '2020-12-17 12:10:42', '2021-10-15 09:00:07', 4, 5, 3, NULL, 8.00, 33.00, NULL, 'paid', 'Alias qui facere maxime nihil consectetur. Mollitia delectus neque repudiandae et laboriosam sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(294, '2020-12-10 18:57:43', '2021-10-15 09:00:07', 2, 4, 1, NULL, 5.00, 58.00, NULL, 'paid', 'Sequi fugiat aut ut. Aliquam amet consequatur illo quis sed. Nemo vitae expedita alias quo in quia vel earum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(295, '2021-07-21 23:55:38', '2021-10-15 09:00:07', 2, 5, 3, NULL, 7.00, 98.00, NULL, 'paid', 'Nam nemo velit omnis excepturi modi. Reprehenderit fuga quidem aspernatur sit. Quia non modi repellendus incidunt ratione similique.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(296, '2021-04-19 07:30:38', '2021-10-15 09:00:07', 3, 4, 1, NULL, 5.00, 81.00, NULL, 'paid', 'Sit explicabo dolores labore molestias tempore rerum cumque. Dolores doloribus corporis rerum nulla.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(297, '2021-08-15 19:01:22', '2021-10-15 09:00:07', 4, 4, 2, NULL, 10.00, 90.00, NULL, 'paid', 'Omnis repudiandae nihil eum magni suscipit. Itaque ut et enim iure laborum eaque in culpa. Debitis vel beatae impedit accusamus. Vitae exercitationem vero est ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(298, '2021-02-24 08:29:31', '2021-10-15 09:00:07', 2, 4, 2, NULL, 9.00, 85.00, NULL, 'paid', 'Voluptatem neque amet dolore error. Exercitationem et nam eveniet consequatur veniam voluptatem aut. Perferendis et ut alias maiores nobis. Nulla et est magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(299, '2021-09-23 02:38:20', '2021-10-15 09:00:07', 1, 5, 3, NULL, 5.00, 80.00, NULL, 'paid', 'Id quidem voluptas excepturi laborum libero autem praesentium. Omnis perspiciatis qui vero cum. Quas ut tempora quia quidem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(300, '2021-03-18 03:23:20', '2021-10-15 09:00:07', 5, 4, 2, NULL, 8.00, 74.00, NULL, 'paid', 'Quo necessitatibus voluptatibus tenetur quis voluptates incidunt. Numquam eum dignissimos natus cum cupiditate. Porro maiores vitae qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(301, '2021-09-24 04:00:17', '2021-10-15 09:00:07', 5, 4, 1, NULL, 10.00, 51.00, NULL, 'paid', 'Soluta qui sed et adipisci. Illum minima ea eaque quaerat. Consectetur officiis et repellat et aliquid.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(302, '2021-05-24 09:58:21', '2021-10-15 09:00:07', 5, 5, 2, NULL, 8.00, 94.00, NULL, 'paid', 'Qui est totam maiores occaecati. Sunt reiciendis non quia quia cupiditate. Et error cum tempore vero. Iusto iste inventore in et enim voluptatem suscipit. Eum laborum quos et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(303, '2021-08-09 08:18:28', '2021-10-15 09:00:07', 1, 5, 1, NULL, 6.00, 33.00, NULL, 'paid', 'Aspernatur quod nam eligendi rerum doloribus sit. Sit maiores eligendi dignissimos. Id provident quis aut impedit asperiores. Ipsa nihil est sed voluptate dolor. Blanditiis quos sint ea quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(304, '2021-01-18 19:35:36', '2021-10-15 09:00:07', 5, 4, 2, NULL, 7.00, 31.00, NULL, 'paid', 'Ullam qui veniam fuga praesentium ea. Facilis ipsa consectetur aut dignissimos illo excepturi ut. Eos maxime molestias quis id. Nihil ut voluptas ut officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(305, '2020-12-10 06:24:00', '2021-10-15 09:00:07', 2, 5, 2, NULL, 10.00, 92.00, NULL, 'paid', 'Expedita deserunt eligendi autem pariatur cupiditate. Tempore corrupti est ratione voluptates. Quasi incidunt amet veritatis molestiae id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(306, '2021-07-23 23:03:03', '2021-10-15 09:00:07', 1, 5, 2, NULL, 7.00, 97.00, NULL, 'paid', 'Et necessitatibus explicabo aperiam voluptas aut doloremque. Sed iste eius reiciendis ut et. A laboriosam aut dolorum numquam aut sint qui. Et ullam neque cum iste ullam quas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(307, '2021-01-31 13:00:21', '2021-10-15 09:00:07', 2, 5, 3, NULL, 10.00, 100.00, NULL, 'paid', 'Rerum et eius facere. Distinctio eum nihil voluptatem iure. Odio nemo dicta laborum. Corporis nemo totam voluptatem aliquam placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(308, '2021-07-27 07:24:39', '2021-10-15 09:00:07', 2, 4, 2, NULL, 7.00, 98.00, NULL, 'paid', 'Architecto cupiditate iure nesciunt animi. Earum nihil dolores distinctio sint accusamus nam. Voluptas quidem necessitatibus et et alias quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(309, '2021-07-29 01:58:35', '2021-10-15 09:00:07', 4, 4, 1, NULL, 6.00, 67.00, NULL, 'paid', 'Ipsam et est perferendis optio. Vel et molestiae et inventore voluptas. Molestias consectetur eos nihil temporibus eos sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(310, '2021-07-04 15:00:59', '2021-10-15 09:00:07', 1, 5, 1, NULL, 8.00, 88.00, NULL, 'paid', 'Iste et quia quo maxime adipisci repellat consequuntur in. Distinctio dolores amet rerum. Excepturi et placeat ex molestiae quo qui corporis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(311, '2021-05-02 04:06:03', '2021-10-15 09:00:07', 3, 4, 1, NULL, 7.00, 74.00, NULL, 'paid', 'Hic et cumque eos at deleniti ullam pariatur. Voluptatum quam voluptatem nemo qui consequatur ex autem. Qui odio consequatur rerum nobis tempora. Officia facilis vero minus velit quia eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(312, '2021-02-18 00:20:45', '2021-10-15 09:00:07', 2, 5, 2, NULL, 6.00, 91.00, NULL, 'paid', 'Adipisci nesciunt ut minus asperiores nesciunt. Ullam voluptatum quam eos quia deserunt qui occaecati. Et voluptas necessitatibus sit molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(313, '2021-08-11 11:39:51', '2021-10-15 09:00:07', 4, 4, 2, NULL, 8.00, 44.00, NULL, 'paid', 'In repudiandae autem animi qui. Atque voluptatem nesciunt fugiat nostrum ex quidem eos architecto. Corrupti quia sunt et facilis minima omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(314, '2021-06-24 11:24:14', '2021-10-15 09:00:07', 4, 5, 3, NULL, 8.00, 58.00, NULL, 'paid', 'Earum velit atque minus similique dolor molestiae. Ea nulla rerum voluptatem. Dolore eligendi molestiae soluta dolor debitis vitae minima. Sunt quasi numquam hic aspernatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(315, '2021-03-11 00:51:19', '2021-10-15 09:00:07', 4, 4, 3, NULL, 6.00, 98.00, NULL, 'paid', 'Et aut animi earum quo veniam et ut. Voluptatibus debitis distinctio quos. Expedita cum non porro consequatur saepe quis molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(316, '2021-01-10 09:21:47', '2021-10-15 09:00:07', 4, 5, 1, NULL, 10.00, 93.00, NULL, 'paid', 'Itaque mollitia doloribus aut delectus assumenda. Necessitatibus eos voluptatem quis et. Excepturi et possimus dolorem aperiam dignissimos. Iusto pariatur deleniti earum dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(317, '2021-06-29 07:30:08', '2021-10-15 09:00:07', 3, 5, 1, NULL, 9.00, 34.00, NULL, 'paid', 'Voluptatem rerum illo aut. Autem sunt quo fugit inventore eveniet libero. Expedita quia ipsum blanditiis. Ex eos nam temporibus quia ullam omnis atque modi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(318, '2021-05-28 16:48:36', '2021-10-15 09:00:07', 5, 5, 3, NULL, 6.00, 65.00, NULL, 'paid', 'Molestiae laboriosam dignissimos provident id quidem exercitationem eaque. Aspernatur itaque dignissimos rerum in et. Reiciendis fugiat porro sed facere impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(319, '2021-05-18 12:16:39', '2021-10-15 09:00:07', 1, 5, 1, NULL, 6.00, 39.00, NULL, 'paid', 'Delectus qui inventore voluptatum ut. Vero illum necessitatibus sit dolor numquam. Laboriosam beatae itaque temporibus eos neque odio similique.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(320, '2021-07-03 07:15:10', '2021-10-15 09:00:07', 5, 5, 3, NULL, 10.00, 100.00, NULL, 'paid', 'Eius eligendi distinctio et aperiam tenetur. Atque et excepturi non dolore. Est suscipit officia aliquid suscipit. Quam deleniti suscipit tenetur rerum sunt quidem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(321, '2021-10-06 16:01:56', '2021-10-15 09:00:07', 3, 4, 3, NULL, 5.00, 72.00, NULL, 'paid', 'Nemo nostrum expedita est sint iste. Aut repellat culpa consectetur recusandae laboriosam velit sit. Libero laboriosam id vel error. Et voluptas quia totam cupiditate odit cumque quasi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(322, '2021-04-16 13:58:08', '2021-10-15 09:00:07', 4, 5, 2, NULL, 6.00, 76.00, NULL, 'paid', 'Nihil ut molestias deleniti tempore ut. Optio eos voluptates facere in accusamus similique. Ipsam et eos officia enim ipsam. Non vero aliquid consectetur dolorem et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(323, '2021-04-27 13:25:09', '2021-10-15 09:00:07', 4, 4, 3, NULL, 8.00, 85.00, NULL, 'paid', 'Impedit qui in quasi voluptatum sed qui. Sequi et assumenda laudantium nostrum quia et. Dicta est corporis rerum quia minima magnam. Quae earum qui nemo labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(324, '2021-05-26 18:04:53', '2021-10-15 09:00:07', 1, 5, 3, NULL, 8.00, 98.00, NULL, 'paid', 'Aperiam omnis dolor ab quibusdam et. Ad voluptatem minus aliquid expedita amet quo. Deserunt vel enim delectus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(325, '2021-01-14 19:47:53', '2021-10-15 09:00:07', 2, 4, 2, NULL, 5.00, 83.00, NULL, 'paid', 'Dolorem sed mollitia aut ut distinctio. Aut dolor voluptate aut. Sit harum voluptatem quis dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(326, '2021-05-04 05:45:34', '2021-10-15 09:00:07', 3, 4, 3, NULL, 6.00, 84.00, NULL, 'paid', 'Reprehenderit est laboriosam a. Impedit ullam aliquam voluptas rem qui. Id impedit incidunt quos assumenda aut sequi voluptatem. Eum ipsa repudiandae nostrum atque enim saepe est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(327, '2021-05-04 00:23:37', '2021-10-15 09:00:07', 1, 5, 2, NULL, 6.00, 75.00, NULL, 'paid', 'Enim quam tenetur debitis corporis. Velit ut quidem veniam cumque ut. Incidunt nam sit molestiae est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(328, '2021-04-24 19:52:58', '2021-10-15 09:00:07', 4, 5, 2, NULL, 7.00, 81.00, NULL, 'paid', 'Consequatur earum recusandae qui et a ab. Ipsa quo aut rem quod consequuntur accusantium. Harum commodi eos nemo quia sit doloremque est est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(329, '2021-07-18 01:15:02', '2021-10-15 09:00:07', 2, 4, 2, NULL, 8.00, 100.00, NULL, 'paid', 'Exercitationem aut ipsum et qui quasi est. Hic voluptatem magni nesciunt est quod placeat qui quibusdam. Vero sed voluptas sunt aliquam. Ab nihil sequi exercitationem qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(330, '2021-01-18 13:26:30', '2021-10-15 09:00:07', 4, 4, 1, NULL, 6.00, 36.00, NULL, 'paid', 'In sit eaque similique et magni dicta. Voluptatibus tenetur incidunt vel natus vel. Ut illum veniam tempora enim perferendis magni temporibus. Earum aut vitae quasi qui dolorem minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(331, '2021-07-03 20:04:43', '2021-10-15 09:00:07', 2, 5, 1, NULL, 5.00, 82.00, NULL, 'paid', 'Minima praesentium dolorem ducimus nesciunt aut aut a ea. Illum possimus aut error. Qui maiores voluptatibus quia asperiores beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(332, '2021-10-09 01:26:46', '2021-10-15 09:00:07', 3, 5, 1, NULL, 9.00, 70.00, NULL, 'paid', 'Dolorem eos iste sit nemo officiis nobis placeat. Omnis dicta fugit repudiandae quisquam quae. Reiciendis voluptatem fugit aperiam ut illo at. Odio unde laboriosam odio et magni molestiae est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(333, '2021-02-18 17:50:54', '2021-10-15 09:00:07', 3, 5, 1, NULL, 5.00, 83.00, NULL, 'paid', 'Itaque veniam nam et aliquid. Molestias dolores laborum sunt sit nulla quae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(334, '2020-10-18 05:21:34', '2021-10-15 09:00:07', 4, 4, 1, NULL, 5.00, 94.00, NULL, 'paid', 'Iusto minima placeat ad fugit. Et incidunt blanditiis sint molestiae aut ex quia neque. Dolor commodi delectus voluptas eos blanditiis. Iusto iure dolorem repellat velit et occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(335, '2021-09-14 00:17:37', '2021-10-15 09:00:07', 2, 4, 2, NULL, 9.00, 96.00, NULL, 'paid', 'Pariatur et autem temporibus sunt ad voluptatem. Aut non deleniti aut itaque fugit earum iste. Sequi eos a quo repellat et eligendi. Est aliquid quia ab enim quas est suscipit molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(336, '2021-02-20 01:12:49', '2021-10-15 09:00:07', 3, 4, 3, NULL, 7.00, 67.00, NULL, 'paid', 'Assumenda iste fuga vitae quo. Recusandae eum neque qui eligendi consequatur. Laboriosam harum porro necessitatibus voluptas sit temporibus. Nemo placeat et dolore quia eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(337, '2020-11-06 11:37:34', '2021-10-15 09:00:07', 5, 4, 2, NULL, 5.00, 56.00, NULL, 'paid', 'Eum quos quaerat recusandae ea modi cupiditate aliquid. Non qui ducimus aut cupiditate dolor qui ipsum. Possimus nihil voluptate quibusdam id itaque sed. Asperiores totam quidem quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(338, '2021-07-07 00:10:30', '2021-10-15 09:00:07', 4, 4, 2, NULL, 10.00, 92.00, NULL, 'paid', 'Doloribus et modi quasi accusamus unde nihil. Libero non quibusdam est enim ad eius. Id incidunt tempore delectus est nam ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(339, '2021-06-09 08:09:57', '2021-10-15 09:00:07', 5, 4, 2, NULL, 9.00, 38.00, NULL, 'paid', 'Totam fugit voluptas sint quibusdam. Numquam explicabo ipsum est quidem ea quia. Quas consequuntur omnis fuga odio. Dolorem consequuntur quae praesentium veritatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(340, '2021-07-08 18:21:48', '2021-10-15 09:00:07', 1, 5, 1, NULL, 7.00, 83.00, NULL, 'paid', 'Recusandae quo reprehenderit necessitatibus in rerum aspernatur. Dolor eum et explicabo non. Quisquam quaerat deleniti ducimus dolor ut eaque eaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(341, '2021-01-12 09:05:55', '2021-10-15 09:00:07', 5, 4, 2, NULL, 6.00, 78.00, NULL, 'paid', 'Error est voluptatem explicabo quia repellendus eos. Commodi omnis ullam consequuntur placeat consequatur doloribus doloribus. Non aut quam voluptatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(342, '2021-03-05 11:29:41', '2021-10-15 09:00:07', 3, 5, 1, NULL, 8.00, 44.00, NULL, 'paid', 'Inventore ea quisquam fugit accusantium ut. Distinctio similique cum enim. Illum error similique et perspiciatis. Quod dolorem expedita libero asperiores vel ipsam beatae. Aut enim sapiente odio et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(343, '2020-12-22 13:54:40', '2021-10-15 09:00:07', 2, 4, 1, NULL, 10.00, 64.00, NULL, 'paid', 'Recusandae repellat voluptatem repellat molestiae. Ut esse maxime dicta in. Repudiandae cumque quisquam eveniet dolorem tenetur. Repellat sint aut eaque voluptates vel nulla ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(344, '2021-04-22 08:47:37', '2021-10-15 09:00:07', 2, 4, 3, NULL, 8.00, 37.00, NULL, 'paid', 'Sequi cum veniam ut in amet dolores. Qui nemo neque ut aperiam nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(345, '2021-10-13 05:51:32', '2021-10-15 09:00:07', 1, 5, 2, NULL, 10.00, 35.00, NULL, 'paid', 'Doloremque non ipsa dolores consequatur inventore. Officia tempore sit et dolorem ut aut non. Aspernatur qui accusantium quia qui sit et repudiandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(346, '2020-12-12 20:33:09', '2021-10-15 09:00:07', 4, 5, 1, NULL, 8.00, 43.00, NULL, 'paid', 'Expedita in facere libero iure velit. Autem natus eveniet cumque aliquam debitis amet quidem. Blanditiis nemo consequatur earum aut architecto occaecati molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(347, '2021-02-01 17:24:39', '2021-10-15 09:00:07', 1, 5, 2, NULL, 6.00, 39.00, NULL, 'paid', 'Adipisci dicta dolores sit qui unde. Sed eaque doloremque eius est. Odit ipsum doloremque ea est. Error quam harum totam qui velit possimus deserunt quas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(348, '2020-12-10 13:53:52', '2021-10-15 09:00:07', 3, 5, 2, NULL, 6.00, 75.00, NULL, 'paid', 'Et minima voluptatum consequatur adipisci rerum quidem. Qui sint id voluptatem molestiae. Molestiae saepe repellat excepturi. Voluptas non ipsum iste quo laboriosam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(349, '2021-06-16 03:35:37', '2021-10-15 09:00:07', 5, 4, 3, NULL, 7.00, 69.00, NULL, 'paid', 'Alias quod et alias ad et voluptatum ea. Facilis iure a et incidunt et natus. Laboriosam libero molestias consequatur ipsam. Voluptas aut dolores ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(350, '2020-11-01 11:06:01', '2021-10-15 09:00:07', 4, 4, 2, NULL, 9.00, 65.00, NULL, 'paid', 'Dicta enim quis dignissimos illo dolore tempore eius. Temporibus possimus pariatur omnis quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(351, '2021-03-18 08:08:03', '2021-10-15 09:00:07', 1, 4, 1, NULL, 9.00, 39.00, NULL, 'paid', 'Voluptate cum pariatur labore debitis incidunt nobis saepe. Repellat autem reprehenderit autem accusantium hic quo nobis. Vitae aperiam dolor sit. Qui tempore possimus ipsa dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(352, '2021-07-12 00:04:57', '2021-10-15 09:00:07', 4, 4, 1, NULL, 6.00, 56.00, NULL, 'paid', 'Pariatur qui omnis quaerat est. Ex provident qui consectetur odio et dolor cumque porro. Nostrum repudiandae voluptates nam accusantium. Hic vel dignissimos sint officiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(353, '2020-12-09 20:23:44', '2021-10-15 09:00:07', 2, 5, 1, NULL, 9.00, 92.00, NULL, 'paid', 'Eum quasi non minima. Ea voluptatem cumque in. Accusantium magni delectus voluptatem omnis et ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(354, '2021-07-15 12:31:25', '2021-10-15 09:00:07', 2, 4, 3, NULL, 5.00, 67.00, NULL, 'paid', 'Unde non suscipit maiores. Sit totam ut iusto velit amet in ipsum. Voluptatum dolores consequatur beatae quo aliquam. Dolores quos eum perferendis voluptates expedita. Aut porro repellat atque quod.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(355, '2021-05-04 11:20:58', '2021-10-15 09:00:07', 5, 5, 1, NULL, 5.00, 87.00, NULL, 'paid', 'Perspiciatis et laboriosam itaque in. Omnis aut voluptatem et. Eum voluptates at voluptatem sit molestiae fugiat quidem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(356, '2021-10-05 20:33:07', '2021-10-15 09:00:07', 5, 5, 3, NULL, 8.00, 55.00, NULL, 'paid', 'Accusamus ut aspernatur ut. Sequi ab itaque aut voluptas sunt sapiente. Non placeat nulla enim repellendus velit praesentium inventore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(357, '2021-03-11 17:17:29', '2021-10-15 09:00:07', 1, 5, 2, NULL, 5.00, 66.00, NULL, 'paid', 'Hic ex voluptas aut voluptatem eligendi. Accusantium aut qui omnis possimus dolorem quod et. Ut molestias libero earum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(358, '2021-02-13 23:33:32', '2021-10-15 09:00:07', 5, 5, 1, NULL, 9.00, 32.00, NULL, 'paid', 'Consequuntur esse a id eos. Accusamus est dolorum reprehenderit nostrum. Velit in perferendis voluptas error. Voluptas neque et sunt corporis dolorem porro.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(359, '2021-07-25 03:35:16', '2021-10-15 09:00:07', 4, 4, 2, NULL, 9.00, 35.00, NULL, 'paid', 'Sunt quis qui quos hic aliquid sint iusto harum. Omnis porro eos distinctio. Culpa quia ut veritatis dolores aspernatur qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(360, '2021-07-10 23:04:51', '2021-10-15 09:00:07', 2, 5, 2, NULL, 7.00, 35.00, NULL, 'paid', 'Aut soluta qui aliquid enim voluptas aliquid. Autem numquam natus impedit deserunt ut labore. Voluptatibus voluptates velit quo sint magni eius explicabo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(361, '2020-11-23 06:50:03', '2021-10-15 09:00:07', 2, 5, 1, NULL, 7.00, 70.00, NULL, 'paid', 'Sit velit impedit id aliquam odio. Voluptas necessitatibus cum dolore id dolores quisquam. Doloremque doloribus ipsam quasi ut saepe repellat aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(362, '2021-05-07 02:39:16', '2021-10-15 09:00:07', 4, 5, 1, NULL, 7.00, 39.00, NULL, 'paid', 'Illum pariatur eos nisi quis consequuntur. Vero officia quo quibusdam voluptatem nobis hic.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(363, '2021-09-17 17:03:22', '2021-10-15 09:00:07', 2, 5, 1, NULL, 10.00, 58.00, NULL, 'paid', 'Animi minus cumque quae. Et autem corporis ipsam adipisci. Inventore fuga est facilis sit. Id quis et tempora autem. Et quia tempore est. Pariatur veniam tempora omnis inventore cupiditate amet ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(364, '2021-04-04 13:27:50', '2021-10-15 09:00:07', 4, 4, 3, NULL, 10.00, 39.00, NULL, 'paid', 'Unde cumque quod et ipsam. Fuga iure atque similique. Neque voluptates voluptatem fugit quas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(365, '2020-12-25 05:33:47', '2021-10-15 09:00:07', 5, 4, 1, NULL, 9.00, 68.00, NULL, 'paid', 'Dolores aspernatur pariatur illum. Dolorem aut sit soluta quia. Non necessitatibus autem illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(366, '2020-11-16 14:10:58', '2021-10-15 09:00:07', 4, 5, 1, NULL, 10.00, 51.00, NULL, 'paid', 'Aut id sed vero. Odit consequatur in aut ipsa sed est. Ipsam porro quo voluptates aut maxime accusamus qui sequi. Qui dignissimos ad velit suscipit. Eaque non molestiae qui vel a.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(367, '2021-04-04 14:27:46', '2021-10-15 09:00:07', 2, 5, 1, NULL, 10.00, 33.00, NULL, 'paid', 'Ut nam exercitationem eveniet velit. Rem officiis vitae non ab doloribus aut inventore repellat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(368, '2021-01-02 01:57:13', '2021-10-15 09:00:07', 1, 4, 3, NULL, 7.00, 61.00, NULL, 'paid', 'Voluptatum quam aut tenetur ut quibusdam. Reprehenderit labore eos itaque neque. Et architecto blanditiis impedit necessitatibus dignissimos non optio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(369, '2020-11-19 22:07:14', '2021-10-15 09:00:07', 4, 4, 2, NULL, 10.00, 58.00, NULL, 'paid', 'Quaerat sequi neque ut recusandae dolores. Vel fugit itaque repudiandae est quia officiis sequi. Ipsum debitis in est vel recusandae voluptatem. Consequatur quia id autem est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(370, '2021-02-09 06:58:15', '2021-10-15 09:00:07', 3, 5, 2, NULL, 5.00, 62.00, NULL, 'paid', 'Omnis adipisci provident nam soluta natus. Error numquam a id nam exercitationem enim qui. Qui id fuga a atque iusto beatae quam voluptatum. Ex ut temporibus itaque doloremque provident minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(371, '2020-12-11 12:59:18', '2021-10-15 09:00:07', 1, 4, 3, NULL, 7.00, 34.00, NULL, 'paid', 'Nesciunt doloribus reprehenderit excepturi nam laborum sunt non. Et consequuntur voluptatibus suscipit earum veniam repudiandae sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(372, '2020-11-07 10:47:04', '2021-10-15 09:00:07', 5, 5, 1, NULL, 7.00, 68.00, NULL, 'paid', 'Id tempore voluptatem cum. Cum reprehenderit qui dolore rerum expedita rerum. Id iusto voluptas asperiores non quos quis et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(373, '2021-02-12 10:33:50', '2021-10-15 09:00:07', 5, 5, 3, NULL, 5.00, 43.00, NULL, 'paid', 'Voluptatem nulla et quos ad. Repellat architecto est ut rerum dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(374, '2021-07-28 23:28:51', '2021-10-15 09:00:07', 5, 4, 3, NULL, 7.00, 86.00, NULL, 'paid', 'Cum iusto corrupti et est excepturi voluptas quae. Facere ut neque sit quas vitae eius optio. Asperiores quae tempore sed earum impedit possimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(375, '2021-05-05 10:35:49', '2021-10-15 09:00:07', 1, 4, 1, NULL, 8.00, 31.00, NULL, 'paid', 'Aut eum fugiat sit omnis maiores dicta. Aperiam ea voluptatem veniam est molestiae nisi doloribus. Porro nihil ducimus est exercitationem voluptas consequatur dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(376, '2021-04-23 07:54:50', '2021-10-15 09:00:07', 2, 5, 1, NULL, 6.00, 48.00, NULL, 'paid', 'Facilis rem dolor ut inventore quia. Voluptas enim voluptates est laboriosam. Est ducimus in odit unde minus aspernatur. Ea dolorem quis tempora fugit qui aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(377, '2021-04-14 02:59:03', '2021-10-15 09:00:07', 3, 4, 2, NULL, 9.00, 36.00, NULL, 'paid', 'In est qui non. Eum dicta itaque sed qui natus et sit. Et omnis odio ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(378, '2020-12-21 23:09:42', '2021-10-15 09:00:07', 1, 4, 1, NULL, 10.00, 78.00, NULL, 'paid', 'Sed neque nam doloribus dolores ex occaecati. Ratione aut rem neque a. Earum unde iste sequi et dolor aspernatur omnis. Consequatur quod repellat aut exercitationem eveniet praesentium dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(379, '2021-03-10 07:21:26', '2021-10-15 09:00:07', 2, 4, 3, NULL, 5.00, 35.00, NULL, 'paid', 'Dolorem dolorem ipsam ipsam dolores aspernatur. Aut quia totam recusandae molestias vel nemo. Quae quia quasi doloribus necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(380, '2021-04-11 21:27:17', '2021-10-15 09:00:07', 3, 4, 3, NULL, 5.00, 87.00, NULL, 'paid', 'Harum voluptatem voluptatem nesciunt molestiae sed ut ut voluptatem. Eligendi voluptatem a aut. Enim accusamus ducimus culpa. Ullam a delectus non recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(381, '2021-04-07 21:43:14', '2021-10-15 09:00:07', 3, 5, 2, NULL, 5.00, 56.00, NULL, 'paid', 'Voluptas quia animi dolor numquam nisi voluptas. Nisi dolore odit corporis porro earum aut aliquid. Consequatur numquam dolore magnam id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(382, '2021-04-29 10:05:46', '2021-10-15 09:00:07', 5, 4, 1, NULL, 9.00, 59.00, NULL, 'paid', 'Magnam dolorem natus nihil animi. Laboriosam eum sequi voluptate quidem vero animi odit. Dicta et harum iure in neque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(383, '2021-02-02 11:41:49', '2021-10-15 09:00:07', 4, 4, 1, NULL, 6.00, 62.00, NULL, 'paid', 'Officiis officia enim officia laborum aspernatur quod corrupti. Sit cupiditate placeat praesentium quibusdam illo quia. Ut illum esse accusantium fuga.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(384, '2021-08-08 18:47:02', '2021-10-15 09:00:07', 1, 5, 1, NULL, 9.00, 89.00, NULL, 'paid', 'Ut porro excepturi error et accusantium. Enim ut et occaecati quisquam et id. Et nihil aut facere omnis expedita et. Libero unde voluptatem totam velit aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(385, '2021-05-30 13:50:04', '2021-10-15 09:00:07', 2, 5, 1, NULL, 9.00, 76.00, NULL, 'paid', 'Consequatur sit pariatur hic repellendus. Consequatur commodi nulla aut a velit. Ut repudiandae harum beatae unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(386, '2020-11-18 19:43:26', '2021-10-15 09:00:07', 4, 4, 1, NULL, 8.00, 54.00, NULL, 'paid', 'Possimus repellendus voluptas consequatur tenetur animi ea laborum deserunt. Labore natus odit facilis voluptas. Culpa occaecati earum autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(387, '2020-10-20 05:37:27', '2021-10-15 09:00:07', 4, 4, 2, NULL, 9.00, 65.00, NULL, 'paid', 'Inventore adipisci sunt aspernatur dignissimos. Optio voluptatem nostrum qui cupiditate eveniet et molestiae. Totam praesentium ab facere alias accusantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(388, '2021-02-12 13:34:26', '2021-10-15 09:00:07', 2, 4, 2, NULL, 6.00, 98.00, NULL, 'paid', 'Qui molestiae nemo voluptas ut. Sunt quo rerum et quam. Ipsa et quisquam eligendi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(389, '2021-07-09 03:12:40', '2021-10-15 09:00:07', 1, 4, 3, NULL, 6.00, 45.00, NULL, 'paid', 'Enim dignissimos sapiente molestias libero blanditiis. Et autem et dolorem. Aliquam et mollitia qui ut. Debitis et excepturi provident dolor. Officiis quia dolores aut et quo sed saepe itaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(390, '2021-03-12 00:41:40', '2021-10-15 09:00:07', 5, 4, 1, NULL, 10.00, 37.00, NULL, 'paid', 'Veritatis officia tempora magnam quis libero consequatur est est. Excepturi tenetur voluptatem culpa laboriosam nesciunt et. Hic harum aspernatur numquam voluptate quasi nulla pariatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(391, '2021-05-04 11:51:58', '2021-10-15 09:00:07', 5, 5, 1, NULL, 8.00, 30.00, NULL, 'paid', 'Perferendis rerum culpa sed accusantium minima aut dignissimos. Dolore earum soluta molestiae minus adipisci fugit iusto. Fugiat consectetur quibusdam et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(392, '2021-05-30 04:52:09', '2021-10-15 09:00:07', 5, 5, 2, NULL, 9.00, 99.00, NULL, 'paid', 'Rerum sed laboriosam cupiditate eos dolorem itaque quia. Neque omnis aliquid amet quia aut enim enim. Soluta iste vitae illum et eos voluptatum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(393, '2020-12-31 07:26:34', '2021-10-15 09:00:07', 3, 5, 3, NULL, 7.00, 47.00, NULL, 'paid', 'Provident eos tempora aut qui rem in quibusdam dignissimos. Iure praesentium eveniet quos accusantium excepturi beatae. Doloribus aperiam neque animi repudiandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(394, '2021-05-21 06:05:00', '2021-10-15 09:00:07', 1, 4, 1, NULL, 9.00, 77.00, NULL, 'paid', 'Non facilis non provident natus odio dolores cumque unde. Eum quia quasi libero recusandae. Consectetur corrupti quam explicabo tenetur tempora a.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(395, '2021-04-19 14:12:39', '2021-10-15 09:00:07', 3, 4, 1, NULL, 9.00, 89.00, NULL, 'paid', 'Nostrum laboriosam libero rem sequi minima esse minus. Impedit veritatis non quia non voluptatum recusandae. Facilis illum nemo pariatur velit optio. Est in labore nesciunt eligendi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(396, '2021-06-02 10:26:20', '2021-10-15 09:00:07', 3, 5, 1, NULL, 6.00, 82.00, NULL, 'paid', 'Provident iure libero quod aliquid. Id eius ipsa facere voluptatum debitis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(397, '2021-04-03 02:49:18', '2021-10-15 09:00:07', 1, 4, 1, NULL, 7.00, 98.00, NULL, 'paid', 'Maxime corporis non quas rerum veritatis voluptatem animi aut. Asperiores magnam consequatur qui quos impedit. Odio aut qui exercitationem praesentium quas perferendis aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(398, '2021-07-27 17:52:15', '2021-10-15 09:00:07', 5, 5, 2, NULL, 5.00, 83.00, NULL, 'paid', 'Sunt neque dolorem dolorum molestias aliquam dolores sunt. Quia magni est consequatur voluptatem quo. Vel facere corporis aspernatur aut. Enim inventore non sed non ut ratione fugit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(399, '2021-07-28 03:39:04', '2021-10-15 09:00:07', 5, 5, 1, NULL, 7.00, 61.00, NULL, 'paid', 'Libero sint quia esse nostrum. Natus doloribus ullam sunt reiciendis. Dolor quibusdam aliquid fugiat ducimus. Quisquam repudiandae repellendus soluta et est sit accusantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(400, '2021-04-02 22:54:49', '2021-10-15 09:00:07', 2, 4, 3, NULL, 9.00, 92.00, NULL, 'paid', 'Atque eum incidunt est neque in. Eligendi voluptatem est qui maiores mollitia veritatis neque. Impedit quaerat recusandae quisquam aut libero et. Sequi quos aperiam saepe minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(401, '2021-10-05 19:23:04', '2021-10-15 09:00:07', 2, 5, 1, NULL, 10.00, 89.00, NULL, 'paid', 'Dicta aperiam tempora vitae ducimus. Et voluptatum nesciunt amet porro. Odio voluptas odit maiores ea. Ut consequatur totam qui expedita.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(402, '2021-05-03 03:57:26', '2021-10-15 09:00:07', 2, 5, 3, NULL, 10.00, 97.00, NULL, 'paid', 'Sit quibusdam architecto quibusdam ducimus culpa quia dicta qui. Rerum ratione alias natus nobis. Omnis molestiae voluptate et sed eligendi fuga.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(403, '2020-10-29 03:15:45', '2021-10-15 09:00:07', 1, 5, 3, NULL, 5.00, 59.00, NULL, 'paid', 'Iusto consequatur fugiat et enim quas ex facilis. Reiciendis aliquam excepturi et nobis excepturi. Adipisci dolores cupiditate enim quasi repellendus id quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(404, '2021-05-15 05:59:41', '2021-10-15 09:00:07', 4, 5, 1, NULL, 5.00, 59.00, NULL, 'paid', 'Nobis id maiores in quis iusto libero. Consequatur qui sit sint qui eos. Libero facere sequi dignissimos numquam itaque nostrum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(405, '2021-01-01 12:42:13', '2021-10-15 09:00:07', 4, 5, 2, NULL, 9.00, 97.00, NULL, 'paid', 'Et quidem sunt animi omnis. Ipsum tempore illum a maiores veniam. Natus aperiam et temporibus deleniti et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(406, '2021-04-20 21:58:30', '2021-10-15 09:00:07', 3, 4, 3, NULL, 8.00, 33.00, NULL, 'paid', 'Ab est qui quos autem corrupti a. Quae cum fugit autem aut quos occaecati dolorum. Aliquid molestiae labore non. Dolorum qui laborum libero qui dolorem voluptatem. Aliquam quo quidem unde fugiat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(407, '2021-01-06 13:27:20', '2021-10-15 09:00:07', 5, 5, 2, NULL, 10.00, 89.00, NULL, 'paid', 'Distinctio et sit aut aperiam. Nobis doloremque quo itaque quidem quas perspiciatis quod. Dignissimos cumque repellat assumenda unde totam. Alias blanditiis in nihil quam consequatur beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(408, '2021-10-14 01:14:36', '2021-10-15 09:00:07', 2, 5, 2, NULL, 8.00, 72.00, NULL, 'paid', 'Est dolore nobis dolor suscipit id ea. Voluptatem autem dolore placeat est officiis. Ducimus earum placeat officiis nisi et. Quis consequatur nihil similique ut et est quia quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(409, '2021-04-22 11:40:30', '2021-10-15 09:00:07', 5, 4, 3, NULL, 5.00, 77.00, NULL, 'paid', 'Quasi aut est consequatur aperiam totam. Vel quod dolorem et earum beatae. Et a dolores quod et. Ea ducimus cupiditate vel velit esse magni consectetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(410, '2021-08-21 04:00:56', '2021-10-15 09:00:07', 4, 5, 2, NULL, 7.00, 90.00, NULL, 'paid', 'Perferendis quibusdam omnis qui aut debitis similique magnam. Quis velit exercitationem eos laudantium sunt vero. Molestiae quam quisquam assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(411, '2021-02-24 06:16:37', '2021-10-15 09:00:07', 4, 5, 3, NULL, 8.00, 84.00, NULL, 'paid', 'Est laudantium est in illo provident omnis reprehenderit aut. Fugit eius harum labore id. Facilis consectetur alias in eaque temporibus quia numquam illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(412, '2021-02-12 19:52:39', '2021-10-15 09:00:07', 4, 4, 1, NULL, 10.00, 58.00, NULL, 'paid', 'Iste voluptatem quia accusamus. Repellendus error enim ducimus labore. Esse aut maiores minima modi sint tempora corporis. Quidem nam eum atque voluptates laboriosam rerum odio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(413, '2020-11-05 00:08:17', '2021-10-15 09:00:07', 5, 5, 1, NULL, 8.00, 64.00, NULL, 'paid', 'Quia voluptatum ea quod iusto dicta. Excepturi ad voluptatum quisquam repellat at deleniti sunt. Vel sapiente neque sed tenetur ut. Distinctio aspernatur dignissimos aut aperiam eligendi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(414, '2020-11-18 14:03:15', '2021-10-15 09:00:07', 1, 5, 1, NULL, 5.00, 97.00, NULL, 'paid', 'Incidunt sint ipsam dolor est numquam. Necessitatibus officia iusto nobis eius.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(415, '2021-07-17 22:59:23', '2021-10-15 09:00:07', 1, 4, 1, NULL, 5.00, 64.00, NULL, 'paid', 'Similique corporis velit consequatur omnis similique est. Velit reprehenderit qui iure neque. Quo et ratione rerum. Quis distinctio perspiciatis ipsam id sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(416, '2021-05-16 01:45:00', '2021-10-15 09:00:07', 4, 5, 1, NULL, 6.00, 70.00, NULL, 'paid', 'Voluptate ab dolorem deserunt quae neque sint soluta quia. Praesentium itaque dolores esse aut. Omnis dolorem delectus maxime sit placeat non qui quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(417, '2021-07-09 08:12:11', '2021-10-15 09:00:07', 3, 4, 2, NULL, 7.00, 46.00, NULL, 'paid', 'Minus quae architecto itaque debitis aut quasi perferendis totam. Cupiditate et sunt optio quasi quisquam error. Consectetur autem enim culpa molestias. Iure alias assumenda repellat perferendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(418, '2021-09-26 20:33:21', '2021-10-15 09:00:07', 1, 4, 3, NULL, 6.00, 40.00, NULL, 'paid', 'Distinctio facilis sit voluptate qui adipisci ducimus. Laborum nesciunt quisquam pariatur nihil. Repellendus possimus rerum maiores. Accusantium qui sunt qui dolore quo ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(419, '2021-07-03 02:24:11', '2021-10-15 09:00:07', 5, 5, 1, NULL, 5.00, 94.00, NULL, 'paid', 'Velit officia optio praesentium rerum dignissimos expedita voluptatem. Non eos nostrum quibusdam magni exercitationem officiis occaecati. Libero eos nulla ipsum tempore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(420, '2021-03-14 20:55:44', '2021-10-15 09:00:07', 4, 4, 1, NULL, 6.00, 96.00, NULL, 'paid', 'Qui et sed et eos quam. Adipisci quidem nihil aliquid assumenda est. Quia minus sapiente voluptate cupiditate reiciendis placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(421, '2021-04-22 01:01:00', '2021-10-15 09:00:07', 5, 4, 3, NULL, 10.00, 50.00, NULL, 'paid', 'Illo quae et laboriosam commodi. Impedit repellendus et officiis ut et. Aut eius accusantium et est doloribus. Sed aut expedita exercitationem error et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(422, '2021-09-26 12:10:29', '2021-10-15 09:00:07', 2, 4, 2, NULL, 8.00, 64.00, NULL, 'paid', 'Nostrum ad alias animi quisquam iure dolorum nulla. Saepe cumque ut harum nobis fuga nihil similique. Consequuntur et non eos sed. Qui voluptate fugiat sequi beatae libero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(423, '2021-05-10 11:59:14', '2021-10-15 09:00:07', 2, 5, 3, NULL, 10.00, 71.00, NULL, 'paid', 'Harum molestiae quia illo quasi. Ex dolore id alias amet iure.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(424, '2020-12-30 10:11:25', '2021-10-15 09:00:07', 1, 4, 1, NULL, 5.00, 56.00, NULL, 'paid', 'Quia ad reprehenderit non voluptatum molestiae saepe eveniet sequi. Consequatur quia qui et quia. Illum saepe voluptas quaerat aspernatur facilis quia. Natus sint maiores et non illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(425, '2020-11-13 23:18:29', '2021-10-15 09:00:07', 4, 5, 3, NULL, 5.00, 90.00, NULL, 'paid', 'Aut doloribus ipsum et mollitia eum voluptatem maxime. Dolorem est sit amet hic. Sequi veritatis sapiente facilis. Est quia illo accusantium laborum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(426, '2020-12-11 09:28:51', '2021-10-15 09:00:07', 4, 4, 3, NULL, 7.00, 82.00, NULL, 'paid', 'Earum voluptatem enim dicta quo. Eum eos quo et vel cum non sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`) VALUES
(427, '2021-06-26 18:46:14', '2021-10-15 09:00:07', 3, 5, 2, NULL, 7.00, 58.00, NULL, 'paid', 'Nesciunt qui recusandae in rerum itaque iure est. Voluptatum recusandae dolores qui minus. Quo et cum et harum commodi amet dolorem in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(428, '2020-11-09 00:52:15', '2021-10-15 09:00:07', 3, 4, 2, NULL, 10.00, 75.00, NULL, 'paid', 'Illum sit saepe ad repudiandae. Consequatur autem vero dolores itaque rem deserunt. Culpa dolorem est error.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(429, '2021-04-12 04:36:32', '2021-10-15 09:00:07', 5, 5, 1, NULL, 6.00, 76.00, NULL, 'paid', 'Quis aut aut assumenda ullam nihil. Eligendi dolor magni qui aliquam. Quo id beatae maiores provident. Pariatur ab est dolorem et aut dignissimos fuga.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(430, '2021-09-09 01:44:24', '2021-10-15 09:00:07', 1, 4, 2, NULL, 5.00, 30.00, NULL, 'paid', 'Ut eum omnis sunt. Praesentium sed est recusandae quae id. Cumque exercitationem deserunt non quas tempora libero. Similique et voluptatem consequatur adipisci voluptas natus ullam consectetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(431, '2021-08-26 23:32:01', '2021-10-15 09:00:07', 4, 5, 3, NULL, 7.00, 89.00, NULL, 'paid', 'Quis praesentium voluptatem molestiae. Quo voluptatem autem consectetur voluptas. Autem consequatur harum quisquam sapiente. Qui corporis quis reiciendis qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(432, '2021-06-29 04:43:47', '2021-10-15 09:00:07', 4, 4, 1, NULL, 9.00, 79.00, NULL, 'paid', 'Sapiente placeat enim voluptas aliquid quae. Placeat veniam sed velit cumque provident dolore quam est. Recusandae facere quia repellendus sint sint dolorum quibusdam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(433, '2021-03-03 00:28:00', '2021-10-15 09:00:07', 2, 4, 2, NULL, 8.00, 40.00, NULL, 'paid', 'Labore qui ipsa assumenda magnam excepturi. Natus harum facilis odio id id laborum. Et quos nihil aspernatur nisi omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(434, '2021-05-11 19:38:30', '2021-10-15 09:00:07', 3, 4, 2, NULL, 10.00, 58.00, NULL, 'paid', 'Iste et ratione sint dolor dolore. Voluptas molestias non quibusdam dolorem modi voluptatibus. Quasi qui similique voluptas reprehenderit commodi labore. Qui ullam nulla quisquam laborum soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(435, '2021-08-12 06:40:01', '2021-10-15 09:00:07', 5, 5, 3, NULL, 6.00, 70.00, NULL, 'paid', 'Et explicabo aliquid doloribus repellat aut laboriosam. Et id velit eaque tempora similique. Ad molestiae vero voluptatem nam autem sed. Deleniti aut voluptatum cupiditate sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(436, '2020-12-31 00:53:04', '2021-10-15 09:00:07', 4, 4, 3, NULL, 6.00, 58.00, NULL, 'paid', 'Repellendus suscipit repellendus dolore tempore est et quis. Ut quisquam delectus hic.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(437, '2021-07-21 08:16:27', '2021-10-15 09:00:07', 2, 5, 2, NULL, 9.00, 72.00, NULL, 'paid', 'Omnis et placeat possimus magni quia maxime asperiores. Odio et labore voluptatem sunt. Omnis dolore necessitatibus ex sapiente unde. Facere dolore quo iure natus ut sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(438, '2021-05-16 11:09:56', '2021-10-15 09:00:07', 3, 4, 3, NULL, 9.00, 57.00, NULL, 'paid', 'Nobis aliquid dolor ipsum illo at. Nobis et esse nemo voluptatem. Sed autem animi voluptatum ad similique id atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(439, '2021-07-02 16:20:02', '2021-10-15 09:00:07', 3, 4, 1, NULL, 10.00, 72.00, NULL, 'paid', 'Nisi ipsa et ducimus quidem eligendi. Adipisci quae quia nam id laborum accusamus vel. Quas placeat quo nemo nulla quis accusamus. Itaque beatae sit molestiae accusantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(440, '2021-10-13 03:01:33', '2021-10-15 09:00:07', 2, 4, 2, NULL, 7.00, 42.00, NULL, 'paid', 'Officia est dolor deserunt quod assumenda dignissimos. Architecto explicabo similique accusantium omnis dolores. Cum consectetur voluptates et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(441, '2020-12-08 21:39:45', '2021-10-15 09:00:07', 5, 4, 1, NULL, 8.00, 78.00, NULL, 'paid', 'Quam temporibus et pariatur. Voluptas ut harum sequi ad dolore velit qui. Non a itaque dolore earum rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(442, '2021-04-14 10:10:27', '2021-10-15 09:00:07', 3, 5, 2, NULL, 9.00, 55.00, NULL, 'paid', 'Dolor esse similique est aliquid est ab enim eos. Et rem rerum omnis deserunt tenetur adipisci facere corporis. Harum voluptas totam non voluptatibus vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(443, '2021-09-30 14:49:56', '2021-10-15 09:00:07', 4, 4, 1, NULL, 5.00, 88.00, NULL, 'paid', 'Eligendi qui dolores quis dolore. Repellat et exercitationem et. Esse maiores excepturi rerum quae. Ut illo hic enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(444, '2021-10-13 01:29:35', '2021-10-15 09:00:07', 1, 5, 1, NULL, 9.00, 57.00, NULL, 'paid', 'Minus fugit natus alias eos pariatur ex. Non sed adipisci facilis minima nisi tempora. Velit aperiam est ipsa. Omnis non reprehenderit possimus et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(445, '2020-11-20 11:23:36', '2021-10-15 09:00:07', 5, 5, 1, NULL, 10.00, 95.00, NULL, 'paid', 'Itaque dignissimos cum id omnis dignissimos officia. Sed impedit qui et aut quis. Cum sint sit assumenda mollitia. Sequi quod sint ipsa vero laboriosam ipsum minima.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(446, '2020-10-28 01:14:06', '2021-10-15 09:00:07', 3, 5, 1, NULL, 8.00, 75.00, NULL, 'paid', 'Iure natus cupiditate debitis dolor. Odit sit modi veritatis rem temporibus ut libero. Est fugit aliquid sint porro minima et facere. Perferendis et error qui quis numquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(447, '2021-06-19 19:08:52', '2021-10-15 09:00:07', 3, 4, 3, NULL, 10.00, 68.00, NULL, 'paid', 'Eos id amet qui et laudantium provident. Temporibus odit quibusdam ratione et. Non velit sapiente praesentium sit maxime. Iusto ut dolor cum id quibusdam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(448, '2021-08-26 03:34:59', '2021-10-15 09:00:07', 4, 5, 1, NULL, 5.00, 43.00, NULL, 'paid', 'Ut quibusdam in reprehenderit voluptate voluptate sint ut. Omnis rem harum recusandae facere totam. Consequatur blanditiis qui fugit qui illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(449, '2021-04-12 02:21:10', '2021-10-15 09:00:07', 1, 5, 3, NULL, 10.00, 30.00, NULL, 'paid', 'Sed ut cumque rerum minus nisi nihil. Assumenda et consequatur qui et deserunt assumenda voluptas explicabo. Temporibus et aut minus quos iste pariatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(450, '2021-02-09 04:37:14', '2021-10-15 09:00:07', 4, 5, 1, NULL, 5.00, 32.00, NULL, 'paid', 'Inventore asperiores et est doloribus. Id officia a eum. Molestiae sint ducimus saepe. Voluptatem vero sed quae explicabo et. Sed enim accusamus consequuntur voluptas doloremque maxime reprehenderit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(451, '2021-09-26 05:20:27', '2021-10-15 09:00:07', 2, 4, 1, NULL, 9.00, 87.00, NULL, 'paid', 'Laborum iste ut earum qui at in earum. Ullam laborum voluptate aut accusamus. Quasi inventore voluptates maiores ea. Nulla similique ab rerum omnis. Voluptatem facilis sit impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(452, '2021-09-19 21:32:27', '2021-10-15 09:00:07', 5, 5, 3, NULL, 8.00, 57.00, NULL, 'paid', 'In libero pariatur vitae id harum adipisci numquam quos. Est alias quod iure eaque. Corrupti nobis itaque consequatur est cupiditate ipsam nihil ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(453, '2021-04-01 12:46:42', '2021-10-15 09:00:07', 5, 5, 2, NULL, 6.00, 52.00, NULL, 'paid', 'Perspiciatis ut debitis omnis. Earum reprehenderit quia ad sed qui beatae sed. Veniam dolorem vitae molestiae impedit velit corporis qui. Provident amet omnis in aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(454, '2021-03-11 05:17:46', '2021-10-15 09:00:07', 2, 4, 1, NULL, 5.00, 78.00, NULL, 'paid', 'Cum quo porro ea quis. Tempore quia officiis voluptatibus aut et est tempora. Porro suscipit est sed dolorem quibusdam fuga ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(455, '2021-05-20 22:03:03', '2021-10-15 09:00:07', 3, 4, 2, NULL, 6.00, 99.00, NULL, 'paid', 'Velit suscipit non est quia in rerum rerum ex. Sed sint sunt minima qui ipsa nesciunt. Aut dolor similique ex soluta possimus voluptatibus fugiat. Nostrum ut tempora magnam ut nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(456, '2021-10-12 18:46:35', '2021-10-15 09:00:07', 1, 5, 1, NULL, 10.00, 50.00, NULL, 'paid', 'Ad nobis qui sed ipsa. Non quis aut facere molestias enim ipsam est deleniti. Inventore optio enim dignissimos est error nam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(457, '2021-02-09 01:17:01', '2021-10-15 09:00:07', 2, 4, 3, NULL, 10.00, 72.00, NULL, 'paid', 'Vitae assumenda aut et commodi. Laboriosam cum autem minus unde repudiandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(458, '2021-04-09 19:37:06', '2021-10-15 09:00:07', 2, 5, 2, NULL, 8.00, 88.00, NULL, 'paid', 'Soluta non placeat sed amet. Illo reiciendis voluptatem enim excepturi quibusdam eius neque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(459, '2020-12-16 18:31:54', '2021-10-15 09:00:07', 4, 5, 2, NULL, 5.00, 76.00, NULL, 'paid', 'Laudantium nam eum quisquam ab veritatis. Delectus numquam laborum optio velit doloribus deleniti ut animi. Et deserunt repellendus fugit occaecati omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(460, '2021-03-01 17:06:54', '2021-10-15 09:00:07', 3, 4, 2, NULL, 10.00, 38.00, NULL, 'paid', 'Officiis et odit dolore. Itaque aut fuga eos voluptatibus rerum deserunt ipsam. Distinctio est repudiandae suscipit rerum. Ea doloremque porro quia at maiores ut sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(461, '2020-11-25 11:12:28', '2021-10-15 09:00:07', 2, 5, 2, NULL, 7.00, 63.00, NULL, 'paid', 'Et velit quidem inventore sunt aut. Dignissimos eos quo consectetur voluptatem. Recusandae maiores aliquid reprehenderit voluptatem eveniet quia facere.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(462, '2021-03-20 01:03:56', '2021-10-15 09:00:07', 2, 4, 2, NULL, 7.00, 36.00, NULL, 'paid', 'Et ipsam iusto dolor molestiae et et nostrum. Magni hic non labore nihil. Ut quia aut est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(463, '2021-02-12 03:20:25', '2021-10-15 09:00:07', 2, 4, 2, NULL, 7.00, 86.00, NULL, 'paid', 'Culpa et qui reiciendis. Et illum et ut ducimus ut quod nostrum repellendus. Exercitationem molestiae qui sequi autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(464, '2021-02-06 05:01:20', '2021-10-15 09:00:07', 5, 4, 2, NULL, 8.00, 34.00, NULL, 'paid', 'Nulla magni consequatur eum temporibus qui consequatur aliquam. Velit animi laborum tempora facilis. Rerum praesentium quidem ut beatae. Quos explicabo excepturi natus aut quia et recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(465, '2021-05-05 06:06:04', '2021-10-15 09:00:07', 4, 4, 1, NULL, 10.00, 91.00, NULL, 'paid', 'Animi deserunt ad corrupti expedita dicta nihil ut. Dicta ipsam nemo eos dolor quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(466, '2021-10-01 21:07:29', '2021-10-15 09:00:07', 1, 5, 1, NULL, 7.00, 86.00, NULL, 'paid', 'Fugiat qui eveniet quam enim. Quibusdam provident libero debitis necessitatibus similique. Dolores doloremque et expedita saepe in sed perspiciatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(467, '2021-06-10 06:40:48', '2021-10-15 09:00:07', 4, 4, 2, NULL, 6.00, 46.00, NULL, 'paid', 'Occaecati ut necessitatibus recusandae illo. Voluptatem omnis ullam rerum et laborum corrupti commodi. Aut aperiam provident consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(468, '2021-05-21 17:37:38', '2021-10-15 09:00:07', 3, 5, 3, NULL, 5.00, 88.00, NULL, 'paid', 'Possimus praesentium neque corporis veniam distinctio consequatur. Quia fuga nihil alias sed voluptatem aut. Voluptate omnis id vel voluptatem aliquid voluptatem. Sit fuga velit nesciunt in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(469, '2020-10-22 19:07:48', '2021-10-15 09:00:07', 1, 4, 1, NULL, 6.00, 85.00, NULL, 'paid', 'Atque fugit ab maxime dolor. Sunt amet ipsum aperiam rem qui ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(470, '2021-07-05 04:35:34', '2021-10-15 09:00:07', 1, 4, 3, NULL, 6.00, 69.00, NULL, 'paid', 'Ratione dolore adipisci facilis laboriosam dolores blanditiis repellat ab. Voluptas est dolor iure veniam ea vitae deleniti. Qui blanditiis occaecati amet illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(471, '2021-10-13 01:07:35', '2021-10-15 09:00:07', 2, 4, 1, NULL, 6.00, 54.00, NULL, 'paid', 'Eum incidunt nihil doloribus numquam aliquam reprehenderit expedita quasi. Culpa ipsa voluptate sed et dolorum. Accusamus sed consequatur ad cum tenetur odio veritatis soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(472, '2021-04-06 12:39:07', '2021-10-15 09:00:07', 2, 4, 3, NULL, 5.00, 34.00, NULL, 'paid', 'Voluptates eum sequi consequuntur pariatur debitis enim. Veniam impedit id in debitis autem eum velit. Quia ipsa non cupiditate alias aut quis. Repudiandae dignissimos dolorum et officiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(473, '2021-08-15 01:37:13', '2021-10-15 09:00:07', 2, 4, 2, NULL, 7.00, 77.00, NULL, 'paid', 'Illum dicta nostrum facilis voluptatem perspiciatis. Dolor fugiat voluptate nihil quia sunt. Labore aperiam consequatur suscipit adipisci.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(474, '2021-10-07 06:27:03', '2021-10-15 09:00:07', 2, 5, 1, NULL, 9.00, 52.00, NULL, 'paid', 'Molestias dicta laudantium qui. Dignissimos est nihil sed minus nemo est aut. Vel et enim ea facilis similique animi harum. Numquam magnam quo magni id sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(475, '2021-01-19 14:13:42', '2021-10-15 09:00:07', 5, 5, 2, NULL, 10.00, 86.00, NULL, 'paid', 'Ullam provident qui aperiam. Dicta est minus aut. Voluptatem ut non fuga rerum mollitia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(476, '2020-12-22 19:07:47', '2021-10-15 09:00:07', 2, 5, 2, NULL, 6.00, 40.00, NULL, 'paid', 'Voluptatem nesciunt accusamus minima eligendi optio. Aut molestias ratione omnis aspernatur ut natus. Ab molestiae totam ut sunt repudiandae. Nesciunt laboriosam molestiae est itaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(477, '2021-03-20 17:51:02', '2021-10-15 09:00:07', 5, 4, 3, NULL, 6.00, 81.00, NULL, 'paid', 'Dolorem unde dolorem molestias eligendi. Dolores fugiat quasi veritatis et. Molestiae ullam qui reprehenderit et magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(478, '2020-10-26 19:28:59', '2021-10-15 09:00:07', 5, 4, 1, NULL, 9.00, 40.00, NULL, 'paid', 'Fugiat fugiat occaecati eius officia. Magni est blanditiis a quia repellendus quae et ullam. Animi fugit tenetur inventore. Temporibus praesentium perspiciatis quia minima id porro provident fugit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(479, '2021-10-13 00:40:50', '2021-10-15 09:00:07', 1, 4, 2, NULL, 7.00, 73.00, NULL, 'paid', 'Molestiae alias eius corrupti omnis. Dignissimos unde ipsum fuga ipsum aut reiciendis et. Eos eos quaerat maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(480, '2021-07-19 10:01:21', '2021-10-15 09:00:07', 5, 4, 3, NULL, 7.00, 64.00, NULL, 'paid', 'Facilis veritatis natus sit. Quo vitae repellat aliquam eum autem qui atque. Magni dolorem reprehenderit in dolorem praesentium sunt dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(481, '2021-04-22 04:51:46', '2021-10-15 09:00:07', 1, 5, 3, NULL, 9.00, 66.00, NULL, 'paid', 'Laborum perspiciatis eos tempora est nobis aut velit. Occaecati aperiam vel fugit assumenda. Fugiat magnam vero dicta in incidunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(482, '2021-09-12 12:06:56', '2021-10-15 09:00:07', 5, 4, 3, NULL, 7.00, 83.00, NULL, 'paid', 'Alias non voluptatem modi ipsum maxime consequatur quasi. Voluptatem omnis et dicta. Pariatur voluptatem ab nihil eius ad error.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(483, '2021-04-25 18:04:30', '2021-10-15 09:00:07', 1, 4, 1, NULL, 9.00, 76.00, NULL, 'paid', 'Omnis est dolor aliquid error illo. Saepe ullam eveniet non qui. Est qui non nobis minima quia magnam totam. Rerum cum debitis facere enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(484, '2021-05-26 06:43:17', '2021-10-15 09:00:07', 3, 4, 1, NULL, 7.00, 71.00, NULL, 'paid', 'Laudantium voluptatem est consectetur est iste velit veniam eum. Velit nobis eum possimus natus ipsam quibusdam. Doloribus sint exercitationem aliquid ex asperiores maxime voluptas nemo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(485, '2021-05-01 12:02:08', '2021-10-15 09:00:07', 4, 5, 2, NULL, 6.00, 62.00, NULL, 'paid', 'Ut ex est omnis voluptate et. Blanditiis voluptatibus ut officia delectus. Minus ullam sint facere sunt ipsa. Necessitatibus similique qui nihil quis ab deserunt assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(486, '2021-05-19 14:44:39', '2021-10-15 09:00:07', 4, 4, 3, NULL, 8.00, 47.00, NULL, 'paid', 'Molestias sint suscipit eos dolorum. Adipisci ipsam minima neque sunt. Libero quis aut numquam doloremque. Aut quia eligendi atque blanditiis quidem sunt corporis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(487, '2021-03-29 17:04:25', '2021-10-15 09:00:07', 5, 5, 1, NULL, 10.00, 72.00, NULL, 'paid', 'Et pariatur alias ut et est. Aspernatur ipsum rerum qui voluptatem recusandae inventore. Iure qui minus et id ratione numquam iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(488, '2021-09-12 20:19:37', '2021-10-15 09:00:07', 3, 4, 1, NULL, 5.00, 79.00, NULL, 'paid', 'Minus fugit itaque quo repellat qui est. Et quisquam ea et blanditiis quae quis enim. Ut dolores tempora exercitationem nihil unde consequatur. Illum natus tempora maiores exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(489, '2021-01-25 19:40:11', '2021-10-15 09:00:07', 4, 5, 2, NULL, 7.00, 54.00, NULL, 'paid', 'Magni et quidem eius quia eligendi. Voluptas in omnis enim praesentium ad. Nihil consequuntur cupiditate incidunt. Aut sit omnis ut ipsum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(490, '2020-11-05 14:00:36', '2021-10-15 09:00:07', 1, 4, 1, NULL, 10.00, 45.00, NULL, 'paid', 'Blanditiis quasi aliquid rerum ullam in et officiis tempora. Voluptatem quia modi qui explicabo libero dolores. Nisi enim voluptatum eaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(491, '2020-10-26 04:42:23', '2021-10-15 09:00:07', 4, 5, 2, NULL, 5.00, 85.00, NULL, 'paid', 'Ratione quod animi enim nobis beatae. At aliquam deleniti est ut delectus. Omnis provident voluptate odit ab sit est iure.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(492, '2021-08-17 20:35:21', '2021-10-15 09:00:07', 4, 4, 1, NULL, 8.00, 94.00, NULL, 'paid', 'Cum totam est dolores labore est quam omnis. Animi ullam consequatur eum voluptatum. Numquam vero ut at quos ut qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(493, '2021-09-06 20:38:35', '2021-10-15 09:00:07', 2, 4, 1, NULL, 5.00, 99.00, NULL, 'paid', 'Aut quia adipisci dolore officiis possimus ducimus. Iusto non molestiae nemo tempora dolor. Ex est dolorem nihil alias rerum placeat. Architecto optio dicta dolorum aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(494, '2021-05-22 22:43:59', '2021-10-15 09:00:07', 5, 5, 3, NULL, 7.00, 96.00, NULL, 'paid', 'Dignissimos placeat saepe natus itaque. Sed tempore qui earum dolorem voluptatem perferendis rem dolor. Neque praesentium at et sed aperiam architecto velit. Et modi odit et voluptas placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(495, '2020-11-13 13:47:06', '2021-10-15 09:00:07', 2, 4, 1, NULL, 10.00, 34.00, NULL, 'paid', 'Ducimus aut eos commodi in adipisci. Voluptatum et et in rerum. Est esse qui adipisci sed officiis autem sint. Voluptatem vero rem accusamus commodi ut qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(496, '2021-08-18 10:50:36', '2021-10-15 09:00:07', 4, 4, 1, NULL, 7.00, 81.00, NULL, 'paid', 'Laudantium odio doloremque sequi officia. Quas et rerum accusamus adipisci et dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(497, '2020-11-30 17:40:51', '2021-10-15 09:00:07', 2, 5, 3, NULL, 9.00, 82.00, NULL, 'paid', 'Sed excepturi sunt vel asperiores perferendis architecto. Veniam reprehenderit eum accusantium autem autem voluptatem impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(498, '2020-12-08 10:10:42', '2021-10-15 09:00:07', 5, 5, 3, NULL, 9.00, 57.00, NULL, 'paid', 'Quisquam suscipit voluptas sint aliquid nulla. Id eveniet sunt natus nihil consectetur eaque. Est harum est molestiae numquam debitis sed nam sed. Esse vel qui repellendus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(499, '2020-12-11 20:14:50', '2021-10-15 09:00:07', 3, 5, 2, NULL, 6.00, 93.00, NULL, 'paid', 'Dicta ipsa voluptas sunt animi quas et. Ipsa dignissimos vel et suscipit alias cupiditate. Est voluptatum voluptas sint autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(500, '2021-01-17 09:38:58', '2021-10-15 09:00:07', 2, 4, 3, NULL, 9.00, 95.00, NULL, 'paid', 'Sapiente consequuntur odio ad. Voluptatem velit et quia enim dolor. Voluptatem ut ut quae delectus sit non neque. A et sed voluptate ut. Eveniet placeat maxime et aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(501, '2021-10-14 12:00:08', '2021-10-15 09:00:07', 3, 4, 1, NULL, 7.00, 55.97, NULL, 'paid', 'Porro corrupti ipsam ducimus dolor. Tempore in voluptatem qui alias. Sunt ullam optio deleniti ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(502, '2021-10-14 20:56:42', '2021-10-15 09:00:07', 3, 5, 3, NULL, 7.00, 33.00, NULL, 'paid', 'Voluptatem et natus voluptatem voluptatibus nemo. Omnis soluta consequatur ullam et quo. Quod eaque omnis ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(503, '2021-10-14 18:17:57', '2021-10-15 09:00:07', 1, 4, 3, NULL, 8.00, 96.00, NULL, 'paid', 'Totam occaecati est tenetur voluptatibus et sit aperiam. Occaecati consequatur nostrum quae hic velit velit placeat quibusdam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(504, '2021-10-15 05:15:31', '2021-10-15 09:00:07', 5, 4, 3, NULL, 8.00, 40.00, NULL, 'paid', 'Corrupti praesentium esse quisquam praesentium explicabo sit molestias. Qui ut sit veritatis optio eveniet id. Accusantium sint quia numquam et omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(505, '2021-10-15 02:16:43', '2021-10-15 09:00:07', 4, 5, 1, NULL, 8.00, 55.97, NULL, 'paid', 'Consequuntur quaerat est veniam dolorum. Minima impedit molestiae asperiores nihil. Repellat earum temporibus totam corporis veritatis qui. Omnis eum quod voluptas blanditiis quaerat error placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(506, '2021-10-14 13:45:49', '2021-10-15 09:00:07', 4, 4, 2, NULL, 9.00, 83.00, NULL, 'paid', 'Doloribus optio explicabo harum illo vitae rerum quos. Sint nihil qui odit voluptatem. Et sed voluptas rerum ipsa eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(507, '2021-10-14 23:46:36', '2021-10-15 09:00:07', 2, 5, 1, NULL, 8.00, 55.97, NULL, 'paid', 'Ut sit reiciendis et facere. Excepturi ut omnis optio mollitia est. Eos odio vel iure. Quia quis qui ea iste. Et sunt corrupti accusamus nam consequatur eum dolorum. A similique rerum et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(508, '2021-10-15 01:54:35', '2021-10-15 09:00:07', 1, 4, 1, 3, 8.00, 55.97, NULL, 'paid', 'Iure id enim non nobis deserunt cupiditate. Enim sunt earum minima atque ipsum. Nesciunt dignissimos deleniti et autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(509, '2021-10-15 03:41:24', '2021-10-15 09:00:07', 5, 4, 1, NULL, 10.00, 55.97, NULL, 'paid', 'Qui eius eum at beatae. Quasi quidem eveniet dolores. Architecto quae numquam voluptate possimus sed. Earum suscipit aut repudiandae et placeat at.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(510, '2021-10-15 06:13:06', '2021-10-15 09:00:07', 3, 4, 3, NULL, 6.00, 63.00, NULL, 'paid', 'Molestias ut quidem eum non quas. Dolorem ut quia molestias consequatur quisquam. Eos iusto libero optio aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(511, '2021-10-15 06:21:01', '2021-10-15 09:00:07', 5, 4, 1, NULL, 5.00, 55.97, NULL, 'paid', 'Quo facere incidunt quae voluptatem illo quod. Totam quam sint rerum fugiat ducimus. Iure excepturi nisi aut numquam minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(512, '2021-10-14 16:20:04', '2021-10-15 09:00:07', 1, 4, 2, 3, 5.00, 68.00, NULL, 'paid', 'Et laudantium ipsa maxime recusandae. Unde reprehenderit sit voluptatem ad ipsa magnam. Id aut id earum in repudiandae earum. Et esse id libero est aut.', '40.588894', '-73.939175', NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(513, '2021-10-14 17:37:13', '2021-10-15 09:00:07', 1, 5, 2, NULL, 9.00, 35.00, NULL, 'paid', 'Vero ratione repudiandae asperiores minima pariatur. Velit blanditiis provident consectetur unde. Eius eum soluta aut sit culpa ut. Optio dolorum qui quisquam consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(514, '2021-10-14 17:57:39', '2021-10-15 09:00:07', 4, 4, 3, NULL, 7.00, 73.00, NULL, 'paid', 'Dicta delectus sit repellat rerum. Aut officiis ullam eos excepturi quas. Qui dolores voluptatibus eius quis veritatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(515, '2021-10-15 02:09:07', '2021-10-15 09:00:07', 5, 5, 2, NULL, 6.00, 65.00, NULL, 'paid', 'Veritatis accusantium ut rerum laudantium ea. Dolores odit et consequatur quaerat deserunt non sit aut. Qui labore voluptas deleniti sequi sit minima unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(516, '2021-10-14 11:03:20', '2021-10-15 09:00:07', 3, 5, 3, 3, 5.00, 59.00, NULL, 'paid', 'Mollitia aut et similique amet. Corrupti autem est quia blanditiis dignissimos eos ut animi. Voluptatibus molestiae alias tenetur repellat in repellat doloremque cum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(517, '2021-10-14 14:10:53', '2021-10-15 09:00:07', 5, 5, 1, NULL, 9.00, 55.97, NULL, 'paid', 'Iure eveniet velit nesciunt sit qui sapiente. Vel minus perferendis voluptates et consequuntur magnam et. Vero dolore rerum quo enim tempore sunt tempora. Eaque qui eum nihil beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(518, '2021-10-14 18:00:04', '2021-10-15 09:00:07', 1, 4, 2, NULL, 8.00, 71.00, NULL, 'paid', 'Eum omnis id nihil quaerat ea. Facilis ut dolorem eos. Blanditiis illo aliquam modi animi aut dolores voluptatem amet. Necessitatibus rerum cupiditate quod.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(519, '2021-10-15 00:31:24', '2021-10-15 09:00:07', 5, 5, 1, NULL, 6.00, 55.97, NULL, 'paid', 'Vero magni ea tempore enim fugit. Repudiandae sit voluptas voluptatibus voluptas. Illo est consequatur pariatur in quos est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(520, '2021-10-14 22:09:11', '2021-10-15 09:00:07', 4, 5, 1, NULL, 10.00, 55.97, NULL, 'paid', 'Quia consectetur non officia accusantium. Atque ut rerum neque. Occaecati placeat odio omnis illum qui. Odit officia et rerum ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(521, '2021-10-15 07:39:29', '2021-10-15 09:00:07', 1, 4, 2, NULL, 6.00, 72.00, NULL, 'paid', 'Eum deserunt suscipit esse laboriosam aut ut. Eveniet sint hic eum aut ut. Laudantium eaque dolores facilis aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(522, '2021-10-15 02:23:17', '2021-10-15 09:00:07', 3, 4, 3, NULL, 7.00, 66.00, NULL, 'paid', 'Asperiores et maiores commodi consequatur occaecati. Quia non quisquam quas minima delectus. Inventore ipsa quasi quibusdam totam eveniet est. Totam qui eum at earum consectetur quia occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(523, '2021-10-14 16:32:15', '2021-10-15 09:00:07', 1, 5, 3, NULL, 10.00, 72.00, NULL, 'paid', 'Accusantium expedita amet animi et veritatis. Velit quis ut voluptatem quia molestiae ut ea. Repellendus velit doloremque qui dignissimos soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(524, '2021-10-14 12:55:23', '2021-10-15 09:00:07', 3, 4, 3, 3, 6.00, 89.00, NULL, 'paid', 'Consectetur eius facere dignissimos. Fuga ut excepturi fuga similique rerum voluptatem ut voluptatem. Esse officia nostrum magnam quia consequuntur incidunt ducimus sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(525, '2021-10-14 15:57:12', '2021-10-15 09:00:07', 1, 5, 3, NULL, 8.00, 88.00, NULL, 'paid', 'Ipsam cupiditate voluptatem nemo libero minima et et quas. Voluptas excepturi deleniti et tempora neque porro repellendus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(526, '2021-10-15 05:56:55', '2021-10-15 09:00:07', 1, 5, 1, NULL, 8.00, 55.97, NULL, 'paid', 'Et optio et qui in quo aperiam. Modi itaque odio ullam. Eum alias vitae atque pariatur molestias. Voluptatem sit delectus sunt eum atque temporibus quod.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(527, '2021-10-14 16:23:02', '2021-10-15 09:00:07', 3, 4, 2, NULL, 8.00, 33.00, NULL, 'paid', 'Sequi ab tempora iure iure. Doloremque nisi ipsa voluptas ullam exercitationem eius. Voluptas nemo velit consequuntur veritatis odit deserunt. Ut ut eum et modi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(528, '2021-10-14 20:34:17', '2021-10-15 09:00:07', 2, 4, 1, NULL, 9.00, 55.97, NULL, 'paid', 'At molestiae ut laboriosam sequi qui. Eius explicabo et ullam autem quis totam maxime. Inventore alias quia quas est ut cupiditate. Provident dicta et iure ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(529, '2021-10-15 02:29:51', '2021-10-15 09:00:07', 1, 4, 3, NULL, 6.00, 99.00, NULL, 'paid', 'Iure quos occaecati corrupti sint doloribus vero aut aut. Accusamus ipsam adipisci pariatur iusto velit. In numquam non fugiat eos pariatur autem reiciendis. Esse quasi impedit suscipit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(530, '2021-10-15 01:07:02', '2021-10-15 09:00:07', 3, 4, 2, NULL, 8.00, 77.00, NULL, 'paid', 'Est fugiat facilis eaque aperiam excepturi earum quibusdam. Ut animi quis nihil magnam officia animi. Ipsa neque ipsum tempora qui labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(531, '2021-10-14 18:22:51', '2021-10-15 09:00:07', 3, 4, 2, NULL, 9.00, 97.00, NULL, 'paid', 'Ducimus culpa minus omnis. Dolores facilis vel vel. Vero ut quas dolorem inventore neque dolorem. A omnis explicabo ut est maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(532, '2021-10-14 20:21:38', '2021-10-15 09:00:07', 4, 5, 3, 3, 6.00, 35.00, NULL, 'paid', 'Vel et esse mollitia. Dolores quia odit non vitae praesentium fuga quam. Iste a aut eius neque omnis necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(533, '2021-10-15 05:00:58', '2021-10-15 09:00:07', 4, 5, 1, NULL, 7.00, 55.97, NULL, 'paid', 'Perferendis sint sint ea quaerat laudantium laboriosam facilis. Sunt quas sit reiciendis doloremque repellat porro. Unde quia voluptatem voluptatum voluptatum iure quia nam. Iusto possimus non animi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(534, '2021-10-14 15:04:50', '2021-10-15 09:00:07', 4, 5, 3, NULL, 7.00, 75.00, NULL, 'paid', 'Quasi dolor perferendis tenetur quo excepturi. Consequatur maxime architecto repellendus perferendis quibusdam autem. Aut aperiam vel animi accusantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(535, '2021-10-14 14:33:43', '2021-10-15 09:00:07', 2, 4, 3, NULL, 6.00, 63.00, NULL, 'paid', 'Labore nesciunt illum ut et non quo. Aut reprehenderit nihil deleniti quia et. Temporibus quibusdam dolor itaque. Similique minus aut doloribus aut velit eos qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(536, '2021-10-14 10:22:16', '2021-10-15 09:00:07', 4, 5, 3, 3, 6.00, 60.00, NULL, 'paid', 'Architecto qui ipsum explicabo quam harum quis. Libero non veniam qui ut magni. Ut et dolores rerum voluptatem cum laudantium. In a ratione atque in sit enim qui temporibus.', '40.607402', '-73.987272', NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(537, '2021-10-15 06:27:44', '2021-10-15 09:00:07', 5, 5, 3, NULL, 10.00, 53.00, NULL, 'paid', 'Libero corrupti qui earum ut velit vel doloremque. Dolores repellat dolore a at. Reiciendis quam quaerat dolorem dolorum non. Animi tenetur reprehenderit natus ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(538, '2021-10-14 13:49:17', '2021-10-15 09:00:07', 3, 5, 1, NULL, 9.00, 55.97, NULL, 'paid', 'Deserunt ut debitis blanditiis eveniet. Optio voluptatum ad saepe. Possimus quisquam id rerum unde. Ex excepturi animi quia reprehenderit excepturi tempore perferendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(539, '2021-10-14 10:45:32', '2021-10-15 09:00:07', 3, 4, 1, NULL, 6.00, 55.97, NULL, 'paid', 'Deserunt fugit at autem distinctio beatae itaque tempora. Enim sunt id sint et ut. Fugiat qui facilis iure debitis totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(540, '2021-10-14 14:51:58', '2021-10-15 09:00:07', 2, 4, 1, NULL, 8.00, 55.97, NULL, 'paid', 'Ab natus ut autem dolorum ut veritatis. Quia ut commodi impedit aut amet deleniti. Dolores quos quis id sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(541, '2021-10-14 23:37:16', '2021-10-15 09:00:07', 3, 5, 1, NULL, 6.00, 55.97, NULL, 'paid', 'Odio dicta eos et repellendus ut nam. Quam et rerum hic corporis maiores et. Ad voluptatibus deserunt sint repudiandae. Itaque nemo aliquid eveniet nemo tenetur corporis perferendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(542, '2021-10-14 13:59:40', '2021-10-15 09:00:07', 3, 5, 1, NULL, 9.00, 55.97, NULL, 'paid', 'Dolorem facilis possimus id illum natus reprehenderit. Dolorem numquam dolorem assumenda ut aut. Est distinctio occaecati totam quos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(543, '2021-10-14 10:53:35', '2021-10-15 09:00:07', 5, 5, 3, NULL, 9.00, 35.00, NULL, 'paid', 'Voluptatum excepturi non illo recusandae ipsam repudiandae. Ex animi tempore delectus temporibus. Alias molestias dolor ut fuga architecto et eius dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(544, '2021-10-14 09:25:57', '2021-10-15 09:00:07', 3, 5, 2, 3, 6.00, 31.00, NULL, 'paid', 'Qui pariatur suscipit id ut itaque qui. Harum unde distinctio ea porro et non nam et. Dolor illum blanditiis mollitia laudantium. Molestiae dolor laudantium rem exercitationem.', '40.588894', '-73.939175', NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(545, '2021-10-14 10:48:07', '2021-10-15 09:00:07', 3, 4, 2, NULL, 6.00, 36.00, NULL, 'paid', 'Sit quibusdam dolore aut reprehenderit. Accusamus voluptate quaerat sed sequi. Est repudiandae enim possimus quae suscipit reiciendis cupiditate. Ut placeat voluptatem ea ut debitis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(546, '2021-10-14 14:06:21', '2021-10-15 09:00:07', 1, 5, 3, NULL, 8.00, 76.00, NULL, 'paid', 'In doloremque quis autem quas omnis. Nihil nesciunt libero incidunt similique. Magnam quia harum consequuntur et asperiores consequatur. Et deserunt velit quod libero labore dolore unde vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(547, '2021-10-15 08:09:02', '2021-10-15 09:00:07', 5, 4, 3, NULL, 7.00, 36.00, NULL, 'paid', 'Iure rem magni laboriosam autem quasi eveniet in. Sed et et suscipit impedit omnis. Assumenda repellendus id autem molestiae optio vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(548, '2021-10-14 23:14:19', '2021-10-15 09:00:07', 2, 4, 3, 3, 7.00, 46.00, NULL, 'paid', 'Odit et quis quod iste eveniet error. Qui beatae iusto officia nihil. Expedita et minus tempora vel et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(549, '2021-10-15 00:17:34', '2021-10-15 09:00:07', 2, 5, 3, NULL, 8.00, 45.00, NULL, 'paid', 'Tempore nam rem eaque omnis qui fugit ut. Eos voluptates dolorem ut magnam natus. A aliquid consequatur in culpa totam quisquam quo et. Aut amet et asperiores quos sint in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(550, '2021-10-14 10:53:37', '2021-10-15 09:00:07', 5, 5, 2, NULL, 7.00, 61.00, NULL, 'paid', 'Praesentium neque sint voluptatem. Aut quaerat rerum molestias necessitatibus voluptatem nihil. Est maiores molestiae voluptatum eveniet enim fugit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(551, '2021-10-14 14:00:09', '2021-10-15 09:00:07', 5, 5, 1, NULL, 10.00, 55.97, NULL, 'paid', 'Animi repellat non magni. Qui praesentium ut in iste voluptatum facere ut. Cum fuga cumque delectus numquam qui voluptas quia eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(552, '2021-10-15 08:51:05', '2021-10-15 09:00:07', 5, 5, 1, NULL, 6.00, 55.97, NULL, 'paid', 'Explicabo et nam unde et alias inventore. Nihil numquam est quo. Reprehenderit accusamus voluptatem corrupti debitis minus quasi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(553, '2021-10-15 00:55:39', '2021-10-15 09:00:07', 3, 5, 2, NULL, 10.00, 43.00, NULL, 'paid', 'Quis nesciunt enim tenetur deleniti vel. Deleniti ex sed et accusamus nisi. Adipisci ratione laborum et. Et ea excepturi quia qui tempore ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(554, '2021-10-15 05:40:32', '2021-10-15 09:00:07', 4, 4, 2, NULL, 7.00, 30.00, NULL, 'paid', 'Et at dolorum accusamus deserunt veritatis totam ab eum. Maxime praesentium accusantium est. Et ut occaecati est autem et tempore velit. Eos voluptatibus sequi eos sed a quisquam beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(555, '2021-10-14 22:26:25', '2021-10-15 09:00:07', 2, 5, 1, NULL, 8.00, 55.97, NULL, 'paid', 'Molestiae non similique et repudiandae numquam assumenda est qui. Ipsa est qui rerum recusandae odio. Explicabo provident adipisci at placeat fugiat omnis aspernatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(556, '2021-10-14 16:41:44', '2021-10-15 09:00:08', 5, 4, 3, 3, 5.00, 62.00, NULL, 'paid', 'Quis tenetur sit qui velit deserunt aliquam fugit. Nam iste perferendis officiis facilis est ea. Numquam laboriosam mollitia voluptates autem et. Veritatis iure ipsa recusandae eum cumque rem id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(557, '2021-10-15 03:52:43', '2021-10-15 09:00:07', 4, 5, 2, NULL, 8.00, 49.00, NULL, 'paid', 'Provident excepturi rerum autem qui. Dignissimos dolorum distinctio tenetur ea error. Magnam consequatur recusandae similique enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(558, '2021-10-14 12:19:28', '2021-10-15 09:00:07', 5, 5, 2, NULL, 10.00, 37.00, NULL, 'paid', 'Neque soluta sit saepe ad aut quis. Aut itaque et aspernatur autem sit. Sunt numquam sequi qui quae facilis consequatur quos sequi. Qui doloremque iure cumque odio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(559, '2021-10-14 12:41:43', '2021-10-15 09:00:07', 5, 4, 3, NULL, 5.00, 87.00, NULL, 'paid', 'Sit aut repudiandae dignissimos dolores vel. Blanditiis placeat eum optio laudantium nihil sit. Accusantium id dolores nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(560, '2021-10-15 08:06:19', '2021-10-15 09:00:07', 4, 5, 1, NULL, 7.00, 55.97, NULL, 'paid', 'Consequatur dolore consequatur sapiente. Dolorem aut iste quo velit debitis incidunt. Officia fuga voluptas nesciunt et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(561, '2021-10-15 02:38:53', '2021-10-15 09:00:07', 2, 4, 1, NULL, 9.00, 55.97, NULL, 'paid', 'Sint quia molestias autem. Recusandae optio ab placeat cumque dolore molestiae natus. Iste dolorum aut sit commodi aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(562, '2021-10-15 05:14:46', '2021-10-15 09:00:07', 3, 5, 3, NULL, 10.00, 73.00, NULL, 'paid', 'Enim ut ratione expedita mollitia quas. Et iste rem et cumque quis repellat saepe. Ipsa non tempora in voluptatem omnis qui. Voluptatem dolores ipsa voluptas quo quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(563, '2021-10-14 23:02:45', '2021-10-15 09:00:07', 2, 5, 2, NULL, 7.00, 62.00, NULL, 'paid', 'Quasi blanditiis laudantium qui commodi. Molestias officiis aperiam consequuntur ut. Quaerat omnis natus recusandae alias eos voluptatibus velit ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(564, '2021-10-14 23:20:18', '2021-10-15 09:00:08', 1, 5, 1, 3, 9.00, 55.97, NULL, 'paid', 'Id magni ut qui ut blanditiis. Laborum ex ab ea necessitatibus fuga. Et iste et numquam ducimus provident aut. Sed ab esse reprehenderit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(565, '2021-10-15 08:18:58', '2021-10-15 09:00:07', 1, 5, 3, NULL, 6.00, 73.00, NULL, 'paid', 'Ea architecto sed vel tempora. At omnis minus officiis sed impedit voluptatem aut. Illum maiores sunt tenetur minus qui non aut. Odit corrupti animi vitae qui nostrum atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(566, '2021-10-14 13:03:38', '2021-10-15 09:00:07', 4, 4, 2, NULL, 10.00, 58.00, NULL, 'paid', 'Rerum aut iusto voluptatem neque est unde ut perspiciatis. Et placeat soluta eaque libero iusto inventore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(567, '2021-10-15 02:29:26', '2021-10-15 09:00:07', 2, 5, 1, NULL, 7.00, 55.97, NULL, 'paid', 'Consequatur dolores delectus quas facilis repellendus libero tempore. Molestias nam temporibus et dolores neque. Quam voluptatem officiis est sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(568, '2021-10-15 06:47:06', '2021-10-15 09:00:08', 3, 4, 2, 3, 5.00, 72.00, NULL, 'paid', 'Itaque omnis sed sit illo eius aut natus. Eius dignissimos fugiat alias reiciendis aut ipsum in. Reiciendis odit aut sit.', '40.588894', '-73.939175', NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`, `employee_id`, `deleted_at`, `md`) VALUES
(569, '2021-10-14 17:48:32', '2021-10-15 09:00:07', 2, 4, 3, NULL, 6.00, 51.00, NULL, 'paid', 'Veniam rerum suscipit nesciunt repellendus. Expedita quod autem similique doloremque consequatur ratione alias. Sint magni eum asperiores commodi. Cumque minus illo sunt aut sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(570, '2021-10-15 04:54:22', '2021-10-15 09:00:07', 1, 4, 1, NULL, 9.00, 55.97, NULL, 'paid', 'Aut numquam deserunt optio maxime quia explicabo dolores. Quia non possimus ut voluptatum aliquam. Nihil cumque beatae modi qui voluptates.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(571, '2021-10-14 12:52:04', '2021-10-15 09:00:07', 1, 5, 3, NULL, 5.00, 87.00, NULL, 'paid', 'Magnam soluta voluptatum ullam rerum ut. Iure hic voluptates minima ut ut dicta ab quia. Ipsam quia deserunt vitae alias deserunt minus ratione fugit. Dicta qui molestias quis non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(572, '2021-10-14 22:58:30', '2021-10-15 09:00:08', 5, 5, 1, 3, 8.00, 55.97, NULL, 'paid', 'Molestiae dolores minima similique veritatis tenetur doloremque. Molestias quo voluptas rerum libero eligendi. Omnis beatae quod est velit perferendis temporibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(573, '2021-10-14 17:22:48', '2021-10-15 09:00:07', 1, 5, 1, NULL, 9.00, 55.97, NULL, 'paid', 'Rerum laboriosam dolore voluptas. Non ut in fugit magnam dignissimos. Quasi delectus qui culpa occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(574, '2021-10-14 09:24:06', '2021-10-15 09:00:07', 2, 4, 3, NULL, 6.00, 76.00, NULL, 'paid', 'Saepe molestiae quis modi in. Fuga dignissimos repellendus incidunt. Non sapiente dolorem voluptas qui optio iure.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(575, '2021-10-15 01:34:24', '2021-10-15 09:00:07', 3, 5, 2, NULL, 9.00, 99.00, NULL, 'paid', 'Modi fugit et error et recusandae consequatur. Unde et voluptatem labore suscipit repellat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(576, '2021-10-14 19:51:02', '2021-10-15 09:00:07', 1, 4, 2, NULL, 9.00, 71.00, NULL, 'paid', 'Alias deleniti nulla odio et rerum deleniti. Quae ut qui accusamus autem. Excepturi quidem voluptatem dignissimos tempora. Id tenetur id officiis provident. Et nobis vero soluta vitae omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(577, '2021-10-15 04:25:33', '2021-10-15 09:00:07', 4, 4, 3, NULL, 5.00, 75.00, NULL, 'paid', 'Rerum rerum sapiente sint ab. Tempore qui perferendis voluptas dolor eum voluptatum. Ab odit animi nisi sapiente cupiditate porro illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(578, '2021-10-14 20:54:46', '2021-10-15 09:00:07', 3, 5, 3, NULL, 10.00, 95.00, NULL, 'paid', 'Illo eos sint minus mollitia ea. Possimus nobis ab sapiente sit eligendi consequatur ipsum. Quidem qui veniam consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(579, '2021-10-14 09:44:08', '2021-10-15 09:00:07', 3, 5, 1, NULL, 5.00, 55.97, NULL, 'paid', 'Sed eos qui qui at autem enim ab totam. Consequatur ipsum quae perspiciatis. Quaerat architecto nemo fugiat ipsam quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(580, '2021-10-14 10:23:20', '2021-10-15 09:00:07', 3, 4, 2, NULL, 7.00, 73.00, NULL, 'paid', 'Inventore voluptas tempora excepturi sit laudantium praesentium aut. Ea maxime pariatur et nihil quisquam consequatur. Quo sint et earum vero illum iste. Autem est sit ducimus nihil porro quas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(581, '2021-10-14 22:48:05', '2021-10-15 09:00:07', 5, 4, 2, NULL, 7.00, 54.00, NULL, 'paid', 'Dignissimos numquam aut est. Aut dolores natus nihil. Ipsum et eius ex nostrum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(582, '2021-10-15 05:29:55', '2021-10-15 09:00:07', 4, 4, 3, NULL, 6.00, 38.00, NULL, 'paid', 'Vitae incidunt et officia aut temporibus at ab odit. Sunt rerum atque qui provident omnis aut repudiandae et. Praesentium est sapiente autem illum quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(583, '2021-10-14 14:18:30', '2021-10-15 09:00:07', 5, 5, 2, NULL, 9.00, 95.00, NULL, 'paid', 'Sit quibusdam sunt quibusdam. Ut sed voluptatem at omnis quo. Quibusdam deleniti sit illum et earum. Velit sapiente aut expedita illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(584, '2021-10-14 23:50:59', '2021-10-15 09:00:08', 3, 4, 1, 3, 6.00, 55.97, NULL, 'paid', 'Ut sed minus magnam nesciunt aliquam nisi. Magni ea corporis dolor aut culpa. Aut reprehenderit libero quia voluptatem nulla eos perferendis culpa.', '40.654509', '-73.948990', NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(585, '2021-10-14 13:26:06', '2021-10-15 09:00:07', 4, 5, 3, NULL, 10.00, 72.00, NULL, 'paid', 'Ea quos voluptatem sit soluta ex. Voluptate explicabo consectetur ut rem hic fugiat maxime. Nostrum voluptate at saepe et vel explicabo minus amet. Quia nisi laudantium ipsa ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(586, '2021-10-15 07:08:37', '2021-10-15 09:00:07', 2, 5, 1, NULL, 8.00, 55.97, NULL, 'paid', 'Commodi quo consequatur omnis atque. Voluptas sapiente quam aut error exercitationem explicabo pariatur. Aperiam et fugiat eos ut incidunt officiis aut non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(587, '2021-10-14 11:47:47', '2021-10-15 09:00:07', 2, 4, 3, NULL, 5.00, 38.00, NULL, 'paid', 'Sed suscipit iusto et sit qui autem vel. Est debitis dolorum qui minima cupiditate nihil maxime. Corporis nemo cum illum. Quam et odit dolorum voluptatem eligendi ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(588, '2021-10-15 05:45:38', '2021-10-15 09:00:08', 4, 5, 3, 3, 8.00, 59.00, NULL, 'paid', 'Ut voluptas pariatur et exercitationem exercitationem at dolorem expedita. Rerum libero est qui. Suscipit similique iusto possimus maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(589, '2021-10-15 03:35:34', '2021-10-15 09:00:07', 3, 4, 2, NULL, 10.00, 56.00, NULL, 'paid', 'Tempora qui natus qui harum officia voluptas rerum minus. Est ut dolorum iure voluptatem nobis ab. Eos est rerum officia quo fugiat. Quod rerum voluptas exercitationem ut est voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(590, '2021-10-15 08:48:45', '2021-10-15 09:00:07', 1, 4, 2, NULL, 10.00, 79.00, NULL, 'paid', 'Quibusdam et sint autem reprehenderit et ut et. Omnis vel quam eos vel porro delectus et. Laboriosam iste deserunt aspernatur expedita et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(591, '2021-10-14 16:01:19', '2021-10-15 09:00:07', 2, 4, 2, NULL, 8.00, 59.00, NULL, 'paid', 'Ut quia cumque fugit nulla quae a odit. Asperiores est saepe atque ut vitae et et nihil. Est ipsa quo nulla non aut modi corporis iste. Sint excepturi harum animi sint culpa nam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(592, '2021-10-14 22:55:51', '2021-10-15 09:00:08', 2, 5, 1, 3, 6.00, 55.97, NULL, 'paid', 'Laboriosam veniam quam veniam consequatur quisquam atque. Molestiae autem temporibus et eveniet tempora praesentium. Vitae dolor sunt ut.', '40.654509', '-73.948990', NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(593, '2021-10-14 18:09:00', '2021-10-15 09:00:07', 4, 4, 3, NULL, 8.00, 54.00, NULL, 'paid', 'Recusandae vero autem debitis consectetur nam. Porro officia at ex et ipsum veniam voluptas. Sunt atque hic id modi non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(594, '2021-10-14 10:14:51', '2021-10-15 09:00:07', 5, 4, 2, NULL, 8.00, 37.00, NULL, 'paid', 'Iste aliquid debitis dolore corrupti corrupti minus similique. Voluptatem aut numquam eos quo a sapiente. Ut neque rerum nihil. Quibusdam numquam et est qui quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(595, '2021-10-14 10:34:25', '2021-10-15 09:00:07', 3, 4, 1, NULL, 10.00, 55.97, NULL, 'paid', 'Quasi et in amet rerum ratione omnis ducimus. In consequatur sint est accusamus. Saepe natus veniam quisquam. Vero aut fugiat earum autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(596, '2021-10-15 02:52:14', '2021-10-15 09:00:08', 1, 5, 1, 3, 10.00, 55.97, NULL, 'paid', 'Quos sapiente quia autem deserunt. Atque eius enim cum libero eum dignissimos nesciunt. Molestiae vitae aut officiis quia repellendus. A quo minus adipisci sapiente et velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(597, '2021-10-14 13:13:41', '2021-10-15 09:00:07', 4, 5, 1, NULL, 5.00, 55.97, NULL, 'paid', 'Aliquam fugiat autem mollitia. Eos et et est vitae ab deleniti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(598, '2021-10-14 21:31:33', '2021-10-15 09:00:07', 2, 5, 3, NULL, 9.00, 77.00, NULL, 'paid', 'Deleniti officiis impedit labore a voluptates vel quia. Nisi quod facilis in voluptatem non aut unde ad. Et commodi voluptatem pariatur quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(599, '2021-10-14 20:58:24', '2021-10-15 09:00:07', 3, 4, 2, NULL, 8.00, 40.00, NULL, 'paid', 'Minus et et veritatis nam. Itaque hic qui repellendus nobis consectetur totam. Iure qui quia qui tempore consequatur minus non omnis. Saepe nulla cumque deleniti iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 0.00, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(600, '2021-10-14 12:38:10', '2021-10-15 09:00:07', 5, 4, 1, NULL, 7.00, 55.97, NULL, 'paid', 'Dolorum perferendis voluptatem facilis dolor. Aut laboriosam at saepe sit sed amet autem. Explicabo eaque nihil suscipit consequatur. Praesentium vitae placeat quia autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '630_660', 11.75, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_has_items`
--

CREATE TABLE `order_has_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `extras` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vat` double(8,2) DEFAULT 0.00,
  `vatvalue` double(8,2) DEFAULT 0.00,
  `variant_price` double(8,2) DEFAULT NULL,
  `variant_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_items`
--

INSERT INTO `order_has_items` (`id`, `created_at`, `updated_at`, `order_id`, `item_id`, `qty`, `extras`, `vat`, `vatvalue`, `variant_price`, `variant_name`) VALUES
(1, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 501, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(2, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 501, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(3, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 505, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(4, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 505, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(5, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 507, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(6, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 507, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(7, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 508, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(8, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 508, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(9, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 509, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(10, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 509, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(11, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 511, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(12, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 511, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(13, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 517, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(14, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 517, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(15, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 519, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(16, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 519, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(17, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 520, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(18, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 520, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(19, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 526, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(20, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 526, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(21, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 528, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(22, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 528, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(23, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 533, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(24, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 533, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(25, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 538, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(26, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 538, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(27, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 539, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(28, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 539, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(29, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 540, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(30, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 540, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(31, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 541, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(32, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 541, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(33, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 542, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(34, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 542, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(35, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 551, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(36, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 551, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(37, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 552, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(38, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 552, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(39, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 555, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(40, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 555, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(41, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 560, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(42, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 560, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(43, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 561, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(44, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 561, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(45, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 564, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(46, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 564, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(47, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 567, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(48, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 567, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(49, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 570, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(50, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 570, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(51, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 572, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(52, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 572, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(53, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 573, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(54, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 573, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(55, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 579, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(56, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 579, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(57, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 584, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(58, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 584, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(59, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 586, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(60, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 586, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(61, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 592, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(62, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 592, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(63, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 595, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(64, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 595, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(65, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 596, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(66, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 596, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(67, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 597, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(68, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 597, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker'),
(69, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 600, 7, 2, '[\"Peperoni + $2.00\",\"Olive + $1.00\"]', 21.00, 5.88, 10.99, 'small,hand-tosset'),
(70, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 600, 8, 1, '[\"Peperoni + $1.00\",\"Olive + $1.00\"]', 21.00, 5.88, 25.99, 'family,double-decker');

-- --------------------------------------------------------

--
-- Table structure for table `order_has_status`
--

CREATE TABLE `order_has_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_status`
--

INSERT INTO `order_has_status` (`id`, `created_at`, `updated_at`, `order_id`, `status_id`, `user_id`, `comment`) VALUES
(1, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 1, 1, 4, 'Initial comment'),
(2, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 2, 1, 4, 'Initial comment'),
(3, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 3, 1, 4, 'Initial comment'),
(4, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 4, 1, 4, 'Initial comment'),
(5, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 5, 1, 4, 'Initial comment'),
(6, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 6, 1, 4, 'Initial comment'),
(7, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 7, 1, 4, 'Initial comment'),
(8, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 8, 1, 4, 'Initial comment'),
(9, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 9, 1, 4, 'Initial comment'),
(10, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 10, 1, 4, 'Initial comment'),
(11, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 11, 1, 4, 'Initial comment'),
(12, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 12, 1, 4, 'Initial comment'),
(13, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 13, 1, 4, 'Initial comment'),
(14, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 14, 1, 4, 'Initial comment'),
(15, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 15, 1, 4, 'Initial comment'),
(16, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 16, 1, 4, 'Initial comment'),
(17, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 17, 1, 4, 'Initial comment'),
(18, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 18, 1, 4, 'Initial comment'),
(19, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 19, 1, 4, 'Initial comment'),
(20, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 20, 1, 4, 'Initial comment'),
(21, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 21, 1, 4, 'Initial comment'),
(22, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 22, 1, 4, 'Initial comment'),
(23, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 23, 1, 4, 'Initial comment'),
(24, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 24, 1, 4, 'Initial comment'),
(25, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 25, 1, 4, 'Initial comment'),
(26, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 26, 1, 4, 'Initial comment'),
(27, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 27, 1, 4, 'Initial comment'),
(28, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 28, 1, 4, 'Initial comment'),
(29, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 29, 1, 4, 'Initial comment'),
(30, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 30, 1, 4, 'Initial comment'),
(31, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 31, 1, 4, 'Initial comment'),
(32, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 32, 1, 4, 'Initial comment'),
(33, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 33, 1, 4, 'Initial comment'),
(34, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 34, 1, 4, 'Initial comment'),
(35, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 35, 1, 4, 'Initial comment'),
(36, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 36, 1, 4, 'Initial comment'),
(37, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 37, 1, 4, 'Initial comment'),
(38, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 38, 1, 4, 'Initial comment'),
(39, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 39, 1, 4, 'Initial comment'),
(40, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 40, 1, 4, 'Initial comment'),
(41, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 41, 1, 4, 'Initial comment'),
(42, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 42, 1, 4, 'Initial comment'),
(43, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 43, 1, 4, 'Initial comment'),
(44, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 44, 1, 4, 'Initial comment'),
(45, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 45, 1, 4, 'Initial comment'),
(46, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 46, 1, 4, 'Initial comment'),
(47, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 47, 1, 4, 'Initial comment'),
(48, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 48, 1, 4, 'Initial comment'),
(49, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 49, 1, 4, 'Initial comment'),
(50, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 50, 1, 4, 'Initial comment'),
(51, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 51, 1, 4, 'Initial comment'),
(52, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 52, 1, 4, 'Initial comment'),
(53, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 53, 1, 4, 'Initial comment'),
(54, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 54, 1, 4, 'Initial comment'),
(55, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 55, 1, 4, 'Initial comment'),
(56, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 56, 1, 4, 'Initial comment'),
(57, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 57, 1, 4, 'Initial comment'),
(58, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 58, 1, 4, 'Initial comment'),
(59, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 59, 1, 4, 'Initial comment'),
(60, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 60, 1, 4, 'Initial comment'),
(61, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 61, 1, 4, 'Initial comment'),
(62, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 62, 1, 4, 'Initial comment'),
(63, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 63, 1, 4, 'Initial comment'),
(64, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 64, 1, 4, 'Initial comment'),
(65, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 65, 1, 4, 'Initial comment'),
(66, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 66, 1, 4, 'Initial comment'),
(67, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 67, 1, 4, 'Initial comment'),
(68, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 68, 1, 4, 'Initial comment'),
(69, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 69, 1, 4, 'Initial comment'),
(70, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 70, 1, 4, 'Initial comment'),
(71, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 71, 1, 4, 'Initial comment'),
(72, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 72, 1, 4, 'Initial comment'),
(73, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 73, 1, 4, 'Initial comment'),
(74, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 74, 1, 4, 'Initial comment'),
(75, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 75, 1, 4, 'Initial comment'),
(76, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 76, 1, 4, 'Initial comment'),
(77, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 77, 1, 4, 'Initial comment'),
(78, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 78, 1, 4, 'Initial comment'),
(79, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 79, 1, 4, 'Initial comment'),
(80, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 80, 1, 4, 'Initial comment'),
(81, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 81, 1, 4, 'Initial comment'),
(82, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 82, 1, 4, 'Initial comment'),
(83, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 83, 1, 4, 'Initial comment'),
(84, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 84, 1, 4, 'Initial comment'),
(85, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 85, 1, 4, 'Initial comment'),
(86, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 86, 1, 4, 'Initial comment'),
(87, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 87, 1, 4, 'Initial comment'),
(88, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 88, 1, 4, 'Initial comment'),
(89, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 89, 1, 4, 'Initial comment'),
(90, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 90, 1, 4, 'Initial comment'),
(91, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 91, 1, 4, 'Initial comment'),
(92, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 92, 1, 4, 'Initial comment'),
(93, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 93, 1, 4, 'Initial comment'),
(94, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 94, 1, 4, 'Initial comment'),
(95, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 95, 1, 4, 'Initial comment'),
(96, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 96, 1, 4, 'Initial comment'),
(97, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 97, 1, 4, 'Initial comment'),
(98, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 98, 1, 4, 'Initial comment'),
(99, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 99, 1, 4, 'Initial comment'),
(100, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 100, 1, 4, 'Initial comment'),
(101, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 101, 1, 4, 'Initial comment'),
(102, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 102, 1, 4, 'Initial comment'),
(103, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 103, 1, 4, 'Initial comment'),
(104, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 104, 1, 4, 'Initial comment'),
(105, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 105, 1, 4, 'Initial comment'),
(106, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 106, 1, 4, 'Initial comment'),
(107, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 107, 1, 4, 'Initial comment'),
(108, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 108, 1, 4, 'Initial comment'),
(109, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 109, 1, 4, 'Initial comment'),
(110, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 110, 1, 4, 'Initial comment'),
(111, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 111, 1, 4, 'Initial comment'),
(112, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 112, 1, 4, 'Initial comment'),
(113, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 113, 1, 4, 'Initial comment'),
(114, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 114, 1, 4, 'Initial comment'),
(115, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 115, 1, 4, 'Initial comment'),
(116, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 116, 1, 4, 'Initial comment'),
(117, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 117, 1, 4, 'Initial comment'),
(118, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 118, 1, 4, 'Initial comment'),
(119, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 119, 1, 4, 'Initial comment'),
(120, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 120, 1, 4, 'Initial comment'),
(121, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 121, 1, 4, 'Initial comment'),
(122, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 122, 1, 4, 'Initial comment'),
(123, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 123, 1, 4, 'Initial comment'),
(124, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 124, 1, 4, 'Initial comment'),
(125, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 125, 1, 4, 'Initial comment'),
(126, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 126, 1, 4, 'Initial comment'),
(127, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 127, 1, 4, 'Initial comment'),
(128, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 128, 1, 4, 'Initial comment'),
(129, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 129, 1, 4, 'Initial comment'),
(130, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 130, 1, 4, 'Initial comment'),
(131, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 131, 1, 4, 'Initial comment'),
(132, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 132, 1, 4, 'Initial comment'),
(133, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 133, 1, 4, 'Initial comment'),
(134, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 134, 1, 4, 'Initial comment'),
(135, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 135, 1, 4, 'Initial comment'),
(136, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 136, 1, 4, 'Initial comment'),
(137, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 137, 1, 4, 'Initial comment'),
(138, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 138, 1, 4, 'Initial comment'),
(139, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 139, 1, 4, 'Initial comment'),
(140, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 140, 1, 4, 'Initial comment'),
(141, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 141, 1, 4, 'Initial comment'),
(142, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 142, 1, 4, 'Initial comment'),
(143, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 143, 1, 4, 'Initial comment'),
(144, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 144, 1, 4, 'Initial comment'),
(145, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 145, 1, 4, 'Initial comment'),
(146, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 146, 1, 4, 'Initial comment'),
(147, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 147, 1, 4, 'Initial comment'),
(148, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 148, 1, 4, 'Initial comment'),
(149, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 149, 1, 4, 'Initial comment'),
(150, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 150, 1, 4, 'Initial comment'),
(151, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 151, 1, 4, 'Initial comment'),
(152, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 152, 1, 4, 'Initial comment'),
(153, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 153, 1, 4, 'Initial comment'),
(154, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 154, 1, 4, 'Initial comment'),
(155, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 155, 1, 4, 'Initial comment'),
(156, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 156, 1, 4, 'Initial comment'),
(157, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 157, 1, 4, 'Initial comment'),
(158, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 158, 1, 4, 'Initial comment'),
(159, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 159, 1, 4, 'Initial comment'),
(160, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 160, 1, 4, 'Initial comment'),
(161, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 161, 1, 4, 'Initial comment'),
(162, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 162, 1, 4, 'Initial comment'),
(163, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 163, 1, 4, 'Initial comment'),
(164, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 164, 1, 4, 'Initial comment'),
(165, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 165, 1, 4, 'Initial comment'),
(166, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 166, 1, 4, 'Initial comment'),
(167, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 167, 1, 4, 'Initial comment'),
(168, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 168, 1, 4, 'Initial comment'),
(169, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 169, 1, 4, 'Initial comment'),
(170, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 170, 1, 4, 'Initial comment'),
(171, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 171, 1, 4, 'Initial comment'),
(172, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 172, 1, 4, 'Initial comment'),
(173, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 173, 1, 4, 'Initial comment'),
(174, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 174, 1, 4, 'Initial comment'),
(175, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 175, 1, 4, 'Initial comment'),
(176, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 176, 1, 4, 'Initial comment'),
(177, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 177, 1, 4, 'Initial comment'),
(178, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 178, 1, 4, 'Initial comment'),
(179, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 179, 1, 4, 'Initial comment'),
(180, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 180, 1, 4, 'Initial comment'),
(181, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 181, 1, 4, 'Initial comment'),
(182, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 182, 1, 4, 'Initial comment'),
(183, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 183, 1, 4, 'Initial comment'),
(184, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 184, 1, 4, 'Initial comment'),
(185, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 185, 1, 4, 'Initial comment'),
(186, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 186, 1, 4, 'Initial comment'),
(187, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 187, 1, 4, 'Initial comment'),
(188, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 188, 1, 4, 'Initial comment'),
(189, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 189, 1, 4, 'Initial comment'),
(190, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 190, 1, 4, 'Initial comment'),
(191, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 191, 1, 4, 'Initial comment'),
(192, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 192, 1, 4, 'Initial comment'),
(193, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 193, 1, 4, 'Initial comment'),
(194, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 194, 1, 4, 'Initial comment'),
(195, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 195, 1, 4, 'Initial comment'),
(196, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 196, 1, 4, 'Initial comment'),
(197, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 197, 1, 4, 'Initial comment'),
(198, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 198, 1, 4, 'Initial comment'),
(199, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 199, 1, 4, 'Initial comment'),
(200, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 200, 1, 4, 'Initial comment'),
(201, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 201, 1, 4, 'Initial comment'),
(202, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 202, 1, 4, 'Initial comment'),
(203, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 203, 1, 4, 'Initial comment'),
(204, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 204, 1, 4, 'Initial comment'),
(205, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 205, 1, 4, 'Initial comment'),
(206, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 206, 1, 4, 'Initial comment'),
(207, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 207, 1, 4, 'Initial comment'),
(208, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 208, 1, 4, 'Initial comment'),
(209, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 209, 1, 4, 'Initial comment'),
(210, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 210, 1, 4, 'Initial comment'),
(211, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 211, 1, 4, 'Initial comment'),
(212, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 212, 1, 4, 'Initial comment'),
(213, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 213, 1, 4, 'Initial comment'),
(214, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 214, 1, 4, 'Initial comment'),
(215, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 215, 1, 4, 'Initial comment'),
(216, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 216, 1, 4, 'Initial comment'),
(217, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 217, 1, 4, 'Initial comment'),
(218, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 218, 1, 4, 'Initial comment'),
(219, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 219, 1, 4, 'Initial comment'),
(220, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 220, 1, 4, 'Initial comment'),
(221, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 221, 1, 4, 'Initial comment'),
(222, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 222, 1, 4, 'Initial comment'),
(223, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 223, 1, 4, 'Initial comment'),
(224, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 224, 1, 4, 'Initial comment'),
(225, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 225, 1, 4, 'Initial comment'),
(226, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 226, 1, 4, 'Initial comment'),
(227, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 227, 1, 4, 'Initial comment'),
(228, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 228, 1, 4, 'Initial comment'),
(229, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 229, 1, 4, 'Initial comment'),
(230, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 230, 1, 4, 'Initial comment'),
(231, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 231, 1, 4, 'Initial comment'),
(232, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 232, 1, 4, 'Initial comment'),
(233, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 233, 1, 4, 'Initial comment'),
(234, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 234, 1, 4, 'Initial comment'),
(235, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 235, 1, 4, 'Initial comment'),
(236, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 236, 1, 4, 'Initial comment'),
(237, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 237, 1, 4, 'Initial comment'),
(238, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 238, 1, 4, 'Initial comment'),
(239, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 239, 1, 4, 'Initial comment'),
(240, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 240, 1, 4, 'Initial comment'),
(241, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 241, 1, 4, 'Initial comment'),
(242, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 242, 1, 4, 'Initial comment'),
(243, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 243, 1, 4, 'Initial comment'),
(244, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 244, 1, 4, 'Initial comment'),
(245, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 245, 1, 4, 'Initial comment'),
(246, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 246, 1, 4, 'Initial comment'),
(247, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 247, 1, 4, 'Initial comment'),
(248, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 248, 1, 4, 'Initial comment'),
(249, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 249, 1, 4, 'Initial comment'),
(250, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 250, 1, 4, 'Initial comment'),
(251, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 251, 1, 4, 'Initial comment'),
(252, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 252, 1, 4, 'Initial comment'),
(253, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 253, 1, 4, 'Initial comment'),
(254, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 254, 1, 4, 'Initial comment'),
(255, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 255, 1, 4, 'Initial comment'),
(256, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 256, 1, 4, 'Initial comment'),
(257, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 257, 1, 4, 'Initial comment'),
(258, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 258, 1, 4, 'Initial comment'),
(259, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 259, 1, 4, 'Initial comment'),
(260, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 260, 1, 4, 'Initial comment'),
(261, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 261, 1, 4, 'Initial comment'),
(262, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 262, 1, 4, 'Initial comment'),
(263, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 263, 1, 4, 'Initial comment'),
(264, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 264, 1, 4, 'Initial comment'),
(265, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 265, 1, 4, 'Initial comment'),
(266, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 266, 1, 4, 'Initial comment'),
(267, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 267, 1, 4, 'Initial comment'),
(268, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 268, 1, 4, 'Initial comment'),
(269, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 269, 1, 4, 'Initial comment'),
(270, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 270, 1, 4, 'Initial comment'),
(271, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 271, 1, 4, 'Initial comment'),
(272, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 272, 1, 4, 'Initial comment'),
(273, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 273, 1, 4, 'Initial comment'),
(274, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 274, 1, 4, 'Initial comment'),
(275, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 275, 1, 4, 'Initial comment'),
(276, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 276, 1, 4, 'Initial comment'),
(277, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 277, 1, 4, 'Initial comment'),
(278, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 278, 1, 4, 'Initial comment'),
(279, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 279, 1, 4, 'Initial comment'),
(280, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 280, 1, 4, 'Initial comment'),
(281, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 281, 1, 4, 'Initial comment'),
(282, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 282, 1, 4, 'Initial comment'),
(283, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 283, 1, 4, 'Initial comment'),
(284, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 284, 1, 4, 'Initial comment'),
(285, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 285, 1, 4, 'Initial comment'),
(286, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 286, 1, 4, 'Initial comment'),
(287, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 287, 1, 4, 'Initial comment'),
(288, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 288, 1, 4, 'Initial comment'),
(289, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 289, 1, 4, 'Initial comment'),
(290, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 290, 1, 4, 'Initial comment'),
(291, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 291, 1, 4, 'Initial comment'),
(292, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 292, 1, 4, 'Initial comment'),
(293, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 293, 1, 4, 'Initial comment'),
(294, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 294, 1, 4, 'Initial comment'),
(295, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 295, 1, 4, 'Initial comment'),
(296, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 296, 1, 4, 'Initial comment'),
(297, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 297, 1, 4, 'Initial comment'),
(298, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 298, 1, 4, 'Initial comment'),
(299, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 299, 1, 4, 'Initial comment'),
(300, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 300, 1, 4, 'Initial comment'),
(301, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 301, 1, 4, 'Initial comment'),
(302, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 302, 1, 4, 'Initial comment'),
(303, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 303, 1, 4, 'Initial comment'),
(304, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 304, 1, 4, 'Initial comment'),
(305, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 305, 1, 4, 'Initial comment'),
(306, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 306, 1, 4, 'Initial comment'),
(307, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 307, 1, 4, 'Initial comment'),
(308, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 308, 1, 4, 'Initial comment'),
(309, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 309, 1, 4, 'Initial comment'),
(310, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 310, 1, 4, 'Initial comment'),
(311, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 311, 1, 4, 'Initial comment'),
(312, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 312, 1, 4, 'Initial comment'),
(313, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 313, 1, 4, 'Initial comment'),
(314, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 314, 1, 4, 'Initial comment'),
(315, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 315, 1, 4, 'Initial comment'),
(316, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 316, 1, 4, 'Initial comment'),
(317, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 317, 1, 4, 'Initial comment'),
(318, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 318, 1, 4, 'Initial comment'),
(319, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 319, 1, 4, 'Initial comment'),
(320, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 320, 1, 4, 'Initial comment'),
(321, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 321, 1, 4, 'Initial comment'),
(322, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 322, 1, 4, 'Initial comment'),
(323, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 323, 1, 4, 'Initial comment'),
(324, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 324, 1, 4, 'Initial comment'),
(325, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 325, 1, 4, 'Initial comment'),
(326, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 326, 1, 4, 'Initial comment'),
(327, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 327, 1, 4, 'Initial comment'),
(328, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 328, 1, 4, 'Initial comment'),
(329, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 329, 1, 4, 'Initial comment'),
(330, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 330, 1, 4, 'Initial comment'),
(331, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 331, 1, 4, 'Initial comment'),
(332, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 332, 1, 4, 'Initial comment'),
(333, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 333, 1, 4, 'Initial comment'),
(334, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 334, 1, 4, 'Initial comment'),
(335, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 335, 1, 4, 'Initial comment'),
(336, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 336, 1, 4, 'Initial comment'),
(337, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 337, 1, 4, 'Initial comment'),
(338, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 338, 1, 4, 'Initial comment'),
(339, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 339, 1, 4, 'Initial comment'),
(340, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 340, 1, 4, 'Initial comment'),
(341, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 341, 1, 4, 'Initial comment'),
(342, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 342, 1, 4, 'Initial comment'),
(343, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 343, 1, 4, 'Initial comment'),
(344, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 344, 1, 4, 'Initial comment'),
(345, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 345, 1, 4, 'Initial comment'),
(346, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 346, 1, 4, 'Initial comment'),
(347, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 347, 1, 4, 'Initial comment'),
(348, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 348, 1, 4, 'Initial comment'),
(349, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 349, 1, 4, 'Initial comment'),
(350, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 350, 1, 4, 'Initial comment'),
(351, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 351, 1, 4, 'Initial comment'),
(352, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 352, 1, 4, 'Initial comment'),
(353, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 353, 1, 4, 'Initial comment'),
(354, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 354, 1, 4, 'Initial comment'),
(355, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 355, 1, 4, 'Initial comment'),
(356, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 356, 1, 4, 'Initial comment'),
(357, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 357, 1, 4, 'Initial comment'),
(358, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 358, 1, 4, 'Initial comment'),
(359, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 359, 1, 4, 'Initial comment'),
(360, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 360, 1, 4, 'Initial comment'),
(361, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 361, 1, 4, 'Initial comment'),
(362, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 362, 1, 4, 'Initial comment'),
(363, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 363, 1, 4, 'Initial comment'),
(364, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 364, 1, 4, 'Initial comment'),
(365, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 365, 1, 4, 'Initial comment'),
(366, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 366, 1, 4, 'Initial comment'),
(367, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 367, 1, 4, 'Initial comment'),
(368, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 368, 1, 4, 'Initial comment'),
(369, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 369, 1, 4, 'Initial comment'),
(370, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 370, 1, 4, 'Initial comment'),
(371, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 371, 1, 4, 'Initial comment'),
(372, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 372, 1, 4, 'Initial comment'),
(373, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 373, 1, 4, 'Initial comment'),
(374, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 374, 1, 4, 'Initial comment'),
(375, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 375, 1, 4, 'Initial comment'),
(376, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 376, 1, 4, 'Initial comment'),
(377, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 377, 1, 4, 'Initial comment'),
(378, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 378, 1, 4, 'Initial comment'),
(379, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 379, 1, 4, 'Initial comment'),
(380, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 380, 1, 4, 'Initial comment'),
(381, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 381, 1, 4, 'Initial comment'),
(382, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 382, 1, 4, 'Initial comment'),
(383, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 383, 1, 4, 'Initial comment'),
(384, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 384, 1, 4, 'Initial comment'),
(385, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 385, 1, 4, 'Initial comment'),
(386, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 386, 1, 4, 'Initial comment'),
(387, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 387, 1, 4, 'Initial comment'),
(388, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 388, 1, 4, 'Initial comment'),
(389, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 389, 1, 4, 'Initial comment'),
(390, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 390, 1, 4, 'Initial comment'),
(391, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 391, 1, 4, 'Initial comment'),
(392, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 392, 1, 4, 'Initial comment'),
(393, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 393, 1, 4, 'Initial comment'),
(394, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 394, 1, 4, 'Initial comment'),
(395, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 395, 1, 4, 'Initial comment'),
(396, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 396, 1, 4, 'Initial comment'),
(397, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 397, 1, 4, 'Initial comment'),
(398, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 398, 1, 4, 'Initial comment'),
(399, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 399, 1, 4, 'Initial comment'),
(400, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 400, 1, 4, 'Initial comment'),
(401, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 401, 1, 4, 'Initial comment'),
(402, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 402, 1, 4, 'Initial comment'),
(403, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 403, 1, 4, 'Initial comment'),
(404, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 404, 1, 4, 'Initial comment'),
(405, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 405, 1, 4, 'Initial comment'),
(406, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 406, 1, 4, 'Initial comment'),
(407, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 407, 1, 4, 'Initial comment'),
(408, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 408, 1, 4, 'Initial comment'),
(409, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 409, 1, 4, 'Initial comment'),
(410, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 410, 1, 4, 'Initial comment'),
(411, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 411, 1, 4, 'Initial comment'),
(412, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 412, 1, 4, 'Initial comment'),
(413, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 413, 1, 4, 'Initial comment'),
(414, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 414, 1, 4, 'Initial comment'),
(415, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 415, 1, 4, 'Initial comment'),
(416, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 416, 1, 4, 'Initial comment'),
(417, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 417, 1, 4, 'Initial comment'),
(418, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 418, 1, 4, 'Initial comment'),
(419, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 419, 1, 4, 'Initial comment'),
(420, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 420, 1, 4, 'Initial comment'),
(421, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 421, 1, 4, 'Initial comment'),
(422, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 422, 1, 4, 'Initial comment'),
(423, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 423, 1, 4, 'Initial comment'),
(424, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 424, 1, 4, 'Initial comment'),
(425, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 425, 1, 4, 'Initial comment'),
(426, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 426, 1, 4, 'Initial comment'),
(427, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 427, 1, 4, 'Initial comment'),
(428, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 428, 1, 4, 'Initial comment'),
(429, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 429, 1, 4, 'Initial comment'),
(430, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 430, 1, 4, 'Initial comment'),
(431, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 431, 1, 4, 'Initial comment'),
(432, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 432, 1, 4, 'Initial comment'),
(433, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 433, 1, 4, 'Initial comment'),
(434, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 434, 1, 4, 'Initial comment'),
(435, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 435, 1, 4, 'Initial comment'),
(436, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 436, 1, 4, 'Initial comment'),
(437, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 437, 1, 4, 'Initial comment'),
(438, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 438, 1, 4, 'Initial comment'),
(439, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 439, 1, 4, 'Initial comment'),
(440, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 440, 1, 4, 'Initial comment'),
(441, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 441, 1, 4, 'Initial comment'),
(442, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 442, 1, 4, 'Initial comment'),
(443, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 443, 1, 4, 'Initial comment'),
(444, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 444, 1, 4, 'Initial comment'),
(445, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 445, 1, 4, 'Initial comment'),
(446, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 446, 1, 4, 'Initial comment'),
(447, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 447, 1, 4, 'Initial comment'),
(448, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 448, 1, 4, 'Initial comment'),
(449, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 449, 1, 4, 'Initial comment'),
(450, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 450, 1, 4, 'Initial comment'),
(451, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 451, 1, 4, 'Initial comment'),
(452, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 452, 1, 4, 'Initial comment'),
(453, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 453, 1, 4, 'Initial comment'),
(454, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 454, 1, 4, 'Initial comment'),
(455, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 455, 1, 4, 'Initial comment'),
(456, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 456, 1, 4, 'Initial comment'),
(457, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 457, 1, 4, 'Initial comment'),
(458, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 458, 1, 4, 'Initial comment'),
(459, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 459, 1, 4, 'Initial comment'),
(460, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 460, 1, 4, 'Initial comment'),
(461, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 461, 1, 4, 'Initial comment'),
(462, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 462, 1, 4, 'Initial comment'),
(463, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 463, 1, 4, 'Initial comment'),
(464, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 464, 1, 4, 'Initial comment'),
(465, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 465, 1, 4, 'Initial comment'),
(466, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 466, 1, 4, 'Initial comment'),
(467, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 467, 1, 4, 'Initial comment'),
(468, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 468, 1, 4, 'Initial comment'),
(469, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 469, 1, 4, 'Initial comment'),
(470, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 470, 1, 4, 'Initial comment'),
(471, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 471, 1, 4, 'Initial comment'),
(472, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 472, 1, 4, 'Initial comment'),
(473, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 473, 1, 4, 'Initial comment'),
(474, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 474, 1, 4, 'Initial comment'),
(475, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 475, 1, 4, 'Initial comment'),
(476, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 476, 1, 4, 'Initial comment'),
(477, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 477, 1, 4, 'Initial comment'),
(478, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 478, 1, 4, 'Initial comment'),
(479, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 479, 1, 4, 'Initial comment'),
(480, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 480, 1, 4, 'Initial comment'),
(481, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 481, 1, 4, 'Initial comment'),
(482, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 482, 1, 4, 'Initial comment'),
(483, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 483, 1, 4, 'Initial comment'),
(484, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 484, 1, 4, 'Initial comment'),
(485, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 485, 1, 4, 'Initial comment'),
(486, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 486, 1, 4, 'Initial comment'),
(487, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 487, 1, 4, 'Initial comment'),
(488, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 488, 1, 4, 'Initial comment'),
(489, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 489, 1, 4, 'Initial comment'),
(490, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 490, 1, 4, 'Initial comment'),
(491, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 491, 1, 4, 'Initial comment'),
(492, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 492, 1, 4, 'Initial comment'),
(493, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 493, 1, 4, 'Initial comment'),
(494, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 494, 1, 4, 'Initial comment'),
(495, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 495, 1, 4, 'Initial comment'),
(496, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 496, 1, 4, 'Initial comment'),
(497, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 497, 1, 4, 'Initial comment'),
(498, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 498, 1, 4, 'Initial comment'),
(499, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 499, 1, 4, 'Initial comment'),
(500, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 500, 1, 4, 'Initial comment'),
(501, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 501, 1, 4, 'New order created'),
(502, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 501, 2, 1, 'Accepted by admin'),
(503, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 502, 1, 4, 'New order created'),
(504, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 502, 2, 1, 'Accepted by admin'),
(505, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 502, 3, 1, 'Accepted by restaurant'),
(506, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 503, 1, 4, 'New order created'),
(507, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 503, 2, 1, 'Accepted by admin'),
(508, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 504, 1, 4, 'New order created'),
(509, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 505, 1, 4, 'New order created'),
(510, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 505, 2, 1, 'Accepted by admin'),
(511, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 506, 1, 4, 'New order created'),
(512, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 506, 2, 1, 'Accepted by admin'),
(513, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 506, 3, 1, 'Accepted by restaurant'),
(514, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 507, 1, 4, 'New order created'),
(515, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 507, 2, 1, 'Accepted by admin'),
(516, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 508, 1, 4, 'New order created'),
(517, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 508, 2, 1, 'Accepted by admin'),
(518, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 508, 3, 1, 'Accepted by restaurant'),
(519, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 508, 4, 1, 'Assigned to driver'),
(520, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 508, 5, 1, 'Prepared by restaurant'),
(521, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 509, 1, 4, 'New order created'),
(522, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 509, 2, 1, 'Accepted by admin'),
(523, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 510, 1, 4, 'New order created'),
(524, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 510, 8, 1, 'Rejected by admin'),
(525, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 511, 1, 4, 'New order created'),
(526, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 511, 2, 1, 'Accepted by admin'),
(527, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 512, 1, 4, 'New order created'),
(528, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 512, 2, 1, 'Accepted by admin'),
(529, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 512, 3, 1, 'Accepted by restaurant'),
(530, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 512, 4, 1, 'Assigned to driver'),
(531, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 512, 5, 1, 'Prepared by restaurant'),
(532, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 512, 6, 1, 'Picked up'),
(533, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 512, 7, 1, 'Delivered'),
(534, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 513, 1, 4, 'New order created'),
(535, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 514, 1, 4, 'New order created'),
(536, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 514, 2, 1, 'Accepted by admin'),
(537, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 514, 3, 1, 'Accepted by restaurant'),
(538, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 515, 1, 4, 'New order created'),
(539, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 515, 2, 1, 'Accepted by admin'),
(540, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 516, 1, 4, 'New order created'),
(541, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 516, 2, 1, 'Accepted by admin'),
(542, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 516, 3, 1, 'Accepted by restaurant'),
(543, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 516, 4, 1, 'Assigned to driver'),
(544, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 516, 5, 1, 'Prepared by restaurant'),
(545, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 517, 1, 4, 'New order created'),
(546, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 517, 2, 1, 'Accepted by admin'),
(547, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 518, 1, 4, 'New order created'),
(548, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 518, 2, 1, 'Accepted by admin'),
(549, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 518, 3, 1, 'Accepted by restaurant'),
(550, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 519, 1, 4, 'New order created'),
(551, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 519, 2, 1, 'Accepted by admin'),
(552, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 520, 1, 4, 'New order created'),
(553, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 520, 8, 1, 'Rejected by admin'),
(554, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 521, 1, 4, 'New order created'),
(555, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 521, 2, 1, 'Accepted by admin'),
(556, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 522, 1, 4, 'New order created'),
(557, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 523, 1, 4, 'New order created'),
(558, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 523, 2, 1, 'Accepted by admin'),
(559, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 524, 1, 4, 'New order created'),
(560, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 524, 2, 1, 'Accepted by admin'),
(561, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 524, 3, 1, 'Accepted by restaurant'),
(562, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 524, 4, 1, 'Assigned to driver'),
(563, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 524, 5, 1, 'Prepared by restaurant'),
(564, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 525, 1, 4, 'New order created'),
(565, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 525, 2, 1, 'Accepted by admin'),
(566, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 526, 1, 4, 'New order created'),
(567, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 526, 2, 1, 'Accepted by admin'),
(568, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 526, 3, 1, 'Accepted by restaurant'),
(569, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 527, 1, 4, 'New order created'),
(570, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 527, 2, 1, 'Accepted by admin'),
(571, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 528, 1, 4, 'New order created'),
(572, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 528, 2, 1, 'Accepted by admin'),
(573, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 528, 9, 1, 'Rejected by restaurant'),
(574, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 529, 1, 4, 'New order created'),
(575, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 529, 2, 1, 'Accepted by admin'),
(576, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 530, 1, 4, 'New order created'),
(577, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 530, 8, 1, 'Rejected by admin'),
(578, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 531, 1, 4, 'New order created'),
(579, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 532, 1, 4, 'New order created'),
(580, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 532, 2, 1, 'Accepted by admin'),
(581, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 532, 3, 1, 'Accepted by restaurant'),
(582, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 532, 4, 1, 'Assigned to driver'),
(583, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 532, 5, 1, 'Prepared by restaurant'),
(584, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 533, 1, 4, 'New order created'),
(585, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 533, 2, 1, 'Accepted by admin'),
(586, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 534, 1, 4, 'New order created'),
(587, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 534, 2, 1, 'Accepted by admin'),
(588, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 534, 3, 1, 'Accepted by restaurant'),
(589, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 535, 1, 4, 'New order created'),
(590, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 535, 2, 1, 'Accepted by admin'),
(591, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 536, 1, 4, 'New order created'),
(592, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 536, 2, 1, 'Accepted by admin'),
(593, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 536, 3, 1, 'Accepted by restaurant'),
(594, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 536, 4, 1, 'Assigned to driver'),
(595, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 536, 5, 1, 'Prepared by restaurant'),
(596, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 536, 6, 1, 'Picked up'),
(597, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 537, 1, 4, 'New order created'),
(598, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 537, 2, 1, 'Accepted by admin'),
(599, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 538, 1, 4, 'New order created'),
(600, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 538, 2, 1, 'Accepted by admin'),
(601, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 538, 3, 1, 'Accepted by restaurant'),
(602, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 539, 1, 4, 'New order created'),
(603, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 539, 2, 1, 'Accepted by admin'),
(604, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 540, 1, 4, 'New order created'),
(605, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 540, 8, 1, 'Rejected by admin'),
(606, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 541, 1, 4, 'New order created'),
(607, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 541, 2, 1, 'Accepted by admin'),
(608, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 542, 1, 4, 'New order created'),
(609, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 542, 2, 1, 'Accepted by admin'),
(610, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 542, 3, 1, 'Accepted by restaurant'),
(611, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 543, 1, 4, 'New order created'),
(612, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 543, 2, 1, 'Accepted by admin'),
(613, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 544, 1, 4, 'New order created'),
(614, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 544, 2, 1, 'Accepted by admin');
INSERT INTO `order_has_status` (`id`, `created_at`, `updated_at`, `order_id`, `status_id`, `user_id`, `comment`) VALUES
(615, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 544, 3, 1, 'Accepted by restaurant'),
(616, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 544, 4, 1, 'Assigned to driver'),
(617, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 544, 5, 1, 'Prepared by restaurant'),
(618, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 544, 6, 1, 'Picked up'),
(619, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 544, 7, 1, 'Delivered'),
(620, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 545, 1, 4, 'New order created'),
(621, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 545, 2, 1, 'Accepted by admin'),
(622, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 546, 1, 4, 'New order created'),
(623, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 546, 2, 1, 'Accepted by admin'),
(624, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 546, 3, 1, 'Accepted by restaurant'),
(625, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 547, 1, 4, 'New order created'),
(626, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 547, 2, 1, 'Accepted by admin'),
(627, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 548, 1, 4, 'New order created'),
(628, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 548, 2, 1, 'Accepted by admin'),
(629, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 548, 3, 1, 'Accepted by restaurant'),
(630, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 548, 4, 1, 'Assigned to driver'),
(631, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 548, 5, 1, 'Prepared by restaurant'),
(632, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 549, 1, 4, 'New order created'),
(633, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 550, 1, 4, 'New order created'),
(634, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 550, 8, 1, 'Rejected by admin'),
(635, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 551, 1, 4, 'New order created'),
(636, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 551, 2, 1, 'Accepted by admin'),
(637, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 552, 1, 4, 'New order created'),
(638, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 552, 2, 1, 'Accepted by admin'),
(639, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 552, 9, 1, 'Rejected by restaurant'),
(640, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 553, 1, 4, 'New order created'),
(641, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 553, 2, 1, 'Accepted by admin'),
(642, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 554, 1, 4, 'New order created'),
(643, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 554, 2, 1, 'Accepted by admin'),
(644, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 554, 3, 1, 'Accepted by restaurant'),
(645, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 555, 1, 4, 'New order created'),
(646, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 555, 2, 1, 'Accepted by admin'),
(647, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 556, 1, 4, 'New order created'),
(648, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 556, 2, 1, 'Accepted by admin'),
(649, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 556, 3, 1, 'Accepted by restaurant'),
(650, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 556, 4, 1, 'Assigned to driver'),
(651, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 556, 5, 1, 'Prepared by restaurant'),
(652, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 557, 1, 4, 'New order created'),
(653, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 557, 2, 1, 'Accepted by admin'),
(654, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 558, 1, 4, 'New order created'),
(655, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 559, 1, 4, 'New order created'),
(656, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 559, 2, 1, 'Accepted by admin'),
(657, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 560, 1, 4, 'New order created'),
(658, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 560, 8, 1, 'Rejected by admin'),
(659, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 561, 1, 4, 'New order created'),
(660, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 561, 2, 1, 'Accepted by admin'),
(661, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 562, 1, 4, 'New order created'),
(662, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 562, 2, 1, 'Accepted by admin'),
(663, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 562, 3, 1, 'Accepted by restaurant'),
(664, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 563, 1, 4, 'New order created'),
(665, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 563, 2, 1, 'Accepted by admin'),
(666, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 564, 1, 4, 'New order created'),
(667, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 564, 2, 1, 'Accepted by admin'),
(668, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 564, 3, 1, 'Accepted by restaurant'),
(669, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 564, 4, 1, 'Assigned to driver'),
(670, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 564, 5, 1, 'Prepared by restaurant'),
(671, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 565, 1, 4, 'New order created'),
(672, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 565, 2, 1, 'Accepted by admin'),
(673, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 566, 1, 4, 'New order created'),
(674, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 566, 2, 1, 'Accepted by admin'),
(675, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 566, 3, 1, 'Accepted by restaurant'),
(676, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 567, 1, 4, 'New order created'),
(677, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 568, 1, 4, 'New order created'),
(678, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 568, 2, 1, 'Accepted by admin'),
(679, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 568, 3, 1, 'Accepted by restaurant'),
(680, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 568, 4, 1, 'Assigned to driver'),
(681, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 568, 5, 1, 'Prepared by restaurant'),
(682, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 568, 6, 1, 'Picked up'),
(683, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 569, 1, 4, 'New order created'),
(684, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 569, 2, 1, 'Accepted by admin'),
(685, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 570, 1, 4, 'New order created'),
(686, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 570, 8, 1, 'Rejected by admin'),
(687, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 571, 1, 4, 'New order created'),
(688, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 571, 2, 1, 'Accepted by admin'),
(689, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 572, 1, 4, 'New order created'),
(690, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 572, 2, 1, 'Accepted by admin'),
(691, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 572, 3, 1, 'Accepted by restaurant'),
(692, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 572, 4, 1, 'Assigned to driver'),
(693, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 572, 5, 1, 'Prepared by restaurant'),
(694, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 573, 1, 4, 'New order created'),
(695, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 573, 2, 1, 'Accepted by admin'),
(696, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 574, 1, 4, 'New order created'),
(697, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 574, 2, 1, 'Accepted by admin'),
(698, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 574, 3, 1, 'Accepted by restaurant'),
(699, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 575, 1, 4, 'New order created'),
(700, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 575, 2, 1, 'Accepted by admin'),
(701, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 576, 1, 4, 'New order created'),
(702, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 577, 1, 4, 'New order created'),
(703, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 577, 2, 1, 'Accepted by admin'),
(704, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 578, 1, 4, 'New order created'),
(705, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 578, 2, 1, 'Accepted by admin'),
(706, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 578, 3, 1, 'Accepted by restaurant'),
(707, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 579, 1, 4, 'New order created'),
(708, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 579, 2, 1, 'Accepted by admin'),
(709, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 580, 1, 4, 'New order created'),
(710, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 580, 8, 1, 'Rejected by admin'),
(711, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 581, 1, 4, 'New order created'),
(712, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 581, 2, 1, 'Accepted by admin'),
(713, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 582, 1, 4, 'New order created'),
(714, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 582, 2, 1, 'Accepted by admin'),
(715, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 582, 3, 1, 'Accepted by restaurant'),
(716, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 583, 1, 4, 'New order created'),
(717, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 583, 2, 1, 'Accepted by admin'),
(718, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 584, 1, 4, 'New order created'),
(719, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 584, 2, 1, 'Accepted by admin'),
(720, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 584, 3, 1, 'Accepted by restaurant'),
(721, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 584, 4, 1, 'Assigned to driver'),
(722, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 584, 5, 1, 'Prepared by restaurant'),
(723, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 584, 6, 1, 'Picked up'),
(724, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 585, 1, 4, 'New order created'),
(725, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 586, 1, 4, 'New order created'),
(726, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 586, 2, 1, 'Accepted by admin'),
(727, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 586, 3, 1, 'Accepted by restaurant'),
(728, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 587, 1, 4, 'New order created'),
(729, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 587, 2, 1, 'Accepted by admin'),
(730, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 588, 1, 4, 'New order created'),
(731, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 588, 2, 1, 'Accepted by admin'),
(732, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 588, 3, 1, 'Accepted by restaurant'),
(733, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 588, 4, 1, 'Assigned to driver'),
(734, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 588, 5, 1, 'Prepared by restaurant'),
(735, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 589, 1, 4, 'New order created'),
(736, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 589, 2, 1, 'Accepted by admin'),
(737, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 590, 1, 4, 'New order created'),
(738, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 590, 8, 1, 'Rejected by admin'),
(739, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 591, 1, 4, 'New order created'),
(740, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 591, 2, 1, 'Accepted by admin'),
(741, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 592, 1, 4, 'New order created'),
(742, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 592, 2, 1, 'Accepted by admin'),
(743, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 592, 3, 1, 'Accepted by restaurant'),
(744, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 592, 4, 1, 'Assigned to driver'),
(745, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 592, 5, 1, 'Prepared by restaurant'),
(746, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 592, 6, 1, 'Picked up'),
(747, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 592, 7, 1, 'Delivered'),
(748, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 593, 1, 4, 'New order created'),
(749, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 593, 2, 1, 'Accepted by admin'),
(750, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 594, 1, 4, 'New order created'),
(751, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 595, 1, 4, 'New order created'),
(752, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 595, 2, 1, 'Accepted by admin'),
(753, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 596, 1, 4, 'New order created'),
(754, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 596, 2, 1, 'Accepted by admin'),
(755, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 596, 3, 1, 'Accepted by restaurant'),
(756, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 596, 4, 1, 'Assigned to driver'),
(757, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 596, 5, 1, 'Prepared by restaurant'),
(758, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 597, 1, 4, 'New order created'),
(759, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 597, 2, 1, 'Accepted by admin'),
(760, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 598, 1, 4, 'New order created'),
(761, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 598, 2, 1, 'Accepted by admin'),
(762, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 598, 3, 1, 'Accepted by restaurant'),
(763, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 599, 1, 4, 'New order created'),
(764, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 599, 2, 1, 'Accepted by admin'),
(765, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 600, 1, 4, 'New order created'),
(766, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 600, 8, 1, 'Rejected by admin');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `showAsLink` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `title`, `content`, `showAsLink`) VALUES
(1, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'Terms and conditions', '<p><strong>foodtiger website Terms of Use</strong><br />\n                            <br />\n                            These Terms of Use govern your use of the foodtiger website and, unless otherwise stated, to your use of any other website or mobile application owned or operated by foodtiger Bulgaria or operated on behalf of foodtiger (collectively the &ldquo;Websites&rdquo;). Please read these Terms of Use carefully before using the Websites.<br />\n                            <br />\n                            <strong>Agreement to Terms</strong><br />\n                            <br />\n                            By using the Websites, you agree to these Terms of Use and the foodtiger General Online Privacy Policy (for visitors who are eighteen years of age or over) or the foodtiger Children&rsquo;s Online Privacy Policy (for visitors who are under eighteen (18) years of age) which are incorporated herein by reference. Each time you use the Websites, you reaffirm your acceptance of the then-current Terms of Use. If you do not wish to be bound by these Terms of Use, your only remedy is to discontinue using the Websites.<br />\n                            <br />\n                            foodtiger may change these Terms of Use at any time and in its sole discretion. The modified Terms of Use will be effective immediately upon posting and you agree to the new posted Terms of Use by continuing your use of the Websites. You are responsible for staying informed of any changes. If you do not agree with the modified Terms of Use, your only remedy is to discontinue using the Websites.<br />\n                            <br />\n                            <strong>Accounts</strong><br />\n                            <br />\n                            You may be required to create an account and specify a password to use certain features on the Websites. You agree to provide, maintain and update true, accurate, current and complete information about yourself as prompted by the registration processes. You may not impersonate any person or entity or misrepresent your identity or affiliation with any person or entity, including using another person&rsquo;s username, password, or other account information.<br />\n                            <br />\n                            You are entirely responsible for maintaining the confidentiality of your password and your account. And you are entirely responsible for all activity made by you or anyone that uses your account. You agree to safeguard your password from access by others. If you believe that your account has been compromised, you must immediately contact us by mail at:&nbsp;support@foodtiger.com or send a message to our live-chat service. You agree to indemnify and hold harmless foodtiger for losses incurred by foodtiger or another party due to someone else using your account as a result of your failure to use reasonable care to safeguard your password.<br />\n                            <br />\n                            <strong>Cancellation</strong><br />\n                            <br />\n                            You have the right to cancel your order up to five minutes after your order is placed on the foodtiger platform. After this point, the restaurant would have started to prepare the food and therefore no refunds would be possible. For the avoidance of doubt, timing will be assessed based on the point you place your call with our call-center, or send a message to our live-chat service. In the event of a cash-on-delivery order, your order will be delivered as instructed and cash must be collected by the rider. In the event that a customer refuses to pay the cash to our rider, foodtiger reserves the right to limit his/her future cash payments.<br />\n                            <br />\n                            <strong>Content Posted by Other Users</strong><br />\n                            <br />\n                            foodtiger is not responsible for, and does not endorse, Content in any posting made by other users on the Websites. Under no circumstances shall foodtiger be held liable, directly or indirectly, for any loss or damage caused or alleged to have been caused to you in connection with any Content posted by a third party on the Websites. If you become aware of misuse of the Websites by any person, please contact foodtiger by mail at:&nbsp;support@foodtiger.com or send a message to our live-chat service.<br />\n                            <br />\n                            If you feel threatened or believe someone else is in danger, you should contact the local law enforcement agency immediately.<br />\n                            <br />\n                            <br />\n                            <strong>Activities Prohibited on the Websites</strong><br />\n                            <br />\n                            The following is a partial list of the kinds of conduct that are illegal or prohibited on the Websites. foodtiger reserves the right to investigate and take appropriate legal action against anyone who, in foodtiger sole discretion, engages in any of the prohibited activities. Prohibited activities include &mdash; but are not limited to &mdash; the following:<br />\n                            <br />\n                            - Using the Websites for any purpose in violation of local, state, or federal laws or regulations;<br />\n                            - Posting Content that infringes the intellectual property rights, privacy rights, publicity rights, trade secret rights, or any other rights of any party;<br />\n                            - Posting Content that is unlawful, obscene, defamatory, threatening, harassing, abusive, slanderous, hateful, or embarrassing to any other person or entity as determined by foodtiger in its sole discretion or pursuant to local community standards;<br />\n                            - Posting Content that constitutes cyber-bullying, as determined by foodtiger in its sole discretion;<br />\n                            - Posting Content that depicts any dangerous, life-threatening, or otherwise risky behavior;<br />\n                            - Posting telephone numbers, street addresses, or last names of any person;<br />\n                            - Posting URLs to external websites or any form of HTML or programming code;<br />\n                            - Posting anything that may be &ldquo;spam,&rdquo; as determined by foodtiger in its sole discretion;<br />\n                            - Impersonating another person when posting Content;<br />\n                            - Harvesting or otherwise collecting information about others, including e-mail addresses, without their consent;<br />\n                            - Allowing any other person or entity to use your identification for posting or viewing comments;<br />\n                            - Harassing, threatening, stalking, or abusing any person;<br />\n                            - Engaging in any other conduct that restricts or inhibits any other person from using or enjoying the Websites, or which, in the sole discretion of foodtiger, exposes foodtiger or any of its customers, suppliers, or any other parties to any liability or detriment of any type; or<br />\n                            - Encouraging other people to engage in any prohibited activities as described herein.<br />\n                            foodtiger reserves the right -- but is not obligated -- to do any or all of the following:<br />\n                            <br />\n                            - Investigate an allegation that any Content posted on the Websites does not conform to these Terms of Use and determine in its sole discretion to remove or request the removal of the Content;<br />\n                            - Remove Content which is abusive, illegal, or disruptive, or that otherwise fails to conform with these Terms of Use;<br />\n                            - Terminate a user&rsquo;s access to the Websites upon any breach of these Terms of Use;<br />\n                            - Monitor, edit, or disclose any Content on the Websites; and<br />\n                            - Edit or delete any Content posted on the Websites, regardless of whether such Content violates these standards.<br />\n                            - foodtiger Trademarks and Copyrights<br />\n                            <br />\n                            All trademarks, logos, and service marks displayed on the Website are registered and unregistered Trademarks of foodtiger and/or third parties who have authorized their use (collectively the &ldquo;Trademarks&rdquo;)<br />\n                            <br />\n                            You may not use, copy, reproduce, republish, upload, post, transmit, distribute, or modify these Trademarks in any way. The use of foodtiger&#39;s trademarks on any other website is strictly prohibited. All of the materials contained on the Websites are copyrighted except where explicitly noted otherwise. foodtiger will aggressively enforce its intellectual property rights to the fullest extent of the law, including the seeking of criminal prosecution. foodtiger neither warrants nor represents that your use of materials displayed on the Websites will not infringe rights of third parties not owned by or affiliated with foodtiger. Use of any materials on the Websites is at your own risk.<br />\n                            <br />\n                            <strong>Hyperlinks</strong><br />\n                            <br />\n                            This Websites may contain hyperlinks to third-party websites. foodtiger does not control or endorse these third-party websites or any goods or services sold on those websites. Some of these websites may contain materials that are objectionable, unlawful, or inaccurate. You acknowledge and agree that foodtiger is not responsible or liable for any Content or other materials on these third party websites.<br />\n                            <br />\n                            <strong>Governing Law and Severability</strong><br />\n                            <br />\n                            These Terms of Use shall be governed by and construed in accordance with the laws of Bulgaria, without regard to its conflict of laws rules. You expressly agree that the exclusive jurisdiction for any claim or dispute under the Terms of Use and or your use of the Websites resides in the courts of Bulgaria, and you further expressly agree to submit to the personal jurisdiction of such courts for the purpose of litigating any such claim or action.<br />\n                            <br />\n                            If any provision of these Terms of Use is found to be invalid by any court having competent jurisdiction, the invalidity of such provision shall not affect the validity of the remaining provisions of these Terms of Use, which shall remain in full force and effect. No waiver of any provision in these Terms of Use shall be deemed a further or continuing waiver of such provision or any other provision.<br />\n                            <br />\n                            <strong>Payment</strong><br />\n                            <br />\n                            Payments are processed by Emerging Markets Online Food Delivery S.&agrave; r.l., a limited liability company (soci&eacute;t&eacute; &agrave; responsabilit&eacute; limit&eacute;e) incorporated and existing under the laws of the Grand Duchy of Luxembourg, which is the ultimate holding of the local company in Bulgaria. Cross-border subrcharges may be applicable.<br />\n                            The end customer can choose between different payment methods provided on the platforms, which are currently the following: [credit card and immediate transfer.] The provider reserves the right to provide other payment methods or to no longer offer certain payment methods. The end customer bindingly chooses the payment method when placing the respective order. Provided that the end customer chooses an online payment method, the payment might be processed by an external payment provider cooperating with the provider. Card data will in this case be stored for future orders by the payment provider, on the condition that the end customer chooses the respective storage of such and hereby gives consent to it. Due to the COVID-19 emergency in the Republic of Bulgaria, all orders paid online will be delivered without physical contact.<br />\n                            <br />\n                            <strong>Warranties</strong><br />\n                            <br />\n                            The Websites and the Content are provided on an &ldquo;as is&rdquo; basis. To the fullest extent permitted by law, foodtiger, its parent, subsidiaries, and affiliates (the foodtiger entities), and each of their agents, representatives and service providers, disclaim all warranties, either expressed or implied, statutory or otherwise, including but not limited to the implied warranties of merchantibility, non-infringement of third parties rights, and fitness for particular purpose. Applicable law may not allow the exclusion of implied warranties, so the above exclusion may not apply to you. The foodtiger Entities, their agents, representatives and service providers cannot and do not guarantee or warrant that: (a) the Websites will be reliable, accurate, complete, or updated on a timely basis; (b) the Websites will be free of human and machine errors, omissions, delays, interruptions or losses, including loss of data; (c) any files available for downloading from the Websites will be free of infection by viruses, worms, Trojan horses, or other codes that manifest contaminating or destructive properties; (d) any Content you post on the Websites will remain on the Websites; or (e) the functions or services performed on the Websites will be uninterrupted or error-free or that defects in the Websites will be corrected.<br />\n                            <br />\n                            <strong>Limitation of Liability</strong><br />\n                            <br />\n                            The foodtiger entities, their agents, representatives, and service providers, entire liability and your exclusive remedy with respect to your use of the websites is to discontinue your use of the websites. The foodtiger entities, their agents, representatives, and service providers shall not be liable for any indirect, special, incidental, consequential, or exemplary damages arising from your use of the websites or for any other claim related in any way to your use of the websites. These exclusions for indirect, special, consequential, and exemplary damages include, without limitation, damages for lost profits, lost data, loss of goodwill, work stoppage, work stoppage, computer failure, or malfunction, or any other commercial damages or losses, even if the foodtiger entities, their agents, representatives, and service providers have been advised of the possibility thereof and regardless of the legal or equitable theory upon which the claim is based. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, the foodtiger entities, their agents, representatives and service providers&#39; liability shall be limited to the extent permitted by law.<br />\n                            <br />\n                            <strong>Termination</strong><br />\n                            <br />\n                            foodtiger has the right to terminate your account and access to the Websites for any reason, including, without limitation, if foodtiger, in its sole discretion, considers your use to be unacceptable, or in the event of any breach by you of the Terms of Use. foodtiger may, but shall be under no obligation to, provide you a warning prior to termination of your use of the Websites.<br />\n                            <br />\n                            <strong>Vouchers</strong><br />\n                            <br />\n                            Unless otherwise stated,<br />\n                            <br />\n                            - Vouchers are only applicable to food orders, excluding delivery fees and containers<br />\n                            - Valid only for online payment<br />\n                            - foodtiger reserves the right to cancel orders and accounts if fraud activities are detected<br />\n                            - foodtiger reserves the right to stop this voucher to be used on certain restaurants without prior notice<br />\n                            - Individual restaurants terms &amp; conditions apply<br />\n                            <br />\n                            <strong>Contact Us</strong><br />\n                            <br />\n                            Questions? Comments? Please send an email to us at&nbsp;contact@foodtiger.com<br />\n                            <br />\n                            &copy; 2020 foodtiger. All rights reserved.</p>', 1),
(2, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'How it works', '<p>foodtiger is simple and easy way to order food online. Enjoy the variety of choices and cuisines which could be delivered to your home or office.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Here is how foodtiger works:</strong><br />\n                        &nbsp;</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Find a restaurant:</strong></p>\n\n                        <p>Enter you address or choose from the map on the front page to set your location. Take a review on the restaurants which deliver to your address. Choose a restaurant and dive in its tasty menu.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Choose a dish:</strong></p>\n\n                        <p>Choose from the displayed dishes. If there is an option to add products or sauce, for pizza for example, you will be asked for your choice right after you click on the dish. Your order will be dispayed on the right side of the page.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Finish your order and choose type of payment:</strong></p>\n\n                        <p>When you complete the order with delicious food, click &quot;Buy&quot;. Now you only have to write your address and choose type of payment as you follow the instructions on the page.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Delivery:</strong></p>\n\n                        <p>You will receive SMS as confirmation for your order and information about the delivery time and.....</p>\n\n                        <p>That&#39;s all!</p>\n\n                        <p>&nbsp;</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paths`
--

CREATE TABLE `paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage restorants', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02'),
(2, 'manage drivers', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02'),
(3, 'manage orders', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02'),
(4, 'edit settings', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02'),
(5, 'view orders', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02'),
(6, 'edit restorant', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02'),
(7, 'edit orders', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02'),
(8, 'access backedn', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_items` int(11) NOT NULL DEFAULT 0 COMMENT '0 is unlimited',
  `limit_orders` int(11) NOT NULL DEFAULT 0 COMMENT '0 is unlimited',
  `price` double(8,2) NOT NULL,
  `period` int(11) NOT NULL DEFAULT 1 COMMENT '1 - monthly, 2-anually',
  `paddle_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `features` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `limit_views` int(11) NOT NULL DEFAULT 0 COMMENT '0 is unlimited',
  `enable_ordering` int(11) NOT NULL DEFAULT 1,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `name`, `limit_items`, `limit_orders`, `price`, `period`, `paddle_id`, `created_at`, `updated_at`, `deleted_at`, `description`, `features`, `limit_views`, `enable_ordering`, `stripe_id`, `paypal_id`, `mollie_id`, `paystack_id`) VALUES
(1, 'Free', 30, 100, 0.00, 1, '', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 'If you run a small restaurant or bar, or just need the basics, this plan is great.', 'Accept 100 Orders/m, Access to the menu creation tool, Unlimited views, 30 items in the menu, Community support', 0, 1, '', NULL, NULL, NULL),
(2, 'Starter', 0, 600, 99.00, 1, '', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 'For bigger restaurants and bars. Offer a full menu.', 'Accept 600 Orders/m, Access to the menu creation tool, Unlimited views, Unlimited items in the menu, Dedicated Support', 0, 1, '', NULL, NULL, NULL),
(3, 'Pro', 0, 0, 120.00, 1, '', '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL, 'Accept orders directly from your customer mobile phone', 'Featured on our site, Accept unlimited Orders, Manage order, Full access to QR tool, Access to the menu creation tool, Unlimited views, Unlimited items in the menu, Dedicated Support', 0, 1, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `rateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `created_at`, `updated_at`, `rating`, `rateable_type`, `rateable_id`, `user_id`, `order_id`, `comment`) VALUES
(1, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 4, 'App\\Restorant', 1, 4, 508, 'Food was amazing. Delivery was on time.'),
(2, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 4, 'App\\Restorant', 2, 4, 512, 'Super fast delivery. Food was warm and person was kind'),
(3, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 5, 'App\\Restorant', 3, 4, 516, 'Food was amazing. Delivery was on time.'),
(4, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 4, 'App\\Restorant', 3, 4, 524, 'Super fast delivery. Food was warm and person was kind'),
(5, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 5, 'App\\Restorant', 3, 4, 532, 'The pizza was amazing.'),
(6, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 4, 'App\\Restorant', 3, 4, 536, 'Super fast delivery. Food was warm and person was kind'),
(7, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 4, 'App\\Restorant', 2, 4, 544, 'The pizza was amazing.'),
(8, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 4, 'App\\Restorant', 3, 4, 548, 'Highly recommended restaurant'),
(9, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 4, 'App\\Restorant', 3, 4, 556, 'Highly recommended restaurant'),
(10, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 5, 'App\\Restorant', 1, 4, 564, 'Food was amazing. Delivery was on time.'),
(11, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 4, 'App\\Restorant', 2, 4, 568, 'Super fast delivery. Food was warm and person was kind'),
(12, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 5, 'App\\Restorant', 1, 4, 572, 'Highly recommended restaurant'),
(13, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 4, 'App\\Restorant', 1, 4, 584, 'Food was amazing. Delivery was on time.'),
(14, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 4, 'App\\Restorant', 3, 4, 588, 'The pizza was amazing.'),
(15, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 5, 'App\\Restorant', 1, 4, 592, 'Food was amazing. Delivery was on time.'),
(16, '2021-10-15 09:00:08', '2021-10-15 09:00:08', 4, 'App\\Restorant', 1, 4, 596, 'Food was amazing. Delivery was on time.');

-- --------------------------------------------------------

--
-- Table structure for table `restoareas`
--

CREATE TABLE `restoareas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restoareas`
--

INSERT INTO `restoareas` (`id`, `name`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Inside', 1, NULL, NULL, NULL),
(2, 'Terrasse', 1, NULL, NULL, NULL),
(3, 'Inside', 2, NULL, NULL, NULL),
(4, 'Terrasse', 2, NULL, NULL, NULL),
(5, 'Inside', 3, NULL, NULL, NULL),
(6, 'Terrasse', 3, NULL, NULL, NULL),
(7, 'Inside', 4, NULL, NULL, NULL),
(8, 'Terrasse', 4, NULL, NULL, NULL),
(9, 'Inside', 5, NULL, NULL, NULL),
(10, 'Terrasse', 5, NULL, NULL, NULL),
(11, 'Inside', 6, NULL, NULL, NULL),
(12, 'Terrasse', 6, NULL, NULL, NULL),
(13, 'Inside', 7, NULL, NULL, NULL),
(14, 'Terrasse', 7, NULL, NULL, NULL),
(15, 'Inside', 8, NULL, NULL, NULL),
(16, 'Terrasse', 8, NULL, NULL, NULL),
(17, 'Inside', 9, NULL, NULL, NULL),
(18, 'Terrasse', 9, NULL, NULL, NULL),
(19, 'Inside', 10, NULL, NULL, NULL),
(20, 'Terrasse', 10, NULL, NULL, NULL),
(21, 'Inside', 11, NULL, NULL, NULL),
(22, 'Terrasse', 11, NULL, NULL, NULL),
(23, 'Inside', 12, NULL, NULL, NULL),
(24, 'Terrasse', 12, NULL, NULL, NULL),
(25, 'Inside', 13, NULL, NULL, NULL),
(26, 'Terrasse', 13, NULL, NULL, NULL),
(27, 'Inside', 14, NULL, NULL, NULL),
(28, 'Terrasse', 14, NULL, NULL, NULL),
(29, 'Inside', 15, NULL, NULL, NULL),
(30, 'Terrasse', 15, NULL, NULL, NULL),
(31, 'Inside', 16, NULL, NULL, NULL),
(32, 'Terrasse', 16, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02'),
(2, 'owner', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02'),
(3, 'driver', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02'),
(4, 'client', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02'),
(5, 'staff', 'web', '2021-10-15 09:00:02', '2021-10-15 09:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_details_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `restorant_details_cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maps_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `delivery` double(8,2) NOT NULL DEFAULT 0.00,
  `typeform` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_options` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `site_logo_dark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_fields` text COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `site_name`, `site_logo`, `search`, `restorant_details_image`, `restorant_details_cover_image`, `description`, `header_title`, `header_subtitle`, `currency`, `facebook`, `instagram`, `playstore`, `appstore`, `maps_api_key`, `delivery`, `typeform`, `mobile_info_title`, `mobile_info_subtitle`, `order_options`, `site_logo_dark`, `order_fields`) VALUES
(1, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 'My Project name', '/default/logo.png', '/default/cover.jpg', '/default/restaurant_large.jpg', '/default/cover.jpg', 'Food Delivery from best restaurants', 'Food Delivery from<br /><b>New York’s</b> Best Restaurants', 'The meals you love, delivered with care', 'USD', '', '', '', '', 'AIzaSyCZhq0g1x1ttXPa1QB3ylcDQPTAzp_KUgA', 0.00, '', 'Download the food you love', 'It`s all at your fingertips - the restaurants you love. Find the right food to suit your mood, and make the first bite last. Go ahead, download us.', '{}', '/default/logo.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `simple_delivery_areas`
--

CREATE TABLE `simple_delivery_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double(8,2) NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_delivery_areas`
--

INSERT INTO `simple_delivery_areas` (`id`, `name`, `cost`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 'Nearby', 10.00, 1, NULL, NULL),
(2, 'Faraway', 15.00, 1, NULL, NULL),
(3, 'Nearby', 10.00, 2, NULL, NULL),
(4, 'Faraway', 15.00, 2, NULL, NULL),
(5, 'Nearby', 10.00, 3, NULL, NULL),
(6, 'Faraway', 15.00, 3, NULL, NULL),
(7, 'Nearby', 10.00, 4, NULL, NULL),
(8, 'Faraway', 15.00, 4, NULL, NULL),
(9, 'Nearby', 10.00, 5, NULL, NULL),
(10, 'Faraway', 15.00, 5, NULL, NULL),
(11, 'Nearby', 10.00, 6, NULL, NULL),
(12, 'Faraway', 15.00, 6, NULL, NULL),
(13, 'Nearby', 10.00, 7, NULL, NULL),
(14, 'Faraway', 15.00, 7, NULL, NULL),
(15, 'Nearby', 10.00, 8, NULL, NULL),
(16, 'Faraway', 15.00, 8, NULL, NULL),
(17, 'Nearby', 10.00, 9, NULL, NULL),
(18, 'Faraway', 15.00, 9, NULL, NULL),
(19, 'Nearby', 10.00, 10, NULL, NULL),
(20, 'Faraway', 15.00, 10, NULL, NULL),
(21, 'Nearby', 10.00, 11, NULL, NULL),
(22, 'Faraway', 15.00, 11, NULL, NULL),
(23, 'Nearby', 10.00, 12, NULL, NULL),
(24, 'Faraway', 15.00, 12, NULL, NULL),
(25, 'Nearby', 10.00, 13, NULL, NULL),
(26, 'Faraway', 15.00, 13, NULL, NULL),
(27, 'Nearby', 10.00, 14, NULL, NULL),
(28, 'Faraway', 15.00, 14, NULL, NULL),
(29, 'Nearby', 10.00, 15, NULL, NULL),
(30, 'Faraway', 15.00, 15, NULL, NULL),
(31, 'Nearby', 10.00, 16, NULL, NULL),
(32, 'Faraway', 15.00, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_verifications`
--

CREATE TABLE `sms_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `alias`) VALUES
(1, 'Just created', 'just_created'),
(2, 'Accepted by admin', 'accepted_by_admin'),
(3, 'Accepted by restaurant', 'accepted_by_restaurant'),
(4, 'Assigned to driver', 'assigned_to_driver'),
(5, 'Prepared', 'prepared'),
(6, 'Picked up', 'picked_up'),
(7, 'Delivered', 'delivered'),
(8, 'Rejected by admin', 'rejected_by_admin'),
(9, 'Rejected by restaurant', 'rejected_by_restaurant'),
(10, 'Updated', 'updated'),
(11, 'Closed', 'closed'),
(12, 'Rejected by driver', 'rejected_by_driver'),
(13, 'Accepted by driver', 'accepted_by_driver');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL DEFAULT 4,
  `restoarea_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `x` double(8,2) DEFAULT NULL,
  `y` double(8,2) DEFAULT NULL,
  `w` double(8,2) DEFAULT NULL,
  `h` double(8,2) DEFAULT NULL,
  `rounded` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `size`, `restoarea_id`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`, `x`, `y`, `w`, `h`, `rounded`) VALUES
(1, 'Table 1', 4, 1, 1, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(2, 'Table 2', 4, 1, 1, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(3, 'Table 3', 4, 1, 1, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(4, 'Table 4', 4, 1, 1, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(5, 'Table 5', 4, 1, 1, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(6, 'Table 6', 4, 1, 1, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(7, 'Table 7', 4, 1, 1, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(8, 'Table 8', 4, 1, 1, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(9, 'Table 9', 4, 1, 1, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(10, 'Table 10', 4, 1, 1, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(11, 'Table 1', 4, 2, 1, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(12, 'Table 2', 4, 2, 1, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(13, 'Table 3', 4, 2, 1, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(14, 'Table 4', 4, 2, 1, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(15, 'Table 5', 4, 2, 1, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(16, 'Table 1', 4, 3, 2, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(17, 'Table 2', 4, 3, 2, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(18, 'Table 3', 4, 3, 2, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(19, 'Table 4', 4, 3, 2, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(20, 'Table 5', 4, 3, 2, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(21, 'Table 6', 4, 3, 2, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(22, 'Table 7', 4, 3, 2, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(23, 'Table 8', 4, 3, 2, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(24, 'Table 9', 4, 3, 2, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(25, 'Table 10', 4, 3, 2, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(26, 'Table 1', 4, 4, 2, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(27, 'Table 2', 4, 4, 2, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(28, 'Table 3', 4, 4, 2, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(29, 'Table 4', 4, 4, 2, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(30, 'Table 5', 4, 4, 2, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(31, 'Table 1', 4, 5, 3, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(32, 'Table 2', 4, 5, 3, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(33, 'Table 3', 4, 5, 3, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(34, 'Table 4', 4, 5, 3, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(35, 'Table 5', 4, 5, 3, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(36, 'Table 6', 4, 5, 3, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(37, 'Table 7', 4, 5, 3, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(38, 'Table 8', 4, 5, 3, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(39, 'Table 9', 4, 5, 3, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(40, 'Table 10', 4, 5, 3, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(41, 'Table 1', 4, 6, 3, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(42, 'Table 2', 4, 6, 3, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(43, 'Table 3', 4, 6, 3, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(44, 'Table 4', 4, 6, 3, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(45, 'Table 5', 4, 6, 3, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(46, 'Table 1', 4, 7, 4, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(47, 'Table 2', 4, 7, 4, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(48, 'Table 3', 4, 7, 4, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(49, 'Table 4', 4, 7, 4, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(50, 'Table 5', 4, 7, 4, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(51, 'Table 6', 4, 7, 4, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(52, 'Table 7', 4, 7, 4, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(53, 'Table 8', 4, 7, 4, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(54, 'Table 9', 4, 7, 4, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(55, 'Table 10', 4, 7, 4, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(56, 'Table 1', 4, 8, 4, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(57, 'Table 2', 4, 8, 4, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(58, 'Table 3', 4, 8, 4, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(59, 'Table 4', 4, 8, 4, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(60, 'Table 5', 4, 8, 4, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(61, 'Table 1', 4, 9, 5, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(62, 'Table 2', 4, 9, 5, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(63, 'Table 3', 4, 9, 5, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(64, 'Table 4', 4, 9, 5, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(65, 'Table 5', 4, 9, 5, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(66, 'Table 6', 4, 9, 5, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(67, 'Table 7', 4, 9, 5, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(68, 'Table 8', 4, 9, 5, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(69, 'Table 9', 4, 9, 5, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(70, 'Table 10', 4, 9, 5, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(71, 'Table 1', 4, 10, 5, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(72, 'Table 2', 4, 10, 5, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(73, 'Table 3', 4, 10, 5, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(74, 'Table 4', 4, 10, 5, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(75, 'Table 5', 4, 10, 5, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(76, 'Table 1', 4, 11, 6, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(77, 'Table 2', 4, 11, 6, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(78, 'Table 3', 4, 11, 6, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(79, 'Table 4', 4, 11, 6, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(80, 'Table 5', 4, 11, 6, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(81, 'Table 6', 4, 11, 6, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(82, 'Table 7', 4, 11, 6, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(83, 'Table 8', 4, 11, 6, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(84, 'Table 9', 4, 11, 6, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(85, 'Table 10', 4, 11, 6, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(86, 'Table 1', 4, 12, 6, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(87, 'Table 2', 4, 12, 6, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(88, 'Table 3', 4, 12, 6, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(89, 'Table 4', 4, 12, 6, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(90, 'Table 5', 4, 12, 6, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(91, 'Table 1', 4, 13, 7, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(92, 'Table 2', 4, 13, 7, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(93, 'Table 3', 4, 13, 7, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(94, 'Table 4', 4, 13, 7, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(95, 'Table 5', 4, 13, 7, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(96, 'Table 6', 4, 13, 7, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(97, 'Table 7', 4, 13, 7, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(98, 'Table 8', 4, 13, 7, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(99, 'Table 9', 4, 13, 7, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(100, 'Table 10', 4, 13, 7, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(101, 'Table 1', 4, 14, 7, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(102, 'Table 2', 4, 14, 7, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(103, 'Table 3', 4, 14, 7, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(104, 'Table 4', 4, 14, 7, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(105, 'Table 5', 4, 14, 7, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(106, 'Table 1', 4, 15, 8, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(107, 'Table 2', 4, 15, 8, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(108, 'Table 3', 4, 15, 8, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(109, 'Table 4', 4, 15, 8, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(110, 'Table 5', 4, 15, 8, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(111, 'Table 6', 4, 15, 8, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(112, 'Table 7', 4, 15, 8, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(113, 'Table 8', 4, 15, 8, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(114, 'Table 9', 4, 15, 8, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(115, 'Table 10', 4, 15, 8, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(116, 'Table 1', 4, 16, 8, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(117, 'Table 2', 4, 16, 8, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(118, 'Table 3', 4, 16, 8, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(119, 'Table 4', 4, 16, 8, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(120, 'Table 5', 4, 16, 8, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(121, 'Table 1', 4, 17, 9, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(122, 'Table 2', 4, 17, 9, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(123, 'Table 3', 4, 17, 9, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(124, 'Table 4', 4, 17, 9, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(125, 'Table 5', 4, 17, 9, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(126, 'Table 6', 4, 17, 9, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(127, 'Table 7', 4, 17, 9, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(128, 'Table 8', 4, 17, 9, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(129, 'Table 9', 4, 17, 9, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(130, 'Table 10', 4, 17, 9, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(131, 'Table 1', 4, 18, 9, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(132, 'Table 2', 4, 18, 9, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(133, 'Table 3', 4, 18, 9, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(134, 'Table 4', 4, 18, 9, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(135, 'Table 5', 4, 18, 9, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(136, 'Table 1', 4, 19, 10, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(137, 'Table 2', 4, 19, 10, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(138, 'Table 3', 4, 19, 10, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(139, 'Table 4', 4, 19, 10, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(140, 'Table 5', 4, 19, 10, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(141, 'Table 6', 4, 19, 10, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(142, 'Table 7', 4, 19, 10, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(143, 'Table 8', 4, 19, 10, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(144, 'Table 9', 4, 19, 10, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(145, 'Table 10', 4, 19, 10, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(146, 'Table 1', 4, 20, 10, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(147, 'Table 2', 4, 20, 10, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(148, 'Table 3', 4, 20, 10, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(149, 'Table 4', 4, 20, 10, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(150, 'Table 5', 4, 20, 10, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(151, 'Table 1', 4, 21, 11, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(152, 'Table 2', 4, 21, 11, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(153, 'Table 3', 4, 21, 11, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(154, 'Table 4', 4, 21, 11, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(155, 'Table 5', 4, 21, 11, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(156, 'Table 6', 4, 21, 11, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(157, 'Table 7', 4, 21, 11, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(158, 'Table 8', 4, 21, 11, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(159, 'Table 9', 4, 21, 11, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(160, 'Table 10', 4, 21, 11, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(161, 'Table 1', 4, 22, 11, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(162, 'Table 2', 4, 22, 11, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(163, 'Table 3', 4, 22, 11, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(164, 'Table 4', 4, 22, 11, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(165, 'Table 5', 4, 22, 11, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(166, 'Table 1', 4, 23, 12, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(167, 'Table 2', 4, 23, 12, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(168, 'Table 3', 4, 23, 12, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(169, 'Table 4', 4, 23, 12, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(170, 'Table 5', 4, 23, 12, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(171, 'Table 6', 4, 23, 12, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(172, 'Table 7', 4, 23, 12, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(173, 'Table 8', 4, 23, 12, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(174, 'Table 9', 4, 23, 12, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(175, 'Table 10', 4, 23, 12, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(176, 'Table 1', 4, 24, 12, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(177, 'Table 2', 4, 24, 12, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(178, 'Table 3', 4, 24, 12, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(179, 'Table 4', 4, 24, 12, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(180, 'Table 5', 4, 24, 12, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(181, 'Table 1', 4, 25, 13, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(182, 'Table 2', 4, 25, 13, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(183, 'Table 3', 4, 25, 13, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(184, 'Table 4', 4, 25, 13, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(185, 'Table 5', 4, 25, 13, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(186, 'Table 6', 4, 25, 13, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(187, 'Table 7', 4, 25, 13, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(188, 'Table 8', 4, 25, 13, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(189, 'Table 9', 4, 25, 13, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(190, 'Table 10', 4, 25, 13, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(191, 'Table 1', 4, 26, 13, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(192, 'Table 2', 4, 26, 13, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(193, 'Table 3', 4, 26, 13, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(194, 'Table 4', 4, 26, 13, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(195, 'Table 5', 4, 26, 13, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(196, 'Table 1', 4, 27, 14, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(197, 'Table 2', 4, 27, 14, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(198, 'Table 3', 4, 27, 14, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(199, 'Table 4', 4, 27, 14, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(200, 'Table 5', 4, 27, 14, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(201, 'Table 6', 4, 27, 14, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(202, 'Table 7', 4, 27, 14, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(203, 'Table 8', 4, 27, 14, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(204, 'Table 9', 4, 27, 14, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(205, 'Table 10', 4, 27, 14, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(206, 'Table 1', 4, 28, 14, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(207, 'Table 2', 4, 28, 14, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(208, 'Table 3', 4, 28, 14, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(209, 'Table 4', 4, 28, 14, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(210, 'Table 5', 4, 28, 14, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(211, 'Table 1', 4, 29, 15, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(212, 'Table 2', 4, 29, 15, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(213, 'Table 3', 4, 29, 15, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(214, 'Table 4', 4, 29, 15, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(215, 'Table 5', 4, 29, 15, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(216, 'Table 6', 4, 29, 15, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(217, 'Table 7', 4, 29, 15, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(218, 'Table 8', 4, 29, 15, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(219, 'Table 9', 4, 29, 15, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(220, 'Table 10', 4, 29, 15, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(221, 'Table 1', 4, 30, 15, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(222, 'Table 2', 4, 30, 15, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(223, 'Table 3', 4, 30, 15, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(224, 'Table 4', 4, 30, 15, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(225, 'Table 5', 4, 30, 15, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes'),
(226, 'Table 1', 4, 31, 16, NULL, NULL, NULL, 90.14, 59.02, 120.00, 87.00, 'no'),
(227, 'Table 2', 4, 31, 16, NULL, NULL, NULL, 87.65, 173.37, 120.00, 87.00, 'no'),
(228, 'Table 3', 4, 31, 16, NULL, NULL, NULL, 86.12, 285.06, 120.00, 87.00, 'no'),
(229, 'Table 4', 4, 31, 16, NULL, NULL, NULL, 82.89, 401.49, 121.19, 87.00, 'no'),
(230, 'Table 5', 4, 31, 16, NULL, NULL, NULL, 317.66, 191.56, 193.50, 156.62, 'yes'),
(231, 'Table 6', 4, 31, 16, NULL, NULL, NULL, 600.66, 295.35, 120.00, 120.00, 'yes'),
(232, 'Table 7', 4, 31, 16, NULL, NULL, NULL, 595.45, 141.78, 120.00, 120.00, 'yes'),
(233, 'Table 8', 4, 31, 16, NULL, NULL, NULL, 874.80, 45.66, 120.00, 87.00, 'no'),
(234, 'Table 9', 4, 31, 16, NULL, NULL, NULL, 874.59, 177.19, 120.00, 191.45, 'no'),
(235, 'Table 10', 4, 31, 16, NULL, NULL, NULL, 871.71, 418.70, 120.00, 87.00, 'no'),
(236, 'Table 1', 4, 32, 16, NULL, NULL, NULL, 487.37, 284.18, 246.98, 87.00, 'no'),
(237, 'Table 2', 4, 32, 16, NULL, NULL, NULL, 222.27, 285.05, 242.19, 87.00, 'no'),
(238, 'Table 3', 4, 32, 16, NULL, NULL, NULL, 223.63, 86.40, 120.00, 120.00, 'yes'),
(239, 'Table 4', 4, 32, 16, NULL, NULL, NULL, 420.13, 88.23, 120.00, 120.00, 'yes'),
(240, 'Table 5', 4, 32, 16, NULL, NULL, NULL, 614.11, 90.74, 120.00, 120.00, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cancel_url` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_url` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checkout_id` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subscription_plan_id` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stripe_account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birth_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working` int(11) NOT NULL DEFAULT 1,
  `onorder` int(11) DEFAULT NULL,
  `numorders` int(11) NOT NULL DEFAULT 0,
  `rejectedorders` int(11) NOT NULL,
  `paypal_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_customer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_mandate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_percentage` decimal(6,4) NOT NULL DEFAULT 0.0000,
  `extra_billing_information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_trans_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `google_id`, `fb_id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `phone`, `remember_token`, `created_at`, `updated_at`, `active`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `verification_code`, `phone_verified_at`, `plan_id`, `plan_status`, `cancel_url`, `update_url`, `checkout_id`, `subscription_plan_id`, `stripe_account`, `birth_date`, `lat`, `lng`, `working`, `onorder`, `numorders`, `rejectedorders`, `paypal_subscribtion_id`, `mollie_customer_id`, `mollie_mandate_id`, `tax_percentage`, `extra_billing_information`, `mollie_subscribtion_id`, `paystack_subscribtion_id`, `paystack_trans_id`, `restaurant_id`, `deleted_at`) VALUES
(1, NULL, NULL, 'Admin Admin', 'aaa@gmail.com', '2021-10-15 09:00:02', '$2y$10$R7bVmumyN7VGBHQ83iP3Qus.1V7k2WrLORKwZiJqCLVlO4zDeuio.', 'BHn51qaswkMOT7L6IVD2K8i23iorv9eXlOGeEt8xS05MEIh8cRFDWDdiyc0TF7flzeS4GKty0ebwSQ4o', '', NULL, '2021-10-15 09:00:02', '2021-10-15 09:00:02', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, 'Demo Owner', 'owner@example.com', '2021-10-15 09:00:03', '$2y$10$2P4WQqTQZ2aRkJjmtKEhsuZ6QrXo.MjmQqm/djJ.H/dFOW7pe/oQq', 'qIMg0e6BBCyMya7r9XTjejErwV3pGGYOo0AtWLxztRuK4te3UVmiaC8EHMBbxeBCjDqjEb7HZ9mEVGIY', '', NULL, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, 'Demo Staff 1', 'staff@example.com', '2021-10-15 09:00:03', '$2y$10$YtnrAqevJm4ofB3/0L69kejr5AWDyrs97zOrjPVX.BMyEDfpwz/o.', 'bRMMuAXEwgLAtlVnxKkQT8tKh2VHnPZ2LNU1hZFTxSn1UILt74GPRdbQoqflmemoOMIVXIiziwVpYtLj', '', NULL, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 1, NULL),
(4, NULL, NULL, 'Demo Staff 2', 'staff2_1@example.com', '2021-10-15 09:00:03', '$2y$10$7dMXE1jRcGTPFv7rzEglWe0GZhaaZqSOMJxxhBikyybNu3H4Vd1li', 'CPxgGIjKaPVzI91irSBKqFxz0haBkI00UZaz53rKifugKrVLqBvXnGN3fIYdGzxfuQ0MSvD4zp5RLqOJ', '', NULL, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 1, NULL),
(5, NULL, NULL, 'Demo Staff 1', 'staff1_2@example.com', '2021-10-15 09:00:03', '$2y$10$d7xd8.GHOSP0rsyHaR3UQ.1MmqB8WoFudne5H87o1ETwoT9bjX7Ua', '8pZcrG4A44ppfqiKpRArtmRMWBhmzBvxcKDNlPMQBkK0DCJTwDNgOjOyiSQM2RWcxjptPzDIX6o1B1c1', '', NULL, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 2, NULL),
(6, NULL, NULL, 'Demo Staff 2', 'staff2_2@example.com', '2021-10-15 09:00:03', '$2y$10$6.5OoQEEpWxzprUNKkpIheCXx7.6Y7S3LoQicuz.eaMvwiXhtohQ.', 'z6ULVMtDXA3vp7ObnZTqDYU69SLXr1prHMUuTXPeqJsxSS12X9d3S8ewJ3oLkL811A4clOLNAryoUlBq', '', NULL, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 2, NULL),
(7, NULL, NULL, 'Demo Staff 1', 'staff1_3@example.com', '2021-10-15 09:00:03', '$2y$10$VK9LVr47..jb/oaAGVu78uG8Qk1XL.qp4U7znb2FAmonqOjsfMx5a', '9b73jxQ5aCP2tPQHfdTquKDYfuuP96qcb0xD85prCfSM7sDVEtqB7DQhLaBiK1E7EvrmSVxK6YbFRvql', '', NULL, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 3, NULL),
(8, NULL, NULL, 'Demo Staff 2', 'staff2_3@example.com', '2021-10-15 09:00:03', '$2y$10$7RnKtOUuyfLBOQwngxDc4OhtzbYEQMXxCbkWzyRMVWcd65Fwb/EzS', 'fb838pTQdjrGiUEstTQzpj141D0EKDqH2u0yd3jYYx66O2Ty0QWvyOIy6YWB7GWDuJwWgLjioCiyvkuS', '', NULL, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 3, NULL),
(9, NULL, NULL, 'Demo Staff 1', 'staff1_4@example.com', '2021-10-15 09:00:03', '$2y$10$KDl7NA.m8trqKXE78wqF..N3FIa7Br/NNv2N6gtlhCL74ceZaY8H.', '3zkDLrt7XIKTAEWXxSs0iwZGcBzqMT9S9R8BLJC1XCdqGgwNpQIR2esw5UwVf5GI5Vf235vvIEAsfjQK', '', NULL, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 4, NULL),
(10, NULL, NULL, 'Demo Staff 2', 'staff2_4@example.com', '2021-10-15 09:00:03', '$2y$10$ou9tGNwjXPrEU2d6fS31xuunKJJN/CchQh9BYULw7vQsOwVrhmDNG', 'tf7nIMKKaX1WP96kP762v7Mv6EOdmgATXRvlBqNxjn3nzI0o6WOIKrnAkg2x21S827Hlhy5U00QOJ0BL', '', NULL, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 4, NULL),
(11, NULL, NULL, 'Demo Staff 1', 'staff1_5@example.com', '2021-10-15 09:00:04', '$2y$10$PBSjvePAcBSdHjZSHTuJ0.2i4Rz5Jsrd83fKbSNFghw1twk2/UWfC', 'xvwYUSMazrCQLrOP43UZCIXIwzu89Crw7vsv4UvBIE6N6bqFMtLufkygfblz7SXP9AEiJt9vN8qRrrdr', '', NULL, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 5, NULL),
(12, NULL, NULL, 'Demo Staff 2', 'staff2_5@example.com', '2021-10-15 09:00:04', '$2y$10$stvbxJ7OZjIxvpJtOqgZduOj5nt2079WKFVl4bc5qhr/JMSLAqceS', 'xsnHjl1VrCe5oAdLyco6wOloHxednhLTmfGDGSOzaf8idVhOrs9W4ozyyjWFLsE69bnGtilZhBBJA9Xf', '', NULL, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 5, NULL),
(13, NULL, NULL, 'Demo Staff 1', 'staff1_6@example.com', '2021-10-15 09:00:04', '$2y$10$yB/JMZjMwIWj/L8fNhuZw.lvfgwiWMg/V6494MvXjpsREfml5YSo.', '0XW3LKhGCbfSf3nTpnFNQ0yWRuwLrTt9tfjx8M05kV6wVqpypAwhGdT6tZQhhSWkgpFvpNm3yGDBH40e', '', NULL, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 6, NULL),
(14, NULL, NULL, 'Demo Staff 2', 'staff2_6@example.com', '2021-10-15 09:00:04', '$2y$10$Xzuvo/VcQ4DDIPK/pwrOE.RCCEZ9Mdyoo99cMJsFMNqRMR/gQRA2W', 'Hg94DE7vP0QRs12d9T0y5z1G0KjCIo8WLVA45z7dgnAbSfIpmzreZrmHynJIWdCnnEXbY3PcfooJQQP8', '', NULL, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 6, NULL),
(15, NULL, NULL, 'Demo Staff 1', 'staff1_7@example.com', '2021-10-15 09:00:04', '$2y$10$0ko6qJ062bYfm3DtHNgy6.1gQbUb1pwrbtmFlhpfaiVZV7hquIWmy', 'dVikjNv990BkZFNdU7d4wHT7WirblUjSoY5oFP6Yuzp7oxDdLQULZcqDbETVbXBauHfYa3j2bK5F0qdo', '', NULL, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 7, NULL),
(16, NULL, NULL, 'Demo Staff 2', 'staff2_7@example.com', '2021-10-15 09:00:04', '$2y$10$rn8fEkpTFKl8U7iYFnlbWuiFfDOQLHR6AMi.k85usGTDZS.IUnWPa', 'Qm0BGws4lIiEHK9qak0xai23ad9Z4LQhocvaYkXN4uoDsTHPeB6KRU77w3vh64rhUKP8jgJ1wjsuKlaq', '', NULL, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 7, NULL),
(17, NULL, NULL, 'Demo Staff 1', 'staff1_8@example.com', '2021-10-15 09:00:04', '$2y$10$JTDM4G6oLRNLJyTkp/ktu.UNV3.ifv/8g1ABeZAUZHkRvYFowcl7i', 'R7IjR5lEyv8Su4PPfzeHV2z8o0TP7pnCpuiImx8sdJO8FTSNcKQIFwmDsHCuAedkamU4UzqLor3TnhaB', '', NULL, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 8, NULL),
(18, NULL, NULL, 'Demo Staff 2', 'staff2_8@example.com', '2021-10-15 09:00:04', '$2y$10$7XUw9xQ/A8EcYpdSKW87nuk5R28G8zTmDoP2IYGeGoDWM1HmcV.yK', 's999KpQzACvbOAqrr3ZbWaFAwQjSzIjj85tW4UYtlnWgzGhxhuOKAeopnsoElxZisYzTMCfsqbsz5DVy', '', NULL, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 8, NULL),
(19, NULL, NULL, 'Demo Staff 1', 'staff1_9@example.com', '2021-10-15 09:00:04', '$2y$10$vWnZs1qvJ5rkuCuVRNoC8.E4IbnanpCbR0lrvjt0y50gnB816Ao6i', '7lJv53rxzN10qDuFLHaYiK2MuAmaKMvnvHW9wINlahKPfKVAjXuynMPEuoveGqLAhtXnu7TPXpxVqJkM', '', NULL, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 9, NULL),
(20, NULL, NULL, 'Demo Staff 2', 'staff2_9@example.com', '2021-10-15 09:00:04', '$2y$10$ZvgHqCtIQu1rXe76.OW5MeO9B.ZgqvWwt3jmxfwVLzF8UvWsJcjFe', 'kJdH50VMf9Db8J1GC5VwhC4Cwpd0PpZOesvTGtlElx3sAQAPgmIkRTCPVftwTw4gFRxjHJkJgaTUaSiu', '', NULL, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 9, NULL),
(21, NULL, NULL, 'Demo Staff 1', 'staff1_10@example.com', '2021-10-15 09:00:05', '$2y$10$4PgaDEw.6jK4Fope4jbD9uBDYwNLiSFELynQFefRXCN9tkhvARfLy', 'eqYcsFjYwpttONGcNbb5SBcrRLD0suXE3kp7vph2Ee8GZ4xXmwC4L6echSmPV327Mf50IJ7UWf1dREMF', '', NULL, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 10, NULL),
(22, NULL, NULL, 'Demo Staff 2', 'staff2_10@example.com', '2021-10-15 09:00:05', '$2y$10$TH7XOv3ooOF0MPwwzd6BsuNiC/UrPyGF9UVbXD91XNZYdKMc7KWSG', 'ovc1xcgxZJs8yPMmgxqoiT9zxDB7tBpij1ftKT3At07jpTDZf0MLJKoi9Pxr2yFqFJmSFNg7mpVweQjI', '', NULL, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 10, NULL),
(23, NULL, NULL, 'Demo Staff 1', 'staff1_11@example.com', '2021-10-15 09:00:05', '$2y$10$/NwUarm8s/TLkQbBc8GYh.7yYGbrrXac2nB/SVviYpS.fh65kFy7S', '6ZZvuhlWQEomnRfYaDiQ4xXKxNakeHjPoILcmntigJjT4zFz7vkXDLzwolJgHSTI9Um6XL5fqTewzHoH', '', NULL, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 11, NULL),
(24, NULL, NULL, 'Demo Staff 2', 'staff2_11@example.com', '2021-10-15 09:00:05', '$2y$10$BZhgkDWELA2qrt6vUmjY1OP7KUr3Ok4shdPKi7lTROQG7OJYHWwO2', 'DSAPwZC7q6lbfcc0wFbGvN1a8DL3x2D8WAq2YjHZFKSLcvoh8meiqmzIQ3ZJYdVPAo7sUJQyvRq0Yg8K', '', NULL, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 11, NULL),
(25, NULL, NULL, 'Demo Staff 1', 'staff1_12@example.com', '2021-10-15 09:00:05', '$2y$10$K6k/im41tKuvv1uO9rnS../nCuYiMb3nOwtR2wbZQ9/gi5muo/dfq', 'YXTeUI7Z1hguIUuSqlFjG73VL9810gMKC87JK22fPoNa5BX3Dj5HrGKm54MXjlroEhnGFdRFMIhTEm5U', '', NULL, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 12, NULL),
(26, NULL, NULL, 'Demo Staff 2', 'staff2_12@example.com', '2021-10-15 09:00:05', '$2y$10$id11mvqVlGXmFAHO/ixm1eZU8ljZso1FaG2hv3R9wJbyfGDtMKhqC', 'cO6v5ByfoUEHwiaNn2KcJwBZIZemfYfat7HfDhAaHPwlyM1q1GKOgxWlEiW96c8fn62dDb2VJIMIyEoh', '', NULL, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 12, NULL),
(27, NULL, NULL, 'Demo Staff 1', 'staff1_13@example.com', '2021-10-15 09:00:05', '$2y$10$rfDgccoEsDAcZwKeivekvenHIUHkpTmDqXIFiG/TJJ6td0Qpygq8a', '6RRXMSkGpbnHPD8me2ALwG78IR6V6kz0P04wdaCRVCNQZFdBll21jM3qgvFL7clVBwGLwCbYpVN7pqOg', '', NULL, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 13, NULL),
(28, NULL, NULL, 'Demo Staff 2', 'staff2_13@example.com', '2021-10-15 09:00:05', '$2y$10$x9c6lTV5XoeNQRO.aIyelOb1pOfC.xkOA7a3c/jxvr3oaR9bL6c/S', '6IzE8ir8c6WwSbhO0j9JiMW3mAGS6bxvhAAEoGyfuaLqyY5FOpGbERjrVgSlBlITTb63eFtt9eb9oFox', '', NULL, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 13, NULL),
(29, NULL, NULL, 'Demo Staff 1', 'staff1_14@example.com', '2021-10-15 09:00:06', '$2y$10$NyRbfyzRJfpqYB7mBTR/ve1oK2BuoR07BH47aOzKCFtiX7jR8LZGC', 'HUk8fWo0EBt1G2NhedJlSJv7OJReVOGahSOiWlWAcLcYY0mr3Ppth5HUmnGVgTOhYjQegNPq0k55COdJ', '', NULL, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 14, NULL),
(30, NULL, NULL, 'Demo Staff 2', 'staff2_14@example.com', '2021-10-15 09:00:06', '$2y$10$hCVJuSTREA6MOOmPv/A34uO4effLQpbl5mg15ZYPbz6E0GAiPFNUW', 'mytgnN7VJfm0l9irjbfna9K2i1a6FEhlnX8zo6lv42SzFsBHPG9wMwJSJwKPGUUxIVgCfwc2l1iXj7Df', '', NULL, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 14, NULL),
(31, NULL, NULL, 'Demo Staff 1', 'staff1_15@example.com', '2021-10-15 09:00:06', '$2y$10$YSz6cmTbDwU/vMfHf/HVqOw3kD6Lo6J11DcL6MVMNdRor8pHxPxv.', 'pw1kovEg1nnLMQ6pQJZgH6M0jbDPYxqM5LkygFYBSD1oe0X835fjybS8cCz6Z7pqFCSyL1JNS0ZzHiZN', '', NULL, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 15, NULL),
(32, NULL, NULL, 'Demo Staff 2', 'staff2_15@example.com', '2021-10-15 09:00:06', '$2y$10$FWjjkC82kIiPlCkDr3Einu/klfXzGCuJ5Eqip1b6w2On4ySfMUXfq', 'iApfjbBx0WCb6xvBiRGPNZ2M7uycPgqkOrzFxsjMTB6txp7WoGVftMBFjJIsIrd2nw1bR9OlmzZoZQSs', '', NULL, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 15, NULL),
(33, NULL, NULL, 'Demo Staff 1', 'staff1_16@example.com', '2021-10-15 09:00:06', '$2y$10$5KiR3wvBsQR8yqRhLxmoD.av7idhcvrCNVnlgvhlsLVI5XCNuxpq2', 'lEMrifbLJvzdvFfqsXkMlQSCqfEHPczdjYVKR96lsbfVWpyABCwqUQWsWWcYjB6LepHkTpLXvZ2AZrXy', '', NULL, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 16, NULL),
(34, NULL, NULL, 'Demo Staff 2', 'staff2_16@example.com', '2021-10-15 09:00:06', '$2y$10$RP.dZN/JNxdtCwY53xitLOFoN7LUn9P1bxittrKSVJdC3VEUR0kyK', 'uEpBmyilq7ATvL7DlECjRKd7LpyKHDM1qILAoD2uljiEYgW2XKHPgPUH6zrYeds9geauc01nPZXqp52O', '', NULL, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 16, NULL),
(35, NULL, NULL, 'Demo Driver', 'driver@example.com', '2021-10-15 09:00:06', '$2y$10$LwLz0TsZV4e7EzvQoZfiwe2RerDlhIDjfWaBACr9RfWwey2/oBwba', 'YZQyB5RS66bW298lliAdar93Dcsn2vWfrjUogQYfKs1gKi1qtxcbbOWU9IHZs0DPfY1eOxsk9oFOPLS6', '', NULL, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, 'Demo Client 1', 'client@example.com', '2021-10-15 09:00:06', '$2y$10$Pix1QXuSlbL3JXxytj4tbupXHHve1n4YgZr2GYGA3egaz15TgPeXO', 'VYcT25iz9Vg1t4siiP5q88XavFAobG3No6jHChCjMup8XVDoNk4nupEqlFc5LeZLKYssA7CnenlniwRy', '', NULL, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, 'Demo Client 2', 'client2@example.com', '2021-10-15 09:00:06', '$2y$10$1DuFhHpL1c63A4LoCpDCCOTeG9a9b5lnQrdmcIoRmzkIM.yrFn9TK', 'kUilphz4V6jxORj2TWgi009iQZ7zf4RY2qXRpKHaCb7wQlDX5F55lbHJ0HBqiKjjIQ9S36NbR9v6BLop', '', NULL, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, NULL, 'Demo Driver 2', 'driver2@example.com', '2021-10-15 09:00:07', '$2y$10$MaqnYoLiIY/YXF03b1asku.aC5OAslFmI4p/zzmyjuAqpE.f.m5G2', 'EQ8RmwH6h5Zb0fVGYMTk2FQac0gm7JR5LlQdFYuY1rVU1jlfleEoXbERny5BPWGQOXBcqIFU8I561aHC', '', NULL, '2021-10-15 09:00:07', '2021-10-15 09:00:07', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `enable_qty` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10.99, '{\"1\":\"small\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(2, 11.99, '{\"1\":\"small\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(3, 12.99, '{\"1\":\"small\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(4, 13.99, '{\"1\":\"medium\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(5, 14.99, '{\"1\":\"medium\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(6, 15.99, '{\"1\":\"medium\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(7, 16.99, '{\"1\":\"large\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(8, 17.99, '{\"1\":\"large\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(9, 18.99, '{\"1\":\"large\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(10, 19.99, '{\"1\":\"family\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(11, 20.99, '{\"1\":\"family\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(12, 21.99, '{\"1\":\"family\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(13, 14.99, '{\"3\":\"small\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(14, 15.99, '{\"3\":\"small\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(15, 16.99, '{\"3\":\"small\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(16, 17.99, '{\"3\":\"medium\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(17, 18.99, '{\"3\":\"medium\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(18, 19.99, '{\"3\":\"medium\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(19, 20.99, '{\"3\":\"large\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(20, 21.99, '{\"3\":\"large\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(21, 22.99, '{\"3\":\"large\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(22, 23.99, '{\"3\":\"family\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(23, 24.99, '{\"3\":\"family\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(24, 25.99, '{\"3\":\"family\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(25, 14.99, '{\"5\":\"small\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(26, 15.99, '{\"5\":\"small\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(27, 16.99, '{\"5\":\"small\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(28, 17.99, '{\"5\":\"medium\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(29, 18.99, '{\"5\":\"medium\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(30, 19.99, '{\"5\":\"medium\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(31, 20.99, '{\"5\":\"large\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(32, 21.99, '{\"5\":\"large\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(33, 22.99, '{\"5\":\"large\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(34, 23.99, '{\"5\":\"family\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(35, 24.99, '{\"5\":\"family\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(36, 25.99, '{\"5\":\"family\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(37, 14.99, '{\"7\":\"small\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(38, 15.99, '{\"7\":\"small\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(39, 16.99, '{\"7\":\"small\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(40, 17.99, '{\"7\":\"medium\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(41, 18.99, '{\"7\":\"medium\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(42, 19.99, '{\"7\":\"medium\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(43, 20.99, '{\"7\":\"large\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(44, 21.99, '{\"7\":\"large\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(45, 22.99, '{\"7\":\"large\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(46, 23.99, '{\"7\":\"family\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(47, 24.99, '{\"7\":\"family\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(48, 25.99, '{\"7\":\"family\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(49, 14.99, '{\"9\":\"small\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(50, 15.99, '{\"9\":\"small\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(51, 16.99, '{\"9\":\"small\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(52, 17.99, '{\"9\":\"medium\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(53, 18.99, '{\"9\":\"medium\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(54, 19.99, '{\"9\":\"medium\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(55, 20.99, '{\"9\":\"large\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(56, 21.99, '{\"9\":\"large\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(57, 22.99, '{\"9\":\"large\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(58, 23.99, '{\"9\":\"family\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(59, 24.99, '{\"9\":\"family\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(60, 25.99, '{\"9\":\"family\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(61, 14.99, '{\"11\":\"small\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(62, 15.99, '{\"11\":\"small\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(63, 16.99, '{\"11\":\"small\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(64, 17.99, '{\"11\":\"medium\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(65, 18.99, '{\"11\":\"medium\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(66, 19.99, '{\"11\":\"medium\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(67, 20.99, '{\"11\":\"large\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(68, 21.99, '{\"11\":\"large\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(69, 22.99, '{\"11\":\"large\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(70, 23.99, '{\"11\":\"family\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(71, 24.99, '{\"11\":\"family\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(72, 25.99, '{\"11\":\"family\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(73, 10.49, '{\"13\":\"small\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(74, 11.49, '{\"13\":\"small\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(75, 12.49, '{\"13\":\"small\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(76, 13.49, '{\"13\":\"medium\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(77, 14.49, '{\"13\":\"medium\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(78, 15.49, '{\"13\":\"medium\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(79, 16.49, '{\"13\":\"large\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(80, 17.49, '{\"13\":\"large\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(81, 18.49, '{\"13\":\"large\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(82, 19.49, '{\"13\":\"family\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(83, 20.49, '{\"13\":\"family\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(84, 21.49, '{\"13\":\"family\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(85, 39.99, '{\"15\":\"small\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(86, 40.99, '{\"15\":\"small\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(87, 41.99, '{\"15\":\"small\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(88, 42.99, '{\"15\":\"medium\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(89, 43.99, '{\"15\":\"medium\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(90, 44.99, '{\"15\":\"medium\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(91, 45.99, '{\"15\":\"large\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(92, 46.99, '{\"15\":\"large\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(93, 47.99, '{\"15\":\"large\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(94, 48.99, '{\"15\":\"family\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(95, 49.99, '{\"15\":\"family\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(96, 50.99, '{\"15\":\"family\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(97, 14.99, '{\"17\":\"small\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(98, 15.99, '{\"17\":\"small\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(99, 16.99, '{\"17\":\"small\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(100, 17.99, '{\"17\":\"medium\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(101, 18.99, '{\"17\":\"medium\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(102, 19.99, '{\"17\":\"medium\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(103, 20.99, '{\"17\":\"large\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(104, 21.99, '{\"17\":\"large\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(105, 22.99, '{\"17\":\"large\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(106, 23.99, '{\"17\":\"family\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(107, 24.99, '{\"17\":\"family\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(108, 25.99, '{\"17\":\"family\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(109, 14.99, '{\"19\":\"small\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(110, 15.99, '{\"19\":\"small\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(111, 16.99, '{\"19\":\"small\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(112, 17.99, '{\"19\":\"medium\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(113, 18.99, '{\"19\":\"medium\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(114, 19.99, '{\"19\":\"medium\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(115, 20.99, '{\"19\":\"large\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(116, 21.99, '{\"19\":\"large\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(117, 22.99, '{\"19\":\"large\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(118, 23.99, '{\"19\":\"family\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(119, 24.99, '{\"19\":\"family\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(120, 25.99, '{\"19\":\"family\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(121, 14.99, '{\"21\":\"small\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(122, 15.99, '{\"21\":\"small\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(123, 16.99, '{\"21\":\"small\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(124, 17.99, '{\"21\":\"medium\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(125, 18.99, '{\"21\":\"medium\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(126, 19.99, '{\"21\":\"medium\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(127, 20.99, '{\"21\":\"large\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(128, 21.99, '{\"21\":\"large\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(129, 22.99, '{\"21\":\"large\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(130, 23.99, '{\"21\":\"family\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(131, 24.99, '{\"21\":\"family\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(132, 25.99, '{\"21\":\"family\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(133, 10.99, '{\"23\":\"small\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(134, 11.99, '{\"23\":\"small\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(135, 12.99, '{\"23\":\"small\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(136, 13.99, '{\"23\":\"medium\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(137, 14.99, '{\"23\":\"medium\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(138, 15.99, '{\"23\":\"medium\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(139, 16.99, '{\"23\":\"large\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(140, 17.99, '{\"23\":\"large\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(141, 18.99, '{\"23\":\"large\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(142, 19.99, '{\"23\":\"family\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(143, 20.99, '{\"23\":\"family\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(144, 21.99, '{\"23\":\"family\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(145, 14.99, '{\"25\":\"small\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(146, 15.99, '{\"25\":\"small\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(147, 16.99, '{\"25\":\"small\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(148, 17.99, '{\"25\":\"medium\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(149, 18.99, '{\"25\":\"medium\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(150, 19.99, '{\"25\":\"medium\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(151, 20.99, '{\"25\":\"large\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(152, 21.99, '{\"25\":\"large\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(153, 22.99, '{\"25\":\"large\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(154, 23.99, '{\"25\":\"family\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(155, 24.99, '{\"25\":\"family\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(156, 25.99, '{\"25\":\"family\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(157, 14.99, '{\"27\":\"small\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(158, 15.99, '{\"27\":\"small\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(159, 16.99, '{\"27\":\"small\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(160, 17.99, '{\"27\":\"medium\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(161, 18.99, '{\"27\":\"medium\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(162, 19.99, '{\"27\":\"medium\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(163, 20.99, '{\"27\":\"large\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(164, 21.99, '{\"27\":\"large\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(165, 22.99, '{\"27\":\"large\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(166, 23.99, '{\"27\":\"family\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(167, 24.99, '{\"27\":\"family\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(168, 25.99, '{\"27\":\"family\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(169, 14.99, '{\"29\":\"small\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(170, 15.99, '{\"29\":\"small\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(171, 16.99, '{\"29\":\"small\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(172, 17.99, '{\"29\":\"medium\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(173, 18.99, '{\"29\":\"medium\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(174, 19.99, '{\"29\":\"medium\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(175, 20.99, '{\"29\":\"large\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(176, 21.99, '{\"29\":\"large\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(177, 22.99, '{\"29\":\"large\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(178, 23.99, '{\"29\":\"family\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(179, 24.99, '{\"29\":\"family\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(180, 25.99, '{\"29\":\"family\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(181, 14.99, '{\"31\":\"small\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(182, 15.99, '{\"31\":\"small\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(183, 16.99, '{\"31\":\"small\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(184, 17.99, '{\"31\":\"medium\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(185, 18.99, '{\"31\":\"medium\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(186, 19.99, '{\"31\":\"medium\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(187, 20.99, '{\"31\":\"large\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(188, 21.99, '{\"31\":\"large\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(189, 22.99, '{\"31\":\"large\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(190, 23.99, '{\"31\":\"family\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(191, 24.99, '{\"31\":\"family\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(192, 25.99, '{\"31\":\"family\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(193, 14.99, '{\"33\":\"small\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(194, 15.99, '{\"33\":\"small\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(195, 16.99, '{\"33\":\"small\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(196, 17.99, '{\"33\":\"medium\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(197, 18.99, '{\"33\":\"medium\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(198, 19.99, '{\"33\":\"medium\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(199, 20.99, '{\"33\":\"large\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(200, 21.99, '{\"33\":\"large\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(201, 22.99, '{\"33\":\"large\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(202, 23.99, '{\"33\":\"family\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(203, 24.99, '{\"33\":\"family\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(204, 25.99, '{\"33\":\"family\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(205, 10.49, '{\"35\":\"small\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(206, 11.49, '{\"35\":\"small\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(207, 12.49, '{\"35\":\"small\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(208, 13.49, '{\"35\":\"medium\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(209, 14.49, '{\"35\":\"medium\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(210, 15.49, '{\"35\":\"medium\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(211, 16.49, '{\"35\":\"large\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(212, 17.49, '{\"35\":\"large\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(213, 18.49, '{\"35\":\"large\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(214, 19.49, '{\"35\":\"family\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(215, 20.49, '{\"35\":\"family\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(216, 21.49, '{\"35\":\"family\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(217, 39.99, '{\"37\":\"small\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(218, 40.99, '{\"37\":\"small\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(219, 41.99, '{\"37\":\"small\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(220, 42.99, '{\"37\":\"medium\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(221, 43.99, '{\"37\":\"medium\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(222, 44.99, '{\"37\":\"medium\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(223, 45.99, '{\"37\":\"large\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(224, 46.99, '{\"37\":\"large\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(225, 47.99, '{\"37\":\"large\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(226, 48.99, '{\"37\":\"family\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(227, 49.99, '{\"37\":\"family\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(228, 50.99, '{\"37\":\"family\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(229, 14.99, '{\"39\":\"small\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(230, 15.99, '{\"39\":\"small\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(231, 16.99, '{\"39\":\"small\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(232, 17.99, '{\"39\":\"medium\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(233, 18.99, '{\"39\":\"medium\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(234, 19.99, '{\"39\":\"medium\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(235, 20.99, '{\"39\":\"large\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(236, 21.99, '{\"39\":\"large\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(237, 22.99, '{\"39\":\"large\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(238, 23.99, '{\"39\":\"family\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(239, 24.99, '{\"39\":\"family\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(240, 25.99, '{\"39\":\"family\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(241, 14.99, '{\"41\":\"small\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(242, 15.99, '{\"41\":\"small\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(243, 16.99, '{\"41\":\"small\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(244, 17.99, '{\"41\":\"medium\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(245, 18.99, '{\"41\":\"medium\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(246, 19.99, '{\"41\":\"medium\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(247, 20.99, '{\"41\":\"large\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(248, 21.99, '{\"41\":\"large\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(249, 22.99, '{\"41\":\"large\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(250, 23.99, '{\"41\":\"family\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(251, 24.99, '{\"41\":\"family\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(252, 25.99, '{\"41\":\"family\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(253, 14.99, '{\"43\":\"small\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(254, 15.99, '{\"43\":\"small\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(255, 16.99, '{\"43\":\"small\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(256, 17.99, '{\"43\":\"medium\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(257, 18.99, '{\"43\":\"medium\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(258, 19.99, '{\"43\":\"medium\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(259, 20.99, '{\"43\":\"large\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(260, 21.99, '{\"43\":\"large\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(261, 22.99, '{\"43\":\"large\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(262, 23.99, '{\"43\":\"family\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(263, 24.99, '{\"43\":\"family\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(264, 25.99, '{\"43\":\"family\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', NULL),
(265, 10.99, '{\"45\":\"small\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 86, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(266, 11.99, '{\"45\":\"small\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 86, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(267, 12.99, '{\"45\":\"small\",\"46\":\"double-decker\"}', '', 0, 0, 0, 86, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(268, 13.99, '{\"45\":\"medium\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 86, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(269, 14.99, '{\"45\":\"medium\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 86, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(270, 15.99, '{\"45\":\"medium\",\"46\":\"double-decker\"}', '', 0, 0, 0, 86, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(271, 16.99, '{\"45\":\"large\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 86, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(272, 17.99, '{\"45\":\"large\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 86, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(273, 18.99, '{\"45\":\"large\",\"46\":\"double-decker\"}', '', 0, 0, 0, 86, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(274, 19.99, '{\"45\":\"family\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 86, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(275, 20.99, '{\"45\":\"family\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 86, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(276, 21.99, '{\"45\":\"family\",\"46\":\"double-decker\"}', '', 0, 0, 0, 86, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(277, 14.99, '{\"47\":\"small\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 87, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(278, 15.99, '{\"47\":\"small\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 87, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(279, 16.99, '{\"47\":\"small\",\"48\":\"double-decker\"}', '', 0, 0, 0, 87, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(280, 17.99, '{\"47\":\"medium\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 87, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(281, 18.99, '{\"47\":\"medium\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 87, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(282, 19.99, '{\"47\":\"medium\",\"48\":\"double-decker\"}', '', 0, 0, 0, 87, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(283, 20.99, '{\"47\":\"large\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 87, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(284, 21.99, '{\"47\":\"large\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 87, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(285, 22.99, '{\"47\":\"large\",\"48\":\"double-decker\"}', '', 0, 0, 0, 87, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(286, 23.99, '{\"47\":\"family\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 87, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(287, 24.99, '{\"47\":\"family\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 87, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(288, 25.99, '{\"47\":\"family\",\"48\":\"double-decker\"}', '', 0, 0, 0, 87, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(289, 14.99, '{\"49\":\"small\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 88, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(290, 15.99, '{\"49\":\"small\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 88, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(291, 16.99, '{\"49\":\"small\",\"50\":\"double-decker\"}', '', 0, 0, 0, 88, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(292, 17.99, '{\"49\":\"medium\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 88, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(293, 18.99, '{\"49\":\"medium\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 88, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(294, 19.99, '{\"49\":\"medium\",\"50\":\"double-decker\"}', '', 0, 0, 0, 88, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(295, 20.99, '{\"49\":\"large\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 88, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(296, 21.99, '{\"49\":\"large\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 88, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(297, 22.99, '{\"49\":\"large\",\"50\":\"double-decker\"}', '', 0, 0, 0, 88, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(298, 23.99, '{\"49\":\"family\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 88, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(299, 24.99, '{\"49\":\"family\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 88, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(300, 25.99, '{\"49\":\"family\",\"50\":\"double-decker\"}', '', 0, 0, 0, 88, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(301, 14.99, '{\"51\":\"small\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 89, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(302, 15.99, '{\"51\":\"small\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 89, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(303, 16.99, '{\"51\":\"small\",\"52\":\"double-decker\"}', '', 0, 0, 0, 89, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(304, 17.99, '{\"51\":\"medium\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 89, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(305, 18.99, '{\"51\":\"medium\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 89, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(306, 19.99, '{\"51\":\"medium\",\"52\":\"double-decker\"}', '', 0, 0, 0, 89, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(307, 20.99, '{\"51\":\"large\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 89, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(308, 21.99, '{\"51\":\"large\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 89, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(309, 22.99, '{\"51\":\"large\",\"52\":\"double-decker\"}', '', 0, 0, 0, 89, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(310, 23.99, '{\"51\":\"family\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 89, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(311, 24.99, '{\"51\":\"family\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 89, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(312, 25.99, '{\"51\":\"family\",\"52\":\"double-decker\"}', '', 0, 0, 0, 89, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(313, 14.99, '{\"53\":\"small\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 90, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(314, 15.99, '{\"53\":\"small\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 90, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(315, 16.99, '{\"53\":\"small\",\"54\":\"double-decker\"}', '', 0, 0, 0, 90, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(316, 17.99, '{\"53\":\"medium\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 90, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(317, 18.99, '{\"53\":\"medium\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 90, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(318, 19.99, '{\"53\":\"medium\",\"54\":\"double-decker\"}', '', 0, 0, 0, 90, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(319, 20.99, '{\"53\":\"large\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 90, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(320, 21.99, '{\"53\":\"large\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 90, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(321, 22.99, '{\"53\":\"large\",\"54\":\"double-decker\"}', '', 0, 0, 0, 90, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(322, 23.99, '{\"53\":\"family\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 90, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(323, 24.99, '{\"53\":\"family\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 90, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(324, 25.99, '{\"53\":\"family\",\"54\":\"double-decker\"}', '', 0, 0, 0, 90, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(325, 14.99, '{\"55\":\"small\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 91, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(326, 15.99, '{\"55\":\"small\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 91, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(327, 16.99, '{\"55\":\"small\",\"56\":\"double-decker\"}', '', 0, 0, 0, 91, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(328, 17.99, '{\"55\":\"medium\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 91, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(329, 18.99, '{\"55\":\"medium\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 91, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(330, 19.99, '{\"55\":\"medium\",\"56\":\"double-decker\"}', '', 0, 0, 0, 91, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(331, 20.99, '{\"55\":\"large\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 91, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(332, 21.99, '{\"55\":\"large\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 91, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(333, 22.99, '{\"55\":\"large\",\"56\":\"double-decker\"}', '', 0, 0, 0, 91, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(334, 23.99, '{\"55\":\"family\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 91, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(335, 24.99, '{\"55\":\"family\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 91, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(336, 25.99, '{\"55\":\"family\",\"56\":\"double-decker\"}', '', 0, 0, 0, 91, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(337, 10.49, '{\"57\":\"small\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 92, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(338, 11.49, '{\"57\":\"small\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 92, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(339, 12.49, '{\"57\":\"small\",\"58\":\"double-decker\"}', '', 0, 0, 0, 92, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(340, 13.49, '{\"57\":\"medium\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 92, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(341, 14.49, '{\"57\":\"medium\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 92, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(342, 15.49, '{\"57\":\"medium\",\"58\":\"double-decker\"}', '', 0, 0, 0, 92, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(343, 16.49, '{\"57\":\"large\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 92, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(344, 17.49, '{\"57\":\"large\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 92, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(345, 18.49, '{\"57\":\"large\",\"58\":\"double-decker\"}', '', 0, 0, 0, 92, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(346, 19.49, '{\"57\":\"family\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 92, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(347, 20.49, '{\"57\":\"family\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 92, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(348, 21.49, '{\"57\":\"family\",\"58\":\"double-decker\"}', '', 0, 0, 0, 92, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(349, 39.99, '{\"59\":\"small\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 93, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(350, 40.99, '{\"59\":\"small\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 93, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(351, 41.99, '{\"59\":\"small\",\"60\":\"double-decker\"}', '', 0, 0, 0, 93, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(352, 42.99, '{\"59\":\"medium\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 93, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(353, 43.99, '{\"59\":\"medium\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 93, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(354, 44.99, '{\"59\":\"medium\",\"60\":\"double-decker\"}', '', 0, 0, 0, 93, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(355, 45.99, '{\"59\":\"large\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 93, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(356, 46.99, '{\"59\":\"large\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 93, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(357, 47.99, '{\"59\":\"large\",\"60\":\"double-decker\"}', '', 0, 0, 0, 93, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(358, 48.99, '{\"59\":\"family\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 93, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(359, 49.99, '{\"59\":\"family\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 93, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(360, 50.99, '{\"59\":\"family\",\"60\":\"double-decker\"}', '', 0, 0, 0, 93, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(361, 14.99, '{\"61\":\"small\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 94, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(362, 15.99, '{\"61\":\"small\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 94, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(363, 16.99, '{\"61\":\"small\",\"62\":\"double-decker\"}', '', 0, 0, 0, 94, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(364, 17.99, '{\"61\":\"medium\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 94, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(365, 18.99, '{\"61\":\"medium\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 94, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(366, 19.99, '{\"61\":\"medium\",\"62\":\"double-decker\"}', '', 0, 0, 0, 94, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(367, 20.99, '{\"61\":\"large\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 94, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(368, 21.99, '{\"61\":\"large\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 94, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(369, 22.99, '{\"61\":\"large\",\"62\":\"double-decker\"}', '', 0, 0, 0, 94, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(370, 23.99, '{\"61\":\"family\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 94, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(371, 24.99, '{\"61\":\"family\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 94, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(372, 25.99, '{\"61\":\"family\",\"62\":\"double-decker\"}', '', 0, 0, 0, 94, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(373, 14.99, '{\"63\":\"small\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 95, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(374, 15.99, '{\"63\":\"small\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 95, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(375, 16.99, '{\"63\":\"small\",\"64\":\"double-decker\"}', '', 0, 0, 0, 95, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(376, 17.99, '{\"63\":\"medium\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 95, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(377, 18.99, '{\"63\":\"medium\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 95, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(378, 19.99, '{\"63\":\"medium\",\"64\":\"double-decker\"}', '', 0, 0, 0, 95, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(379, 20.99, '{\"63\":\"large\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 95, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(380, 21.99, '{\"63\":\"large\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 95, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(381, 22.99, '{\"63\":\"large\",\"64\":\"double-decker\"}', '', 0, 0, 0, 95, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(382, 23.99, '{\"63\":\"family\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 95, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(383, 24.99, '{\"63\":\"family\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 95, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(384, 25.99, '{\"63\":\"family\",\"64\":\"double-decker\"}', '', 0, 0, 0, 95, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(385, 14.99, '{\"65\":\"small\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 96, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(386, 15.99, '{\"65\":\"small\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 96, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(387, 16.99, '{\"65\":\"small\",\"66\":\"double-decker\"}', '', 0, 0, 0, 96, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(388, 17.99, '{\"65\":\"medium\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 96, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(389, 18.99, '{\"65\":\"medium\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 96, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(390, 19.99, '{\"65\":\"medium\",\"66\":\"double-decker\"}', '', 0, 0, 0, 96, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(391, 20.99, '{\"65\":\"large\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 96, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(392, 21.99, '{\"65\":\"large\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 96, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(393, 22.99, '{\"65\":\"large\",\"66\":\"double-decker\"}', '', 0, 0, 0, 96, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(394, 23.99, '{\"65\":\"family\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 96, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(395, 24.99, '{\"65\":\"family\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 96, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(396, 25.99, '{\"65\":\"family\",\"66\":\"double-decker\"}', '', 0, 0, 0, 96, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(397, 10.99, '{\"67\":\"small\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(398, 11.99, '{\"67\":\"small\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 156, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(399, 12.99, '{\"67\":\"small\",\"68\":\"double-decker\"}', '', 0, 0, 0, 156, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(400, 13.99, '{\"67\":\"medium\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(401, 14.99, '{\"67\":\"medium\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 156, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(402, 15.99, '{\"67\":\"medium\",\"68\":\"double-decker\"}', '', 0, 0, 0, 156, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(403, 16.99, '{\"67\":\"large\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(404, 17.99, '{\"67\":\"large\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 156, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(405, 18.99, '{\"67\":\"large\",\"68\":\"double-decker\"}', '', 0, 0, 0, 156, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(406, 19.99, '{\"67\":\"family\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 156, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(407, 20.99, '{\"67\":\"family\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 156, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(408, 21.99, '{\"67\":\"family\",\"68\":\"double-decker\"}', '', 0, 0, 0, 156, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(409, 14.99, '{\"69\":\"small\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 157, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(410, 15.99, '{\"69\":\"small\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 157, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(411, 16.99, '{\"69\":\"small\",\"70\":\"double-decker\"}', '', 0, 0, 0, 157, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(412, 17.99, '{\"69\":\"medium\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 157, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(413, 18.99, '{\"69\":\"medium\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 157, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(414, 19.99, '{\"69\":\"medium\",\"70\":\"double-decker\"}', '', 0, 0, 0, 157, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(415, 20.99, '{\"69\":\"large\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 157, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(416, 21.99, '{\"69\":\"large\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 157, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(417, 22.99, '{\"69\":\"large\",\"70\":\"double-decker\"}', '', 0, 0, 0, 157, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(418, 23.99, '{\"69\":\"family\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 157, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(419, 24.99, '{\"69\":\"family\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 157, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(420, 25.99, '{\"69\":\"family\",\"70\":\"double-decker\"}', '', 0, 0, 0, 157, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(421, 14.99, '{\"71\":\"small\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 158, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(422, 15.99, '{\"71\":\"small\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 158, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(423, 16.99, '{\"71\":\"small\",\"72\":\"double-decker\"}', '', 0, 0, 0, 158, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(424, 17.99, '{\"71\":\"medium\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 158, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(425, 18.99, '{\"71\":\"medium\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 158, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(426, 19.99, '{\"71\":\"medium\",\"72\":\"double-decker\"}', '', 0, 0, 0, 158, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(427, 20.99, '{\"71\":\"large\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 158, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(428, 21.99, '{\"71\":\"large\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 158, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(429, 22.99, '{\"71\":\"large\",\"72\":\"double-decker\"}', '', 0, 0, 0, 158, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(430, 23.99, '{\"71\":\"family\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 158, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(431, 24.99, '{\"71\":\"family\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 158, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(432, 25.99, '{\"71\":\"family\",\"72\":\"double-decker\"}', '', 0, 0, 0, 158, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(433, 14.99, '{\"73\":\"small\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 159, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(434, 15.99, '{\"73\":\"small\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 159, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(435, 16.99, '{\"73\":\"small\",\"74\":\"double-decker\"}', '', 0, 0, 0, 159, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(436, 17.99, '{\"73\":\"medium\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 159, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(437, 18.99, '{\"73\":\"medium\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 159, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(438, 19.99, '{\"73\":\"medium\",\"74\":\"double-decker\"}', '', 0, 0, 0, 159, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(439, 20.99, '{\"73\":\"large\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 159, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(440, 21.99, '{\"73\":\"large\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 159, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(441, 22.99, '{\"73\":\"large\",\"74\":\"double-decker\"}', '', 0, 0, 0, 159, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(442, 23.99, '{\"73\":\"family\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 159, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(443, 24.99, '{\"73\":\"family\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 159, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(444, 25.99, '{\"73\":\"family\",\"74\":\"double-decker\"}', '', 0, 0, 0, 159, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(445, 14.99, '{\"75\":\"small\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(446, 15.99, '{\"75\":\"small\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 160, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(447, 16.99, '{\"75\":\"small\",\"76\":\"double-decker\"}', '', 0, 0, 0, 160, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(448, 17.99, '{\"75\":\"medium\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(449, 18.99, '{\"75\":\"medium\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 160, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(450, 19.99, '{\"75\":\"medium\",\"76\":\"double-decker\"}', '', 0, 0, 0, 160, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(451, 20.99, '{\"75\":\"large\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(452, 21.99, '{\"75\":\"large\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 160, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(453, 22.99, '{\"75\":\"large\",\"76\":\"double-decker\"}', '', 0, 0, 0, 160, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(454, 23.99, '{\"75\":\"family\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(455, 24.99, '{\"75\":\"family\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 160, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(456, 25.99, '{\"75\":\"family\",\"76\":\"double-decker\"}', '', 0, 0, 0, 160, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(457, 14.99, '{\"77\":\"small\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(458, 15.99, '{\"77\":\"small\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 161, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(459, 16.99, '{\"77\":\"small\",\"78\":\"double-decker\"}', '', 0, 0, 0, 161, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(460, 17.99, '{\"77\":\"medium\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(461, 18.99, '{\"77\":\"medium\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 161, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(462, 19.99, '{\"77\":\"medium\",\"78\":\"double-decker\"}', '', 0, 0, 0, 161, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(463, 20.99, '{\"77\":\"large\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(464, 21.99, '{\"77\":\"large\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 161, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(465, 22.99, '{\"77\":\"large\",\"78\":\"double-decker\"}', '', 0, 0, 0, 161, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(466, 23.99, '{\"77\":\"family\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(467, 24.99, '{\"77\":\"family\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 161, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(468, 25.99, '{\"77\":\"family\",\"78\":\"double-decker\"}', '', 0, 0, 0, 161, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(469, 10.49, '{\"79\":\"small\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(470, 11.49, '{\"79\":\"small\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 162, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(471, 12.49, '{\"79\":\"small\",\"80\":\"double-decker\"}', '', 0, 0, 0, 162, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(472, 13.49, '{\"79\":\"medium\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(473, 14.49, '{\"79\":\"medium\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 162, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(474, 15.49, '{\"79\":\"medium\",\"80\":\"double-decker\"}', '', 0, 0, 0, 162, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(475, 16.49, '{\"79\":\"large\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(476, 17.49, '{\"79\":\"large\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 162, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(477, 18.49, '{\"79\":\"large\",\"80\":\"double-decker\"}', '', 0, 0, 0, 162, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(478, 19.49, '{\"79\":\"family\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(479, 20.49, '{\"79\":\"family\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 162, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(480, 21.49, '{\"79\":\"family\",\"80\":\"double-decker\"}', '', 0, 0, 0, 162, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(481, 39.99, '{\"81\":\"small\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 163, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(482, 40.99, '{\"81\":\"small\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 163, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(483, 41.99, '{\"81\":\"small\",\"82\":\"double-decker\"}', '', 0, 0, 0, 163, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(484, 42.99, '{\"81\":\"medium\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 163, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(485, 43.99, '{\"81\":\"medium\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 163, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(486, 44.99, '{\"81\":\"medium\",\"82\":\"double-decker\"}', '', 0, 0, 0, 163, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(487, 45.99, '{\"81\":\"large\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 163, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(488, 46.99, '{\"81\":\"large\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 163, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(489, 47.99, '{\"81\":\"large\",\"82\":\"double-decker\"}', '', 0, 0, 0, 163, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(490, 48.99, '{\"81\":\"family\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 163, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(491, 49.99, '{\"81\":\"family\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 163, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(492, 50.99, '{\"81\":\"family\",\"82\":\"double-decker\"}', '', 0, 0, 0, 163, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(493, 14.99, '{\"83\":\"small\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 164, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(494, 15.99, '{\"83\":\"small\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 164, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(495, 16.99, '{\"83\":\"small\",\"84\":\"double-decker\"}', '', 0, 0, 0, 164, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(496, 17.99, '{\"83\":\"medium\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 164, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(497, 18.99, '{\"83\":\"medium\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 164, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(498, 19.99, '{\"83\":\"medium\",\"84\":\"double-decker\"}', '', 0, 0, 0, 164, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(499, 20.99, '{\"83\":\"large\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 164, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(500, 21.99, '{\"83\":\"large\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 164, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(501, 22.99, '{\"83\":\"large\",\"84\":\"double-decker\"}', '', 0, 0, 0, 164, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(502, 23.99, '{\"83\":\"family\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 164, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(503, 24.99, '{\"83\":\"family\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 164, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(504, 25.99, '{\"83\":\"family\",\"84\":\"double-decker\"}', '', 0, 0, 0, 164, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(505, 14.99, '{\"85\":\"small\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 165, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(506, 15.99, '{\"85\":\"small\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 165, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(507, 16.99, '{\"85\":\"small\",\"86\":\"double-decker\"}', '', 0, 0, 0, 165, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(508, 17.99, '{\"85\":\"medium\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 165, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(509, 18.99, '{\"85\":\"medium\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 165, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(510, 19.99, '{\"85\":\"medium\",\"86\":\"double-decker\"}', '', 0, 0, 0, 165, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(511, 20.99, '{\"85\":\"large\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 165, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(512, 21.99, '{\"85\":\"large\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 165, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(513, 22.99, '{\"85\":\"large\",\"86\":\"double-decker\"}', '', 0, 0, 0, 165, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(514, 23.99, '{\"85\":\"family\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 165, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(515, 24.99, '{\"85\":\"family\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 165, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(516, 25.99, '{\"85\":\"family\",\"86\":\"double-decker\"}', '', 0, 0, 0, 165, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(517, 14.99, '{\"87\":\"small\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 166, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(518, 15.99, '{\"87\":\"small\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 166, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(519, 16.99, '{\"87\":\"small\",\"88\":\"double-decker\"}', '', 0, 0, 0, 166, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(520, 17.99, '{\"87\":\"medium\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 166, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(521, 18.99, '{\"87\":\"medium\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 166, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(522, 19.99, '{\"87\":\"medium\",\"88\":\"double-decker\"}', '', 0, 0, 0, 166, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(523, 20.99, '{\"87\":\"large\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 166, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(524, 21.99, '{\"87\":\"large\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 166, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(525, 22.99, '{\"87\":\"large\",\"88\":\"double-decker\"}', '', 0, 0, 0, 166, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(526, 23.99, '{\"87\":\"family\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 166, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(527, 24.99, '{\"87\":\"family\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 166, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(528, 25.99, '{\"87\":\"family\",\"88\":\"double-decker\"}', '', 0, 0, 0, 166, '2021-10-15 09:00:04', '2021-10-15 09:00:04', NULL),
(529, 10.99, '{\"89\":\"small\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 186, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(530, 11.99, '{\"89\":\"small\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 186, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(531, 12.99, '{\"89\":\"small\",\"90\":\"double-decker\"}', '', 0, 0, 0, 186, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(532, 13.99, '{\"89\":\"medium\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 186, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(533, 14.99, '{\"89\":\"medium\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 186, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(534, 15.99, '{\"89\":\"medium\",\"90\":\"double-decker\"}', '', 0, 0, 0, 186, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(535, 16.99, '{\"89\":\"large\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 186, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(536, 17.99, '{\"89\":\"large\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 186, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(537, 18.99, '{\"89\":\"large\",\"90\":\"double-decker\"}', '', 0, 0, 0, 186, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(538, 19.99, '{\"89\":\"family\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 186, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(539, 20.99, '{\"89\":\"family\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 186, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(540, 21.99, '{\"89\":\"family\",\"90\":\"double-decker\"}', '', 0, 0, 0, 186, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(541, 14.99, '{\"91\":\"small\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 187, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(542, 15.99, '{\"91\":\"small\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 187, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(543, 16.99, '{\"91\":\"small\",\"92\":\"double-decker\"}', '', 0, 0, 0, 187, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(544, 17.99, '{\"91\":\"medium\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 187, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(545, 18.99, '{\"91\":\"medium\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 187, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(546, 19.99, '{\"91\":\"medium\",\"92\":\"double-decker\"}', '', 0, 0, 0, 187, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(547, 20.99, '{\"91\":\"large\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 187, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(548, 21.99, '{\"91\":\"large\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 187, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(549, 22.99, '{\"91\":\"large\",\"92\":\"double-decker\"}', '', 0, 0, 0, 187, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(550, 23.99, '{\"91\":\"family\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 187, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(551, 24.99, '{\"91\":\"family\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 187, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(552, 25.99, '{\"91\":\"family\",\"92\":\"double-decker\"}', '', 0, 0, 0, 187, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(553, 14.99, '{\"93\":\"small\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 188, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(554, 15.99, '{\"93\":\"small\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 188, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(555, 16.99, '{\"93\":\"small\",\"94\":\"double-decker\"}', '', 0, 0, 0, 188, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(556, 17.99, '{\"93\":\"medium\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 188, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(557, 18.99, '{\"93\":\"medium\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 188, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(558, 19.99, '{\"93\":\"medium\",\"94\":\"double-decker\"}', '', 0, 0, 0, 188, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(559, 20.99, '{\"93\":\"large\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 188, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(560, 21.99, '{\"93\":\"large\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 188, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(561, 22.99, '{\"93\":\"large\",\"94\":\"double-decker\"}', '', 0, 0, 0, 188, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(562, 23.99, '{\"93\":\"family\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 188, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(563, 24.99, '{\"93\":\"family\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 188, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(564, 25.99, '{\"93\":\"family\",\"94\":\"double-decker\"}', '', 0, 0, 0, 188, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(565, 14.99, '{\"95\":\"small\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 189, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(566, 15.99, '{\"95\":\"small\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 189, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(567, 16.99, '{\"95\":\"small\",\"96\":\"double-decker\"}', '', 0, 0, 0, 189, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(568, 17.99, '{\"95\":\"medium\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 189, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(569, 18.99, '{\"95\":\"medium\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 189, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(570, 19.99, '{\"95\":\"medium\",\"96\":\"double-decker\"}', '', 0, 0, 0, 189, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(571, 20.99, '{\"95\":\"large\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 189, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(572, 21.99, '{\"95\":\"large\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 189, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(573, 22.99, '{\"95\":\"large\",\"96\":\"double-decker\"}', '', 0, 0, 0, 189, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(574, 23.99, '{\"95\":\"family\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 189, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(575, 24.99, '{\"95\":\"family\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 189, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(576, 25.99, '{\"95\":\"family\",\"96\":\"double-decker\"}', '', 0, 0, 0, 189, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(577, 14.99, '{\"97\":\"small\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 190, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(578, 15.99, '{\"97\":\"small\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 190, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(579, 16.99, '{\"97\":\"small\",\"98\":\"double-decker\"}', '', 0, 0, 0, 190, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(580, 17.99, '{\"97\":\"medium\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 190, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(581, 18.99, '{\"97\":\"medium\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 190, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(582, 19.99, '{\"97\":\"medium\",\"98\":\"double-decker\"}', '', 0, 0, 0, 190, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(583, 20.99, '{\"97\":\"large\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 190, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(584, 21.99, '{\"97\":\"large\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 190, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(585, 22.99, '{\"97\":\"large\",\"98\":\"double-decker\"}', '', 0, 0, 0, 190, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(586, 23.99, '{\"97\":\"family\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 190, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(587, 24.99, '{\"97\":\"family\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 190, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(588, 25.99, '{\"97\":\"family\",\"98\":\"double-decker\"}', '', 0, 0, 0, 190, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(589, 14.99, '{\"99\":\"small\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 191, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(590, 15.99, '{\"99\":\"small\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 191, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(591, 16.99, '{\"99\":\"small\",\"100\":\"double-decker\"}', '', 0, 0, 0, 191, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(592, 17.99, '{\"99\":\"medium\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 191, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(593, 18.99, '{\"99\":\"medium\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 191, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(594, 19.99, '{\"99\":\"medium\",\"100\":\"double-decker\"}', '', 0, 0, 0, 191, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(595, 20.99, '{\"99\":\"large\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 191, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(596, 21.99, '{\"99\":\"large\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 191, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(597, 22.99, '{\"99\":\"large\",\"100\":\"double-decker\"}', '', 0, 0, 0, 191, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(598, 23.99, '{\"99\":\"family\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 191, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(599, 24.99, '{\"99\":\"family\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 191, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(600, 25.99, '{\"99\":\"family\",\"100\":\"double-decker\"}', '', 0, 0, 0, 191, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(601, 10.49, '{\"101\":\"small\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 192, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(602, 11.49, '{\"101\":\"small\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 192, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(603, 12.49, '{\"101\":\"small\",\"102\":\"double-decker\"}', '', 0, 0, 0, 192, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(604, 13.49, '{\"101\":\"medium\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 192, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(605, 14.49, '{\"101\":\"medium\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 192, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(606, 15.49, '{\"101\":\"medium\",\"102\":\"double-decker\"}', '', 0, 0, 0, 192, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(607, 16.49, '{\"101\":\"large\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 192, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(608, 17.49, '{\"101\":\"large\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 192, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(609, 18.49, '{\"101\":\"large\",\"102\":\"double-decker\"}', '', 0, 0, 0, 192, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(610, 19.49, '{\"101\":\"family\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 192, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(611, 20.49, '{\"101\":\"family\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 192, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(612, 21.49, '{\"101\":\"family\",\"102\":\"double-decker\"}', '', 0, 0, 0, 192, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(613, 39.99, '{\"103\":\"small\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 193, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(614, 40.99, '{\"103\":\"small\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 193, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(615, 41.99, '{\"103\":\"small\",\"104\":\"double-decker\"}', '', 0, 0, 0, 193, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(616, 42.99, '{\"103\":\"medium\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 193, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(617, 43.99, '{\"103\":\"medium\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 193, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(618, 44.99, '{\"103\":\"medium\",\"104\":\"double-decker\"}', '', 0, 0, 0, 193, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(619, 45.99, '{\"103\":\"large\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 193, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(620, 46.99, '{\"103\":\"large\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 193, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(621, 47.99, '{\"103\":\"large\",\"104\":\"double-decker\"}', '', 0, 0, 0, 193, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(622, 48.99, '{\"103\":\"family\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 193, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(623, 49.99, '{\"103\":\"family\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 193, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(624, 50.99, '{\"103\":\"family\",\"104\":\"double-decker\"}', '', 0, 0, 0, 193, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(625, 14.99, '{\"105\":\"small\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 194, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(626, 15.99, '{\"105\":\"small\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 194, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(627, 16.99, '{\"105\":\"small\",\"106\":\"double-decker\"}', '', 0, 0, 0, 194, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(628, 17.99, '{\"105\":\"medium\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 194, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(629, 18.99, '{\"105\":\"medium\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 194, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(630, 19.99, '{\"105\":\"medium\",\"106\":\"double-decker\"}', '', 0, 0, 0, 194, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(631, 20.99, '{\"105\":\"large\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 194, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(632, 21.99, '{\"105\":\"large\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 194, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(633, 22.99, '{\"105\":\"large\",\"106\":\"double-decker\"}', '', 0, 0, 0, 194, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(634, 23.99, '{\"105\":\"family\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 194, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(635, 24.99, '{\"105\":\"family\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 194, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(636, 25.99, '{\"105\":\"family\",\"106\":\"double-decker\"}', '', 0, 0, 0, 194, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(637, 14.99, '{\"107\":\"small\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 195, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(638, 15.99, '{\"107\":\"small\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 195, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(639, 16.99, '{\"107\":\"small\",\"108\":\"double-decker\"}', '', 0, 0, 0, 195, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(640, 17.99, '{\"107\":\"medium\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 195, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(641, 18.99, '{\"107\":\"medium\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 195, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(642, 19.99, '{\"107\":\"medium\",\"108\":\"double-decker\"}', '', 0, 0, 0, 195, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(643, 20.99, '{\"107\":\"large\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 195, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(644, 21.99, '{\"107\":\"large\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 195, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(645, 22.99, '{\"107\":\"large\",\"108\":\"double-decker\"}', '', 0, 0, 0, 195, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(646, 23.99, '{\"107\":\"family\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 195, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(647, 24.99, '{\"107\":\"family\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 195, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(648, 25.99, '{\"107\":\"family\",\"108\":\"double-decker\"}', '', 0, 0, 0, 195, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(649, 14.99, '{\"109\":\"small\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 196, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(650, 15.99, '{\"109\":\"small\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 196, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(651, 16.99, '{\"109\":\"small\",\"110\":\"double-decker\"}', '', 0, 0, 0, 196, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(652, 17.99, '{\"109\":\"medium\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 196, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(653, 18.99, '{\"109\":\"medium\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 196, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(654, 19.99, '{\"109\":\"medium\",\"110\":\"double-decker\"}', '', 0, 0, 0, 196, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(655, 20.99, '{\"109\":\"large\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 196, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(656, 21.99, '{\"109\":\"large\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 196, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(657, 22.99, '{\"109\":\"large\",\"110\":\"double-decker\"}', '', 0, 0, 0, 196, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(658, 23.99, '{\"109\":\"family\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 196, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(659, 24.99, '{\"109\":\"family\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 196, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(660, 25.99, '{\"109\":\"family\",\"110\":\"double-decker\"}', '', 0, 0, 0, 196, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(661, 10.99, '{\"111\":\"small\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(662, 11.99, '{\"111\":\"small\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 245, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(663, 12.99, '{\"111\":\"small\",\"112\":\"double-decker\"}', '', 0, 0, 0, 245, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(664, 13.99, '{\"111\":\"medium\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(665, 14.99, '{\"111\":\"medium\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 245, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(666, 15.99, '{\"111\":\"medium\",\"112\":\"double-decker\"}', '', 0, 0, 0, 245, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(667, 16.99, '{\"111\":\"large\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(668, 17.99, '{\"111\":\"large\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 245, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(669, 18.99, '{\"111\":\"large\",\"112\":\"double-decker\"}', '', 0, 0, 0, 245, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(670, 19.99, '{\"111\":\"family\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(671, 20.99, '{\"111\":\"family\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 245, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(672, 21.99, '{\"111\":\"family\",\"112\":\"double-decker\"}', '', 0, 0, 0, 245, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(673, 14.99, '{\"113\":\"small\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(674, 15.99, '{\"113\":\"small\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 246, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(675, 16.99, '{\"113\":\"small\",\"114\":\"double-decker\"}', '', 0, 0, 0, 246, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(676, 17.99, '{\"113\":\"medium\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(677, 18.99, '{\"113\":\"medium\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 246, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(678, 19.99, '{\"113\":\"medium\",\"114\":\"double-decker\"}', '', 0, 0, 0, 246, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(679, 20.99, '{\"113\":\"large\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(680, 21.99, '{\"113\":\"large\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 246, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(681, 22.99, '{\"113\":\"large\",\"114\":\"double-decker\"}', '', 0, 0, 0, 246, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(682, 23.99, '{\"113\":\"family\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(683, 24.99, '{\"113\":\"family\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 246, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(684, 25.99, '{\"113\":\"family\",\"114\":\"double-decker\"}', '', 0, 0, 0, 246, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(685, 14.99, '{\"115\":\"small\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(686, 15.99, '{\"115\":\"small\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 247, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(687, 16.99, '{\"115\":\"small\",\"116\":\"double-decker\"}', '', 0, 0, 0, 247, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(688, 17.99, '{\"115\":\"medium\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(689, 18.99, '{\"115\":\"medium\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 247, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(690, 19.99, '{\"115\":\"medium\",\"116\":\"double-decker\"}', '', 0, 0, 0, 247, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(691, 20.99, '{\"115\":\"large\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(692, 21.99, '{\"115\":\"large\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 247, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(693, 22.99, '{\"115\":\"large\",\"116\":\"double-decker\"}', '', 0, 0, 0, 247, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(694, 23.99, '{\"115\":\"family\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(695, 24.99, '{\"115\":\"family\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 247, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(696, 25.99, '{\"115\":\"family\",\"116\":\"double-decker\"}', '', 0, 0, 0, 247, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(697, 14.99, '{\"117\":\"small\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 248, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(698, 15.99, '{\"117\":\"small\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 248, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(699, 16.99, '{\"117\":\"small\",\"118\":\"double-decker\"}', '', 0, 0, 0, 248, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(700, 17.99, '{\"117\":\"medium\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 248, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(701, 18.99, '{\"117\":\"medium\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 248, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(702, 19.99, '{\"117\":\"medium\",\"118\":\"double-decker\"}', '', 0, 0, 0, 248, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(703, 20.99, '{\"117\":\"large\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 248, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(704, 21.99, '{\"117\":\"large\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 248, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(705, 22.99, '{\"117\":\"large\",\"118\":\"double-decker\"}', '', 0, 0, 0, 248, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(706, 23.99, '{\"117\":\"family\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 248, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(707, 24.99, '{\"117\":\"family\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 248, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(708, 25.99, '{\"117\":\"family\",\"118\":\"double-decker\"}', '', 0, 0, 0, 248, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(709, 14.99, '{\"119\":\"small\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 249, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(710, 15.99, '{\"119\":\"small\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 249, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(711, 16.99, '{\"119\":\"small\",\"120\":\"double-decker\"}', '', 0, 0, 0, 249, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(712, 17.99, '{\"119\":\"medium\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 249, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(713, 18.99, '{\"119\":\"medium\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 249, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(714, 19.99, '{\"119\":\"medium\",\"120\":\"double-decker\"}', '', 0, 0, 0, 249, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(715, 20.99, '{\"119\":\"large\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 249, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(716, 21.99, '{\"119\":\"large\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 249, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(717, 22.99, '{\"119\":\"large\",\"120\":\"double-decker\"}', '', 0, 0, 0, 249, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(718, 23.99, '{\"119\":\"family\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 249, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(719, 24.99, '{\"119\":\"family\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 249, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(720, 25.99, '{\"119\":\"family\",\"120\":\"double-decker\"}', '', 0, 0, 0, 249, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(721, 14.99, '{\"121\":\"small\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 250, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(722, 15.99, '{\"121\":\"small\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 250, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(723, 16.99, '{\"121\":\"small\",\"122\":\"double-decker\"}', '', 0, 0, 0, 250, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(724, 17.99, '{\"121\":\"medium\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 250, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(725, 18.99, '{\"121\":\"medium\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 250, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(726, 19.99, '{\"121\":\"medium\",\"122\":\"double-decker\"}', '', 0, 0, 0, 250, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(727, 20.99, '{\"121\":\"large\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 250, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(728, 21.99, '{\"121\":\"large\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 250, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(729, 22.99, '{\"121\":\"large\",\"122\":\"double-decker\"}', '', 0, 0, 0, 250, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(730, 23.99, '{\"121\":\"family\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 250, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(731, 24.99, '{\"121\":\"family\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 250, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(732, 25.99, '{\"121\":\"family\",\"122\":\"double-decker\"}', '', 0, 0, 0, 250, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(733, 10.49, '{\"123\":\"small\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 251, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(734, 11.49, '{\"123\":\"small\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 251, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(735, 12.49, '{\"123\":\"small\",\"124\":\"double-decker\"}', '', 0, 0, 0, 251, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(736, 13.49, '{\"123\":\"medium\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 251, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(737, 14.49, '{\"123\":\"medium\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 251, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(738, 15.49, '{\"123\":\"medium\",\"124\":\"double-decker\"}', '', 0, 0, 0, 251, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(739, 16.49, '{\"123\":\"large\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 251, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(740, 17.49, '{\"123\":\"large\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 251, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(741, 18.49, '{\"123\":\"large\",\"124\":\"double-decker\"}', '', 0, 0, 0, 251, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(742, 19.49, '{\"123\":\"family\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 251, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(743, 20.49, '{\"123\":\"family\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 251, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(744, 21.49, '{\"123\":\"family\",\"124\":\"double-decker\"}', '', 0, 0, 0, 251, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(745, 39.99, '{\"125\":\"small\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 252, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(746, 40.99, '{\"125\":\"small\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 252, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(747, 41.99, '{\"125\":\"small\",\"126\":\"double-decker\"}', '', 0, 0, 0, 252, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(748, 42.99, '{\"125\":\"medium\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 252, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(749, 43.99, '{\"125\":\"medium\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 252, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(750, 44.99, '{\"125\":\"medium\",\"126\":\"double-decker\"}', '', 0, 0, 0, 252, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(751, 45.99, '{\"125\":\"large\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 252, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(752, 46.99, '{\"125\":\"large\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 252, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(753, 47.99, '{\"125\":\"large\",\"126\":\"double-decker\"}', '', 0, 0, 0, 252, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(754, 48.99, '{\"125\":\"family\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 252, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(755, 49.99, '{\"125\":\"family\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 252, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(756, 50.99, '{\"125\":\"family\",\"126\":\"double-decker\"}', '', 0, 0, 0, 252, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(757, 14.99, '{\"127\":\"small\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 253, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(758, 15.99, '{\"127\":\"small\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 253, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(759, 16.99, '{\"127\":\"small\",\"128\":\"double-decker\"}', '', 0, 0, 0, 253, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(760, 17.99, '{\"127\":\"medium\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 253, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(761, 18.99, '{\"127\":\"medium\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 253, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(762, 19.99, '{\"127\":\"medium\",\"128\":\"double-decker\"}', '', 0, 0, 0, 253, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(763, 20.99, '{\"127\":\"large\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 253, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(764, 21.99, '{\"127\":\"large\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 253, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(765, 22.99, '{\"127\":\"large\",\"128\":\"double-decker\"}', '', 0, 0, 0, 253, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(766, 23.99, '{\"127\":\"family\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 253, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(767, 24.99, '{\"127\":\"family\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 253, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(768, 25.99, '{\"127\":\"family\",\"128\":\"double-decker\"}', '', 0, 0, 0, 253, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(769, 14.99, '{\"129\":\"small\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 254, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(770, 15.99, '{\"129\":\"small\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 254, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(771, 16.99, '{\"129\":\"small\",\"130\":\"double-decker\"}', '', 0, 0, 0, 254, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(772, 17.99, '{\"129\":\"medium\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 254, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(773, 18.99, '{\"129\":\"medium\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 254, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(774, 19.99, '{\"129\":\"medium\",\"130\":\"double-decker\"}', '', 0, 0, 0, 254, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(775, 20.99, '{\"129\":\"large\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 254, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(776, 21.99, '{\"129\":\"large\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 254, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(777, 22.99, '{\"129\":\"large\",\"130\":\"double-decker\"}', '', 0, 0, 0, 254, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(778, 23.99, '{\"129\":\"family\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 254, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(779, 24.99, '{\"129\":\"family\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 254, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(780, 25.99, '{\"129\":\"family\",\"130\":\"double-decker\"}', '', 0, 0, 0, 254, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(781, 14.99, '{\"131\":\"small\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 255, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(782, 15.99, '{\"131\":\"small\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 255, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(783, 16.99, '{\"131\":\"small\",\"132\":\"double-decker\"}', '', 0, 0, 0, 255, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(784, 17.99, '{\"131\":\"medium\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 255, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(785, 18.99, '{\"131\":\"medium\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 255, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(786, 19.99, '{\"131\":\"medium\",\"132\":\"double-decker\"}', '', 0, 0, 0, 255, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(787, 20.99, '{\"131\":\"large\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 255, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(788, 21.99, '{\"131\":\"large\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 255, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(789, 22.99, '{\"131\":\"large\",\"132\":\"double-decker\"}', '', 0, 0, 0, 255, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(790, 23.99, '{\"131\":\"family\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 255, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(791, 24.99, '{\"131\":\"family\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 255, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(792, 25.99, '{\"131\":\"family\",\"132\":\"double-decker\"}', '', 0, 0, 0, 255, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(793, 10.99, '{\"133\":\"small\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(794, 11.99, '{\"133\":\"small\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(795, 12.99, '{\"133\":\"small\",\"134\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(796, 13.99, '{\"133\":\"medium\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(797, 14.99, '{\"133\":\"medium\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(798, 15.99, '{\"133\":\"medium\",\"134\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(799, 16.99, '{\"133\":\"large\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(800, 17.99, '{\"133\":\"large\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(801, 18.99, '{\"133\":\"large\",\"134\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(802, 19.99, '{\"133\":\"family\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(803, 20.99, '{\"133\":\"family\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(804, 21.99, '{\"133\":\"family\",\"134\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(805, 14.99, '{\"135\":\"small\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(806, 15.99, '{\"135\":\"small\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(807, 16.99, '{\"135\":\"small\",\"136\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(808, 17.99, '{\"135\":\"medium\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(809, 18.99, '{\"135\":\"medium\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(810, 19.99, '{\"135\":\"medium\",\"136\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(811, 20.99, '{\"135\":\"large\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(812, 21.99, '{\"135\":\"large\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(813, 22.99, '{\"135\":\"large\",\"136\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-10-15 09:00:05', '2021-10-15 09:00:05', NULL),
(814, 23.99, '{\"135\":\"family\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(815, 24.99, '{\"135\":\"family\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(816, 25.99, '{\"135\":\"family\",\"136\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(817, 14.99, '{\"137\":\"small\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(818, 15.99, '{\"137\":\"small\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 273, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(819, 16.99, '{\"137\":\"small\",\"138\":\"double-decker\"}', '', 0, 0, 0, 273, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(820, 17.99, '{\"137\":\"medium\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(821, 18.99, '{\"137\":\"medium\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 273, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(822, 19.99, '{\"137\":\"medium\",\"138\":\"double-decker\"}', '', 0, 0, 0, 273, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(823, 20.99, '{\"137\":\"large\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(824, 21.99, '{\"137\":\"large\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 273, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(825, 22.99, '{\"137\":\"large\",\"138\":\"double-decker\"}', '', 0, 0, 0, 273, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(826, 23.99, '{\"137\":\"family\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 273, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(827, 24.99, '{\"137\":\"family\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 273, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(828, 25.99, '{\"137\":\"family\",\"138\":\"double-decker\"}', '', 0, 0, 0, 273, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(829, 14.99, '{\"139\":\"small\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(830, 15.99, '{\"139\":\"small\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 274, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(831, 16.99, '{\"139\":\"small\",\"140\":\"double-decker\"}', '', 0, 0, 0, 274, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(832, 17.99, '{\"139\":\"medium\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(833, 18.99, '{\"139\":\"medium\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 274, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(834, 19.99, '{\"139\":\"medium\",\"140\":\"double-decker\"}', '', 0, 0, 0, 274, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(835, 20.99, '{\"139\":\"large\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(836, 21.99, '{\"139\":\"large\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 274, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(837, 22.99, '{\"139\":\"large\",\"140\":\"double-decker\"}', '', 0, 0, 0, 274, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(838, 23.99, '{\"139\":\"family\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 274, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(839, 24.99, '{\"139\":\"family\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 274, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(840, 25.99, '{\"139\":\"family\",\"140\":\"double-decker\"}', '', 0, 0, 0, 274, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(841, 14.99, '{\"141\":\"small\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(842, 15.99, '{\"141\":\"small\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 275, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(843, 16.99, '{\"141\":\"small\",\"142\":\"double-decker\"}', '', 0, 0, 0, 275, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(844, 17.99, '{\"141\":\"medium\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(845, 18.99, '{\"141\":\"medium\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 275, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(846, 19.99, '{\"141\":\"medium\",\"142\":\"double-decker\"}', '', 0, 0, 0, 275, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(847, 20.99, '{\"141\":\"large\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(848, 21.99, '{\"141\":\"large\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 275, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(849, 22.99, '{\"141\":\"large\",\"142\":\"double-decker\"}', '', 0, 0, 0, 275, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(850, 23.99, '{\"141\":\"family\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 275, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(851, 24.99, '{\"141\":\"family\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 275, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(852, 25.99, '{\"141\":\"family\",\"142\":\"double-decker\"}', '', 0, 0, 0, 275, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(853, 14.99, '{\"143\":\"small\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 276, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(854, 15.99, '{\"143\":\"small\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 276, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(855, 16.99, '{\"143\":\"small\",\"144\":\"double-decker\"}', '', 0, 0, 0, 276, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(856, 17.99, '{\"143\":\"medium\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 276, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(857, 18.99, '{\"143\":\"medium\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 276, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(858, 19.99, '{\"143\":\"medium\",\"144\":\"double-decker\"}', '', 0, 0, 0, 276, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(859, 20.99, '{\"143\":\"large\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 276, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(860, 21.99, '{\"143\":\"large\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 276, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(861, 22.99, '{\"143\":\"large\",\"144\":\"double-decker\"}', '', 0, 0, 0, 276, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(862, 23.99, '{\"143\":\"family\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 276, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(863, 24.99, '{\"143\":\"family\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 276, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(864, 25.99, '{\"143\":\"family\",\"144\":\"double-decker\"}', '', 0, 0, 0, 276, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(865, 10.49, '{\"145\":\"small\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 277, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(866, 11.49, '{\"145\":\"small\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 277, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(867, 12.49, '{\"145\":\"small\",\"146\":\"double-decker\"}', '', 0, 0, 0, 277, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(868, 13.49, '{\"145\":\"medium\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 277, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(869, 14.49, '{\"145\":\"medium\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 277, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(870, 15.49, '{\"145\":\"medium\",\"146\":\"double-decker\"}', '', 0, 0, 0, 277, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(871, 16.49, '{\"145\":\"large\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 277, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(872, 17.49, '{\"145\":\"large\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 277, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(873, 18.49, '{\"145\":\"large\",\"146\":\"double-decker\"}', '', 0, 0, 0, 277, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(874, 19.49, '{\"145\":\"family\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 277, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(875, 20.49, '{\"145\":\"family\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 277, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(876, 21.49, '{\"145\":\"family\",\"146\":\"double-decker\"}', '', 0, 0, 0, 277, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(877, 39.99, '{\"147\":\"small\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 278, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(878, 40.99, '{\"147\":\"small\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 278, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(879, 41.99, '{\"147\":\"small\",\"148\":\"double-decker\"}', '', 0, 0, 0, 278, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(880, 42.99, '{\"147\":\"medium\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 278, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(881, 43.99, '{\"147\":\"medium\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 278, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(882, 44.99, '{\"147\":\"medium\",\"148\":\"double-decker\"}', '', 0, 0, 0, 278, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(883, 45.99, '{\"147\":\"large\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 278, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(884, 46.99, '{\"147\":\"large\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 278, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(885, 47.99, '{\"147\":\"large\",\"148\":\"double-decker\"}', '', 0, 0, 0, 278, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(886, 48.99, '{\"147\":\"family\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 278, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(887, 49.99, '{\"147\":\"family\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 278, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(888, 50.99, '{\"147\":\"family\",\"148\":\"double-decker\"}', '', 0, 0, 0, 278, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(889, 14.99, '{\"149\":\"small\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 279, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(890, 15.99, '{\"149\":\"small\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 279, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(891, 16.99, '{\"149\":\"small\",\"150\":\"double-decker\"}', '', 0, 0, 0, 279, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(892, 17.99, '{\"149\":\"medium\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 279, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(893, 18.99, '{\"149\":\"medium\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 279, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(894, 19.99, '{\"149\":\"medium\",\"150\":\"double-decker\"}', '', 0, 0, 0, 279, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(895, 20.99, '{\"149\":\"large\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 279, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(896, 21.99, '{\"149\":\"large\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 279, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(897, 22.99, '{\"149\":\"large\",\"150\":\"double-decker\"}', '', 0, 0, 0, 279, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(898, 23.99, '{\"149\":\"family\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 279, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(899, 24.99, '{\"149\":\"family\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 279, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(900, 25.99, '{\"149\":\"family\",\"150\":\"double-decker\"}', '', 0, 0, 0, 279, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(901, 14.99, '{\"151\":\"small\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 280, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(902, 15.99, '{\"151\":\"small\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 280, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(903, 16.99, '{\"151\":\"small\",\"152\":\"double-decker\"}', '', 0, 0, 0, 280, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(904, 17.99, '{\"151\":\"medium\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 280, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(905, 18.99, '{\"151\":\"medium\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 280, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(906, 19.99, '{\"151\":\"medium\",\"152\":\"double-decker\"}', '', 0, 0, 0, 280, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(907, 20.99, '{\"151\":\"large\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 280, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(908, 21.99, '{\"151\":\"large\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 280, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(909, 22.99, '{\"151\":\"large\",\"152\":\"double-decker\"}', '', 0, 0, 0, 280, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(910, 23.99, '{\"151\":\"family\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 280, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(911, 24.99, '{\"151\":\"family\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 280, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(912, 25.99, '{\"151\":\"family\",\"152\":\"double-decker\"}', '', 0, 0, 0, 280, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(913, 14.99, '{\"153\":\"small\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 281, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(914, 15.99, '{\"153\":\"small\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 281, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(915, 16.99, '{\"153\":\"small\",\"154\":\"double-decker\"}', '', 0, 0, 0, 281, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(916, 17.99, '{\"153\":\"medium\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 281, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(917, 18.99, '{\"153\":\"medium\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 281, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(918, 19.99, '{\"153\":\"medium\",\"154\":\"double-decker\"}', '', 0, 0, 0, 281, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(919, 20.99, '{\"153\":\"large\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 281, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(920, 21.99, '{\"153\":\"large\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 281, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(921, 22.99, '{\"153\":\"large\",\"154\":\"double-decker\"}', '', 0, 0, 0, 281, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(922, 23.99, '{\"153\":\"family\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 281, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(923, 24.99, '{\"153\":\"family\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 281, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(924, 25.99, '{\"153\":\"family\",\"154\":\"double-decker\"}', '', 0, 0, 0, 281, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(925, 10.99, '{\"155\":\"small\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(926, 11.99, '{\"155\":\"small\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 320, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(927, 12.99, '{\"155\":\"small\",\"156\":\"double-decker\"}', '', 0, 0, 0, 320, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(928, 13.99, '{\"155\":\"medium\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(929, 14.99, '{\"155\":\"medium\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 320, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(930, 15.99, '{\"155\":\"medium\",\"156\":\"double-decker\"}', '', 0, 0, 0, 320, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(931, 16.99, '{\"155\":\"large\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(932, 17.99, '{\"155\":\"large\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 320, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(933, 18.99, '{\"155\":\"large\",\"156\":\"double-decker\"}', '', 0, 0, 0, 320, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(934, 19.99, '{\"155\":\"family\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 320, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(935, 20.99, '{\"155\":\"family\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 320, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(936, 21.99, '{\"155\":\"family\",\"156\":\"double-decker\"}', '', 0, 0, 0, 320, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(937, 14.99, '{\"157\":\"small\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(938, 15.99, '{\"157\":\"small\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 321, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(939, 16.99, '{\"157\":\"small\",\"158\":\"double-decker\"}', '', 0, 0, 0, 321, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(940, 17.99, '{\"157\":\"medium\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(941, 18.99, '{\"157\":\"medium\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 321, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(942, 19.99, '{\"157\":\"medium\",\"158\":\"double-decker\"}', '', 0, 0, 0, 321, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(943, 20.99, '{\"157\":\"large\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(944, 21.99, '{\"157\":\"large\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 321, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(945, 22.99, '{\"157\":\"large\",\"158\":\"double-decker\"}', '', 0, 0, 0, 321, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(946, 23.99, '{\"157\":\"family\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 321, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(947, 24.99, '{\"157\":\"family\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 321, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(948, 25.99, '{\"157\":\"family\",\"158\":\"double-decker\"}', '', 0, 0, 0, 321, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(949, 14.99, '{\"159\":\"small\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(950, 15.99, '{\"159\":\"small\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 322, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(951, 16.99, '{\"159\":\"small\",\"160\":\"double-decker\"}', '', 0, 0, 0, 322, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(952, 17.99, '{\"159\":\"medium\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(953, 18.99, '{\"159\":\"medium\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 322, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(954, 19.99, '{\"159\":\"medium\",\"160\":\"double-decker\"}', '', 0, 0, 0, 322, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(955, 20.99, '{\"159\":\"large\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(956, 21.99, '{\"159\":\"large\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 322, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(957, 22.99, '{\"159\":\"large\",\"160\":\"double-decker\"}', '', 0, 0, 0, 322, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(958, 23.99, '{\"159\":\"family\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 322, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(959, 24.99, '{\"159\":\"family\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 322, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(960, 25.99, '{\"159\":\"family\",\"160\":\"double-decker\"}', '', 0, 0, 0, 322, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(961, 14.99, '{\"161\":\"small\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(962, 15.99, '{\"161\":\"small\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 323, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(963, 16.99, '{\"161\":\"small\",\"162\":\"double-decker\"}', '', 0, 0, 0, 323, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(964, 17.99, '{\"161\":\"medium\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(965, 18.99, '{\"161\":\"medium\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 323, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(966, 19.99, '{\"161\":\"medium\",\"162\":\"double-decker\"}', '', 0, 0, 0, 323, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(967, 20.99, '{\"161\":\"large\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(968, 21.99, '{\"161\":\"large\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 323, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(969, 22.99, '{\"161\":\"large\",\"162\":\"double-decker\"}', '', 0, 0, 0, 323, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(970, 23.99, '{\"161\":\"family\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 323, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(971, 24.99, '{\"161\":\"family\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 323, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(972, 25.99, '{\"161\":\"family\",\"162\":\"double-decker\"}', '', 0, 0, 0, 323, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(973, 14.99, '{\"163\":\"small\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(974, 15.99, '{\"163\":\"small\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 324, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(975, 16.99, '{\"163\":\"small\",\"164\":\"double-decker\"}', '', 0, 0, 0, 324, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(976, 17.99, '{\"163\":\"medium\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(977, 18.99, '{\"163\":\"medium\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 324, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(978, 19.99, '{\"163\":\"medium\",\"164\":\"double-decker\"}', '', 0, 0, 0, 324, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(979, 20.99, '{\"163\":\"large\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(980, 21.99, '{\"163\":\"large\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 324, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(981, 22.99, '{\"163\":\"large\",\"164\":\"double-decker\"}', '', 0, 0, 0, 324, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(982, 23.99, '{\"163\":\"family\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 324, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(983, 24.99, '{\"163\":\"family\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 324, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(984, 25.99, '{\"163\":\"family\",\"164\":\"double-decker\"}', '', 0, 0, 0, 324, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(985, 14.99, '{\"165\":\"small\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(986, 15.99, '{\"165\":\"small\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 325, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(987, 16.99, '{\"165\":\"small\",\"166\":\"double-decker\"}', '', 0, 0, 0, 325, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(988, 17.99, '{\"165\":\"medium\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(989, 18.99, '{\"165\":\"medium\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 325, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(990, 19.99, '{\"165\":\"medium\",\"166\":\"double-decker\"}', '', 0, 0, 0, 325, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(991, 20.99, '{\"165\":\"large\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(992, 21.99, '{\"165\":\"large\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 325, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(993, 22.99, '{\"165\":\"large\",\"166\":\"double-decker\"}', '', 0, 0, 0, 325, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(994, 23.99, '{\"165\":\"family\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 325, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(995, 24.99, '{\"165\":\"family\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 325, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(996, 25.99, '{\"165\":\"family\",\"166\":\"double-decker\"}', '', 0, 0, 0, 325, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(997, 10.49, '{\"167\":\"small\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(998, 11.49, '{\"167\":\"small\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 326, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(999, 12.49, '{\"167\":\"small\",\"168\":\"double-decker\"}', '', 0, 0, 0, 326, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1000, 13.49, '{\"167\":\"medium\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1001, 14.49, '{\"167\":\"medium\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 326, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1002, 15.49, '{\"167\":\"medium\",\"168\":\"double-decker\"}', '', 0, 0, 0, 326, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1003, 16.49, '{\"167\":\"large\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1004, 17.49, '{\"167\":\"large\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 326, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1005, 18.49, '{\"167\":\"large\",\"168\":\"double-decker\"}', '', 0, 0, 0, 326, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1006, 19.49, '{\"167\":\"family\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1007, 20.49, '{\"167\":\"family\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 326, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1008, 21.49, '{\"167\":\"family\",\"168\":\"double-decker\"}', '', 0, 0, 0, 326, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1009, 39.99, '{\"169\":\"small\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 327, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1010, 40.99, '{\"169\":\"small\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 327, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1011, 41.99, '{\"169\":\"small\",\"170\":\"double-decker\"}', '', 0, 0, 0, 327, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1012, 42.99, '{\"169\":\"medium\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 327, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1013, 43.99, '{\"169\":\"medium\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 327, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1014, 44.99, '{\"169\":\"medium\",\"170\":\"double-decker\"}', '', 0, 0, 0, 327, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1015, 45.99, '{\"169\":\"large\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 327, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1016, 46.99, '{\"169\":\"large\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 327, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1017, 47.99, '{\"169\":\"large\",\"170\":\"double-decker\"}', '', 0, 0, 0, 327, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1018, 48.99, '{\"169\":\"family\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 327, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1019, 49.99, '{\"169\":\"family\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 327, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1020, 50.99, '{\"169\":\"family\",\"170\":\"double-decker\"}', '', 0, 0, 0, 327, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1021, 14.99, '{\"171\":\"small\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 328, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1022, 15.99, '{\"171\":\"small\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 328, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1023, 16.99, '{\"171\":\"small\",\"172\":\"double-decker\"}', '', 0, 0, 0, 328, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1024, 17.99, '{\"171\":\"medium\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 328, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1025, 18.99, '{\"171\":\"medium\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 328, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1026, 19.99, '{\"171\":\"medium\",\"172\":\"double-decker\"}', '', 0, 0, 0, 328, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1027, 20.99, '{\"171\":\"large\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 328, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1028, 21.99, '{\"171\":\"large\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 328, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1029, 22.99, '{\"171\":\"large\",\"172\":\"double-decker\"}', '', 0, 0, 0, 328, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1030, 23.99, '{\"171\":\"family\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 328, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1031, 24.99, '{\"171\":\"family\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 328, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1032, 25.99, '{\"171\":\"family\",\"172\":\"double-decker\"}', '', 0, 0, 0, 328, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1033, 14.99, '{\"173\":\"small\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 329, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1034, 15.99, '{\"173\":\"small\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 329, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1035, 16.99, '{\"173\":\"small\",\"174\":\"double-decker\"}', '', 0, 0, 0, 329, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1036, 17.99, '{\"173\":\"medium\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 329, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1037, 18.99, '{\"173\":\"medium\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 329, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1038, 19.99, '{\"173\":\"medium\",\"174\":\"double-decker\"}', '', 0, 0, 0, 329, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1039, 20.99, '{\"173\":\"large\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 329, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1040, 21.99, '{\"173\":\"large\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 329, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1041, 22.99, '{\"173\":\"large\",\"174\":\"double-decker\"}', '', 0, 0, 0, 329, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1042, 23.99, '{\"173\":\"family\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 329, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1043, 24.99, '{\"173\":\"family\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 329, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1044, 25.99, '{\"173\":\"family\",\"174\":\"double-decker\"}', '', 0, 0, 0, 329, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1045, 14.99, '{\"175\":\"small\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1046, 15.99, '{\"175\":\"small\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1047, 16.99, '{\"175\":\"small\",\"176\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1048, 17.99, '{\"175\":\"medium\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1049, 18.99, '{\"175\":\"medium\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1050, 19.99, '{\"175\":\"medium\",\"176\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1051, 20.99, '{\"175\":\"large\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1052, 21.99, '{\"175\":\"large\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1053, 22.99, '{\"175\":\"large\",\"176\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1054, 23.99, '{\"175\":\"family\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1055, 24.99, '{\"175\":\"family\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL),
(1056, 25.99, '{\"175\":\"family\",\"176\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-10-15 09:00:06', '2021-10-15 09:00:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variants_has_extras`
--

CREATE TABLE `variants_has_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `extra_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants_has_extras`
--

INSERT INTO `variants_has_extras` (`id`, `created_at`, `updated_at`, `variant_id`, `extra_id`) VALUES
(1, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 1, 21),
(2, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 2, 21),
(3, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 3, 21),
(4, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 4, 21),
(5, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 5, 21),
(6, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 6, 21),
(7, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 7, 22),
(8, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 8, 22),
(9, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 9, 22),
(10, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 10, 22),
(11, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 11, 22),
(12, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 12, 22),
(13, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 13, 25),
(14, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 14, 25),
(15, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 15, 25),
(16, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 16, 25),
(17, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 17, 25),
(18, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 18, 25),
(19, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 19, 26),
(20, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 20, 26),
(21, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 21, 26),
(22, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 22, 26),
(23, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 23, 26),
(24, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 24, 26),
(25, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 25, 29),
(26, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 26, 29),
(27, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 27, 29),
(28, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 28, 29),
(29, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 29, 29),
(30, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 30, 29),
(31, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 31, 30),
(32, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 32, 30),
(33, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 33, 30),
(34, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 34, 30),
(35, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 35, 30),
(36, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 36, 30),
(37, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 37, 33),
(38, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 38, 33),
(39, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 39, 33),
(40, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 40, 33),
(41, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 41, 33),
(42, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 42, 33),
(43, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 43, 34),
(44, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 44, 34),
(45, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 45, 34),
(46, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 46, 34),
(47, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 47, 34),
(48, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 48, 34),
(49, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 49, 37),
(50, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 50, 37),
(51, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 51, 37),
(52, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 52, 37),
(53, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 53, 37),
(54, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 54, 37),
(55, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 55, 38),
(56, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 56, 38),
(57, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 57, 38),
(58, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 58, 38),
(59, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 59, 38),
(60, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 60, 38),
(61, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 61, 41),
(62, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 62, 41),
(63, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 63, 41),
(64, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 64, 41),
(65, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 65, 41),
(66, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 66, 41),
(67, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 67, 42),
(68, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 68, 42),
(69, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 69, 42),
(70, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 70, 42),
(71, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 71, 42),
(72, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 72, 42),
(73, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 73, 45),
(74, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 74, 45),
(75, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 75, 45),
(76, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 76, 45),
(77, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 77, 45),
(78, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 78, 45),
(79, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 79, 46),
(80, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 80, 46),
(81, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 81, 46),
(82, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 82, 46),
(83, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 83, 46),
(84, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 84, 46),
(85, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 85, 49),
(86, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 86, 49),
(87, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 87, 49),
(88, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 88, 49),
(89, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 89, 49),
(90, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 90, 49),
(91, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 91, 50),
(92, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 92, 50),
(93, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 93, 50),
(94, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 94, 50),
(95, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 95, 50),
(96, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 96, 50),
(97, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 97, 53),
(98, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 98, 53),
(99, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 99, 53),
(100, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 100, 53),
(101, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 101, 53),
(102, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 102, 53),
(103, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 103, 54),
(104, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 104, 54),
(105, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 105, 54),
(106, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 106, 54),
(107, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 107, 54),
(108, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 108, 54),
(109, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 109, 57),
(110, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 110, 57),
(111, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 111, 57),
(112, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 112, 57),
(113, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 113, 57),
(114, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 114, 57),
(115, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 115, 58),
(116, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 116, 58),
(117, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 117, 58),
(118, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 118, 58),
(119, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 119, 58),
(120, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 120, 58),
(121, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 121, 61),
(122, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 122, 61),
(123, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 123, 61),
(124, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 124, 61),
(125, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 125, 61),
(126, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 126, 61),
(127, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 127, 62),
(128, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 128, 62),
(129, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 129, 62),
(130, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 130, 62),
(131, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 131, 62),
(132, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 132, 62),
(133, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 133, 83),
(134, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 134, 83),
(135, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 135, 83),
(136, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 136, 83),
(137, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 137, 83),
(138, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 138, 83),
(139, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 139, 84),
(140, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 140, 84),
(141, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 141, 84),
(142, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 142, 84),
(143, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 143, 84),
(144, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 144, 84),
(145, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 145, 87),
(146, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 146, 87),
(147, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 147, 87),
(148, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 148, 87),
(149, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 149, 87),
(150, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 150, 87),
(151, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 151, 88),
(152, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 152, 88),
(153, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 153, 88),
(154, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 154, 88),
(155, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 155, 88),
(156, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 156, 88),
(157, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 157, 91),
(158, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 158, 91),
(159, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 159, 91),
(160, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 160, 91),
(161, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 161, 91),
(162, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 162, 91),
(163, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 163, 92),
(164, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 164, 92),
(165, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 165, 92),
(166, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 166, 92),
(167, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 167, 92),
(168, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 168, 92),
(169, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 169, 95),
(170, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 170, 95),
(171, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 171, 95),
(172, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 172, 95),
(173, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 173, 95),
(174, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 174, 95),
(175, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 175, 96),
(176, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 176, 96),
(177, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 177, 96),
(178, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 178, 96),
(179, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 179, 96),
(180, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 180, 96),
(181, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 181, 99),
(182, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 182, 99),
(183, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 183, 99),
(184, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 184, 99),
(185, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 185, 99),
(186, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 186, 99),
(187, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 187, 100),
(188, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 188, 100),
(189, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 189, 100),
(190, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 190, 100),
(191, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 191, 100),
(192, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 192, 100),
(193, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 193, 103),
(194, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 194, 103),
(195, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 195, 103),
(196, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 196, 103),
(197, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 197, 103),
(198, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 198, 103),
(199, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 199, 104),
(200, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 200, 104),
(201, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 201, 104),
(202, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 202, 104),
(203, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 203, 104),
(204, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 204, 104),
(205, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 205, 107),
(206, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 206, 107),
(207, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 207, 107),
(208, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 208, 107),
(209, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 209, 107),
(210, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 210, 107),
(211, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 211, 108),
(212, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 212, 108),
(213, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 213, 108),
(214, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 214, 108),
(215, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 215, 108),
(216, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 216, 108),
(217, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 217, 111),
(218, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 218, 111),
(219, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 219, 111),
(220, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 220, 111),
(221, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 221, 111),
(222, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 222, 111),
(223, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 223, 112),
(224, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 224, 112),
(225, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 225, 112),
(226, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 226, 112),
(227, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 227, 112),
(228, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 228, 112),
(229, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 229, 115),
(230, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 230, 115),
(231, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 231, 115),
(232, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 232, 115),
(233, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 233, 115),
(234, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 234, 115),
(235, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 235, 116),
(236, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 236, 116),
(237, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 237, 116),
(238, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 238, 116),
(239, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 239, 116),
(240, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 240, 116),
(241, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 241, 119),
(242, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 242, 119),
(243, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 243, 119),
(244, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 244, 119),
(245, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 245, 119),
(246, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 246, 119),
(247, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 247, 120),
(248, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 248, 120),
(249, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 249, 120),
(250, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 250, 120),
(251, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 251, 120),
(252, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 252, 120),
(253, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 253, 123),
(254, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 254, 123),
(255, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 255, 123),
(256, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 256, 123),
(257, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 257, 123),
(258, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 258, 123),
(259, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 259, 124),
(260, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 260, 124),
(261, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 261, 124),
(262, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 262, 124),
(263, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 263, 124),
(264, '2021-10-15 09:00:03', '2021-10-15 09:00:03', 264, 124),
(265, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 265, 127),
(266, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 266, 127),
(267, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 267, 127),
(268, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 268, 127),
(269, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 269, 127),
(270, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 270, 127),
(271, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 271, 128),
(272, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 272, 128),
(273, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 273, 128),
(274, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 274, 128),
(275, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 275, 128),
(276, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 276, 128),
(277, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 277, 131),
(278, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 278, 131),
(279, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 279, 131),
(280, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 280, 131),
(281, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 281, 131),
(282, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 282, 131),
(283, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 283, 132),
(284, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 284, 132),
(285, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 285, 132),
(286, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 286, 132),
(287, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 287, 132),
(288, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 288, 132),
(289, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 289, 135),
(290, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 290, 135),
(291, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 291, 135),
(292, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 292, 135),
(293, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 293, 135),
(294, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 294, 135),
(295, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 295, 136),
(296, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 296, 136),
(297, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 297, 136),
(298, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 298, 136),
(299, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 299, 136),
(300, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 300, 136),
(301, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 301, 139),
(302, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 302, 139),
(303, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 303, 139),
(304, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 304, 139),
(305, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 305, 139),
(306, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 306, 139),
(307, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 307, 140),
(308, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 308, 140),
(309, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 309, 140),
(310, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 310, 140),
(311, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 311, 140),
(312, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 312, 140),
(313, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 313, 143),
(314, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 314, 143),
(315, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 315, 143),
(316, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 316, 143),
(317, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 317, 143),
(318, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 318, 143),
(319, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 319, 144),
(320, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 320, 144),
(321, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 321, 144),
(322, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 322, 144),
(323, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 323, 144),
(324, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 324, 144),
(325, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 325, 147),
(326, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 326, 147),
(327, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 327, 147),
(328, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 328, 147),
(329, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 329, 147),
(330, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 330, 147),
(331, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 331, 148),
(332, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 332, 148),
(333, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 333, 148),
(334, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 334, 148),
(335, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 335, 148),
(336, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 336, 148),
(337, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 337, 151),
(338, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 338, 151),
(339, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 339, 151),
(340, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 340, 151),
(341, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 341, 151),
(342, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 342, 151),
(343, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 343, 152),
(344, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 344, 152),
(345, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 345, 152),
(346, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 346, 152),
(347, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 347, 152),
(348, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 348, 152),
(349, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 349, 155),
(350, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 350, 155),
(351, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 351, 155),
(352, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 352, 155),
(353, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 353, 155),
(354, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 354, 155),
(355, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 355, 156),
(356, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 356, 156),
(357, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 357, 156),
(358, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 358, 156),
(359, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 359, 156),
(360, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 360, 156),
(361, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 361, 159),
(362, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 362, 159),
(363, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 363, 159),
(364, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 364, 159),
(365, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 365, 159),
(366, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 366, 159),
(367, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 367, 160),
(368, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 368, 160),
(369, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 369, 160),
(370, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 370, 160),
(371, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 371, 160),
(372, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 372, 160),
(373, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 373, 163),
(374, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 374, 163),
(375, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 375, 163),
(376, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 376, 163),
(377, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 377, 163),
(378, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 378, 163),
(379, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 379, 164),
(380, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 380, 164),
(381, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 381, 164),
(382, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 382, 164),
(383, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 383, 164),
(384, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 384, 164),
(385, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 385, 167),
(386, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 386, 167),
(387, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 387, 167),
(388, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 388, 167),
(389, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 389, 167),
(390, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 390, 167),
(391, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 391, 168),
(392, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 392, 168),
(393, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 393, 168),
(394, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 394, 168),
(395, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 395, 168),
(396, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 396, 168),
(397, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 397, 207),
(398, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 398, 207),
(399, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 399, 207),
(400, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 400, 207),
(401, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 401, 207),
(402, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 402, 207),
(403, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 403, 208),
(404, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 404, 208),
(405, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 405, 208),
(406, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 406, 208),
(407, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 407, 208),
(408, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 408, 208),
(409, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 409, 211),
(410, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 410, 211),
(411, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 411, 211),
(412, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 412, 211),
(413, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 413, 211),
(414, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 414, 211),
(415, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 415, 212),
(416, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 416, 212),
(417, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 417, 212),
(418, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 418, 212),
(419, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 419, 212),
(420, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 420, 212),
(421, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 421, 215),
(422, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 422, 215),
(423, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 423, 215),
(424, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 424, 215),
(425, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 425, 215),
(426, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 426, 215),
(427, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 427, 216),
(428, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 428, 216),
(429, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 429, 216),
(430, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 430, 216),
(431, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 431, 216),
(432, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 432, 216),
(433, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 433, 219),
(434, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 434, 219),
(435, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 435, 219),
(436, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 436, 219),
(437, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 437, 219),
(438, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 438, 219),
(439, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 439, 220),
(440, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 440, 220),
(441, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 441, 220),
(442, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 442, 220),
(443, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 443, 220),
(444, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 444, 220),
(445, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 445, 223),
(446, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 446, 223),
(447, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 447, 223),
(448, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 448, 223),
(449, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 449, 223),
(450, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 450, 223),
(451, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 451, 224),
(452, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 452, 224),
(453, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 453, 224),
(454, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 454, 224),
(455, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 455, 224),
(456, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 456, 224),
(457, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 457, 227),
(458, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 458, 227),
(459, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 459, 227),
(460, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 460, 227),
(461, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 461, 227),
(462, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 462, 227),
(463, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 463, 228),
(464, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 464, 228),
(465, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 465, 228),
(466, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 466, 228),
(467, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 467, 228),
(468, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 468, 228),
(469, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 469, 231),
(470, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 470, 231),
(471, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 471, 231),
(472, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 472, 231),
(473, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 473, 231),
(474, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 474, 231),
(475, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 475, 232),
(476, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 476, 232),
(477, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 477, 232),
(478, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 478, 232),
(479, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 479, 232),
(480, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 480, 232),
(481, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 481, 235),
(482, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 482, 235),
(483, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 483, 235),
(484, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 484, 235),
(485, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 485, 235),
(486, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 486, 235),
(487, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 487, 236),
(488, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 488, 236),
(489, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 489, 236),
(490, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 490, 236),
(491, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 491, 236),
(492, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 492, 236),
(493, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 493, 239),
(494, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 494, 239),
(495, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 495, 239),
(496, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 496, 239),
(497, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 497, 239),
(498, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 498, 239),
(499, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 499, 240),
(500, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 500, 240),
(501, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 501, 240),
(502, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 502, 240),
(503, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 503, 240),
(504, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 504, 240),
(505, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 505, 243),
(506, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 506, 243),
(507, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 507, 243),
(508, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 508, 243),
(509, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 509, 243),
(510, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 510, 243),
(511, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 511, 244),
(512, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 512, 244),
(513, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 513, 244),
(514, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 514, 244),
(515, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 515, 244),
(516, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 516, 244),
(517, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 517, 247),
(518, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 518, 247),
(519, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 519, 247),
(520, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 520, 247),
(521, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 521, 247),
(522, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 522, 247),
(523, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 523, 248),
(524, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 524, 248),
(525, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 525, 248),
(526, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 526, 248),
(527, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 527, 248),
(528, '2021-10-15 09:00:04', '2021-10-15 09:00:04', 528, 248),
(529, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 529, 269),
(530, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 530, 269),
(531, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 531, 269),
(532, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 532, 269),
(533, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 533, 269),
(534, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 534, 269),
(535, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 535, 270),
(536, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 536, 270),
(537, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 537, 270),
(538, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 538, 270),
(539, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 539, 270),
(540, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 540, 270),
(541, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 541, 273),
(542, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 542, 273),
(543, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 543, 273),
(544, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 544, 273),
(545, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 545, 273),
(546, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 546, 273),
(547, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 547, 274),
(548, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 548, 274),
(549, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 549, 274),
(550, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 550, 274),
(551, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 551, 274),
(552, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 552, 274),
(553, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 553, 277),
(554, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 554, 277),
(555, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 555, 277),
(556, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 556, 277),
(557, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 557, 277),
(558, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 558, 277),
(559, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 559, 278),
(560, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 560, 278),
(561, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 561, 278),
(562, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 562, 278),
(563, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 563, 278),
(564, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 564, 278),
(565, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 565, 281),
(566, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 566, 281),
(567, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 567, 281),
(568, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 568, 281),
(569, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 569, 281),
(570, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 570, 281),
(571, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 571, 282),
(572, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 572, 282),
(573, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 573, 282),
(574, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 574, 282),
(575, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 575, 282),
(576, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 576, 282),
(577, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 577, 285),
(578, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 578, 285),
(579, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 579, 285),
(580, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 580, 285),
(581, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 581, 285),
(582, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 582, 285),
(583, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 583, 286),
(584, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 584, 286),
(585, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 585, 286),
(586, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 586, 286),
(587, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 587, 286),
(588, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 588, 286),
(589, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 589, 289),
(590, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 590, 289),
(591, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 591, 289),
(592, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 592, 289),
(593, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 593, 289),
(594, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 594, 289),
(595, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 595, 290),
(596, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 596, 290),
(597, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 597, 290),
(598, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 598, 290),
(599, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 599, 290),
(600, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 600, 290),
(601, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 601, 293),
(602, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 602, 293),
(603, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 603, 293),
(604, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 604, 293),
(605, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 605, 293),
(606, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 606, 293),
(607, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 607, 294),
(608, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 608, 294),
(609, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 609, 294),
(610, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 610, 294),
(611, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 611, 294),
(612, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 612, 294),
(613, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 613, 297),
(614, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 614, 297),
(615, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 615, 297),
(616, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 616, 297),
(617, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 617, 297),
(618, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 618, 297),
(619, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 619, 298),
(620, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 620, 298),
(621, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 621, 298),
(622, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 622, 298),
(623, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 623, 298),
(624, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 624, 298),
(625, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 625, 301),
(626, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 626, 301),
(627, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 627, 301),
(628, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 628, 301),
(629, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 629, 301),
(630, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 630, 301),
(631, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 631, 302),
(632, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 632, 302),
(633, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 633, 302),
(634, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 634, 302),
(635, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 635, 302),
(636, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 636, 302),
(637, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 637, 305),
(638, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 638, 305),
(639, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 639, 305),
(640, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 640, 305),
(641, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 641, 305),
(642, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 642, 305),
(643, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 643, 306),
(644, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 644, 306),
(645, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 645, 306),
(646, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 646, 306),
(647, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 647, 306),
(648, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 648, 306),
(649, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 649, 309),
(650, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 650, 309),
(651, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 651, 309),
(652, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 652, 309),
(653, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 653, 309),
(654, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 654, 309),
(655, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 655, 310),
(656, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 656, 310),
(657, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 657, 310),
(658, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 658, 310),
(659, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 659, 310),
(660, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 660, 310),
(661, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 661, 331),
(662, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 662, 331),
(663, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 663, 331),
(664, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 664, 331),
(665, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 665, 331),
(666, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 666, 331),
(667, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 667, 332),
(668, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 668, 332),
(669, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 669, 332),
(670, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 670, 332),
(671, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 671, 332),
(672, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 672, 332),
(673, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 673, 335),
(674, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 674, 335),
(675, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 675, 335),
(676, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 676, 335),
(677, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 677, 335),
(678, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 678, 335),
(679, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 679, 336),
(680, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 680, 336),
(681, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 681, 336),
(682, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 682, 336),
(683, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 683, 336),
(684, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 684, 336),
(685, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 685, 339),
(686, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 686, 339),
(687, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 687, 339),
(688, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 688, 339),
(689, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 689, 339),
(690, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 690, 339),
(691, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 691, 340),
(692, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 692, 340),
(693, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 693, 340),
(694, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 694, 340),
(695, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 695, 340),
(696, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 696, 340),
(697, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 697, 343),
(698, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 698, 343),
(699, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 699, 343),
(700, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 700, 343),
(701, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 701, 343),
(702, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 702, 343),
(703, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 703, 344),
(704, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 704, 344),
(705, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 705, 344),
(706, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 706, 344),
(707, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 707, 344),
(708, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 708, 344),
(709, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 709, 347),
(710, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 710, 347),
(711, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 711, 347),
(712, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 712, 347),
(713, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 713, 347),
(714, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 714, 347),
(715, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 715, 348),
(716, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 716, 348),
(717, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 717, 348),
(718, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 718, 348),
(719, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 719, 348),
(720, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 720, 348),
(721, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 721, 351),
(722, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 722, 351),
(723, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 723, 351),
(724, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 724, 351),
(725, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 725, 351),
(726, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 726, 351),
(727, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 727, 352),
(728, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 728, 352),
(729, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 729, 352),
(730, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 730, 352),
(731, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 731, 352),
(732, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 732, 352),
(733, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 733, 355),
(734, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 734, 355),
(735, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 735, 355),
(736, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 736, 355),
(737, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 737, 355),
(738, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 738, 355),
(739, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 739, 356),
(740, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 740, 356),
(741, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 741, 356),
(742, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 742, 356),
(743, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 743, 356),
(744, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 744, 356),
(745, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 745, 359),
(746, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 746, 359),
(747, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 747, 359),
(748, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 748, 359),
(749, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 749, 359),
(750, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 750, 359),
(751, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 751, 360),
(752, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 752, 360),
(753, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 753, 360),
(754, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 754, 360),
(755, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 755, 360),
(756, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 756, 360),
(757, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 757, 363),
(758, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 758, 363),
(759, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 759, 363),
(760, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 760, 363),
(761, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 761, 363),
(762, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 762, 363),
(763, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 763, 364),
(764, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 764, 364),
(765, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 765, 364),
(766, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 766, 364),
(767, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 767, 364),
(768, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 768, 364),
(769, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 769, 367),
(770, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 770, 367),
(771, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 771, 367),
(772, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 772, 367),
(773, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 773, 367),
(774, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 774, 367),
(775, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 775, 368),
(776, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 776, 368),
(777, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 777, 368),
(778, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 778, 368),
(779, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 779, 368),
(780, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 780, 368),
(781, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 781, 371),
(782, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 782, 371),
(783, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 783, 371),
(784, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 784, 371),
(785, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 785, 371),
(786, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 786, 371),
(787, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 787, 372),
(788, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 788, 372),
(789, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 789, 372),
(790, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 790, 372),
(791, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 791, 372),
(792, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 792, 372),
(793, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 793, 393),
(794, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 794, 393),
(795, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 795, 393),
(796, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 796, 393),
(797, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 797, 393),
(798, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 798, 393),
(799, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 799, 394),
(800, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 800, 394),
(801, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 801, 394),
(802, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 802, 394),
(803, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 803, 394),
(804, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 804, 394),
(805, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 805, 397),
(806, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 806, 397),
(807, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 807, 397),
(808, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 808, 397),
(809, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 809, 397),
(810, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 810, 397),
(811, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 811, 398),
(812, '2021-10-15 09:00:05', '2021-10-15 09:00:05', 812, 398),
(813, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 813, 398),
(814, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 814, 398),
(815, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 815, 398),
(816, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 816, 398),
(817, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 817, 401),
(818, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 818, 401),
(819, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 819, 401),
(820, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 820, 401),
(821, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 821, 401),
(822, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 822, 401),
(823, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 823, 402),
(824, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 824, 402);
INSERT INTO `variants_has_extras` (`id`, `created_at`, `updated_at`, `variant_id`, `extra_id`) VALUES
(825, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 825, 402),
(826, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 826, 402),
(827, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 827, 402),
(828, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 828, 402),
(829, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 829, 405),
(830, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 830, 405),
(831, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 831, 405),
(832, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 832, 405),
(833, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 833, 405),
(834, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 834, 405),
(835, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 835, 406),
(836, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 836, 406),
(837, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 837, 406),
(838, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 838, 406),
(839, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 839, 406),
(840, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 840, 406),
(841, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 841, 409),
(842, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 842, 409),
(843, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 843, 409),
(844, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 844, 409),
(845, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 845, 409),
(846, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 846, 409),
(847, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 847, 410),
(848, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 848, 410),
(849, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 849, 410),
(850, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 850, 410),
(851, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 851, 410),
(852, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 852, 410),
(853, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 853, 413),
(854, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 854, 413),
(855, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 855, 413),
(856, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 856, 413),
(857, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 857, 413),
(858, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 858, 413),
(859, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 859, 414),
(860, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 860, 414),
(861, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 861, 414),
(862, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 862, 414),
(863, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 863, 414),
(864, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 864, 414),
(865, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 865, 417),
(866, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 866, 417),
(867, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 867, 417),
(868, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 868, 417),
(869, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 869, 417),
(870, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 870, 417),
(871, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 871, 418),
(872, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 872, 418),
(873, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 873, 418),
(874, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 874, 418),
(875, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 875, 418),
(876, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 876, 418),
(877, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 877, 421),
(878, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 878, 421),
(879, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 879, 421),
(880, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 880, 421),
(881, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 881, 421),
(882, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 882, 421),
(883, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 883, 422),
(884, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 884, 422),
(885, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 885, 422),
(886, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 886, 422),
(887, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 887, 422),
(888, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 888, 422),
(889, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 889, 425),
(890, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 890, 425),
(891, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 891, 425),
(892, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 892, 425),
(893, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 893, 425),
(894, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 894, 425),
(895, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 895, 426),
(896, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 896, 426),
(897, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 897, 426),
(898, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 898, 426),
(899, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 899, 426),
(900, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 900, 426),
(901, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 901, 429),
(902, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 902, 429),
(903, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 903, 429),
(904, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 904, 429),
(905, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 905, 429),
(906, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 906, 429),
(907, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 907, 430),
(908, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 908, 430),
(909, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 909, 430),
(910, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 910, 430),
(911, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 911, 430),
(912, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 912, 430),
(913, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 913, 433),
(914, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 914, 433),
(915, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 915, 433),
(916, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 916, 433),
(917, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 917, 433),
(918, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 918, 433),
(919, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 919, 434),
(920, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 920, 434),
(921, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 921, 434),
(922, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 922, 434),
(923, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 923, 434),
(924, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 924, 434),
(925, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 925, 437),
(926, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 926, 437),
(927, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 927, 437),
(928, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 928, 437),
(929, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 929, 437),
(930, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 930, 437),
(931, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 931, 438),
(932, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 932, 438),
(933, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 933, 438),
(934, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 934, 438),
(935, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 935, 438),
(936, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 936, 438),
(937, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 937, 441),
(938, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 938, 441),
(939, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 939, 441),
(940, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 940, 441),
(941, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 941, 441),
(942, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 942, 441),
(943, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 943, 442),
(944, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 944, 442),
(945, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 945, 442),
(946, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 946, 442),
(947, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 947, 442),
(948, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 948, 442),
(949, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 949, 445),
(950, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 950, 445),
(951, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 951, 445),
(952, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 952, 445),
(953, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 953, 445),
(954, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 954, 445),
(955, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 955, 446),
(956, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 956, 446),
(957, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 957, 446),
(958, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 958, 446),
(959, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 959, 446),
(960, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 960, 446),
(961, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 961, 449),
(962, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 962, 449),
(963, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 963, 449),
(964, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 964, 449),
(965, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 965, 449),
(966, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 966, 449),
(967, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 967, 450),
(968, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 968, 450),
(969, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 969, 450),
(970, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 970, 450),
(971, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 971, 450),
(972, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 972, 450),
(973, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 973, 453),
(974, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 974, 453),
(975, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 975, 453),
(976, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 976, 453),
(977, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 977, 453),
(978, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 978, 453),
(979, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 979, 454),
(980, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 980, 454),
(981, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 981, 454),
(982, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 982, 454),
(983, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 983, 454),
(984, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 984, 454),
(985, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 985, 457),
(986, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 986, 457),
(987, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 987, 457),
(988, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 988, 457),
(989, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 989, 457),
(990, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 990, 457),
(991, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 991, 458),
(992, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 992, 458),
(993, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 993, 458),
(994, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 994, 458),
(995, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 995, 458),
(996, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 996, 458),
(997, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 997, 461),
(998, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 998, 461),
(999, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 999, 461),
(1000, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1000, 461),
(1001, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1001, 461),
(1002, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1002, 461),
(1003, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1003, 462),
(1004, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1004, 462),
(1005, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1005, 462),
(1006, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1006, 462),
(1007, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1007, 462),
(1008, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1008, 462),
(1009, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1009, 465),
(1010, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1010, 465),
(1011, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1011, 465),
(1012, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1012, 465),
(1013, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1013, 465),
(1014, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1014, 465),
(1015, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1015, 466),
(1016, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1016, 466),
(1017, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1017, 466),
(1018, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1018, 466),
(1019, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1019, 466),
(1020, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1020, 466),
(1021, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1021, 469),
(1022, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1022, 469),
(1023, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1023, 469),
(1024, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1024, 469),
(1025, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1025, 469),
(1026, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1026, 469),
(1027, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1027, 470),
(1028, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1028, 470),
(1029, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1029, 470),
(1030, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1030, 470),
(1031, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1031, 470),
(1032, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1032, 470),
(1033, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1033, 473),
(1034, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1034, 473),
(1035, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1035, 473),
(1036, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1036, 473),
(1037, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1037, 473),
(1038, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1038, 473),
(1039, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1039, 474),
(1040, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1040, 474),
(1041, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1041, 474),
(1042, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1042, 474),
(1043, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1043, 474),
(1044, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1044, 474),
(1045, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1045, 477),
(1046, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1046, 477),
(1047, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1047, 477),
(1048, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1048, 477),
(1049, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1049, 477),
(1050, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1050, 477),
(1051, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1051, 478),
(1052, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1052, 478),
(1053, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1053, 478),
(1054, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1054, 478),
(1055, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1055, 478),
(1056, '2021-10-15 09:00:06', '2021-10-15 09:00:06', 1056, 478);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `by` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Owner, 0 - Client Himself',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_user_id_foreign` (`user_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_vendor_id_foreign` (`vendor_id`),
  ADD KEY `banners_page_id_foreign` (`page_id`);

--
-- Indexes for table `cart_storage`
--
ALTER TABLE `cart_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_storage_id_index` (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_alias_unique` (`alias`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restorants_name_unique` (`name`),
  ADD UNIQUE KEY `restorants_subdomain_unique` (`subdomain`),
  ADD KEY `restorants_user_id_foreign` (`user_id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`),
  ADD KEY `coupons_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_restaurant_id_foreign` (`restaurant_id`),
  ADD KEY `expenses_expenses_category_id_foreign` (`expenses_category_id`),
  ADD KEY `expenses_expenses_vendor_id_foreign` (`expenses_vendor_id`);

--
-- Indexes for table `expenses_category`
--
ALTER TABLE `expenses_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_category_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `expenses_vendor`
--
ALTER TABLE `expenses_vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_vendor_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_item_id_foreign` (`item_id`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hours_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `localmenus`
--
ALTER TABLE `localmenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localmenus_restaurant_id_foreign` (`restaurant_id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_item_id_foreign` (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_restorant_id_foreign` (`restorant_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_items_order_id_foreign` (`order_id`),
  ADD KEY `order_has_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_status_order_id_foreign` (`order_id`),
  ADD KEY `order_has_status_status_id_foreign` (`status_id`),
  ADD KEY `order_has_status_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paths`
--
ALTER TABLE `paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_order_id_foreign` (`order_id`);

--
-- Indexes for table `restoareas`
--
ALTER TABLE `restoareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restoareas_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_delivery_areas`
--
ALTER TABLE `simple_delivery_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `simple_delivery_areas_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_verifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_name_unique` (`name`),
  ADD UNIQUE KEY `status_alias_unique` (`alias`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tables_restoarea_id_foreign` (`restoarea_id`),
  ADD KEY `tables_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD UNIQUE KEY `users_verification_code_unique` (`verification_code`),
  ADD KEY `users_stripe_id_index` (`stripe_id`),
  ADD KEY `users_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_item_id_foreign` (`item_id`);

--
-- Indexes for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_has_extras_variant_id_foreign` (`variant_id`),
  ADD KEY `variants_has_extras_extra_id_foreign` (`extra_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_restaurant_id_foreign` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `expenses_category`
--
ALTER TABLE `expenses_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses_vendor`
--
ALTER TABLE `expenses_vendor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;

--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `localmenus`
--
ALTER TABLE `localmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT for table `order_has_items`
--
ALTER TABLE `order_has_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `order_has_status`
--
ALTER TABLE `order_has_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=767;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paths`
--
ALTER TABLE `paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `restoareas`
--
ALTER TABLE `restoareas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `simple_delivery_areas`
--
ALTER TABLE `simple_delivery_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;

--
-- AUTO_INCREMENT for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  ADD CONSTRAINT `banners_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `restorants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `extras`
--
ALTER TABLE `extras`
  ADD CONSTRAINT `extras_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `hours`
--
ALTER TABLE `hours`
  ADD CONSTRAINT `hours_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `localmenus`
--
ALTER TABLE `localmenus`
  ADD CONSTRAINT `localmenus_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD CONSTRAINT `order_has_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_has_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD CONSTRAINT `order_has_status_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_has_status_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `order_has_status_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `restoareas`
--
ALTER TABLE `restoareas`
  ADD CONSTRAINT `restoareas_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD CONSTRAINT `sms_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `tables_restoarea_id_foreign` FOREIGN KEY (`restoarea_id`) REFERENCES `restoareas` (`id`);

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD CONSTRAINT `variants_has_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`),
  ADD CONSTRAINT `variants_has_extras_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
