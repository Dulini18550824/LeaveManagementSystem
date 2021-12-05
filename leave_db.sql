-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2021 at 12:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leave_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_uploads`
--

CREATE TABLE `file_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_uploads`
--

INSERT INTO `file_uploads` (`id`, `leave_id`, `file_name`, `location`, `created_at`, `updated_at`) VALUES
(1, 3, '1636156035220945837.pdf', '/uploads/1636156035220945837.pdf', '2021-11-05 18:17:15', '2021-11-05 18:17:15'),
(2, 7, '16361807691815400261.pdf', '/uploads/16361807691815400261.pdf', '2021-11-06 01:09:29', '2021-11-06 01:09:29'),
(3, 12, '1636182112234359836.pdf', '/uploads/1636182112234359836.pdf', '2021-11-06 01:31:52', '2021-11-06 01:31:52'),
(4, 34, '1638171292266026893.pdf', '/uploads/1638171292266026893.pdf', '2021-11-29 02:04:52', '2021-11-29 02:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `name`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Thai Pongal Day', '2021-01-14', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(2, 'Duruthu Poya Day', '2021-01-28', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(3, 'National Day', '2021-02-04', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(4, 'Navam Poya Day', '2021-02-26', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(5, 'Mahasivarathri Day', '2021-03-11', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(6, 'Madin Poya Day', '2021-03-28', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(7, 'Good Friday', '2021-04-02', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(8, 'New Year Eve', '2021-04-13', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(9, 'New Year', '2021-04-14', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(10, 'Bak Poya Day', '2021-04-26', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(11, 'Labour Day', '2021-05-01', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(12, 'Id-Ul-Fitr', '2021-05-14', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(13, 'Wesak Poya Day', '2021-05-26', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(14, 'Wesak Poya Holiday', '2021-05-27', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(15, 'Poson Poya Day', '2021-06-24', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(16, 'Idul Adha', '2021-07-21', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(17, 'Esala Poya Day', '2021-07-23', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(18, 'Nikini Poya Day', '2021-08-22', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(19, 'Binara Poya Day', '2021-09-20', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(20, 'Milad-Un-Nabi', '2021-10-19', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(21, 'Vap Poya Day', '2021-10-20', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(22, 'Deepavali Festival day', '2021-11-04', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(23, 'Ill Poya Day', '2021-11-18', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(24, 'Unduvap Poya Day', '2021-12-18', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(25, 'Christmas Day', '2021-12-25', '2021-11-05 18:02:29', '2021-11-05 18:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `leave_type` tinyint(4) NOT NULL,
  `no_of_days` double(8,1) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acting_user_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `approved_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `user_id`, `leave_type`, `no_of_days`, `reason`, `start_date`, `end_date`, `time_from`, `time_to`, `file_upload`, `acting_user_id`, `status`, `approved_at`, `created_at`, `updated_at`) VALUES
(1, 4, 3, NULL, 'Personal', '2021-11-08 00:00:00', '2021-11-08 00:00:00', '08:30:00', '10:00:00', NULL, NULL, 1, '2021-11-05 23:48:36', '2021-11-05 18:12:55', '2021-11-05 18:18:36'),
(2, 4, 4, 1.0, 'Duty Leave', '2021-11-09 00:00:00', '2021-11-10 00:00:00', NULL, NULL, NULL, NULL, 1, '2021-11-05 23:48:56', '2021-11-05 18:15:10', '2021-11-05 18:18:56'),
(3, 4, 5, 3.0, 'Personal', '2021-11-22 00:00:00', '2021-11-25 00:00:00', NULL, NULL, '/uploads/1636156035.pdf', NULL, 1, '2021-11-05 23:55:34', '2021-11-05 18:17:15', '2021-11-05 18:25:34'),
(4, 5, 3, NULL, 'Personal', '2021-11-08 00:00:00', '2021-11-08 00:00:00', '08:30:00', '10:00:00', NULL, NULL, 1, '2021-11-06 06:33:45', '2021-11-06 01:03:36', '2021-11-06 01:03:45'),
(5, 5, 1, 1.0, 'Personal', '2021-11-17 00:00:00', '2021-11-19 00:00:00', NULL, NULL, NULL, 4, 1, '2021-11-06 06:35:29', '2021-11-06 01:05:14', '2021-11-06 01:05:29'),
(6, 5, 4, 1.0, 'Duty Leave', '2021-12-20 00:00:00', '2021-12-21 00:00:00', NULL, NULL, NULL, NULL, 1, '2021-11-06 06:37:31', '2021-11-06 01:07:23', '2021-11-06 01:07:31'),
(7, 5, 5, 9.0, 'Study Leave', '2021-12-20 00:00:00', '2021-12-31 00:00:00', NULL, NULL, '/uploads/1636180769.pdf', NULL, 1, '2021-11-06 06:44:13', '2021-11-06 01:09:29', '2021-11-06 01:14:13'),
(8, 4, 1, 1.0, 'Personal', '2021-11-24 00:00:00', '2021-11-25 00:00:00', NULL, NULL, NULL, 5, 1, '2021-11-06 06:49:13', '2021-11-06 01:18:44', '2021-11-06 01:19:13'),
(9, 9, 3, NULL, 'Personal', '2021-11-30 00:00:00', '2021-11-30 00:00:00', '08:00:00', '09:30:00', NULL, NULL, 1, '2021-11-06 07:02:12', '2021-11-06 01:30:20', '2021-11-06 01:32:12'),
(10, 9, 1, 1.0, 'Personal', '2021-11-25 00:00:00', '2021-11-26 00:00:00', NULL, NULL, NULL, 8, 1, '2021-11-06 07:02:21', '2021-11-06 01:30:56', '2021-11-06 01:32:21'),
(11, 9, 4, 1.0, 'Duty Leave', '2021-12-28 00:00:00', '2021-12-29 00:00:00', NULL, NULL, NULL, NULL, 1, '2021-11-06 07:02:29', '2021-11-06 01:31:18', '2021-11-06 01:32:29'),
(12, 9, 5, 4.0, 'Study Leave', '2021-12-20 00:00:00', '2021-12-24 00:00:00', NULL, NULL, '/uploads/1636182112.pdf', NULL, 1, '2021-11-06 07:02:56', '2021-11-06 01:31:52', '2021-11-06 01:32:56'),
(13, 9, 1, 7.0, 'Personal', '2021-11-22 00:00:00', '2021-12-01 00:00:00', NULL, NULL, '/uploads/1636188115.pdf', 7, 1, '2021-11-06 08:42:11', '2021-11-06 03:11:55', '2021-11-06 03:12:11'),
(14, 5, 1, 8.0, 'Personal', '2021-12-13 00:00:00', '2021-12-23 00:00:00', NULL, NULL, '/uploads/1636188275.pdf', 6, 1, '2021-11-06 08:44:48', '2021-11-06 03:14:35', '2021-11-06 03:14:48'),
(15, 4, 1, 7.0, 'Personal', '2021-12-06 00:00:00', '2021-12-15 00:00:00', NULL, NULL, '/uploads/1636188422.pdf', 6, 1, '2021-11-06 08:47:11', '2021-11-06 03:17:02', '2021-11-06 03:17:11'),
(19, 7, 1, 2.0, 'Personal', '2021-11-08 00:00:00', '2021-11-10 00:00:00', NULL, NULL, NULL, 8, 2, NULL, '2021-11-06 05:35:54', '2021-11-29 02:05:59'),
(20, 7, 1, 2.0, 'Personal', '2021-11-09 00:00:00', '2021-11-11 00:00:00', NULL, NULL, NULL, 8, 2, NULL, '2021-11-06 05:36:20', '2021-11-29 02:06:00'),
(21, 15, 1, 2.0, 'Personal', '2021-11-08 00:00:00', '2021-11-10 00:00:00', NULL, NULL, NULL, 8, 2, NULL, '2021-11-06 05:45:32', '2021-11-29 02:06:15'),
(22, 15, 1, 5.0, 'Personal', '2021-11-22 00:00:00', '2021-11-29 00:00:00', NULL, NULL, '/uploads/1636197403.pdf', 7, 1, '2021-11-06 11:17:07', '2021-11-06 05:46:43', '2021-11-06 05:47:07'),
(23, 15, 1, 3.0, 'Personal', '2021-11-17 00:00:00', '2021-11-23 00:00:00', NULL, NULL, NULL, 7, 2, NULL, '2021-11-06 05:47:44', '2021-11-29 02:06:20'),
(24, 15, 1, 4.0, 'Personal', '2021-11-15 00:00:00', '2021-11-22 00:00:00', NULL, NULL, '/uploads/1636197542.pdf', 7, 2, NULL, '2021-11-06 05:49:02', '2021-11-29 02:06:32'),
(25, 15, 1, 2.0, 'Personal', '2021-11-22 00:00:00', '2021-11-24 00:00:00', NULL, NULL, NULL, 7, 2, NULL, '2021-11-06 05:58:46', '2021-11-06 06:06:52'),
(34, 4, 5, 11.0, 'Study Purpose', '2021-11-30 00:00:00', '2021-12-15 00:00:00', NULL, NULL, '/uploads/1638171292.pdf', NULL, 2, NULL, '2021-11-29 02:04:52', '2021-12-05 05:43:35'),
(35, 4, 1, 1.0, 'Personal', '2021-12-20 00:00:00', '2021-12-21 00:00:00', NULL, NULL, NULL, 6, 2, NULL, '2021-12-05 02:10:33', '2021-12-05 05:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Casual', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(2, 'Vacation', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(3, 'Short', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(4, 'Other', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(5, 'Special', '2021-11-05 18:02:29', '2021-11-05 18:02:29');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_18_061926_create_leaves_table', 1),
(5, '2021_05_29_151928_create_user_leaves_table', 1),
(6, '2021_05_29_155948_create_leave_types_table', 1),
(7, '2021_06_17_111842_create_teams_table', 1),
(8, '2021_07_09_143713_create_file_uploads_table', 1),
(9, '2021_09_01_183125_create_holidays_table', 1),
(10, '2021_10_31_064540_add_is_verified_to_users_table', 1);

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
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Software Development', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(2, 'Web Development', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(3, 'IT Infrastructure & Network', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(4, 'Instructors', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(5, 'IT Officers', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(6, 'AV Officers', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(7, 'Clarical', '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(8, 'Other', '2021-11-05 18:02:29', '2021-11-05 18:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL,
  `epf_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` int(11) NOT NULL,
  `first_appointment` date DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL,
  `work_from` time DEFAULT NULL,
  `work_to` time DEFAULT NULL,
  `is_acting` tinyint(4) NOT NULL DEFAULT 0,
  `is_verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `epf_no`, `designation`, `team_id`, `first_appointment`, `mobile_no`, `work_from`, `work_to`, `is_acting`, `is_verified`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'HOD', 'hod@mail.com', NULL, '$2y$10$0M0b5Swj9tyJNH9hNDiUCOzYJhKHnxfsKDZxEgAYcopCyDXZdQc4y', 1, '00000000', 'HOD', 0, NULL, NULL, NULL, NULL, 1, 'true', NULL, '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(2, 'Admin', 'admin@mail.com', NULL, '$2y$10$nrHqMnqVgoR.5JBy2Gu.ie8/iUvm0XPEUVQlpsi3zDbpEWrwP2qEO', 0, '00000000', 'ADMIN', 0, NULL, NULL, NULL, NULL, 0, 'true', NULL, '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(3, 'Registar', 'registar@mail.com', NULL, '$2y$10$.78r86IvNABmJXhfnmoROuDZg1Qi3MccLhwz9/ySqDT2gVzXF4oOa', 4, '00000000', 'REGISTAR', 0, NULL, NULL, NULL, NULL, 0, 'true', NULL, '2021-11-05 18:02:29', '2021-11-05 18:02:29'),
(4, 'Roshana Senevirathne', 'roshana@mail.com', NULL, '$2y$10$5zSAvAy5s7498Gx31MgN3u/zO6pydy1iJI2VQJa0Vp1t5oHekrmdi', 3, '1744', 'Software Engineer', 1, '2012-01-01', 774534555, '08:30:00', '16:15:00', 0, 'true', NULL, '2021-11-05 18:10:16', '2021-12-05 02:05:07'),
(5, 'Suwantha Gunasekara', 'suwantha@mail.com', NULL, '$2y$10$SEIhzLyIyBn5Meu9buNv.OzALJT3UV5/SW1lsSOekgTC8NXGuSrLW', 3, '1567', 'Software Engineer', 1, '2016-07-01', 775645333, '08:30:00', '16:15:00', 0, 'true', 'NknQsYpNpuKg447P77o7YT45FKy3sj272HCsVqO1QLb75C50bmKfd1y6nqK0', '2021-11-06 01:01:52', '2021-11-06 01:02:15'),
(6, 'Pasindu Panditharathna', 'pasindu@mail.com', NULL, '$2y$10$OKylRVxU0TdQqLqpz2yEcOnO0fBT/JI1xzO.VJkFo5ifXUN9ranoG', 3, '1688', 'Software Engineer', 1, '2018-05-01', 774456545, '08:30:00', '16:15:00', 0, 'true', NULL, '2021-11-06 01:23:08', '2021-11-06 01:23:16'),
(7, 'Dulini Warnasooriya', 'dulini@mail.com', NULL, '$2y$10$SEYqjxlqAYBXBWfic44QYudpDcYVuHN1llOFHaJfd2Qa7.rZub1pK', 3, '1784', 'Instructor', 4, '2016-11-02', 776566345, '08:00:00', '14:30:00', 0, 'true', NULL, '2021-11-06 01:25:15', '2021-11-06 01:29:34'),
(8, 'Anuradha Rupasinghe', 'anu@mail.com', NULL, '$2y$10$FILtAkZDKzwEfVPXv8lpLeV2rvPpYxTCzijCEVXBxRJxAKtvoMCPW', 3, '1689', 'Instructor', 4, '2017-11-30', 774565444, '08:00:00', '14:30:00', 0, 'true', NULL, '2021-11-06 01:27:00', '2021-11-06 01:29:36'),
(9, 'Buddhika Perera', 'buddhi@mail.com', NULL, '$2y$10$lshlpk7tojuAKSvmUvfyJ.URN.Li9aumKMiCW22NXPUSYFwErTC4.', 3, '1677', 'Instructor', 4, '2016-12-28', 774566567, '08:00:00', '14:30:00', 0, 'true', 'WE99962jYWCOI9PtyjeLBsYEm3HF8z6Iy2FACKu71CoNVOoN7g82e5uG8XUr', '2021-11-06 01:28:47', '2021-11-06 01:29:40'),
(11, 'Yasasi Pathinayake', 'yasasi@mail.com', NULL, '$2y$10$PS1Cc6QPvLEqaCt.akzqWePujER0marGxIJ2LuKHFOkJsPYm5VSGG', 3, '3455', 'IT Officer', 5, '2021-06-01', 775644543, '08:30:00', '16:15:00', 0, 'false', NULL, '2021-11-06 01:53:23', '2021-11-06 01:53:23'),
(14, 'Aruni', 'aruni@mail.com', NULL, '$2y$10$cbZTrDlFUsTljsgPOfxZKuwPfE8HKol2W6olPWiogDwtZKuGvfOT2', 0, '1455', 'AV Officer', 6, '2015-02-02', 773455676, '08:30:00', '16:15:00', 0, 'true', NULL, '2021-11-06 04:54:41', '2021-11-06 04:54:41'),
(15, 'Pavithra', 'pavi@mail.com', NULL, '$2y$10$ZJ.lotTaCRY3pJRT5urFPuhmWGvmgnsd/GIg3WA3FBWoe12a.JPVq', 3, '2233', 'Instructor', 4, '2017-04-03', 775677656, '08:00:00', '14:30:00', 0, 'true', NULL, '2021-11-06 05:44:48', '2021-11-06 05:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_leaves`
--

CREATE TABLE `user_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_type` tinyint(4) NOT NULL,
  `count` double(8,1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_leaves`
--

INSERT INTO `user_leaves` (`id`, `user_id`, `year`, `month`, `leave_type`, `count`, `created_at`, `updated_at`) VALUES
(1, 4, 2021, '11', 3, 1.0, NULL, NULL),
(2, 4, 2021, NULL, 4, 1.0, NULL, NULL),
(3, 4, 2021, NULL, 5, 3.0, NULL, NULL),
(4, 5, 2021, '11', 3, 1.0, NULL, NULL),
(5, 5, 2021, '11', 1, 7.0, '2021-11-06 01:05:29', '2021-11-06 03:14:48'),
(6, 5, 2021, NULL, 4, 1.0, NULL, NULL),
(7, 5, 2021, NULL, 5, 9.0, NULL, NULL),
(8, 4, 2021, '11', 1, 7.0, '2021-11-06 01:19:13', '2021-11-06 03:17:11'),
(9, 9, 2021, '11', 3, 1.0, NULL, NULL),
(10, 9, 2021, '11', 1, 7.0, '2021-11-06 01:32:21', '2021-11-06 03:12:11'),
(11, 9, 2021, NULL, 4, 1.0, NULL, NULL),
(12, 9, 2021, NULL, 5, 4.0, NULL, NULL),
(13, 9, 2021, '12', 2, 1.0, '2021-11-06 03:12:11', '2021-11-06 03:12:11'),
(14, 5, 2021, '12', 2, 2.0, '2021-11-06 03:14:48', '2021-11-06 03:14:48'),
(15, 4, 2021, '12', 2, 1.0, '2021-11-06 03:17:11', '2021-11-06 03:17:11'),
(18, 15, 2021, '11', 1, 5.0, '2021-11-06 05:47:07', '2021-11-06 05:47:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_uploads`
--
ALTER TABLE `file_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_user_id_foreign` (`user_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
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
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_leaves`
--
ALTER TABLE `user_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_leaves_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_uploads`
--
ALTER TABLE `file_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_leaves`
--
ALTER TABLE `user_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_leaves`
--
ALTER TABLE `user_leaves`
  ADD CONSTRAINT `user_leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
