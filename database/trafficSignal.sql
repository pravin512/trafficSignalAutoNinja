-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 07, 2018 at 06:41 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.2.9-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trafficSignal`
--

-- --------------------------------------------------------

--
-- Table structure for table `crossings`
--

CREATE TABLE `crossings` (
  `id` int(10) UNSIGNED NOT NULL,
  `signal_id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `speed_kmph` double(5,2) DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `from_lane_id` int(11) NOT NULL,
  `to_lane_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crossings`
--

INSERT INTO `crossings` (`id`, `signal_id`, `vehicle_id`, `speed_kmph`, `date_time`, `from_lane_id`, `to_lane_id`, `created_at`, `updated_at`) VALUES
(3, 1, 21, 59.00, '2018-09-07 06:20:56', 1, 1, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(4, 2, 21, 36.00, '2018-09-07 11:54:26', 1, 1, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(5, 1, 24, 34.00, '2018-09-07 06:21:15', 1, 3, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(6, 1, 15, 38.00, '2018-09-07 06:21:24', 1, 4, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(7, 3, 15, 39.00, '2018-09-07 06:21:45', 4, 12, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(8, 1, 12, 55.00, '2018-09-07 06:22:35', 1, 1, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(9, 2, 12, 43.00, '2018-09-07 06:22:35', 1, 8, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(10, 4, 12, 41.00, '2018-09-07 06:22:35', 8, 13, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(11, 2, 5, 36.00, '2018-09-07 05:26:50', 10, 7, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(12, 2, 6, 58.00, '2018-09-07 05:26:50', 10, 8, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(13, 4, 6, 38.00, '2018-09-07 05:26:50', 8, 16, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(14, 4, 7, 54.00, '2018-09-07 05:26:50', 15, 14, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(15, 3, 7, 47.00, '2018-09-07 05:26:50', 14, 11, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(16, 1, 7, 50.00, '2018-09-07 05:26:50', 11, 2, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(17, 3, 27, 67.00, '2018-09-07 06:22:50', 5, 5, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(18, 4, 27, 51.00, '2018-09-07 06:22:56', 5, 5, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(19, 3, 9, 69.00, '2018-09-07 05:26:50', 5, 11, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(20, 1, 9, 55.00, '2018-09-07 05:26:50', 11, 2, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(21, 1, 19, 62.00, '2018-09-07 06:23:22', 4, 1, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(22, 2, 19, 42.00, '2018-09-07 06:23:22', 1, 8, '2018-09-06 18:30:00', '2018-09-07 05:26:50'),
(23, 4, 19, 61.00, '2018-09-07 06:23:22', 8, 13, '2018-09-06 18:30:00', '2018-09-07 05:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `lanes`
--

CREATE TABLE `lanes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signal_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lanes`
--

INSERT INTO `lanes` (`id`, `name`, `signal_id`, `created_at`, `updated_at`) VALUES
(1, 'L1', 1, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(2, 'L2', 1, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(3, 'L3', 1, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(4, 'L4', 1, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(5, 'L5', 3, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(6, 'L6', 3, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(7, 'L7', 2, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(8, 'L8', 2, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(9, 'L1', 2, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(10, 'L2', 2, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(11, 'L3', 3, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(12, 'L4', 3, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(13, 'L5', 4, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(14, 'L6', 4, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(15, 'L7', 4, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(16, 'L8', 4, '2018-09-05 18:30:00', '2018-09-05 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_06_061146_create_signals_table', 1),
(4, '2018_09_06_061242_create_lanes_table', 1),
(5, '2018_09_06_061451_create_vehicles_table', 1),
(6, '2018_09_06_061550_create_crossings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signals`
--

CREATE TABLE `signals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signals`
--

INSERT INTO `signals` (`id`, `name`, `town_id`, `created_at`, `updated_at`) VALUES
(1, 's1', NULL, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(2, 's2', NULL, '2018-09-05 18:30:00', '2018-09-05 19:39:02'),
(3, 's3', NULL, '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(4, 's4', NULL, '2018-09-05 18:30:00', '2018-09-05 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `type`, `model`, `registration_no`, `created_at`, `updated_at`) VALUES
(1, 'two wheeler', 'M4MXsGhx7qsP1eSVe', 'KA01 1001', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(2, 'two wheeler', '1IABZu45pBvC9Hopv', 'CG01 1002', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(3, 'two wheeler', 'cqXUfuwJj9OPxzAr2', 'MH01 1003', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(4, 'two wheeler', '3snV7o1L6EDBDVr9I', 'UP01 1004', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(5, 'two wheeler', '33hPwgzR4kQ5gnkb9', 'KA19 1005', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(6, 'two wheeler', '4fmMgmGfix68NEwf3', 'CG19 1006', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(7, 'two wheeler', 'aPPwHg9ht3dW77B60', 'MH19 1007', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(8, 'two wheeler', 'y0ENdLv6IKpC8zs1W', 'UP19 1008', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(9, 'two wheeler', 'WrwmhKKOIAhOxmo0h', 'KA18 1009', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(10, 'two wheeler', 'Iq6xk6qaBR4EEcAmS', 'CG18 1010', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(11, 'three wheeler', 'BNc1hZMri81DZe8nW', 'MH18 2001', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(12, 'three wheeler', 'LtVMMUnZVVFhjPb6j', 'UP18 2002', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(13, 'three wheeler', 'pKRJfIdhTp8misUac', 'KA17 2003', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(14, 'three wheeler', '08oAeDRpJxDdE3hbg', 'CG17 2004', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(15, 'three wheeler', 'ym0mdQvcU65p4mSoS', 'MH17 2005', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(16, 'three wheeler', 'jeS8HBHkmyYQ9YtmE', 'UP17 2006', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(17, 'three wheeler', 'TikXRND6v5Ulo8AXc', 'KA16 2007', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(18, 'three wheeler', 'ORMTtVkc3wdCeebgJ', 'CG16 2008', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(19, 'three wheeler', 'IH2XQm2tmbAOIFWnJ', 'MH16 2009', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(20, 'three wheeler', 'B9pL8BFaLwQbOTKDg', 'UP16 2010', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(21, 'four wheeler', '5AiIdeGTC2CF7Gc2w', 'KA15 3001', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(22, 'four wheeler', 'vThlNEoHX4zRdZfE8', 'CG15 3002', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(23, 'four wheeler', 'Wxd2tQ0RP4Vxn7tTu', 'MH15 3003', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(24, 'four wheeler', '7y3MHiIrv2i4SwuIx', 'UP15 3004', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(25, 'four wheeler', 'QKo5257KSi4m2gDPX', 'KA20 3005', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(26, 'four wheeler', '', 'KA01 3006', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(27, 'four wheeler', 'kBadam7KtxcAaOSvp', 'KA01 3007', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(28, 'four wheeler', 'SUHv1tSBAw4sVzeNT', 'KA01 3008', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(29, 'four wheeler', 'TwzEOB9pFVRNllNjn', 'KA01 3009', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(30, 'four wheeler', '0WeymuyRI6sE3dYNJ', 'KA01 3010', '2018-09-05 18:30:00', '2018-09-05 18:30:00'),
(41, 'fsfasd', 'fasfawd', '001', NULL, NULL),
(42, 'rwrew', 'wewdq', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crossings`
--
ALTER TABLE `crossings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lanes`
--
ALTER TABLE `lanes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `signals`
--
ALTER TABLE `signals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crossings`
--
ALTER TABLE `crossings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `lanes`
--
ALTER TABLE `lanes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `signals`
--
ALTER TABLE `signals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
