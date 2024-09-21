-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 21, 2024 at 05:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `driving_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_tokens`
--

CREATE TABLE `access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `authorization_code` text DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_tokens`
--

INSERT INTO `access_tokens` (`id`, `user_id`, `authorization_code`, `access_token`, `refresh_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'ti0FRD67vA9P1Rbi2CHTl6sjV83g5QUVg', 'eyJzdiI6IjAwMDAwMSIsImFsZyI6IkhTNTEyIiwidiI6IjIuMCIsImtpZCI6IjBlOTE1MGI1LTQ2NWMtNGNjOC04NDgzLWI5ZWMwMDJlOTk4MSJ9.eyJ2ZXIiOjksImF1aWQiOiI1YjEyZjc2YWM3MTA1MmVmZTgzMjExN2ZlMTQ5Zjk1ZiIsImNvZGUiOiJ0aTBGUkQ2N3ZBOVAxUmJpMkNIVGw2c2pWODNnNVFVVmciLCJpc3MiOiJ6bTpjaWQ6b0ZlZF9lX3pRaTZ3RTgxODNYUkkwQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJmZGR2cUNwZFNyZWEtRkM2d3V4YnBBIiwibmJmIjoxNjkxNDgxMzA3LCJleHAiOjE2OTE0ODQ5MDcsImlhdCI6MTY5MTQ4MTMwNywiYWlkIjoiaTFaUGd1RnRUTC1Namo5VUtVRnZfUSJ9.7RfVwHc2KGZAIwQgltGnjYbc57KZCR_yBksqxLRcgkrJJ_B47lRoE33YNcGMRq7A0fVm62VSNq3V-ZqpUSbCbg', NULL, '2023-07-31 09:02:16', '2023-08-08 02:25:07');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `mobile`, `email`, `password`, `role_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Deepu(Admin)', 1, 'admin@demo.com', '1', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alert_types`
--

CREATE TABLE `alert_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_types`
--

INSERT INTO `alert_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chat', 1, NULL, NULL),
(2, 'Trial Class', 1, NULL, NULL),
(3, 'Assignment', 1, NULL, NULL),
(4, 'Quiz/Online Test', 1, NULL, NULL),
(5, 'Feedback', 1, NULL, NULL),
(6, 'Enrollment', 1, NULL, NULL),
(7, 'Slot Booking', 1, NULL, NULL),
(8, 'Tutor Registration', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assign_tests`
--

CREATE TABLE `assign_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `is_attempted` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_tests`
--

INSERT INTO `assign_tests` (`id`, `test_id`, `student_id`, `tutor_id`, `class_id`, `subject_id`, `topic_id`, `start_time`, `end_time`, `status`, `is_attempted`, `is_active`, `created_at`, `updated_at`) VALUES
(8, 5, 1, 1, NULL, NULL, NULL, '2023-12-26T18:54', '2023-12-26T18:54', 1, 1, 1, '2023-12-26 07:54:54', '2023-12-26 07:55:55'),
(9, 2, 1, 1, NULL, NULL, NULL, '2023-12-26T19:19', '2023-12-29T19:19', 1, 1, 1, '2023-12-26 08:20:02', '2023-12-26 08:53:29'),
(10, 1, 1, 1, NULL, NULL, NULL, '2023-12-26T19:20', '2023-12-29T19:20', 1, 1, 1, '2023-12-26 08:20:31', '2023-12-26 08:37:52'),
(11, 6, 1, 1, NULL, NULL, NULL, '2023-12-27T12:55', '2023-12-29T12:55', 1, 1, 1, '2023-12-27 01:55:42', '2023-12-27 01:56:44'),
(12, 7, 1, 1, NULL, NULL, NULL, '2023-12-27T14:28', '2023-12-29T14:28', 1, 1, 1, '2023-12-27 03:28:53', '2023-12-27 03:51:07'),
(13, 8, 1, 1, NULL, NULL, NULL, '2024-02-23T14:08', '2024-02-24T14:08', 1, 1, 1, '2024-02-23 03:08:13', '2024-02-23 03:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `class_date_time` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tutor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `name`, `description`, `subject_id`, `is_active`, `created_at`, `updated_at`, `tutor_id`) VALUES
(1, 'Batch 1', 'Test Description', 1, 1, NULL, '2023-09-06 05:14:07', 1),
(2, 'Batch 2', NULL, 1, 0, NULL, '2023-09-20 02:25:09', 1),
(3, 'Batch 3', NULL, 1, 0, NULL, '2023-07-17 01:33:53', 2),
(4, 'Batch 4', NULL, 1, 0, NULL, '2023-07-17 01:31:15', 2),
(5, 'Batch - Computer', 'Test Description', 6, 1, '2023-07-17 00:42:52', '2023-07-17 00:43:28', 2),
(6, 'Test Batch Computerr', NULL, 6, 0, '2023-07-17 03:06:53', '2023-07-17 03:07:01', 1),
(7, 'Ali batch05', NULL, 1, 1, '2023-09-25 12:57:32', '2023-09-25 12:59:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `batchstudentmappings`
--

CREATE TABLE `batchstudentmappings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` int(11) NOT NULL,
  `student_data` text NOT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batchstudentmappings`
--

INSERT INTO `batchstudentmappings` (`id`, `batch_id`, `student_data`, `tutor_id`, `created_at`, `updated_at`) VALUES
(1, 4, '[\"1\",\"3\"]', 1, '2023-07-17 07:51:04', '2023-07-18 00:22:05'),
(6, 1, '[\"1\",\"2\",\"3\"]', 1, '2023-07-18 00:22:20', '2023-07-18 02:50:23'),
(7, 3, '[\"1\",\"3\"]', 1, '2023-07-18 02:51:06', '2023-07-18 02:59:48'),
(8, 7, '[\"1\",\"4\"]', 1, '2023-09-25 12:58:17', '2023-09-25 12:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0 COMMENT '0=No,1=Yes',
  `is_active` int(11) NOT NULL DEFAULT 1,
  `published_by` varchar(255) DEFAULT NULL COMMENT 'Student/Tutor/Admin',
  `published_by_id` int(11) DEFAULT NULL COMMENT 'Student/Tutor/Admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `description`, `image`, `tags`, `is_featured`, `is_active`, `published_by`, `published_by_id`, `created_at`, `updated_at`) VALUES
(1, 'Tips and Tricks to design a revision timetable', 'Education is the best investment one can make in their children’s lives...', 'blog1.jpg', 'Education', 0, 1, 'Tutor', NULL, NULL, NULL),
(2, 'Blog Test 2', 'This is a blog test description ...', 'blog2.jpg', NULL, 1, 1, 'Student', NULL, NULL, NULL),
(3, 'Blog Test 3', 'Test blog description for blog 3', 'blog3.jpg', NULL, 1, 1, 'Admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `from_role_id` int(11) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `to_role_id` int(11) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `from_id`, `from_role_id`, `to_id`, `to_role_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`, `deleted_at`) VALUES
(109, 1, 2, 1, 3, 'hey', NULL, 0, '2024-03-20 09:55:53', '2024-03-20 09:55:53', NULL),
(110, 1, 2, 1, 3, 'hello', NULL, 0, '2024-03-20 09:56:09', '2024-03-20 09:56:09', NULL),
(111, 1, 2, 1, 3, 'dd', NULL, 0, '2024-03-20 09:56:19', '2024-03-20 09:56:19', NULL),
(112, 1, 2, 1, 3, 'dfg', NULL, 0, '2024-03-20 09:56:23', '2024-03-20 09:56:23', NULL),
(113, 1, 2, 1, 3, 'dfgdfgdfg', NULL, 0, '2024-03-20 09:56:31', '2024-03-20 09:56:31', NULL),
(114, 1, 2, 1, 3, 'dfgdfdfgdfgdfg', NULL, 0, '2024-03-20 09:56:35', '2024-03-20 09:56:35', NULL),
(115, 1, 2, 1, 3, 'dfgdfgfgdfgdfg', NULL, 0, '2024-03-20 09:56:47', '2024-03-20 09:56:47', NULL),
(116, 1, 3, 1, 2, 'hi', NULL, 0, '2024-03-20 10:22:18', '2024-03-20 10:22:18', NULL),
(117, 1, 3, 1, 2, 'hello', NULL, 0, '2024-03-20 10:25:01', '2024-03-20 10:25:01', NULL),
(118, 1, 2, 1, 3, 'Hello Deepu', NULL, 0, '2024-03-20 10:25:41', '2024-03-20 10:25:41', NULL),
(119, 1, 3, 1, 2, 'Hello jancy', NULL, 0, '2024-03-20 10:26:16', '2024-03-20 10:26:16', NULL),
(120, 1, 2, 1, 3, 'Hi Deepesh', NULL, 0, '2024-03-20 10:26:30', '2024-03-20 10:26:30', NULL),
(121, 1, 2, 1, 3, 'hey', NULL, 0, '2024-03-20 10:27:51', '2024-03-20 10:27:51', NULL),
(122, 1, 2, 1, 3, 'hello deepesh bro', NULL, 0, '2024-03-20 11:05:13', '2024-03-20 11:05:13', NULL),
(123, 1, 3, 1, 2, 'Hello Jancy', NULL, 0, '2024-03-20 11:05:26', '2024-03-20 11:05:26', NULL),
(124, 1, 2, 1, 3, 'heloo', NULL, 0, '2024-03-20 11:10:50', '2024-03-20 11:10:50', NULL),
(125, 1, 3, 1, 2, 'ki bheloo', NULL, 0, '2024-03-20 11:11:00', '2024-03-20 11:11:00', NULL),
(126, 1, 2, 1, 3, 'na maalum humra', NULL, 0, '2024-03-20 11:12:33', '2024-03-20 11:12:33', NULL),
(127, 1, 3, 1, 2, 'kahe na maalum', NULL, 0, '2024-03-20 11:12:40', '2024-03-20 11:12:40', NULL),
(128, 1, 3, 1, 2, 'vnmn', NULL, 0, '2024-03-20 11:12:58', '2024-03-20 11:12:58', NULL),
(129, 1, 2, 13, 3, 'hey', NULL, 0, '2024-03-20 11:30:40', '2024-03-20 11:30:40', NULL),
(130, 1, 2, 13, 3, 'hey', NULL, 0, '2024-03-20 11:33:08', '2024-03-20 11:33:08', NULL),
(131, 13, 3, 1, 2, 'hello', NULL, 0, '2024-03-20 11:33:20', '2024-03-20 11:33:20', NULL),
(132, 13, 3, 1, 2, 'ji', NULL, 0, '2024-03-20 11:33:51', '2024-03-20 11:33:51', NULL),
(133, 13, 3, 1, 2, 'hi', NULL, 0, '2024-03-20 12:09:25', '2024-03-20 12:09:25', NULL),
(134, 1, 2, 13, 3, 'hi', NULL, 0, '2024-03-20 12:11:31', '2024-03-20 12:11:31', NULL),
(135, 8, 2, 13, 3, 'hey', NULL, 0, '2024-03-20 12:46:30', '2024-03-20 12:46:30', NULL),
(136, 13, 3, 8, 2, 'yes', NULL, 0, '2024-03-20 12:46:50', '2024-03-20 12:46:50', NULL),
(137, 8, 2, 1, 1, 'hey', NULL, 0, '2024-03-20 12:49:50', '2024-03-20 12:49:50', NULL),
(138, 1, 1, 8, 2, 'hello', NULL, 0, '2024-03-20 12:50:03', '2024-03-20 12:50:03', NULL),
(139, 13, 3, 8, 2, 'deepesh here', NULL, 0, '2024-03-20 13:39:41', '2024-03-20 13:39:41', NULL),
(140, 1, 1, 8, 2, 'hey', NULL, 0, '2024-03-20 13:51:13', '2024-03-20 13:51:13', NULL),
(141, 1, 1, 8, 2, 'hello', NULL, 0, '2024-03-20 13:51:27', '2024-03-20 13:51:27', NULL),
(142, 8, 2, 1, 1, 'hi', NULL, 0, '2024-03-20 13:51:58', '2024-03-20 13:51:58', NULL),
(143, 1, 1, 8, 2, 'yes', NULL, 0, '2024-03-20 13:52:17', '2024-03-20 13:52:17', NULL),
(144, 13, 3, 1, 1, 'hey admin', NULL, 0, '2024-03-20 13:57:49', '2024-03-20 13:57:49', NULL),
(145, 1, 1, 13, 3, 'Ye Team', NULL, 0, '2024-03-20 13:58:11', '2024-03-20 13:58:11', NULL),
(146, 1, 1, 8, 2, 'hello', NULL, 0, '2024-03-20 13:58:55', '2024-03-20 13:58:55', NULL),
(147, 8, 2, 1, 1, 'yup', NULL, 0, '2024-03-20 13:59:12', '2024-03-20 13:59:12', NULL),
(148, 1, 1, 13, 3, 'hi', NULL, 0, '2024-03-20 14:10:16', '2024-03-20 14:10:16', NULL),
(149, 13, 3, 1, 1, 'hello ji', NULL, 0, '2024-03-20 14:10:29', '2024-03-20 14:10:29', NULL),
(150, 13, 3, 1, 1, 'tes message', NULL, 0, '2024-03-20 14:14:15', '2024-03-20 14:14:15', NULL),
(151, 1, 1, 13, 3, 'test success', NULL, 0, '2024-03-20 14:14:24', '2024-03-20 14:14:24', NULL),
(152, 1, 1, 8, 2, 'hey TT', NULL, 0, '2024-03-20 14:17:18', '2024-03-20 14:17:18', NULL),
(153, 8, 2, 1, 1, 'Yes Admin', NULL, 0, '2024-03-20 14:17:34', '2024-03-20 14:17:34', NULL),
(154, 1, 3, 1, 1, 'hi', NULL, 0, '2024-09-10 02:56:39', '2024-09-10 02:56:39', NULL),
(155, 1, 3, 1, 1, 'hi', NULL, 0, '2024-09-10 02:56:45', '2024-09-10 02:56:45', NULL),
(156, 1, 3, 2, 2, 'hi', NULL, 0, '2024-09-10 04:02:55', '2024-09-10 04:02:55', NULL),
(157, 1, 3, 2, 2, 'hi', NULL, 0, '2024-09-10 04:03:00', '2024-09-10 04:03:00', NULL),
(158, 1, 3, 2, 2, 'hello', NULL, 0, '2024-09-10 04:03:11', '2024-09-10 04:03:11', NULL),
(159, 1, 3, 2, 2, 'whats up', NULL, 0, '2024-09-10 04:03:30', '2024-09-10 04:03:30', NULL),
(160, 20, 2, 1, 1, 'hey', NULL, 0, '2024-09-19 10:13:57', '2024-09-19 10:13:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `description`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'London', 'London', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'Westminster', 'Westminster', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(3, 'Birmingham', 'Birmingham', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(4, 'Leeds', 'Leeds', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `classschedules`
--

CREATE TABLE `classschedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `class_link` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classschedules`
--

INSERT INTO `classschedules` (`id`, `batch_id`, `topic_id`, `tutor_id`, `class_link`, `start_time`, `end_time`, `status`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'www.google.com', '2023-07-27T18:00', '2023-07-27T19:00', 1, 1, '2023-07-27 06:53:08', '2023-07-27 06:53:08'),
(2, 3, 2, 1, 'www.google.com', '2023-07-27T17:58', '2023-07-28T17:58', 1, 1, '2023-07-27 06:58:14', '2023-07-27 06:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` varchar(255) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'India', '1', NULL, NULL),
(2, 'USA', '1', NULL, NULL),
(3, 'UK', '1', NULL, NULL),
(4, 'Pakistan', '1', NULL, NULL),
(5, 'Qatar', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `democlasses`
--

CREATE TABLE `democlasses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `slot_1` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `slot_2` timestamp NULL DEFAULT NULL,
  `slot_3` timestamp NULL DEFAULT NULL,
  `slot_confirmed` timestamp NULL DEFAULT NULL,
  `slot_confirmed_at` timestamp NULL DEFAULT NULL,
  `slot_confirmed_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `demo_link` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `democlasses`
--

INSERT INTO `democlasses` (`id`, `student_id`, `tutor_id`, `subject_id`, `slot_1`, `slot_2`, `slot_3`, `slot_confirmed`, `slot_confirmed_at`, `slot_confirmed_by`, `status`, `created_at`, `updated_at`, `demo_link`, `remarks`) VALUES
(27, 1, 13, 6, '2023-12-31 08:55:00', '2024-01-01 08:55:00', '2024-01-02 08:56:00', NULL, NULL, NULL, 1, '2023-12-31 03:26:05', '2023-12-31 03:26:05', NULL, NULL),
(28, 17, 13, 6, '2023-12-31 08:58:46', '2023-12-31 08:57:00', '2023-12-31 08:57:00', NULL, NULL, NULL, 5, '2023-12-31 03:27:54', '2023-12-31 03:28:46', NULL, NULL),
(29, 1, 1, 1, '2024-02-23 08:04:00', '2024-03-08 08:04:00', '2024-03-05 08:04:00', NULL, NULL, NULL, 1, '2024-02-23 02:34:21', '2024-02-23 02:34:21', NULL, 'Test Data'),
(30, 1, 1, 1, '2024-02-23 08:07:00', '2024-03-02 08:07:00', '2024-03-02 08:07:00', NULL, NULL, NULL, 1, '2024-02-23 02:37:17', '2024-02-23 02:37:17', NULL, NULL),
(31, 1, 1, 1, '2024-02-23 10:32:22', '2024-03-02 08:07:00', '2024-03-02 08:07:00', NULL, NULL, NULL, 5, '2024-02-23 02:37:37', '2024-02-23 05:02:22', NULL, NULL),
(32, 1, 1, 1, '2024-02-23 10:31:20', '2024-03-02 08:23:00', '2024-03-07 08:23:00', NULL, NULL, NULL, 5, '2024-02-23 02:53:35', '2024-02-23 05:01:20', NULL, NULL),
(33, 1, 6, 4, '2024-06-06 13:25:00', '2024-06-07 13:25:00', '2024-06-14 13:25:00', NULL, NULL, NULL, 1, '2024-06-06 07:57:40', '2024-06-06 07:57:40', NULL, NULL);

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
-- Table structure for table `learningcontents`
--

CREATE TABLE `learningcontents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `content_link` varchar(255) DEFAULT NULL,
  `content_description` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `video_description` varchar(255) DEFAULT NULL,
  `blog_link` varchar(255) DEFAULT NULL,
  `blog_description` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `learningcontents`
--

INSERT INTO `learningcontents` (`id`, `class_id`, `subject_id`, `topic_id`, `content_link`, `content_description`, `video_link`, `video_description`, `blog_link`, `blog_description`, `is_active`, `created_at`, `updated_at`, `batch_id`) VALUES
(1, 10, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-15 06:02:01', '2023-09-08 00:42:33', 1),
(2, 10, 1, 2, '/private/var/folders/s7/nqvty94x6m7720txtf4879z00000gn/T/phpNaSsuD', 'Test Data', NULL, NULL, NULL, 'Test', 0, '2023-07-15 06:09:26', '2023-09-04 06:17:40', 2),
(3, 10, 1, 3, '/private/var/folders/s7/nqvty94x6m7720txtf4879z00000gn/T/phpW8d8f5', NULL, NULL, 'Test data', NULL, NULL, 1, '2023-07-15 06:12:07', '2023-07-15 06:12:07', NULL),
(4, 10, 1, 3, '/private/var/folders/s7/nqvty94x6m7720txtf4879z00000gn/T/phpvxkc9p', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-15 06:44:07', '2023-07-15 06:44:07', NULL),
(5, 10, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-07-15 06:46:53', '2023-07-15 06:46:53', NULL),
(6, 10, 6, 6, '1689423452.pdf', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-15 06:47:32', '2023-07-15 06:47:32', NULL),
(7, 10, 6, 6, '1689423703.pdf', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-15 06:51:43', '2023-07-15 08:01:08', NULL),
(8, 10, 6, 6, '1689426036.pdf', 'Test Content Description', '1689426036.mkv', 'Test Video Description', 'https://stackoverflow.com/', 'Test Blog Description', 1, '2023-07-15 07:30:36', '2023-07-17 02:19:59', NULL),
(9, 10, 6, 6, NULL, 'Test Content Description', NULL, 'Test Video Description', 'https://stackoverflow.com/', 'Test Blog Description', 1, '2023-07-15 07:31:43', '2023-07-15 07:31:43', NULL),
(10, 10, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-09-04 06:18:35', '2023-09-04 06:18:35', NULL);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2023_07_04_093649_create_studentachievements_table', 1),
(9, '2023_07_04_093658_create_studentreviews_table', 1),
(10, '2023_07_04_093711_create_classes_table', 1),
(11, '2023_07_04_093720_create_subjects_table', 1),
(12, '2023_07_04_093730_create_topics_table', 1),
(13, '2023_07_04_093751_create_teacherclassmappings_table', 1),
(15, '2023_07_04_093829_create_statuses_table', 1),
(16, '2023_07_04_094053_create_userroles_table', 1),
(17, '2023_07_04_095413_create_syllabi_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 2),
(19, '2023_07_04_093536_create_studentregistrations_table', 2),
(20, '2023_07_04_093612_create_tutorregistrations_table', 2),
(21, '2023_07_04_093820_create_democlasses_table', 3),
(25, '2023_07_04_093636_create_studentprofiles_table', 5),
(26, '2023_07_07_083313_create_tutorsubjectmappings_table', 6),
(27, '2023_07_05_125907_create_tutorprofiles_table', 7),
(28, '2023_07_07_104504_create_tutorachievements_table', 8),
(29, '2023_07_07_104512_create_tutorreviews_table', 8),
(30, '2023_07_07_120658_create_countries_table', 9),
(31, '2023_07_07_122719_add_country_id_to_tutorprofiles_table', 10),
(32, '2023_07_11_062219_add_demo_link_to_democlasses_table', 11),
(34, '2023_07_11_095154_create_paymentstudents_table', 12),
(35, '2023_07_11_095855_create_studentattendances_table', 12),
(36, '2023_07_11_095002_create_paymentdetails_table', 13),
(37, '2023_07_12_061036_add_is_active_to_classes_table', 14),
(38, '2023_07_12_061104_add_is_active_to_subjects_table', 14),
(39, '2023_07_12_061223_add_is_active_to_topics_table', 14),
(40, '2023_07_12_104801_create_admins_table', 15),
(41, '2023_07_14_114349_add_remarks_to_democlasses_table', 16),
(42, '2023_07_15_072104_add_remarks_to_paymentdetails_table', 17),
(43, '2023_07_15_103119_create_learningcontents_table', 18),
(46, '2023_07_16_064014_create_student_assignment_lists_table', 19),
(47, '2023_07_16_064053_create_student_assignments_table', 19),
(49, '2023_07_16_171930_add_batch_id_to_learningcontents_table', 20),
(51, '2023_07_16_172243_add_batch_id_to_student_assignment_lists_table', 20),
(52, '2023_07_16_172357_add_batch_id_to_teacherclassmappings_table', 20),
(53, '2023_07_16_171705_create_batches_table', 21),
(54, '2023_07_17_082523_add_tutor_id_to_batches_table', 22),
(55, '2023_07_16_172054_create_batchstudentmappings_table', 23),
(56, '2023_07_18_100320_create_questionbanks_table', 24),
(57, '2023_07_19_071327_create_online_tests_table', 25),
(58, '2023_07_25_075347_add_rate_to_tutorsubjectmappings_table', 26),
(59, '2023_07_25_094827_add_gender_to_tutorprofiles_table', 27),
(60, '2023_07_26_080612_add_class_id_to_tutorsubjectmappings_table', 28),
(61, '2023_07_27_112717_create_classschedules_table', 29),
(64, '2023_07_31_103817_create_access_tokens_table', 30),
(65, '2023_07_29_182030_create_zoom_classes_table', 31),
(66, '2023_08_04_999999_add_active_status_to_users', 32),
(67, '2023_08_04_999999_add_avatar_to_users', 32),
(68, '2023_08_04_999999_add_dark_mode_to_users', 32),
(69, '2023_08_04_999999_add_messenger_color_to_users', 32),
(72, '2023_08_04_135418_add_class_id_to_studentreviews', 33),
(77, '2023_08_04_999999_create_chatify_favorites_table', 34),
(78, '2023_08_04_999999_create_chatify_messages_table', 34),
(79, '2023_08_09_070515_add_admin_commission_to_tutorsubjectmappings', 35),
(80, '2023_08_10_072031_add_subject_mapping_id_to_teacherclassmappings', 36),
(81, '2014_10_12_200000_add_two_factor_columns_to_users_table', 37),
(82, '2022_01_08_103820_create_sessions_table', 37),
(83, '2023_08_18_084931_create_testattempteds_table', 38),
(84, '2023_08_18_084950_create_testresponssheets_table', 38),
(85, '2023_08_21_122208_modify_testattempteds', 39),
(86, '2023_09_01_163728_tutorpayments', 40),
(87, '2023_09_02_092231_add_otp_to_studentregistrations_table', 41),
(88, '2023_09_21_071727_create_attendances_table', 42),
(89, '2023_09_20_213028_create_payouts_table', 43),
(90, '2023_09_21_080826_add_recording_link_to_zoom_classes', 43),
(91, '2023_09_21_093657_add_batch_id_to_studentattendances', 44),
(93, '2023_09_25_170201_add_deleted_at_to_ch_messages_table', 45),
(94, '2023_09_28_062029_create_paymentmodes_table', 46),
(96, '2023_09_22_082836_create_studentattendances_table', 47),
(97, '2023_10_09_064144_add_tutor_id_to_studentreviews_table', 48),
(98, '2023_11_04_122456_create_subjectcategories_table', 49),
(99, '2023_11_04_123654_add_category_to_subjects', 50),
(100, '2023_12_12_105038_create_slot_bookings_table', 51),
(101, '2023_12_12_132719_add_new_column_to_slot_bookings_table', 52),
(102, '2023_12_14_094006_add_new_column_to_slot_bookings_table', 53),
(103, '2023_12_22_122639_create_assign_tests_table', 54),
(104, '2023_12_29_100906_create_my_favourites_table', 55),
(105, '2023_12_29_125133_add_student_id_to_zoom_classes', 56),
(106, '2023_12_30_093503_add_is_class_scheduled_to_slot_bookings', 57),
(111, '2024_02_20_141949_create_notifications_table', 58),
(112, '2024_02_21_140855_alert_types', 58),
(113, '2024_05_24_103833_create_blogs_table', 59),
(114, '2024_06_16_070820_make_admin_commission_nullable_in_tutorprofiles', 60),
(115, '2024_07_03_181251_change_columns_in_blogs_table', 60),
(116, '2024_09_19_165709_create_tutor_requests_table', 60);

-- --------------------------------------------------------

--
-- Table structure for table `my_favourites`
--

CREATE TABLE `my_favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 1,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_favourites`
--

INSERT INTO `my_favourites` (`id`, `student_id`, `tutor_id`, `status`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 15, 2, 1, 1, '2023-12-29 05:02:58', '2023-12-29 05:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alert_type` int(11) NOT NULL,
  `notification` text NOT NULL,
  `initiator_id` int(11) NOT NULL,
  `initiator_role` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `show_to_admin` int(11) DEFAULT 0,
  `show_to_admin_id` int(11) DEFAULT 0,
  `show_to_all_admin` int(11) DEFAULT 0,
  `show_to_tutor` int(11) DEFAULT 0,
  `show_to_tutor_id` int(11) DEFAULT 0,
  `show_to_all_tutor` int(11) DEFAULT 0,
  `show_to_student` int(11) DEFAULT 0,
  `show_to_student_id` int(11) DEFAULT 0,
  `show_to_all_student` int(11) DEFAULT 0,
  `show_to_parent` int(11) DEFAULT 0,
  `show_to_parent_id` int(11) DEFAULT 0,
  `show_to_all_parent` int(11) DEFAULT 0,
  `read_status` int(11) DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `alert_type`, `notification`, `initiator_id`, `initiator_role`, `event_id`, `show_to_admin`, `show_to_admin_id`, `show_to_all_admin`, `show_to_tutor`, `show_to_tutor_id`, `show_to_all_tutor`, `show_to_student`, `show_to_student_id`, `show_to_all_student`, `show_to_parent`, `show_to_parent_id`, `show_to_all_parent`, `read_status`, `read_at`, `created_at`, `updated_at`) VALUES
(61, 2, 'New Trial Class Scheduled By Deepesh Raj', 1, 3, 32, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-02-23 02:53:35', '2024-02-23 05:23:32'),
(62, 3, 'Assignment Submitted By Deepesh Raj', 1, 3, 6, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2024-02-23 03:03:11', '2024-02-23 03:03:11'),
(63, 3, 'Assignment Submitted By Deepesh Raj', 1, 3, 7, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-02-23 03:04:01', '2024-03-11 01:49:08'),
(64, 4, 'Test Attempted By Deepesh Raj', 1, 3, 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-02-23 03:35:00', '2024-03-11 01:49:08'),
(65, 4, 'Test Attempted By Deepesh Raj', 1, 3, 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-02-23 03:36:14', '2024-03-11 01:49:07'),
(66, 4, 'Test Attempted By Deepesh Raj', 1, 3, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-02-23 04:31:25', '2024-03-11 01:49:07'),
(67, 4, 'Deepesh Raj Enrolled for classes', 1, 3, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-02-23 04:32:12', '2024-03-11 01:49:07'),
(68, 6, 'Deepesh Raj Need your help in slot booking', 1, 3, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-02-23 04:33:19', '2024-02-23 05:23:11'),
(69, 4, 'Deepesh Raj Enrolled for classes', 1, 3, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-02-23 04:33:19', '2024-03-11 01:49:07'),
(70, 2, 'Trial Class Cancelled By Deepesh Raj', 1, 3, 32, 1, 0, 1, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-02-23 05:01:20', '2024-02-23 05:23:35'),
(71, 2, 'Trial Class Cancelled By Deepesh Raj', 1, 3, 31, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-02-23 05:02:22', '2024-02-23 05:23:07'),
(72, 1, 'he', 1, 2, 99, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-05 07:33:55', '2024-03-05 07:34:28'),
(73, 1, 'asas', 1, 2, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-05 07:34:22', '2024-03-05 07:34:27'),
(74, 1, 'hi', 1, 2, 101, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-11 01:48:37', '2024-03-11 01:48:56'),
(75, 1, 'ji', 1, 3, 102, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-11 01:49:01', '2024-03-11 01:49:07'),
(76, 1, 'hey]', 1, 3, 103, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 08:54:01', '2024-03-20 11:13:44'),
(77, 1, 'hey', 1, 2, 104, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 09:39:38', '2024-03-20 09:40:55'),
(78, 1, 'hi', 1, 3, 105, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 09:40:59', '2024-03-20 11:13:50'),
(79, 1, 'hello', 1, 2, 106, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 09:41:23', '2024-03-20 11:14:04'),
(80, 1, 'sgdsgds', 1, 3, 107, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 09:42:35', '2024-03-20 11:13:49'),
(81, 1, 'hello bro', 1, 2, 108, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 09:46:20', '2024-03-20 11:14:04'),
(82, 1, 'hey', 1, 2, 109, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 09:55:53', '2024-03-20 11:14:03'),
(83, 1, 'hello', 1, 2, 110, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 09:56:09', '2024-03-20 11:14:03'),
(84, 1, 'dd', 1, 2, 111, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 09:56:19', '2024-03-20 11:14:03'),
(85, 1, 'dfg', 1, 2, 112, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 09:56:23', '2024-03-20 11:14:03'),
(86, 1, 'dfgdfgdfg', 1, 2, 113, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 09:56:31', '2024-03-20 11:14:02'),
(87, 1, 'dfgdfdfgdfgdfg', 1, 2, 114, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 09:56:35', '2024-03-20 11:14:02'),
(88, 1, 'dfgdfgfgdfgdfg', 1, 2, 115, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 09:56:47', '2024-03-20 11:14:02'),
(89, 1, 'hi', 1, 3, 116, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 10:22:18', '2024-03-20 11:13:49'),
(90, 1, 'hello', 1, 3, 117, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 10:25:01', '2024-03-20 11:13:48'),
(91, 1, 'Hello Deepu', 1, 2, 118, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 10:25:41', '2024-03-20 11:14:02'),
(92, 1, 'Hello jancy', 1, 3, 119, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 10:26:16', '2024-03-20 11:13:48'),
(93, 1, 'Hi Deepesh', 1, 2, 120, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 10:26:30', '2024-03-20 11:14:01'),
(94, 1, 'hey', 1, 2, 121, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 10:27:51', '2024-03-20 11:14:01'),
(95, 1, 'hello deepesh bro', 1, 2, 122, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 11:05:13', '2024-03-20 11:14:01'),
(96, 1, 'Hello Jancy', 1, 3, 123, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 11:05:26', '2024-03-20 11:13:48'),
(97, 1, 'heloo', 1, 2, 124, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 11:10:50', '2024-03-20 11:14:00'),
(98, 1, 'ki bheloo', 1, 3, 125, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 11:11:00', '2024-03-20 11:13:48'),
(99, 1, 'na maalum humra', 1, 2, 126, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, NULL, '2024-03-20 11:12:33', '2024-03-20 11:13:57'),
(100, 1, 'kahe na maalum', 1, 3, 127, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 11:12:40', '2024-03-20 11:13:47'),
(101, 1, 'vnmn', 1, 3, 128, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 11:12:58', '2024-03-20 11:13:38'),
(102, 1, 'hey', 1, 2, 129, 0, 0, 0, 0, 0, 0, 1, 13, 0, 1, 13, 0, 1, NULL, '2024-03-20 11:30:40', '2024-03-20 11:30:47'),
(103, 1, 'hey', 1, 2, 130, 0, 0, 0, 0, 0, 0, 1, 13, 0, 1, 13, 0, 1, NULL, '2024-03-20 11:33:08', '2024-03-20 12:41:40'),
(104, 1, 'hello', 13, 3, 131, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 11:33:20', '2024-03-20 11:33:28'),
(105, 1, 'ji', 13, 3, 132, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 11:33:51', '2024-03-20 11:34:10'),
(106, 1, 'hi', 13, 3, 133, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 12:09:25', '2024-03-20 12:41:26'),
(107, 1, 'hi', 1, 2, 134, 0, 0, 0, 0, 0, 0, 1, 13, 0, 1, 13, 0, 0, NULL, '2024-03-20 12:11:31', '2024-03-20 12:11:31'),
(108, 1, 'hey', 8, 2, 135, 0, 0, 0, 0, 0, 0, 1, 13, 0, 1, 13, 0, 1, NULL, '2024-03-20 12:46:30', '2024-03-20 12:46:38'),
(109, 1, 'yes', 13, 3, 136, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 12:46:50', '2024-03-20 12:47:13'),
(110, 1, 'hey', 8, 2, 137, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 12:49:50', '2024-03-20 12:49:57'),
(111, 1, 'hello', 1, 1, 138, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2024-03-20 12:50:03', '2024-03-20 12:50:03'),
(112, 1, 'deepesh here', 13, 3, 139, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2024-03-20 13:39:41', '2024-03-20 13:39:41'),
(113, 1, 'hey', 1, 1, 140, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2024-03-20 13:51:13', '2024-03-20 13:51:13'),
(114, 1, 'hello', 1, 1, 141, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 13:51:27', '2024-03-20 13:51:31'),
(115, 1, 'hi', 8, 2, 142, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 13:51:58', '2024-03-20 13:52:12'),
(116, 1, 'yes', 1, 1, 143, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2024-03-20 13:52:17', '2024-03-20 13:52:17'),
(117, 1, 'hey admin', 13, 3, 144, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 13:57:49', '2024-03-20 13:58:02'),
(118, 1, 'Ye Team', 1, 1, 145, 0, 0, 0, 0, 0, 0, 1, 13, 0, 1, 13, 0, 0, NULL, '2024-03-20 13:58:11', '2024-03-20 13:58:11'),
(119, 1, 'hello', 1, 1, 146, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2024-03-20 13:58:55', '2024-03-20 13:58:55'),
(120, 1, 'yup', 8, 2, 147, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 13:59:12', '2024-03-21 04:00:49'),
(121, 1, 'hi', 1, 1, 148, 0, 0, 0, 0, 0, 0, 1, 13, 0, 1, 13, 0, 0, NULL, '2024-03-20 14:10:16', '2024-03-20 14:10:16'),
(122, 1, 'hello ji', 13, 3, 149, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 14:10:29', '2024-03-21 04:00:48'),
(123, 1, 'tes message', 13, 3, 150, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 14:14:15', '2024-03-21 04:00:48'),
(124, 1, 'test success', 1, 1, 151, 0, 0, 0, 0, 0, 0, 1, 13, 0, 1, 13, 0, 0, NULL, '2024-03-20 14:14:24', '2024-03-20 14:14:24'),
(125, 1, 'hey TT', 1, 1, 152, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2024-03-20 14:17:18', '2024-03-20 14:17:18'),
(126, 1, 'Yes Admin', 8, 2, 153, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-20 14:17:34', '2024-03-21 04:00:40'),
(127, 8, 'ytrtyry Registered as tutor and pending for approval', 16, 2, 16, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-03-21 04:01:29', '2024-03-22 05:33:45'),
(128, 8, '765765765757 Registered as tutor and pending for approval', 17, 2, 17, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-04-12 01:25:23', '2024-08-09 01:27:30'),
(129, 4, '1234567123 Enrolled for classes', 21, 3, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-04-12 03:08:22', '2024-04-23 08:41:16'),
(130, 4, '1234567123 Enrolled for classes', 21, 3, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-04-12 05:06:13', '2024-04-23 08:41:15'),
(131, 4, 'Deepesh Raj Enrolled for classes', 1, 3, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-04-15 02:13:31', '2024-04-23 08:41:14'),
(132, 2, 'New Trial Class Scheduled By Deepesh Raj', 1, 3, 33, 1, 0, 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-06-06 07:57:40', '2024-08-09 01:27:26'),
(133, 8, 'Sameer Registered as tutor and pending for approval', 18, 2, 18, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-08-13 02:17:56', '2024-08-13 06:24:32'),
(134, 8, 'tutor01 Registered as tutor and pending for approval', 19, 2, 19, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-08-14 00:35:21', '2024-08-14 03:07:51'),
(135, 7, 'Deepesh Raj Enrolled for classes', 1, 3, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-08-19 09:07:16', '2024-08-19 09:09:10'),
(136, 1, 'hi', 1, 3, 154, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-09-10 02:56:39', '2024-09-19 10:14:38'),
(137, 1, 'hi', 1, 3, 155, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-09-10 02:56:45', '2024-09-19 10:14:37'),
(138, 1, 'hi', 1, 3, 156, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2024-09-10 04:02:56', '2024-09-10 04:02:56'),
(139, 1, 'hi', 1, 3, 157, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2024-09-10 04:03:00', '2024-09-10 04:03:00'),
(140, 1, 'hello', 1, 3, 158, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2024-09-10 04:03:11', '2024-09-10 04:03:11'),
(141, 1, 'whats up', 1, 3, 159, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2024-09-10 04:03:30', '2024-09-10 04:03:30'),
(142, 8, 'Development Team Registered as tutor and pending for approval', 20, 2, 20, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-09-19 09:50:18', '2024-09-19 10:14:37'),
(143, 1, 'hey', 20, 2, 160, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-09-19 10:13:57', '2024-09-19 10:14:37'),
(144, 7, 'George Enrolled for classes', 26, 3, 20, 0, 0, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-09-20 10:46:19', '2024-09-20 11:34:37'),
(145, 7, 'George Enrolled for classes', 26, 3, 20, 0, 0, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-09-20 11:26:54', '2024-09-20 11:34:36'),
(146, 7, 'George Enrolled for classes', 26, 3, 20, 0, 0, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-09-20 11:27:13', '2024-09-20 11:34:36'),
(147, 7, 'George Enrolled for classes', 26, 3, 20, 0, 0, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-09-20 11:28:11', '2024-09-20 11:34:36'),
(148, 7, 'George Enrolled for classes', 26, 3, 20, 0, 0, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-09-20 11:34:11', '2024-09-20 11:34:36'),
(149, 7, 'George Enrolled for classes', 26, 3, 20, 0, 0, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2024-09-20 12:08:29', '2024-09-20 12:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `online_tests`
--

CREATE TABLE `online_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `max_attempt` double(8,2) NOT NULL,
  `test_duration` double(8,2) NOT NULL,
  `test_start_date` varchar(255) NOT NULL,
  `test_end_date` varchar(255) NOT NULL,
  `question_id` text NOT NULL,
  `test_type` smallint(6) NOT NULL COMMENT '1 for obj\r\n2 for sub',
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `topic_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_tests`
--

INSERT INTO `online_tests` (`id`, `name`, `description`, `class_id`, `subject_id`, `topic_id`, `max_attempt`, `test_duration`, `test_start_date`, `test_end_date`, `question_id`, `test_type`, `is_active`, `created_at`, `updated_at`, `topic_name`) VALUES
(1, 'Test 1', 'desc', 10, 1, 1, 1.00, 1.00, '2023-07-19T16:27', '2023-07-19T16:27', '[\"2\"]', 1, 1, '2023-07-19 05:27:30', '2023-07-20 05:41:31', NULL),
(2, 'Computer Fundamental - Mock-1', 'Test based on fundamentals of computer', 10, 6, 6, 5.00, 15.00, '2023-07-19T16:29', '2023-07-20T16:29', '[\"3\",\"4\",\"5\",\"6\"]', 1, 1, '2023-07-19 05:29:47', '2023-09-25 12:45:39', NULL),
(3, 'test qwer', 'testqwert', 10, 1, 5, 3.00, 15.00, '2023-10-19T17:35', '2023-10-27T17:35', '[\"7\",\"8\"]', 2, 1, '2023-10-03 06:35:19', '2023-10-04 00:24:35', NULL),
(4, 'Demo Test 1', 'Demo test 1 description - Active', 10, 1, 1, 1.00, 15.00, '2023-12-06T14:42', '2023-12-06T14:42', '[\"1\",\"2\",\"10\"]', 1, 1, '2023-12-06 03:42:53', '2023-12-26 08:19:32', NULL),
(5, 'Demo Subjectie Test 1', 'Demo Subjectie Test 1 active', 10, 1, 1, 10.00, 15.00, '2023-12-06T14:43', '2023-12-06T14:43', '[\"12\"]', 2, 1, '2023-12-06 03:43:32', '2023-12-06 03:43:32', NULL),
(6, 'Demo Test 27 Dec', 'Demo Test 27 Dec', 10, 6, 6, 1.00, 5.00, '2023-12-27 07:25:16', '2023-12-27 07:25:16', '[\"3\",\"4\",\"5\",\"6\"]', 1, 1, '2023-12-27 01:55:16', '2023-12-27 01:55:16', NULL),
(7, 'Computer Dundamental(Subjective) - 27 Dec', 'Computer Dundamental(Subjective) - 27 Dec', 10, 6, 6, 1.00, 10.00, '2023-12-27 08:58:36', '2023-12-27 08:58:36', '[\"9\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\"]', 2, 1, '2023-12-27 03:28:36', '2023-12-27 03:28:36', NULL),
(8, 'wada', 'asdad', 10, 1, 1, 1.00, 10.00, '2024-02-23 08:37:54', '2024-02-23 08:37:54', '[\"1\",\"2\",\"10\"]', 1, 1, '2024-02-23 03:07:54', '2024-02-23 03:07:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentdetails`
--

CREATE TABLE `paymentdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymentdetails`
--

INSERT INTO `paymentdetails` (`id`, `transaction_id`, `payment_mode`, `payment_date`, `amount`, `status`, `created_at`, `updated_at`, `remarks`) VALUES
(1, '1234-5678-9012-app0-rest', 'Credit Card', '2023-07-11 10:24:22', 115, 3, NULL, '2023-09-01 12:05:37', 'Test Payment Data'),
(2, '1234-5678-qqyz-aspa-zqkp1o22', 'Credit Card', '2023-07-11 13:40:09', 12, 3, '2023-07-11 08:10:09', '2023-07-11 08:10:09', NULL),
(3, '1234-5678-qqyz-aspa-zqkp1o23', 'Credit Card', '2023-07-12 04:56:15', 12, 3, '2023-07-11 23:26:15', '2023-07-21 13:02:40', 'Test'),
(4, '1234-5678-qqyz-aspa-zqkp1o24', 'Credit Card', '2023-07-12 04:57:15', 12, 3, '2023-07-11 23:27:15', '2023-07-19 14:03:13', 'Test'),
(5, '1234-5678-qqyz-aspa-zqkp1o25', 'Credit Card', '2023-08-09 06:29:11', 115, 1, '2023-08-09 00:59:11', '2023-09-01 11:18:21', 'Test Payment Data'),
(6, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-09-20 07:07:18', 122, 1, '2023-09-20 01:37:18', '2023-09-20 01:37:18', NULL),
(7, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-02 12:47:49', 15, 1, '2023-12-02 07:17:49', '2023-12-02 07:17:49', NULL),
(8, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-14 10:13:53', 41, 1, '2023-12-14 04:43:53', '2023-12-14 04:43:53', NULL),
(9, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-14 10:15:55', 41, 1, '2023-12-14 04:45:55', '2023-12-14 04:45:55', NULL),
(10, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-14 10:16:30', 41, 1, '2023-12-14 04:46:30', '2023-12-14 04:46:30', NULL),
(11, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-14 10:19:12', 31, 1, '2023-12-14 04:49:12', '2023-12-14 04:49:12', NULL),
(12, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-16 12:14:41', 51, 1, '2023-12-16 06:44:41', '2023-12-16 06:44:41', NULL),
(13, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-16 12:15:38', 122, 1, '2023-12-16 06:45:38', '2023-12-16 06:45:38', NULL),
(14, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-16 12:19:55', 61, 1, '2023-12-16 06:49:55', '2023-12-16 06:49:55', NULL),
(15, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-16 12:20:09', 51, 1, '2023-12-16 06:50:09', '2023-12-16 06:50:09', NULL),
(16, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-16 12:24:46', 41, 1, '2023-12-16 06:54:46', '2023-12-16 06:54:46', NULL),
(17, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-16 12:24:54', 31, 1, '2023-12-16 06:54:54', '2023-12-16 06:54:54', NULL),
(18, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-16 12:25:03', 10, 1, '2023-12-16 06:55:03', '2023-12-16 06:55:03', NULL),
(19, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-16 13:10:18', 10, 1, '2023-12-16 07:40:18', '2023-12-16 07:40:18', NULL),
(20, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-18 15:14:25', 50, 1, '2023-12-18 09:44:25', '2023-12-18 09:44:25', NULL),
(21, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2023-12-29 12:47:00', 180, 1, '2023-12-29 07:17:00', '2023-12-29 07:17:00', NULL),
(22, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-02-23 09:09:26', 102, 1, '2024-02-23 03:39:26', '2024-02-23 03:39:26', NULL),
(23, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-02-23 10:01:25', 10, 1, '2024-02-23 04:31:25', '2024-02-23 04:31:25', NULL),
(24, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-02-23 10:02:12', 10, 1, '2024-02-23 04:32:12', '2024-02-23 04:32:12', NULL),
(25, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-02-23 10:03:19', 10, 1, '2024-02-23 04:33:19', '2024-02-23 04:33:19', NULL),
(26, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-04-12 08:38:22', 12, 1, '2024-04-12 03:08:22', '2024-04-12 03:08:22', NULL),
(27, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-04-12 10:36:13', 12, 1, '2024-04-12 05:06:13', '2024-04-12 05:06:13', NULL),
(28, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-04-15 07:43:31', 60, 1, '2024-04-15 02:13:31', '2024-04-15 02:13:31', NULL),
(29, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-08-19 14:37:03', 120, 1, '2024-08-19 09:07:03', '2024-08-19 09:07:03', NULL),
(30, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-09-20 16:16:14', 200, 1, '2024-09-20 10:46:14', '2024-09-20 10:46:14', NULL),
(31, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-09-20 16:56:50', 100, 1, '2024-09-20 11:26:50', '2024-09-20 11:26:50', NULL),
(32, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-09-20 16:57:10', 200, 1, '2024-09-20 11:27:10', '2024-09-20 11:27:10', NULL),
(33, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-09-20 16:58:07', 100, 1, '2024-09-20 11:28:07', '2024-09-20 11:28:07', NULL),
(34, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-09-20 17:04:08', 200, 1, '2024-09-20 11:34:08', '2024-09-20 11:34:08', NULL),
(35, '1234-5678-qqyz-aspa-zqkp1o2', 'Credit Card', '2024-09-20 17:38:25', 300, 1, '2024-09-20 12:08:25', '2024-09-20 12:08:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paymentstudents`
--

CREATE TABLE `paymentstudents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `classes_purchased` int(11) NOT NULL,
  `rate_per_hr` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymentstudents`
--

INSERT INTO `paymentstudents` (`id`, `transaction_id`, `student_id`, `class_id`, `subject_id`, `tutor_id`, `classes_purchased`, `rate_per_hr`, `created_at`, `updated_at`) VALUES
(1, '1234-5678-9012-app0-rest', 1, 1, 1, 1, 3, 12, NULL, NULL),
(2, '1234-5678-qqyz-aspa-zqkp1o22', 1, 10, 1, 1, 1, 12, '2023-07-11 08:10:09', '2023-07-11 08:10:09'),
(3, '1234-5678-qqyz-aspa-zqkp1o23', 1, 10, 1, 1, 1, 12, '2023-07-11 23:26:15', '2023-07-11 23:26:15'),
(4, '1234-5678-qqyz-aspa-zqkp1o24', 1, 10, 1, 1, 1, 12, '2023-07-11 23:27:15', '2023-07-11 23:27:15'),
(5, '1234-5678-qqyz-aspa-zqkp1o25', 1, 10, 1, 2, 10, 12, '2023-08-09 00:59:11', '2023-08-09 00:59:11'),
(6, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 12, 10, '2023-09-20 01:37:18', '2023-09-20 01:37:18'),
(7, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 6, 1, 1, 15, '2023-12-02 07:17:49', '2023-12-02 07:17:49'),
(8, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 4, 4, 10, '2023-12-14 04:43:53', '2023-12-14 04:43:53'),
(9, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 4, 10, '2023-12-14 04:45:55', '2023-12-14 04:45:55'),
(10, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 4, 10, '2023-12-14 04:46:30', '2023-12-14 04:46:30'),
(11, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 3, 10, '2023-12-14 04:49:12', '2023-12-14 04:49:12'),
(12, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 5, 10, '2023-12-16 06:44:42', '2023-12-16 06:44:42'),
(13, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 12, 10, '2023-12-16 06:45:38', '2023-12-16 06:45:38'),
(14, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 6, 10, '2023-12-16 06:49:55', '2023-12-16 06:49:55'),
(15, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 5, 10, '2023-12-16 06:50:09', '2023-12-16 06:50:09'),
(16, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 4, 10, '2023-12-16 06:54:47', '2023-12-16 06:54:47'),
(17, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 3, 10, '2023-12-16 06:54:54', '2023-12-16 06:54:54'),
(18, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 1, 10, '2023-12-16 06:55:03', '2023-12-16 06:55:03'),
(19, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 4, 6, 1, 10, '2023-12-16 07:40:18', '2023-12-16 07:40:18'),
(20, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 4, 6, 5, 10, '2023-12-18 09:44:25', '2023-12-18 09:44:25'),
(21, '1234-5678-qqyz-aspa-zqkp1o2', 16, 10, 6, 13, 10, 18, '2023-12-29 07:17:00', '2023-12-29 07:17:00'),
(22, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 10, 10, '2024-02-23 03:39:26', '2024-02-23 03:39:26'),
(23, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 1, 10, '2024-02-23 04:31:25', '2024-02-23 04:31:25'),
(24, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 1, 10, '2024-02-23 04:32:12', '2024-02-23 04:32:12'),
(25, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 1, 10, '2024-02-23 04:33:19', '2024-02-23 04:33:19'),
(26, '1234-5678-qqyz-aspa-zqkp1o2', 21, 10, 1, 1, 1, 12, '2024-04-12 03:08:22', '2024-04-12 03:08:22'),
(27, '1234-5678-qqyz-aspa-zqkp1o2', 21, 10, 1, 1, 1, 12, '2024-04-12 05:06:13', '2024-04-12 05:06:13'),
(28, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 5, 12, '2024-04-15 02:13:31', '2024-04-15 02:13:31'),
(29, '1234-5678-qqyz-aspa-zqkp1o2', 1, 10, 1, 1, 1, 120, '2024-08-19 09:07:03', '2024-08-19 09:07:03'),
(30, '1234-5678-qqyz-aspa-zqkp1o2', 26, 1, 1, 20, 2, 100, '2024-09-20 10:46:14', '2024-09-20 10:46:14'),
(31, '1234-5678-qqyz-aspa-zqkp1o2', 26, 1, 1, 20, 1, 100, '2024-09-20 11:26:50', '2024-09-20 11:26:50'),
(32, '1234-5678-qqyz-aspa-zqkp1o2', 26, 1, 1, 20, 2, 100, '2024-09-20 11:27:10', '2024-09-20 11:27:10'),
(33, '1234-5678-qqyz-aspa-zqkp1o2', 26, 1, 1, 20, 1, 100, '2024-09-20 11:28:07', '2024-09-20 11:28:07'),
(34, '1234-5678-qqyz-aspa-zqkp1o2', 26, 1, 1, 20, 2, 100, '2024-09-20 11:34:08', '2024-09-20 11:34:08'),
(35, '1234-5678-qqyz-aspa-zqkp1o2', 26, 1, 1, 20, 3, 100, '2024-09-20 12:08:25', '2024-09-20 12:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `payment_modes`
--

CREATE TABLE `payment_modes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_modes`
--

INSERT INTO `payment_modes` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Creditcard', NULL, NULL),
(2, 'Debitcard', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `net_amount_received` decimal(10,2) NOT NULL,
  `admin_commission_percentage` decimal(5,2) NOT NULL,
  `admin_commission_amount` decimal(10,2) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `transaction_no` varchar(255) NOT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` smallint(6) NOT NULL,
  `payment_mode` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payouts`
--

INSERT INTO `payouts` (`id`, `tutor_id`, `total_amount`, `net_amount_received`, `admin_commission_percentage`, `admin_commission_amount`, `account_no`, `transaction_no`, `transaction_date`, `status`, `payment_mode`, `created_at`, `updated_at`) VALUES
(2, 1, 388.00, 100.24, 2.00, 7.76, 'ac12309', 'tx1234', '2023-09-28 10:55:44', 3, 2, '2023-09-28 05:07:10', '2023-09-28 05:07:10'),
(3, 1, 388.00, 100.00, 2.00, 7.76, '12345', 'Tx1235', '2023-09-28 18:30:00', 3, 2, '2023-09-28 05:58:49', '2023-09-28 05:58:49'),
(4, 1, 388.00, 20.00, 2.00, 7.76, '1234567', '234567', '2023-09-29 18:30:00', 6, 1, '2023-09-28 06:30:21', '2023-09-28 06:30:21');

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
-- Table structure for table `questionbanks`
--

CREATE TABLE `questionbanks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `correct_option` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `type` smallint(6) NOT NULL COMMENT '1 for objective \r\n2 for subjective',
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionbanks`
--

INSERT INTO `questionbanks` (`id`, `class_id`, `subject_id`, `topic_id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_option`, `remarks`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 1, '<p>The decimal expansion of number <img src=\"https://www.careerlauncher.com/cbse-ncert/class-10/10-math-real-3-UntitOE0.JPG\" /> has:</p>', 'a terminating decimal', 'non-terminating but repeating', 'non-terminating non repeating', 'terminating after two places of decimal', 'a terminating decimal', NULL, 1, 1, '2023-07-18 06:40:11', '2023-10-09 00:47:37'),
(2, 10, 1, 1, 'The product of a rational and irrational number is', 'rational', 'irrational', 'both of above', 'none of above', 'irrational', NULL, 1, 1, '2023-07-18 06:47:13', '2023-07-18 13:40:09'),
(3, 10, 6, 6, '<p>Who is the father of Computers?</p>', 'James Gosling', 'Charles Babbage', 'Dennis Ritchie', 'Bjarne Stroustrup', 'Charles Babbage', 'Explanation: Charles Babbage is known as the father of computers. Charles Babbage designed and built the first mechanical computer and Difference Engine.', 1, 1, '2023-07-18 06:47:29', '2023-07-18 13:38:01'),
(4, 10, 6, 6, '<p>What is the full form of CPU?</p>', 'Computer Processing Unit', 'Computer Principle Unit', 'Central Processing Unit', 'Control Processing Unit', 'Central Processing Unit', 'Explanation: CPU stands for Central Processing Unit. CPU is the part of a computer system that is mainly referred as the brain of the computer.', 1, 1, '2023-07-18 07:28:12', '2023-07-18 13:39:16'),
(5, 10, 6, 6, '<p>Which of the following computer language is written in binary codes only?</p>', 'pascal', 'machine language', 'C', 'C#', 'machine language', NULL, 1, 1, '2023-08-19 05:55:08', '2023-08-19 05:55:08'),
(6, 10, 6, 6, '<p>Which of the following is the brain of the computer?</p>', 'Central Processing Unit', 'Memory', 'Arithmetic and Logic unit', 'Control unit', 'Central Processing Unit', NULL, 1, 1, '2023-08-19 05:56:09', '2023-09-04 06:33:30'),
(7, 10, 1, 5, '<p>divide 10 with 5? and show write resultant number table ?</p>', NULL, NULL, NULL, NULL, NULL, 'test remarks 11111', 2, 1, '2023-09-28 07:03:17', '2023-09-28 07:10:11'),
(8, 10, 1, 5, '<p>write 25 table ?</p>', NULL, NULL, NULL, NULL, NULL, 'test', 2, 1, '2023-10-04 00:23:55', '2023-10-04 00:23:55'),
(9, 10, 6, 6, '<p>Test Question Subjective</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2023-10-09 01:24:25', '2023-10-09 01:24:25'),
(10, 10, 1, 1, '<p>Hi, This is a test question</p>', 'Test option 1', 'Test option 2(*)', 'Test option 3', 'Test option 4', 'Test option 2(*)', 'Test Remarks - 6th Dec 2023', 1, 1, '2023-12-06 03:02:51', '2023-12-06 03:04:12'),
(11, 10, 1, 1, '<p>Test question 2 by deepesh</p>', 'op1', 'op2', 'op3*', 'op4', 'op3*', 'OPT inactive', 1, 0, '2023-12-06 03:05:15', '2023-12-06 03:05:26'),
(12, 10, 1, 1, '<p>Test subjective type questions 1</p>', NULL, NULL, NULL, NULL, NULL, 'Subjective remarks - Active', 2, 1, '2023-12-06 03:05:59', '2023-12-06 03:05:59'),
(13, 10, 1, 1, '<p>Test subjective question 2</p>', NULL, NULL, NULL, NULL, NULL, 'Test Sub 2 - InActive', 2, 0, '2023-12-06 03:06:28', '2023-12-06 03:07:22'),
(14, 10, 6, 6, '<p>What is Computer?</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2023-12-27 03:04:05', '2023-12-27 03:04:05'),
(15, 10, 6, 6, '<p>What is CPU?</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2023-12-27 03:04:25', '2023-12-27 03:04:25'),
(16, 10, 6, 6, '<p>Who is the father of computer?</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2023-12-27 03:26:29', '2023-12-27 03:26:29'),
(17, 10, 6, 6, '<p>Name 5 Input Devices</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2023-12-27 03:26:47', '2023-12-27 03:26:47'),
(18, 10, 6, 6, '<p>Name 5 Output Devices</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2023-12-27 03:27:04', '2023-12-27 03:27:04'),
(19, 10, 6, 6, '<p>What is Modem ?</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2023-12-27 03:27:39', '2023-12-27 03:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slot_bookings`
--

CREATE TABLE `slot_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) NOT NULL,
  `slot` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `student_id` int(11) DEFAULT NULL,
  `booked_at` varchar(255) DEFAULT NULL,
  `tutor_id` int(11) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_schedule_id` int(11) DEFAULT NULL COMMENT 'this is student payments table id',
  `contact_admin` int(11) DEFAULT 0,
  `is_class_scheduled` int(11) DEFAULT 0 COMMENT 'Not Scheduled = 0, Scheduled = 1, Completed = 2',
  `meeting_id` int(11) DEFAULT NULL COMMENT 'Meeting Id : zoom_classes table ID',
  `remarks` varchar(255) DEFAULT NULL,
  `topic` text DEFAULT NULL,
  `class_start_time` text DEFAULT NULL,
  `class_end_time` text DEFAULT NULL,
  `ratings_to_student` text DEFAULT NULL,
  `ratings_to_tutor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slot_bookings`
--

INSERT INTO `slot_bookings` (`id`, `date`, `slot`, `status`, `student_id`, `booked_at`, `tutor_id`, `transaction_id`, `created_at`, `updated_at`, `subject_id`, `class_schedule_id`, `contact_admin`, `is_class_scheduled`, `meeting_id`, `remarks`, `topic`, `class_start_time`, `class_end_time`, `ratings_to_student`, `ratings_to_tutor`) VALUES
(319, '2024-09-21', '11:00:00', 3, 26, '2024-09-20 17:38:29', 20, '1234-5678-qqyz-aspa-zqkp1o2', '2024-09-20 12:08:03', '2024-09-20 12:44:55', 1, 35, 0, 0, NULL, 'sdfsdf', 'Test Topic', '2024-09-20 19:00:16', '2024-09-20 19:14:55', '5', NULL),
(320, '2024-09-22', '11:00:00', 3, 26, '2024-09-20 17:38:29', 20, '1234-5678-qqyz-aspa-zqkp1o2', '2024-09-20 12:08:03', '2024-09-20 12:44:35', 1, 35, 0, 0, NULL, 'Test Remarks', 'Test Topic', '2024-09-20 19:00:13', '2024-09-20 19:14:35', '3', NULL),
(321, '2024-09-23', '11:00:00', 2, 26, '2024-09-20 17:38:29', 20, '1234-5678-qqyz-aspa-zqkp1o2', '2024-09-20 12:08:03', '2024-09-20 12:29:51', 1, 35, 0, 0, NULL, NULL, NULL, '2024-09-20 18:59:51', NULL, NULL, NULL),
(322, '2024-09-24', '11:00:00', 0, NULL, NULL, 20, NULL, '2024-09-20 12:08:03', '2024-09-20 12:08:03', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, '2024-09-25', '11:00:00', 0, NULL, NULL, 20, NULL, '2024-09-20 12:08:03', '2024-09-20 12:08:03', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, '2024-09-26', '11:00:00', 0, NULL, NULL, 20, NULL, '2024-09-20 12:08:03', '2024-09-20 12:08:03', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, '2024-09-27', '11:00:00', 0, NULL, NULL, 20, NULL, '2024-09-20 12:08:03', '2024-09-20 12:08:03', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, '2024-09-22', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:33', '2024-09-21 09:14:33', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, '2024-09-23', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:33', '2024-09-21 09:14:33', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, '2024-09-24', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:33', '2024-09-21 09:14:33', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, '2024-09-25', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:33', '2024-09-21 09:14:33', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, '2024-09-26', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:33', '2024-09-21 09:14:33', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, '2024-09-27', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:33', '2024-09-21 09:14:33', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, '2024-09-28', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:33', '2024-09-21 09:14:33', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, '2024-09-29', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:33', '2024-09-21 09:14:33', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, '2024-09-30', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:33', '2024-09-21 09:14:33', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, '2024-10-01', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:33', '2024-09-21 09:14:33', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, '2024-10-02', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:33', '2024-09-21 09:14:33', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, '2024-10-03', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, '2024-10-04', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, '2024-10-05', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, '2024-10-06', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, '2024-10-07', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, '2024-10-08', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, '2024-10-09', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, '2024-10-10', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, '2024-10-11', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, '2024-10-12', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, '2024-10-13', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, '2024-10-14', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, '2024-10-15', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, '2024-10-16', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, '2024-10-17', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, '2024-10-18', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, '2024-10-19', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, '2024-10-20', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, '2024-10-21', '13:00:00', 0, NULL, NULL, 20, NULL, '2024-09-21 09:14:34', '2024-09-21 09:14:34', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'New', NULL, NULL),
(2, 'Scheduled', NULL, NULL),
(3, 'Confirmed', NULL, NULL),
(4, 'Attended', NULL, NULL),
(5, 'Cancelled', NULL, NULL),
(6, 'Pending', NULL, NULL),
(7, 'On-Hold', NULL, NULL),
(8, 'Started', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `studentachievements`
--

CREATE TABLE `studentachievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentachievements`
--

INSERT INTO `studentachievements` (`id`, `name`, `description`, `date`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 'Winner in singing competition', 'Winner in singing competition in school', '2023-01-02 08:22:06', 1, NULL, NULL),
(2, 'Certification in robotics', 'Science project on robotics', '2023-02-22 08:22:06', 1, NULL, NULL),
(3, 'Winner in essay writing', 'Winner in essay writing competition in school', '2023-05-19 08:22:06', 1, NULL, NULL),
(8, 'Test Name Achievementwe', 'we', '2023-11-01 18:30:00', 9, '2023-11-02 07:01:27', '2023-11-02 07:01:27'),
(10, 'Test Name Achievement', 'Test Achievement Description', NULL, 15, '2023-12-29 03:39:51', '2023-12-29 03:39:51'),
(11, 'Test data', '23', '2023-12-22 18:30:00', 15, '2023-12-29 03:40:00', '2023-12-29 03:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `studentattendances`
--

CREATE TABLE `studentattendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `meeting_id` int(11) DEFAULT NULL,
  `tutor_id` int(11) NOT NULL,
  `class_starts_at` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentattendances`
--

INSERT INTO `studentattendances` (`id`, `student_id`, `class_id`, `subject_id`, `batch_id`, `topic_id`, `meeting_id`, `tutor_id`, `class_starts_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 1, 1, 1, 5, 1, '2023-09-20T16:45:00Z', 1, '2023-10-09 00:42:11', '2023-10-09 00:42:11'),
(2, 3, 10, 1, 1, 1, 5, 1, '2023-09-20T16:45:00Z', 1, '2023-10-09 00:42:11', '2023-10-09 00:42:11'),
(3, 1, 10, 1, 1, 1, 6, 1, '2023-09-21T13:03:00Z', 0, '2023-10-09 00:42:19', '2023-10-09 00:42:19'),
(4, 3, 10, 1, 1, 1, 6, 1, '2023-09-21T13:03:00Z', 1, '2023-10-09 00:42:19', '2023-10-09 00:42:19'),
(5, 1, 10, 1, 1, 3, NULL, 1, '2023-09-21T13:11:00+00:00', 1, '2023-12-02 08:03:19', '2023-12-06 06:14:28'),
(6, 1, 10, 1, 1, 3, 1, 1, '2023-11-03T20:30:40Z', 1, '2023-12-06 02:51:36', '2023-12-06 02:51:36'),
(7, 3, 10, 1, 1, 3, 1, 1, '2023-11-03T20:30:40Z', 1, '2023-12-06 02:51:36', '2023-12-06 02:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `studentprofiles`
--

CREATE TABLE `studentprofiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` timestamp NULL DEFAULT NULL,
  `grade` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `secondary_mobile` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `fathers_name` varchar(255) DEFAULT NULL,
  `mothers_name` varchar(255) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentprofiles`
--

INSERT INTO `studentprofiles` (`id`, `name`, `dob`, `grade`, `mobile`, `secondary_mobile`, `email`, `gender`, `school_name`, `fathers_name`, `mothers_name`, `student_id`, `profile_pic`, `created_at`, `updated_at`) VALUES
(2, 'Deepesh Raj', '2023-07-06 18:30:00', '10', 1234, 1234567, 'deepeshinfo22@gmail.com', 1, 'Central School', 'My Father Name', 'My Mother Name', 1, '1688713664.jpg', '2023-07-06 07:45:16', '2023-07-07 01:37:44'),
(3, 'Development Team', '2023-11-01 18:30:00', '0', 917004920897, NULL, '1234@gmail.com', 1, 'Central School', 'My Father Name', NULL, 9, '1698928268.jpg', '2023-11-02 07:01:08', '2023-11-02 07:01:08'),
(4, 'Test Student', '2023-11-05 18:30:00', '0', 7007007007, NULL, 'abcdef@gmail.com', 1, 'Central School', 'My Father Name', NULL, 10, '1699281268.jpg', '2023-11-06 09:04:28', '2023-11-06 09:04:28'),
(5, 'wewe', '2023-12-04 18:30:00', '0', 9090909099, NULL, 'testdata1@gmail.com', 1, 'Central School', 'My Father Name', NULL, 11, '1701782931.jpg', '2023-12-05 07:58:51', '2023-12-05 07:58:51'),
(6, 'Development Team', '2023-12-04 18:30:00', '0', 7004920897, NULL, 'stud@demo.com', 1, 'Central School', 'My Father Name', NULL, 13, '1702563644.jpg', '2023-12-14 08:50:44', '2023-12-14 08:50:44'),
(7, 'test', '2023-11-30 18:30:00', '0', 11111, NULL, '0000011111@gmail.com', 1, 'qw', 'Deepesh', NULL, 14, NULL, '2023-12-20 07:41:47', '2023-12-20 07:41:58'),
(8, 'Deepesh Raj', '2023-12-28 18:30:00', '0', 1234512345, NULL, '1234512345@gmail.com', 1, 'Central School', 'My Father Name', NULL, 15, '1703837472.png', '2023-12-29 02:40:41', '2023-12-29 03:40:09'),
(9, 'Deepesh Raj', '2023-12-30 18:30:00', '0', 1122334455, NULL, '1122334455@gmail.com', 1, 'Central School', 'My Father Name', NULL, 17, '1704013057.png', '2023-12-31 03:27:37', '2023-12-31 03:27:37'),
(10, 'Kamran', NULL, '1', 8602723964, NULL, 'mdkamran912@gmail.com', NULL, NULL, NULL, NULL, 22, NULL, '2024-08-08 00:52:52', '2024-08-08 00:52:52'),
(11, 'Md Kamran', NULL, '1', 9876543222, NULL, 'mdkamran@gmail.com', NULL, NULL, NULL, NULL, 23, NULL, '2024-08-08 03:51:47', '2024-08-08 03:51:47'),
(12, 'Fawad Khan', NULL, '1', 9999988888, NULL, 'fawad@email.pk', NULL, NULL, NULL, NULL, 24, NULL, '2024-08-08 03:54:51', '2024-08-08 03:54:51'),
(13, 'Sam', NULL, '1', 9988776651, NULL, 'sam@gmail.com', NULL, NULL, NULL, NULL, 25, NULL, '2024-08-13 09:02:34', '2024-08-13 09:02:34'),
(14, 'George', NULL, '1', 7879175585, NULL, 'student@demo.com', NULL, NULL, NULL, NULL, 26, NULL, '2024-09-19 10:40:04', '2024-09-19 10:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `studentregistrations`
--

CREATE TABLE `studentregistrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_mobile_verified` int(11) DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `is_email_verified` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile_otp` varchar(255) DEFAULT NULL,
  `email_otp` varchar(255) DEFAULT NULL,
  `parent_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentregistrations`
--

INSERT INTO `studentregistrations` (`id`, `name`, `mobile`, `email`, `is_mobile_verified`, `mobile_verified_at`, `is_email_verified`, `email_verified_at`, `password`, `class_id`, `role_id`, `is_active`, `remember_token`, `created_at`, `updated_at`, `mobile_otp`, `email_otp`, `parent_password`) VALUES
(1, 'Deepesh Raj', 1234, 'deepesh@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$LIJh5hZ75hBKJUJZ/AEgPO5V1F5uE8.a8JHtk25309TbekOMQC0oi', 10, 3, 1, NULL, '2023-07-05 00:48:11', '2023-09-04 06:09:51', NULL, NULL, '$2y$10$LIJh5hZ75hBKJUJZ/AEgPO5V1F5uE8.a8JHtk25309TbekOMQC0oi'),
(3, 'Demo Student', 9999999999, 'demostudent@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$MEqd2ZPoWjnX9ibGqoJi8O.D16HD5eDpMMAItEfNcmRA4TnJkqiLi', 10, 3, 1, NULL, '2023-07-07 12:11:34', '2023-09-06 23:33:02', NULL, NULL, NULL),
(4, 'Rohit', 1234567890, 'test@test.com', NULL, NULL, NULL, NULL, '$2y$10$eTsxxVRKb3pmq9Dh.OxEtukDIMB.nE9GvRpL6F/4bh8O41X93tqfK', 10, 3, 1, NULL, '2023-08-09 01:02:14', '2023-12-14 05:44:28', NULL, NULL, NULL),
(5, 'ranjith', 7660859505, 'princeaparanjith777@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$WWxqCfNaG5zyrTo4DT8k7OxF5qQUpshlEK4fuoZYQW9mdAM2Gmiru', 0, 3, 1, NULL, '2023-10-03 02:48:52', '2023-10-03 02:48:56', '0461', NULL, '$2y$10$X0ysqgB/Pq0ZTqGVosFfO.fdrAuMdZPkzNzNvLNGUrQBJUs508/aS'),
(9, 'Development Team', 917004920897, '1234@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$L0yf8FQk/xBcn66LjwsJSeha0D/BMRpJQ04wF1.dH8YZlgVIQRiXS', 0, 3, 1, NULL, '2023-11-02 06:47:44', '2023-11-02 06:47:47', '1234', NULL, '$2y$10$L618ZVhu7iQVAs8ipuiHU.2a0dNWF0wk1bzL669Q3hsqJDLv320Fa'),
(10, 'Test Student', 7007007007, 'abcdef@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$sP9NP7kEzR/imsOjiJleiuB39pxPLVgQkuOyFiDqWOheL9vs0XFo6', 0, 3, 1, NULL, '2023-11-06 08:56:22', '2023-11-06 08:56:22', '1234', NULL, '$2y$10$2RJSwYs7NU6/bKDZexs6uuqxAlbkehYOafKxpZkuuyS..w2HSO4eO'),
(11, 'wewe', 9090909099, 'testdata1@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$1hAbYaEahAWMGlgvJNR8qukX/5l7kjWHmcSiwBe11vSNG5w5t/hn6', 0, 3, 1, NULL, '2023-12-05 07:46:40', '2023-12-05 07:46:41', '1234', NULL, '$2y$10$ZiaPL.qq.voQ6EPkKQBJluD.S3/PEHo45prh4nuFpk8GBsytqm9Hm'),
(12, 'wwrwer', 12313212345, 'werwrwer@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$pS2OJo.jSwxCDjDWMG2q9uEVV1CrcTmriuwt3fPzHmY7in.RAQZf.', 0, 3, 0, NULL, '2023-12-10 01:37:56', '2023-12-10 01:37:58', '1234', NULL, '$2y$10$gJbrVCcwSQU0wYj7MRuhye5uUrVmP7JudZq5DIIq4BDd/1GGj.wM6'),
(13, 'Development Team', 7004920897, 'stud@demo.com', NULL, NULL, NULL, NULL, '$2y$10$mEaqDEJ0fYMOQcv/I7.LIOSsPM5zhTYnIRqr1WFWftXYm1RiqqMzm', 0, 3, 1, NULL, '2023-12-14 08:49:25', '2023-12-14 08:49:26', '1234', NULL, '$2y$10$4..gfLmjOT5xRZ07RsZUVO1fGnDeplcxLsmSCOUa7KQ/hNTZMsnVe'),
(14, 'test', 11111, '0000011111@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$QlFb5BZdm6PxIfNWeM97g.Vo1QwQwUWO9v.MImeu7mZHP7DQe5OYa', 0, 3, 1, NULL, '2023-12-20 07:40:32', '2023-12-20 07:40:33', '1234', NULL, '$2y$10$AH2oGRukuKkmQrlLBLCIAuUTGVbYoVJh7DIp5urPL/xpTbct9tJkW'),
(15, 'Deepesh Raj', 1234512345, '1234512345@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$EQ17YjKHihhftdYGWu.QzuxKTRP79BK5TdygAFW7k8J.o.1LF3/jG', 0, 3, 1, NULL, '2023-12-29 02:39:46', '2023-12-29 02:39:48', '1234', NULL, '$2y$10$8CakJEG.4Von4g5U2yjZ/ulaQvRIu3CQehkqatxj0oIQP91zma/la'),
(16, 'Harsad', 1234561234, '1234561234@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$/tKu7U.2cfgbW1eQY7c5f.yrcDUj9VjnVFPwGG828DKZlMaQexBNm', 0, 3, 1, NULL, '2023-12-29 07:11:03', '2023-12-29 07:11:05', '1234', NULL, '$2y$10$mL0xW1c3tFVFiTjp/2Csx.VPds3Q9QnCCkjEePfmqrqM1FZLQjVBW'),
(17, 'Deepesh Raj', 1122334455, '1122334455@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$dkeor6ZNjMFxW5LJzo6R.O7KaOc032UqsuCsodt/TGv1GFR998GD6', 0, 3, 1, NULL, '2023-12-31 03:26:41', '2023-12-31 03:26:44', '1234', NULL, '$2y$10$oAU.gxqRLaq6K0NSlnL82OPwGH0kKdSFhkIpb1KNb8gAL4ROge.C.'),
(18, 'aasdasd', 121212, '12121212@ssadadad.com', NULL, NULL, NULL, NULL, '$2y$10$fLewWFQaQHk.Km8s08m7xeplXqmk5xuW1594nf8JGTOFVazsMm2.K', 0, 3, 1, NULL, '2024-03-07 05:58:48', '2024-03-07 05:58:49', '1234', NULL, '$2y$10$VlsE98eEHDRQHgC2Em6kMel.mYMjpAHp0sBE923fHptpGtA63aRMS'),
(19, '1234567890', 5656565656, '5656565656@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$G7wPfkU046kbQ2t/dBSzsOUWmwyPgHcx0./CCq8VZPbvGQt/a5Qsq', 0, 3, 1, NULL, '2024-04-12 00:59:56', '2024-04-12 01:00:01', '1234', NULL, '$2y$10$OQvu0X/3rfDyQjO0OZTJReI0FIenYQVHdKzULchqtaCH9vdZega0u'),
(20, '765765765757', 765765765757, '765765765757@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$yEi/g4mrz0eFbn4wm1SMdeaYoLcqlEQ7BowDeo4MTVMjaBuJOy7bq', 0, 3, 1, NULL, '2024-04-12 01:24:18', '2024-04-12 01:24:19', '1234', NULL, '$2y$10$A3vwgYdlqGlKWsBz/ZsAeeoka.p3daUKQkKyCD6YOQXL2gTYp6lFe'),
(21, '1234567123', 1234567123, '1234567123@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$dR46Ql0oaPassVLJr9cureeYakjGxzgB7yTW7ZIg7FZGgmO.r6L2a', 0, 3, 1, NULL, '2024-04-12 01:27:44', '2024-04-12 01:27:46', '1234', NULL, '$2y$10$eA6MZeodddJN8IdbvQ4lAeRDuQi5fdKPYobPl7cNuXTviRvIiGYYq'),
(22, 'Kamran', 8602723964, 'mdkamran912@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$D.p4uW9jkIg0rdSLcXlbDOXkvWPP8cGoFSS.azPhOmDd4PfnqpaEO', 0, 3, 1, NULL, '2024-08-08 00:52:52', '2024-08-08 00:53:17', '1234', NULL, '$2y$10$gIQ7Nw7W4FaRUl3K0pvHp.zfkJ/vila08INoPPJ8Tq48aDRz4Hctq'),
(23, 'Md Kamran', 9876543222, 'mdkamran@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$LYE4bopKXlw7/j2.9HGATuFNtEVjzF9gfif1D385HmPzfKZn.9U9S', 0, 3, 1, NULL, '2024-08-08 03:51:47', '2024-08-08 03:52:02', '1234', NULL, '$2y$10$pYpT55NgTyJyRDg0V8ncYuy1GF/xPQk67mqunwY2Coi860yPYNSsW'),
(24, 'Fawad Khan', 9999988888, 'fawad@email.pk', NULL, NULL, NULL, NULL, '$2y$10$Y/CKaRZLiQhFAa3IWt6e2emYFKXTXzdLXeGki2vdpEybMPzCBwb4G', 0, 3, 1, NULL, '2024-08-08 03:54:51', '2024-08-08 03:54:59', '1234', NULL, '$2y$10$kTwgu6CqRz35EZeJylm19e7WuB0G4iXGXviNhZBEm5S1yLo7tAwxq'),
(25, 'Sam', 9988776651, 'sam@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$PpKYp5Mn.LrU2/q2KrfFi.yeL7N/mWqEHbSyzDoWulNrNo6o7zfDW', 0, 3, 1, NULL, '2024-08-13 09:02:34', '2024-08-13 09:02:50', '1234', NULL, '$2y$10$ViESAZv2HLR1oLNMA2wv/OMvuwS8l5LDaCuExQfKhTIgxO3zAxMCm'),
(26, 'George', 7879175585, 'student@demo.com', NULL, NULL, NULL, NULL, '$2y$10$mKn5Fxrrm2hHfzTQlIyjEuorU.lbzYoD.0YTyh2zSCcTNBaHweRZ6', 0, 3, 1, NULL, '2024-09-19 10:40:04', '2024-09-19 10:40:10', '1234', NULL, '$2y$10$QOTEniTl/H91BaEI3Wbme.jUIk2taurst7z1QiKuA3V39Em1etQ8S');

-- --------------------------------------------------------

--
-- Table structure for table `studentreviews`
--

CREATE TABLE `studentreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `ratings` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentreviews`
--

INSERT INTO `studentreviews` (`id`, `name`, `ratings`, `subject_id`, `student_id`, `created_at`, `updated_at`, `class_id`, `batch_id`, `tutor_id`) VALUES
(1, 'Good Boy', '5', 1, 1, NULL, NULL, 0, 0, 0),
(2, 'Bad Boy', '2.5', 1, 1, NULL, NULL, 0, 0, 0),
(3, 'qw', '2', 1, 4, '2023-10-09 01:12:43', '2023-10-09 01:12:43', 10, 7, 1),
(4, 'Test data', '4', 1, 1, '2023-12-06 03:54:57', '2023-12-06 03:54:57', 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_assignments`
--

CREATE TABLE `student_assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `submission_link` varchar(255) NOT NULL,
  `submitted_on` varchar(255) NOT NULL,
  `submitted_by` int(11) NOT NULL,
  `reamrks` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_assignments`
--

INSERT INTO `student_assignments` (`id`, `assignment_id`, `submission_link`, `submitted_on`, `submitted_by`, `reamrks`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'www.google.com', '2023-07-17 12:45:13', 1, 'Test Remarks', 1, '2023-07-17 07:15:13', NULL),
(2, 1, '1', '2023-08-12 17:21:49', 1, NULL, 1, '2023-08-12 11:51:49', '2023-08-12 11:51:49'),
(3, 1, '1691860982.png', '2023-08-12 17:23:02', 1, NULL, 1, '2023-08-12 11:53:02', '2023-08-12 11:53:02'),
(4, 1, '1691861014.png', '2023-08-12 17:23:34', 1, 'Test', 1, '2023-08-12 11:53:34', '2023-08-12 11:53:34'),
(5, 2, '1701777530.jpg', '2023-12-05 11:58:50', 1, NULL, 1, '2023-12-05 06:28:50', '2023-12-05 06:28:50'),
(6, 3, '1708677191.png', '2024-02-23 08:33:11', 1, NULL, 1, '2024-02-23 03:03:11', '2024-02-23 03:03:11'),
(7, 5, '1708677241.png', '2024-02-23 08:34:01', 1, NULL, 1, '2024-02-23 03:04:01', '2024-02-23 03:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment_lists`
--

CREATE TABLE `student_assignment_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `assigned_by` int(11) DEFAULT NULL,
  `assignment_description` varchar(255) DEFAULT NULL,
  `assignment_link` varchar(255) DEFAULT NULL,
  `assignment_start_date` varchar(255) DEFAULT NULL,
  `assignment_end_date` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `topic` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_assignment_lists`
--

INSERT INTO `student_assignment_lists` (`id`, `name`, `class_id`, `subject_id`, `topic_id`, `student_id`, `assigned_by`, `assignment_description`, `assignment_link`, `assignment_start_date`, `assignment_end_date`, `is_active`, `created_at`, `updated_at`, `batch_id`, `topic`) VALUES
(1, 'Real Numbers(Test Data)', 10, 1, 3, 0, 1, 'Test Description', '1713881780.webp', '2024-04-23', '2024-05-11', 1, '2023-07-16 06:50:13', '2024-04-23 08:46:20', 1, NULL),
(2, 'Test Assignment', 10, 6, 6, 0, 1, 'Test Assignment Description', '1691074841.jpg', '2023-08-03', '2023-08-04', 1, '2023-08-03 09:30:41', '2023-09-04 06:21:01', 5, NULL),
(3, 'Test Assignment', 10, 1, 1, 0, 3, 'wewe', '1699281689.jpg', '2023-11-06', '2023-11-07', 1, '2023-11-06 09:11:29', '2023-11-06 09:11:29', 1, NULL),
(4, 'Test Assignment 1212', 10, 1, 4, 0, 1, '12123232', '1701851148.jpg', '2023-12-06', '2023-12-08', 1, '2023-12-06 02:55:48', '2023-12-06 02:55:48', 1, NULL),
(5, 'Test Assignment', 10, 1, 3, 16, 1, 'dfdszasasd', '1713888381.webp', '2024-04-23', '2024-04-30', 1, '2024-04-23 05:43:08', '2024-04-23 10:36:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjectcategories`
--

CREATE TABLE `subjectcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjectcategories`
--

INSERT INTO `subjectcategories` (`id`, `name`, `category_image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Maths', '/frontend/images/index/categories/arts.png', 1, NULL, NULL),
(2, 'English', '/frontend/images/index/categories/business.jpg', 1, NULL, NULL),
(3, 'Chemistery', '/frontend/images/index/categories/english.jpg', 0, NULL, NULL),
(4, 'Physics', '/frontend/images/index/categories/accounts.png', 1, NULL, NULL),
(5, 'Biology', '/frontend/images/index/categories/computer.png', 1, NULL, NULL),
(6, 'Science', '/frontend/images/index/categories/entranceexams.jpg', 1, NULL, NULL),
(7, 'Spanish', '/frontend/images/index/categories/humanities.jpg', 1, NULL, NULL),
(8, 'French', '/frontend/images/index/categories/language.jpg', 1, NULL, NULL),
(9, 'German', NULL, 1, NULL, NULL),
(10, 'History', NULL, 1, NULL, NULL),
(11, 'Music', NULL, 1, NULL, NULL),
(12, 'Psychology', NULL, 1, NULL, NULL),
(13, 'Politics', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjective_responses`
--

CREATE TABLE `subjective_responses` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `response` longtext NOT NULL,
  `total_marks` varchar(255) DEFAULT NULL,
  `obtained_marks` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `checked` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjective_responses`
--

INSERT INTO `subjective_responses` (`id`, `student_id`, `test_id`, `question_id`, `response`, `total_marks`, `obtained_marks`, `remarks`, `checked_by`, `checked`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 7, '<p>test1</p>', '20', '20', 'good', 1, 1, '2023-10-04 07:02:33', '2023-10-05 04:30:00'),
(2, 1, 3, 8, '<p>test2</p>', '20', '20', 'keep it up.excellent', 1, 1, '2023-10-04 07:02:33', '2023-10-05 04:30:00'),
(3, 1, 3, 7, '<p>the answer is 2&nbsp;<br />\n2*1=2<br />\n2*10=20</p>\n\n<p>2*5=10</p>', NULL, NULL, NULL, NULL, 0, '2023-10-04 07:15:06', '2023-10-04 07:15:06'),
(4, 1, 3, 8, '<p>25*1=25<br />\n25*2=50</p>', NULL, NULL, NULL, NULL, 0, '2023-10-04 07:15:06', '2023-10-04 07:15:06'),
(5, 1, 5, 12, '<p>ytyt</p>', NULL, NULL, NULL, NULL, 0, '2023-12-26 06:27:30', '2023-12-26 06:27:30'),
(6, 1, 7, 9, '<p>ttttt</p>', NULL, NULL, NULL, NULL, 0, '2023-12-27 03:42:42', '2023-12-27 03:42:42'),
(7, 1, 7, 9, '<p>wewe</p>', '1', '0', 'Mind your answer', 1, 1, '2023-12-27 03:51:07', '2023-12-27 06:25:11'),
(8, 1, 7, 14, '<p>It is an electronic Device</p>', '1', '1', NULL, 1, 1, '2023-12-27 03:51:07', '2023-12-27 06:25:11'),
(9, 1, 7, 15, '<p>Central Processing Unit</p>', '1', '1', NULL, 1, 1, '2023-12-27 03:51:07', '2023-12-27 06:25:12'),
(10, 1, 7, 16, '<p>Vijay Chauhan</p>', '2', '0', 'Charles Babbage', 1, 1, '2023-12-27 03:51:07', '2023-12-27 06:25:12'),
(11, 1, 7, 17, '<p>Mouse, Keyboard, Monitor, Speaker, Printer</p>', '2', '1', 'Monitor, Speaker, Printer are output device', 1, 1, '2023-12-27 03:51:07', '2023-12-27 06:25:12'),
(12, 1, 7, 18, '<p>Monitor, Speaker, Printer, Scanner, Monitor</p>', '2', '1', 'Scanner is input device', 1, 1, '2023-12-27 03:51:07', '2023-12-27 06:25:12'),
(13, 1, 7, 19, '<p>Electronic Device Used for Internet</p>', '2', '2', NULL, 1, 1, '2023-12-27 03:51:07', '2023-12-27 06:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `description`, `image`, `class_id`, `created_at`, `updated_at`, `is_active`, `category`) VALUES
(1, 'Abbey Wood ', '[value-3]', '[value-4]', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `syllabi`
--

CREATE TABLE `syllabi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `syllabi`
--

INSERT INTO `syllabi` (`id`, `name`, `description`, `topic_id`, `created_at`, `updated_at`) VALUES
(1, 'Positive integers', NULL, 1, NULL, NULL),
(2, 'Negative integers', NULL, 1, NULL, NULL),
(3, 'Irrational numbers', NULL, 1, NULL, NULL),
(4, 'Fractions', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacherclassmappings`
--

CREATE TABLE `teacherclassmappings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `subject_mapping_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacherclassmappings`
--

INSERT INTO `teacherclassmappings` (`id`, `teacher_id`, `class_id`, `created_at`, `updated_at`, `batch_id`, `subject_mapping_id`) VALUES
(5, 2, 10, '2023-08-10 02:07:14', '2023-08-10 02:07:14', NULL, 16),
(6, 6, 10, '2023-12-14 08:01:35', '2023-12-14 08:01:35', NULL, 17),
(7, 8, 10, '2023-12-18 02:00:01', '2023-12-18 02:00:01', NULL, 18),
(8, 9, 10, '2023-12-20 08:23:21', '2023-12-20 08:23:21', NULL, 19),
(9, 13, 10, '2023-12-29 06:20:19', '2023-12-29 06:20:19', NULL, 20),
(10, 13, 10, '2023-12-29 06:20:48', '2023-12-29 06:20:48', NULL, 21),
(11, 1, 10, '2024-03-20 08:53:20', '2024-03-20 08:53:20', NULL, 22),
(14, 20, 1, '2024-09-19 09:54:55', '2024-09-19 09:54:55', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `temporary_subjectives`
--

CREATE TABLE `temporary_subjectives` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testattempteds`
--

CREATE TABLE `testattempteds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `attempt_no` int(11) NOT NULL,
  `test_attempted_on` timestamp NOT NULL DEFAULT '2023-08-18 04:16:17',
  `test_time_taken` varchar(255) NOT NULL,
  `total_marks` varchar(255) NOT NULL,
  `obtained_marks` varchar(255) NOT NULL,
  `response_id` text NOT NULL,
  `answer` longtext DEFAULT NULL,
  `test_type` smallint(6) NOT NULL DEFAULT 1,
  `status` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testattempteds`
--

INSERT INTO `testattempteds` (`id`, `student_id`, `test_id`, `attempt_no`, `test_attempted_on`, `test_time_taken`, `total_marks`, `obtained_marks`, `response_id`, `answer`, `test_type`, `status`, `is_active`, `created_at`, `updated_at`) VALUES
(12, 1, 2, 1, '2023-08-21 09:51:34', '0', '50', '28', '[80]', NULL, 1, NULL, 1, '2023-08-21 09:51:34', '2023-08-21 09:51:34'),
(13, 1, 1, 1, '2023-08-21 09:54:44', '0', '50', '28', '[81]', NULL, 1, NULL, 1, '2023-08-21 09:54:44', '2023-08-21 09:54:44'),
(14, 1, 2, 2, '2023-08-22 02:13:20', '0', '50', '28', '[82,83,84,85]', NULL, 1, NULL, 1, '2023-08-22 02:13:20', '2023-08-22 02:13:20'),
(15, 1, 2, 3, '2023-09-21 23:24:45', '0', '50', '28', '[86]', NULL, 1, NULL, 1, '2023-09-21 23:24:45', '2023-09-21 23:24:45'),
(16, 1, 2, 4, '2023-09-25 12:46:54', '0', '50', '28', '[87,88,89,90]', NULL, 1, NULL, 1, '2023-09-25 12:46:54', '2023-09-25 12:46:54'),
(22, 1, 3, 1, '2023-10-04 07:02:33', '0', '40', '40', '0', '[1,2]', 2, 1, 1, '2023-10-04 07:02:33', '2023-10-05 04:30:00'),
(23, 1, 3, 2, '2023-10-04 07:15:06', '0', '0', '0', '0', '[3,4]', 2, NULL, 1, '2023-10-04 07:15:06', '2023-10-04 07:15:06'),
(24, 1, 2, 5, '2023-12-26 06:13:35', '0', '50', '28', '[99]', NULL, 1, NULL, 1, '2023-12-26 06:13:35', '2023-12-26 06:13:35'),
(25, 1, 2, 6, '2023-12-26 06:16:52', '0', '50', '28', '[100]', NULL, 1, NULL, 1, '2023-12-26 06:16:52', '2023-12-26 06:16:52'),
(26, 1, 2, 7, '2023-12-26 06:18:08', '0', '50', '28', '[101]', NULL, 1, NULL, 1, '2023-12-26 06:18:08', '2023-12-26 06:18:08'),
(27, 1, 2, 8, '2023-12-26 06:19:39', '0', '50', '28', '[102]', NULL, 1, NULL, 1, '2023-12-26 06:19:39', '2023-12-26 06:19:39'),
(28, 1, 2, 9, '2023-12-26 06:25:33', '0', '50', '28', '[103]', NULL, 1, NULL, 1, '2023-12-26 06:25:33', '2023-12-26 06:25:33'),
(29, 1, 5, 1, '2023-12-26 06:27:30', '0', '0', '0', '0', '[5]', 2, NULL, 1, '2023-12-26 06:27:30', '2023-12-26 06:27:30'),
(30, 1, 2, 10, '2023-12-26 08:50:49', '0', '50', '28', '[104,105,106]', NULL, 1, NULL, 1, '2023-12-26 08:50:49', '2023-12-26 08:50:49'),
(31, 1, 2, 11, '2023-12-26 08:51:27', '0', '50', '28', '[107]', NULL, 1, NULL, 1, '2023-12-26 08:51:27', '2023-12-26 08:51:27'),
(32, 1, 2, 12, '2023-12-26 08:52:06', '0', '50', '28', '[108,109,110]', NULL, 1, NULL, 1, '2023-12-26 08:52:06', '2023-12-26 08:52:06'),
(33, 1, 2, 13, '2023-12-26 08:53:29', '0', '50', '28', '[111,112,113]', NULL, 1, NULL, 1, '2023-12-26 08:53:29', '2023-12-26 08:53:29'),
(34, 1, 6, 1, '2023-12-27 01:56:44', '0', '50', '28', '[114,115,116,117]', NULL, 1, NULL, 1, '2023-12-27 01:56:44', '2023-12-27 01:56:44'),
(35, 1, 7, 1, '2023-12-27 03:51:07', '0', '11', '6', '0', '[7,8,9,10,11,12,13]', 2, 1, 1, '2023-12-27 03:51:07', '2023-12-27 06:25:12'),
(36, 1, 8, 1, '2024-02-23 03:22:58', '0', '50', '28', '[118]', NULL, 1, NULL, 1, '2024-02-23 03:22:58', '2024-02-23 03:22:58'),
(37, 1, 8, 2, '2024-02-23 03:32:21', '0', '50', '28', '[119]', NULL, 1, NULL, 1, '2024-02-23 03:32:21', '2024-02-23 03:32:21'),
(38, 1, 8, 3, '2024-02-23 03:33:32', '0', '50', '28', '[120]', NULL, 1, NULL, 1, '2024-02-23 03:33:32', '2024-02-23 03:33:32'),
(39, 1, 8, 4, '2024-02-23 03:35:00', '0', '50', '28', '[121]', NULL, 1, NULL, 1, '2024-02-23 03:35:00', '2024-02-23 03:35:00'),
(40, 1, 8, 5, '2024-02-23 03:36:14', '0', '50', '28', '[122]', NULL, 1, NULL, 1, '2024-02-23 03:36:14', '2024-02-23 03:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `testresponssheets`
--

CREATE TABLE `testresponssheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attempt_no` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `correct_option` int(11) NOT NULL,
  `marked_option` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testresponssheets`
--

INSERT INTO `testresponssheets` (`id`, `test_id`, `student_id`, `attempt_no`, `question_id`, `correct_option`, `marked_option`, `created_at`, `updated_at`) VALUES
(78, 1, 1, 1, 2, 2, 2, '2023-08-21 08:41:13', '2023-08-21 08:41:13'),
(79, 1, 1, 2, 2, 2, 3, '2023-08-21 09:31:45', '2023-08-21 09:31:45'),
(80, 2, 1, 1, 3, 2, 2, '2023-08-21 09:51:34', '2023-08-21 09:51:34'),
(81, 1, 1, 1, 2, 2, 1, '2023-08-21 09:54:44', '2023-08-21 09:54:44'),
(82, 2, 1, 2, 3, 2, 2, '2023-08-22 02:13:20', '2023-08-22 02:13:20'),
(83, 2, 1, 2, 4, 3, 3, '2023-08-22 02:13:20', '2023-08-22 02:13:20'),
(84, 2, 1, 2, 5, 2, 2, '2023-08-22 02:13:20', '2023-08-22 02:13:20'),
(85, 2, 1, 2, 6, 1, 2, '2023-08-22 02:13:20', '2023-08-22 02:13:20'),
(86, 2, 1, 3, 6, 1, 2, '2023-09-21 23:24:45', '2023-09-21 23:24:45'),
(87, 2, 1, 4, 3, 2, 1, '2023-09-25 12:46:54', '2023-09-25 12:46:54'),
(88, 2, 1, 4, 4, 3, 2, '2023-09-25 12:46:54', '2023-09-25 12:46:54'),
(89, 2, 1, 4, 5, 2, 2, '2023-09-25 12:46:54', '2023-09-25 12:46:54'),
(90, 2, 1, 4, 6, 1, 2, '2023-09-25 12:46:54', '2023-09-25 12:46:54'),
(91, 2, 1, 5, 3, 2, 2, '2023-10-03 01:44:47', '2023-10-03 01:44:47'),
(92, 2, 1, 5, 4, 3, 3, '2023-10-03 01:44:47', '2023-10-03 01:44:47'),
(93, 2, 1, 5, 5, 2, 2, '2023-10-03 01:44:47', '2023-10-03 01:44:47'),
(94, 2, 1, 5, 6, 1, 2, '2023-10-03 01:44:47', '2023-10-03 01:44:47'),
(95, 2, 1, 5, 6, 1, 1, '2023-10-03 01:57:04', '2023-10-03 01:57:04'),
(96, 2, 1, 6, 6, 1, 1, '2023-10-03 01:57:05', '2023-10-03 01:57:05'),
(97, 2, 1, 7, 6, 1, 1, '2023-10-03 01:57:06', '2023-10-03 01:57:06'),
(98, 2, 1, 8, 6, 1, 1, '2023-10-03 01:57:07', '2023-10-03 01:57:07'),
(99, 2, 1, 5, 3, 2, 3, '2023-12-26 06:13:35', '2023-12-26 06:13:35'),
(100, 2, 1, 6, 6, 1, 1, '2023-12-26 06:16:52', '2023-12-26 06:16:52'),
(101, 2, 1, 7, 6, 1, 1, '2023-12-26 06:18:08', '2023-12-26 06:18:08'),
(102, 2, 1, 8, 6, 1, 1, '2023-12-26 06:19:39', '2023-12-26 06:19:39'),
(103, 2, 1, 9, 6, 1, 1, '2023-12-26 06:25:33', '2023-12-26 06:25:33'),
(104, 2, 1, 10, 3, 2, 2, '2023-12-26 08:50:49', '2023-12-26 08:50:49'),
(105, 2, 1, 10, 4, 3, 3, '2023-12-26 08:50:49', '2023-12-26 08:50:49'),
(106, 2, 1, 10, 5, 2, 1, '2023-12-26 08:50:49', '2023-12-26 08:50:49'),
(107, 2, 1, 11, 3, 2, 1, '2023-12-26 08:51:27', '2023-12-26 08:51:27'),
(108, 2, 1, 12, 3, 2, 1, '2023-12-26 08:52:06', '2023-12-26 08:52:06'),
(109, 2, 1, 12, 4, 3, 3, '2023-12-26 08:52:06', '2023-12-26 08:52:06'),
(110, 2, 1, 12, 5, 2, 2, '2023-12-26 08:52:06', '2023-12-26 08:52:06'),
(111, 2, 1, 13, 3, 2, 1, '2023-12-26 08:53:29', '2023-12-26 08:53:29'),
(112, 2, 1, 13, 4, 3, 3, '2023-12-26 08:53:29', '2023-12-26 08:53:29'),
(113, 2, 1, 13, 5, 2, 1, '2023-12-26 08:53:29', '2023-12-26 08:53:29'),
(114, 6, 1, 1, 3, 2, 1, '2023-12-27 01:56:44', '2023-12-27 01:56:44'),
(115, 6, 1, 1, 4, 3, 3, '2023-12-27 01:56:44', '2023-12-27 01:56:44'),
(116, 6, 1, 1, 5, 2, 1, '2023-12-27 01:56:44', '2023-12-27 01:56:44'),
(117, 6, 1, 1, 6, 1, 4, '2023-12-27 01:56:44', '2023-12-27 01:56:44'),
(118, 8, 1, 1, 10, 2, 4, '2024-02-23 03:22:58', '2024-02-23 03:22:58'),
(119, 8, 1, 2, 1, 1, 4, '2024-02-23 03:32:21', '2024-02-23 03:32:21'),
(120, 8, 1, 3, 1, 1, 3, '2024-02-23 03:33:32', '2024-02-23 03:33:32'),
(121, 8, 1, 4, 1, 1, 2, '2024-02-23 03:35:00', '2024-02-23 03:35:00'),
(122, 8, 1, 5, 1, 1, 2, '2024-02-23 03:36:14', '2024-02-23 03:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`, `subject_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Real Number', 'Test Description', 1, NULL, '2023-09-01 01:15:45', 1),
(2, 'Euclids division lemma and problems on it complete', NULL, 1, NULL, '2023-09-04 05:57:08', 1),
(3, 'Finding HCF prime-factorization method', NULL, 1, NULL, NULL, 1),
(4, 'Decimal expansion of rational and irrational number with NCERT solutions', 'Decimal Topic', 1, NULL, NULL, 1),
(5, 'Without actually dividing finding the decimal expansion of rational number', NULL, 1, NULL, NULL, 1),
(6, 'Computer Fundamentals', 'Basic details about computer', 6, '2023-07-14 05:27:12', '2023-07-14 05:27:12', 1),
(7, 'Test Topic', 'Test Description', 4, '2023-07-14 05:27:57', '2023-09-01 01:00:59', 1),
(8, 'Demo topic', 'Test', 8, '2023-07-21 12:30:42', '2023-09-01 01:06:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tutorachievements`
--

CREATE TABLE `tutorachievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutorachievements`
--

INSERT INTO `tutorachievements` (`id`, `name`, `description`, `date`, `tutor_id`, `created_at`, `updated_at`) VALUES
(1, 'Best Teacher Award', 'Awarded as best teacher for maths', '2023-07-03 10:48:50', 1, NULL, NULL),
(4, 'Achievement 2', 'Description 2', NULL, 1, '2023-07-26 02:16:16', '2023-07-26 02:16:16'),
(5, 'Test Achievement', 'Test Decription', NULL, 2, '2023-08-09 01:21:34', '2023-08-09 01:21:34'),
(6, 'Test Achievement', 'Test Decription', '2023-12-13 18:30:00', 6, '2023-12-14 08:01:50', '2023-12-14 08:01:50'),
(7, 'Test Name Achievement', '12', NULL, 13, '2023-12-29 06:21:01', '2023-12-29 06:21:01'),
(8, 'Test Achievement', 'Tesing', '2023-12-28 18:30:00', 13, '2023-12-29 06:21:11', '2023-12-29 06:21:11'),
(9, 'Test', 'Test Decription', NULL, 13, '2023-12-29 06:21:20', '2023-12-29 06:21:20'),
(10, 'we', 'Tesing', '2023-11-26 18:30:00', 13, '2023-12-29 06:21:38', '2023-12-29 06:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `tutorpayments`
--

CREATE TABLE `tutorpayments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `rate_per_hr` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutorpayments`
--

INSERT INTO `tutorpayments` (`id`, `transaction_id`, `tutor_id`, `class_id`, `subject_id`, `rate_per_hr`, `created_at`, `updated_at`) VALUES
(1, '1234-5678-9012-app0-rest', 1, 1, 1, 12, NULL, NULL),
(2, '1234-5678-qqyz-aspa-zqkp1o22', 1, 10, 1, 12, '2023-07-11 08:10:09', '2023-07-11 08:10:09'),
(3, '1234-5678-qqyz-aspa-zqkp1o23', 1, 10, 1, 12, '2023-07-11 23:26:15', '2023-07-11 23:26:15'),
(4, '1234-5678-qqyz-aspa-zqkp1o24', 1, 10, 1, 12, '2023-07-11 23:27:15', '2023-07-11 23:27:15'),
(5, '1234-5678-qqyz-aspa-zqkp1o25', 1, 10, 1, 12, '2023-08-09 00:59:11', '2023-08-09 00:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `tutorprofiles`
--

CREATE TABLE `tutorprofiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `secondary_mobile` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `goal` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) NOT NULL,
  `intro_video_link` varchar(255) DEFAULT NULL,
  `document_link_1` text DEFAULT NULL COMMENT 'upload document to gdrive and paste link here',
  `document_link_2` text DEFAULT NULL,
  `document_link_3` text DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `expertise` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `certification` varchar(255) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `detail_1` varchar(255) DEFAULT NULL,
  `detail_2` varchar(255) DEFAULT NULL,
  `detail_3` varchar(255) DEFAULT NULL,
  `tutor_id` int(11) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` int(11) DEFAULT 0,
  `gender` int(11) DEFAULT 1,
  `rateperhour` varchar(256) NOT NULL COMMENT 'rate for no. of classes less than 5',
  `rateperhour2` varchar(256) DEFAULT '0' COMMENT 'rate for 5-9 classes',
  `rateperhour3` varchar(255) DEFAULT '0' COMMENT 'rate for more tha 10 classes',
  `admin_commission` decimal(8,2) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutorprofiles`
--

INSERT INTO `tutorprofiles` (`id`, `name`, `mobile`, `secondary_mobile`, `email`, `goal`, `qualification`, `intro_video_link`, `document_link_1`, `document_link_2`, `document_link_3`, `profile_pic`, `expertise`, `experience`, `certification`, `headline`, `detail_1`, `detail_2`, `detail_3`, `tutor_id`, `keywords`, `created_at`, `updated_at`, `country_id`, `gender`, `rateperhour`, `rateperhour2`, `rateperhour3`, `admin_commission`, `rate`) VALUES
(12, 'Jenni', 7004920897, NULL, 'instructor@demo.com', NULL, 'Test', NULL, 'https://www.google.com/', NULL, NULL, '1726759309.png', NULL, 'Test Exp', NULL, NULL, NULL, NULL, NULL, 20, NULL, '2024-09-19 09:50:13', '2024-09-21 09:05:51', 0, 2, '100', '90', '80', 0.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tutorregistrations`
--

CREATE TABLE `tutorregistrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_mobile_verified` int(11) DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `is_email_verified` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutorregistrations`
--

INSERT INTO `tutorregistrations` (`id`, `name`, `mobile`, `email`, `is_mobile_verified`, `mobile_verified_at`, `is_email_verified`, `email_verified_at`, `password`, `role_id`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(20, 'Jenni', 7004920897, 'instructor@demo.com', NULL, NULL, NULL, NULL, '$2y$10$8O2rxtLgJDpL///0b4L0Ku4YibA/YBFsaRK.Za7nIfQ0SZl5bNdmu', 2, 1, NULL, '2024-09-19 09:50:13', '2024-09-19 10:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `tutorreviews`
--

CREATE TABLE `tutorreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `ratings` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutorreviews`
--

INSERT INTO `tutorreviews` (`id`, `name`, `ratings`, `subject_id`, `tutor_id`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 'Best driving school! I went from a nervous beginner to passing my test with confidence. The instructor was patient and very knowledgeable.', '5', 1, 1, 1, NULL, NULL),
(2, '121 Driving School truly cares about your success. My instructor tailored each lesson to my progress and made sure I felt ready every step of the way!', '4', 1, 1, 1, NULL, NULL),
(3, 'I was very nervous about learning to drive, but the team at 121 made it easy. They explained everything in a way I could understand. Highly recommend!', '0', 1, 1, 1, '2023-08-10 06:00:54', '2023-08-10 06:00:54'),
(4, 'Professional, friendly, and reliable! The lessons were great, and I passed my test on the first try. I couldn\'t be happier with the service.', '5', 1, 1, 1, '2023-08-10 06:01:38', '2023-08-10 06:01:38'),
(5, 'From the first lesson, I felt supported. The instructor was clear and calm, which helped build my confidence. Thank you, 121 Driving School!', '0', 1, 1, 1, '2023-08-10 06:02:03', '2023-08-10 06:02:03'),
(6, 'e', '0', 1, 1, 1, '2023-08-10 06:44:56', '2023-08-10 06:44:56'),
(7, 'ewewtest', '1', 1, 1, 1, '2023-09-21 02:36:24', '2023-09-21 02:36:24'),
(8, 'qwqw', '2', 1, 1, 1, '2023-09-21 03:44:38', '2023-09-21 03:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `tutorsubjectmappings`
--

CREATE TABLE `tutorsubjectmappings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `admin_commission` varchar(255) NOT NULL DEFAULT '0',
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutorsubjectmappings`
--

INSERT INTO `tutorsubjectmappings` (`id`, `tutor_id`, `subject_id`, `created_at`, `updated_at`, `class_id`, `admin_commission`, `rate`) VALUES
(16, 2, 6, '2023-08-10 02:07:14', '2023-09-20 02:29:52', 10, '10', NULL),
(17, 6, 4, '2023-12-14 08:01:35', '2023-12-14 08:01:35', 10, '0', NULL),
(18, 8, 1, '2023-12-18 02:00:01', '2023-12-18 02:00:01', 10, '0', NULL),
(19, 9, 1, '2023-12-20 08:23:21', '2024-06-06 05:42:18', 10, '110', NULL),
(20, 13, 6, '2023-12-29 06:20:19', '2023-12-29 06:20:19', 10, '0', NULL),
(21, 13, 5, '2023-12-29 06:20:48', '2023-12-29 06:20:48', 10, '0', NULL),
(22, 1, 1, '2024-03-20 08:53:20', '2024-03-20 08:53:20', 10, '0', NULL),
(25, 20, 1, '2024-09-19 09:54:55', '2024-09-19 09:54:55', 1, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_requests`
--

CREATE TABLE `tutor_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `no_of_classes` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutor_requests`
--

INSERT INTO `tutor_requests` (`id`, `full_name`, `mobile`, `email`, `city`, `location`, `no_of_classes`, `start_date`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'Nasar Faridi', '07004920897', 'deepeshinfo22@gmail.com', '1', '1', '1', '2024-09-19', NULL, '2024-09-19 11:38:30', '2024-09-19 11:38:30'),
(2, 'Deepesh Raj', '07004920897', 'deepesh@shinewell.in', '1', '1', '12', '2024-09-19', NULL, '2024-09-19 11:39:36', '2024-09-19 11:39:36'),
(3, 'Jenni', '1231234567', 'jenni@gmail.com', '1', '1', '5', '2024-09-20', NULL, NULL, NULL),
(4, 'John', '13123123123', NULL, '1', '1', '4', '2024-09-21', NULL, NULL, NULL),
(5, 'Josef', NULL, NULL, '1', '1', '10', '2024-09-24', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Tutor', NULL, NULL),
(3, 'Student', NULL, NULL),
(4, 'Parent', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `is_email_verified` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_mobile_verified` int(11) DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zoom_classes`
--

CREATE TABLE `zoom_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `meeting_id` varchar(255) NOT NULL,
  `host_id` varchar(255) NOT NULL,
  `host_email` varchar(255) NOT NULL,
  `topic_id` varchar(255) NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL COMMENT 'minutes',
  `timezone` varchar(255) NOT NULL,
  `agenda` varchar(255) NOT NULL,
  `start_url` text NOT NULL,
  `join_url` text NOT NULL,
  `password` varchar(255) NOT NULL COMMENT 'meeting password',
  `h323_password` varchar(255) NOT NULL,
  `pstn_password` varchar(255) NOT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_completed` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recording_link` varchar(255) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `student_present` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zoom_classes`
--

INSERT INTO `zoom_classes` (`id`, `tutor_id`, `batch_id`, `uuid`, `meeting_id`, `host_id`, `host_email`, `topic_id`, `topic_name`, `type`, `status`, `start_time`, `duration`, `timezone`, `agenda`, `start_url`, `join_url`, `password`, `h323_password`, `pstn_password`, `encrypted_password`, `is_active`, `is_completed`, `created_at`, `updated_at`, `recording_link`, `student_id`, `remarks`, `student_present`) VALUES
(1, 1, 1, 'feMIPinjQM6Tg8e5Dm2UxQ==', '83669355658', 'fddvqCpdSrea-FC6wuxbpA', 'metacitinasar@gmail.com', '3', '(Batch 1) Finding HCF prime-factorization method', 2, 'Completed', '2023-11-03T20:30:40Z', 60, 'UTC', 'Finding HCF prime-factorization method', 'https://us05web.zoom.us/s/83669355658?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6ImZkZHZxQ3BkU3JlYS1GQzZ3dXhicEEiLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsIm1udW0iOiI4MzY2OTM1NTY1OCIsImV4cCI6MTY5MTA2MjI0MCwiaWF0IjoxNjkxMDU1MDQwLCJhaWQiOiJpMVpQZ3VGdFRMLU1qajlVS1VGdl9RIiwiY2lkIjoiIn0.9p7BAOK3zPZH6hF06PQmQVuxuhmzAS8JfNMcTmBcgtU', 'https://us05web.zoom.us/j/83669355658?pwd=S1GrWbEtIWFl8Rbhi2MaalcobDytNJ.1', '12345678', '12345678', '12345678', 'S1GrWbEtIWFl8Rbhi2MaalcobDytNJ.1', 1, 1, '2023-08-03 04:00:40', '2023-12-06 02:49:12', '#', NULL, NULL, NULL),
(2, 1, 1, 'pM/HAD53RUuDhuP/kb80fQ==', '81887919554', 'fddvqCpdSrea-FC6wuxbpA', 'metacitinasar@gmail.com', '3', '(Batch 2) Real Number', 2, 'Completed', '2023-11-04T09:30:40Z', 60, 'UTC', 'Real Number', 'https://us05web.zoom.us/s/81887919554?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6ImZkZHZxQ3BkU3JlYS1GQzZ3dXhicEEiLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsIm1udW0iOiI4MTg4NzkxOTU1NCIsImV4cCI6MTY5MTA2NTkyNCwiaWF0IjoxNjkxMDU4NzI0LCJhaWQiOiJpMVpQZ3VGdFRMLU1qajlVS1VGdl9RIiwiY2lkIjoiIn0.zsPoyscA2mWnJQvjF7pHRzNAJq0NwyQEkRFnsfbNCCo', 'https://us05web.zoom.us/j/81887919554?pwd=G1Szinpy0TF39JklwOHdeRsdGRF0b7.1', '12345678', '12345678', '12345678', 'G1Szinpy0TF39JklwOHdeRsdGRF0b7.1', 1, 1, '2023-08-03 05:02:04', '2023-12-06 02:50:42', '#', NULL, NULL, NULL),
(3, 1, 5, 'NqdY6gy5QpyJV/jkZb2tvw==', '81479362345', 'fddvqCpdSrea-FC6wuxbpA', 'metacitinasar@gmail.com', '6', '(Batch - Computer) Computer Fundamentals', 2, 'waiting', '2023-11-03T10:32:31Z', 60, 'UTC', 'Computer Fundamentals', 'https://us05web.zoom.us/s/81479362345?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6ImZkZHZxQ3BkU3JlYS1GQzZ3dXhicEEiLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsIm1udW0iOiI4MTQ3OTM2MjM0NSIsImV4cCI6MTY5MTA2NTk1MSwiaWF0IjoxNjkxMDU4NzUxLCJhaWQiOiJpMVpQZ3VGdFRMLU1qajlVS1VGdl9RIiwiY2lkIjoiIn0.2w5w_gRQT_cAqxqsRnIs6k0PXTFHNHHgzMN_wHiJN7I', 'https://us05web.zoom.us/j/81479362345?pwd=PGU5IlQ09iXqjHz2oG52c3hIEbFvU4.1', '12345678', '12345678', '12345678', 'PGU5IlQ09iXqjHz2oG52c3hIEbFvU4.1', 1, 0, '2023-08-03 05:02:31', '2023-08-03 05:02:31', NULL, NULL, NULL, NULL),
(4, 1, 1, '1De+n5k3QcOaLT3LZTmJyQ==', '88052904675', 'fddvqCpdSrea-FC6wuxbpA', 'metacitinasar@gmail.com', '2', '(Batch 1) Euclids division lemma and problems on it complete', 2, 'waiting', '2023-08-04T08:22:22Z', 60, 'UTC', 'Euclids division lemma and problems on it complete', 'https://us05web.zoom.us/s/88052904675?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6ImZkZHZxQ3BkU3JlYS1GQzZ3dXhicEEiLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsIm1udW0iOiI4ODA1MjkwNDY3NSIsImV4cCI6MTY5MTE0NDU0MiwiaWF0IjoxNjkxMTM3MzQyLCJhaWQiOiJpMVpQZ3VGdFRMLU1qajlVS1VGdl9RIiwiY2lkIjoiIn0.eitfKH3jIn9jeZojEvCkFFzUZRtE9OQTVZBoNsNumA0', 'https://us05web.zoom.us/j/88052904675?pwd=rPWlTkysSYnN2J5wxV9oVlkkrv1ygc.1', '12345678', '12345678', '12345678', 'rPWlTkysSYnN2J5wxV9oVlkkrv1ygc.1', 1, 0, '2023-08-04 02:52:22', '2023-08-04 02:52:22', NULL, NULL, NULL, NULL),
(5, 1, 1, 'f8slm8ru3ju1r901g33vglpons', 'https://meet.google.com/rtj-ftzp-byf', 'info@sofabespoke.co.uk', 'info@sofabespoke.co.uk', '1', '(Batch 1) Real Number', 2, 'Completed', '2023-09-20T16:45:00+00:00', 60, 'Asia/Kolkata', '(Batch 1) Real Number', 'https://meet.google.com/rtj-ftzp-byf', 'https://meet.google.com/rtj-ftzp-byf', '121212', '121212', '121212', '121212', 1, 1, '2023-09-20 06:03:42', '2023-09-21 01:23:21', 'https://drive.google.com/file/d/1t-BI3eKKeeLpUpcoUFfB3nXF3hw1TPcd/view?usp=drive_link', NULL, NULL, NULL),
(6, 1, 1, 'uoqvmlm9chuhbckoeoirvqd8p0', 'https://meet.google.com/kdj-fpwh-ubh', 'info@sofabespoke.co.uk', 'info@sofabespoke.co.uk', '1', '(Batch 1) Real Number', 2, 'Completed', '2023-09-21T13:03:00+00:00', 60, 'Asia/Kolkata', '(Batch 1) Real Number', 'https://meet.google.com/kdj-fpwh-ubh', 'https://meet.google.com/kdj-fpwh-ubh', '12345678', '12345678', '12345678', '12345678', 1, 1, '2023-09-21 02:09:32', '2023-09-21 03:38:10', NULL, NULL, NULL, NULL),
(7, 1, 1, 'c03epvccgks5d496cr17abupes', 'https://meet.google.com/gyt-vosr-tdg', 'info@sofabespoke.co.uk', 'info@sofabespoke.co.uk', '3', '(Batch 1) Finding HCF prime-factorization method', 2, 'Started', '2023-09-21T13:11:00+00:00', 60, 'Asia/Kolkata', '(Batch 1) Finding HCF prime-factorization method', 'https://meet.google.com/gyt-vosr-tdg', 'https://meet.google.com/gyt-vosr-tdg', '121212', '121212', '121212', '121212', 1, 0, '2023-09-21 02:14:49', '2023-09-21 02:15:22', NULL, NULL, NULL, NULL),
(8, 1, 1, '7l5n8jlkpmo7f3874nfo6m9gic', 'https://meet.google.com/iiz-rhoh-eea', 'info@sofabespoke.co.uk', 'info@sofabespoke.co.uk', '3', '(Batch 1) Finding HCF prime-factorization method', 2, 'Completed', '2023-09-21T13:15:00+00:00', 60, 'Asia/Kolkata', '(Batch 1) Finding HCF prime-factorization method', 'https://meet.google.com/iiz-rhoh-eea', 'https://meet.google.com/iiz-rhoh-eea', '121212', '121212', '121212', '121212', 1, 1, '2023-09-21 02:15:16', '2023-12-06 02:48:42', '#', NULL, NULL, NULL),
(9, 1, 1, 'm7ive76nikv24hg8idoct3ot5g', 'https://meet.google.com/zbx-svui-bpp', 'info@sofabespoke.co.uk', 'info@sofabespoke.co.uk', '2', '(Batch 1) Euclids division lemma and problems on it complete', 2, 'Completed', '2023-09-25T23:11:00+00:00', 60, 'Asia/Kolkata', '(Batch 1) Euclids division lemma and problems on it complete', 'https://meet.google.com/zbx-svui-bpp', 'https://meet.google.com/zbx-svui-bpp', '121212', '121212', '121212', '121212', 1, 1, '2023-09-25 12:11:31', '2023-12-06 02:48:57', '#', NULL, NULL, NULL),
(10, 1, 1, 'k4bfo6d0dm4nr9rtl7k08a3i1c', 'https://meet.google.com/dkk-qojk-xsv', 'info@sofabespoke.co.uk', 'info@sofabespoke.co.uk', '2', '(Batch 1) Euclids division lemma and problems on it complete', 2, 'Completed', '2023-09-25T23:12:00+00:00', 60, 'Asia/Kolkata', '(Batch 1) Euclids division lemma and problems on it complete', 'https://meet.google.com/dkk-qojk-xsv', 'https://meet.google.com/dkk-qojk-xsv', '121212', '121212', '121212', '121212', 1, 1, '2023-09-25 12:12:11', '2023-12-06 02:41:11', '#', NULL, NULL, NULL),
(11, 1, 1, '8m2740r62reee8u917umj806oo', 'https://meet.google.com/kyt-oaxr-igv', 'info@sofabespoke.co.uk', 'info@sofabespoke.co.uk', '5', '(Batch 1) Without actually dividing finding the decimal expansion of rational number', 2, 'Completed', '2023-09-26T23:12:00+00:00', 60, 'Asia/Kolkata', '(Batch 1) Without actually dividing finding the decimal expansion of rational number', 'https://meet.google.com/kyt-oaxr-igv', 'https://meet.google.com/kyt-oaxr-igv', '121212', '121212', '121212', '121212', 1, 1, '2023-09-25 12:13:00', '2023-12-06 02:39:00', '#', NULL, NULL, NULL),
(12, 3, 7, 'flb5iktp205rndrjgek6b6qh4g', 'https://meet.google.com/gfr-efct-ekg', 'info@sofabespoke.co.uk', 'info@sofabespoke.co.uk', '1', '(Ali batch05) Real Number', 2, 'Completed', '2023-11-06T20:10:00+00:00', 60, 'Asia/Kolkata', '(Ali batch05) Real Number', 'https://meet.google.com/gfr-efct-ekg', 'https://meet.google.com/gfr-efct-ekg', '12345678', '12345678', '12345678', '12345678', 1, 1, '2023-11-06 09:10:42', '2023-11-06 09:20:27', '#', NULL, NULL, NULL),
(13, 3, 5, 'trjqf4rghv5d1hlvpmmem95j9c', 'https://meet.google.com/puo-rqwp-tzt', 'info@sofabespoke.co.uk', 'info@sofabespoke.co.uk', '6', '(Batch - Computer) Computer Fundamentals', 2, 'confirmed', '2023-11-07T20:13:00+00:00', 60, 'Asia/Kolkata', '(Batch - Computer) Computer Fundamentals', 'https://meet.google.com/puo-rqwp-tzt', 'https://meet.google.com/puo-rqwp-tzt', '12345678', '12345678', '12345678', '12345678', 1, 0, '2023-11-06 09:13:25', '2023-11-06 09:13:25', NULL, NULL, NULL, NULL),
(14, 1, 1, 'aov7qut7n03bcn10fa2qdi1e98', 'https://meet.google.com/ueq-wyvt-qnx', 'info@sofabespoke.co.uk', 'info@sofabespoke.co.uk', '2', '(Batch 1) Euclids division lemma and problems on it complete', 2, 'Completed', '2023-12-06T13:35:00+00:00', 60, 'Asia/Kolkata', '(Batch 1) Euclids division lemma and problems on it complete', 'https://meet.google.com/ueq-wyvt-qnx', 'https://meet.google.com/ueq-wyvt-qnx', '12345678', '12345678', '12345678', '12345678', 1, 0, '2023-12-06 02:35:44', '2023-12-06 02:38:37', '#', NULL, NULL, NULL),
(16, 13, 1, 'msun3bcleia63m7krongrolla0', 'https://meet.google.com/dex-mavc-gda', 'info@sofabespoke.co.uk', 'info@sofabespoke.co.uk', '8', 'On Demand', 2, 'Completed', '2023-12-31T09:33:00+00:00', 60, 'Asia/Kolkata', 'Live for student : Deepesh Raj, by tutor : Development Team', 'https://meet.google.com/dex-mavc-gda', 'https://meet.google.com/dex-mavc-gda', '12345678', '12345678', '12345678', '12345678', 1, 1, '2023-12-30 04:14:45', '2023-12-30 05:48:28', '#', 1, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_tokens`
--
ALTER TABLE `access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `alert_types`
--
ALTER TABLE `alert_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_tests`
--
ALTER TABLE `assign_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batchstudentmappings`
--
ALTER TABLE `batchstudentmappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classschedules`
--
ALTER TABLE `classschedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `democlasses`
--
ALTER TABLE `democlasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `learningcontents`
--
ALTER TABLE `learningcontents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_favourites`
--
ALTER TABLE `my_favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_tests`
--
ALTER TABLE `online_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `paymentdetails`
--
ALTER TABLE `paymentdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentstudents`
--
ALTER TABLE `paymentstudents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_modes`
--
ALTER TABLE `payment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questionbanks`
--
ALTER TABLE `questionbanks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `slot_bookings`
--
ALTER TABLE `slot_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentachievements`
--
ALTER TABLE `studentachievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentattendances`
--
ALTER TABLE `studentattendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentprofiles`
--
ALTER TABLE `studentprofiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `studentprofiles_email_unique` (`email`),
  ADD UNIQUE KEY `studentprofiles_secondary_mobile_unique` (`secondary_mobile`);

--
-- Indexes for table `studentregistrations`
--
ALTER TABLE `studentregistrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `studentregistrations_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `studentregistrations_email_unique` (`email`);

--
-- Indexes for table `studentreviews`
--
ALTER TABLE `studentreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_assignments`
--
ALTER TABLE `student_assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_assignment_lists`
--
ALTER TABLE `student_assignment_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjectcategories`
--
ALTER TABLE `subjectcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjective_responses`
--
ALTER TABLE `subjective_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabi`
--
ALTER TABLE `syllabi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacherclassmappings`
--
ALTER TABLE `teacherclassmappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temporary_subjectives`
--
ALTER TABLE `temporary_subjectives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testattempteds`
--
ALTER TABLE `testattempteds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testresponssheets`
--
ALTER TABLE `testresponssheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorachievements`
--
ALTER TABLE `tutorachievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorpayments`
--
ALTER TABLE `tutorpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorprofiles`
--
ALTER TABLE `tutorprofiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tutorprofiles_email_unique` (`email`);

--
-- Indexes for table `tutorregistrations`
--
ALTER TABLE `tutorregistrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tutorregistrations_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `tutorregistrations_email_unique` (`email`);

--
-- Indexes for table `tutorreviews`
--
ALTER TABLE `tutorreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorsubjectmappings`
--
ALTER TABLE `tutorsubjectmappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_requests`
--
ALTER TABLE `tutor_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- Indexes for table `zoom_classes`
--
ALTER TABLE `zoom_classes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_tokens`
--
ALTER TABLE `access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alert_types`
--
ALTER TABLE `alert_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `assign_tests`
--
ALTER TABLE `assign_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `batchstudentmappings`
--
ALTER TABLE `batchstudentmappings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ch_messages`
--
ALTER TABLE `ch_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `classschedules`
--
ALTER TABLE `classschedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `democlasses`
--
ALTER TABLE `democlasses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learningcontents`
--
ALTER TABLE `learningcontents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `my_favourites`
--
ALTER TABLE `my_favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `online_tests`
--
ALTER TABLE `online_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `paymentdetails`
--
ALTER TABLE `paymentdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `paymentstudents`
--
ALTER TABLE `paymentstudents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `payment_modes`
--
ALTER TABLE `payment_modes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questionbanks`
--
ALTER TABLE `questionbanks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `slot_bookings`
--
ALTER TABLE `slot_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `studentachievements`
--
ALTER TABLE `studentachievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `studentattendances`
--
ALTER TABLE `studentattendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `studentprofiles`
--
ALTER TABLE `studentprofiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `studentregistrations`
--
ALTER TABLE `studentregistrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `studentreviews`
--
ALTER TABLE `studentreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_assignments`
--
ALTER TABLE `student_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_assignment_lists`
--
ALTER TABLE `student_assignment_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subjectcategories`
--
ALTER TABLE `subjectcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subjective_responses`
--
ALTER TABLE `subjective_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `syllabi`
--
ALTER TABLE `syllabi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacherclassmappings`
--
ALTER TABLE `teacherclassmappings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `temporary_subjectives`
--
ALTER TABLE `temporary_subjectives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testattempteds`
--
ALTER TABLE `testattempteds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `testresponssheets`
--
ALTER TABLE `testresponssheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tutorachievements`
--
ALTER TABLE `tutorachievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tutorpayments`
--
ALTER TABLE `tutorpayments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tutorprofiles`
--
ALTER TABLE `tutorprofiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tutorregistrations`
--
ALTER TABLE `tutorregistrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tutorreviews`
--
ALTER TABLE `tutorreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tutorsubjectmappings`
--
ALTER TABLE `tutorsubjectmappings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tutor_requests`
--
ALTER TABLE `tutor_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userroles`
--
ALTER TABLE `userroles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zoom_classes`
--
ALTER TABLE `zoom_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
