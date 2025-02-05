-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2024 at 04:32 AM
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
-- Database: `univers`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `status` varchar(11) DEFAULT 'off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `account_name`, `account_number`, `status`) VALUES
(1, 'SADAF BIBI', '03463959488', 'on'),
(2, 'SADAF BIBI', '03463959484', 'off'),
(3, 'SADAF BIBI', '03463959484', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(55) DEFAULT NULL,
  `role` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `password`, `username`, `role`) VALUES
(1, '@admin', 'admin@maps-earning.com', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `upload_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `file_name`, `file_path`, `upload_time`) VALUES
(1, 'image-1698555245557.png', 'uploads/image-1698555245557.png', '2023-10-29 04:54:06'),
(2, 'image-1698596511345.png', 'uploads/image-1698596511345.png', '2023-10-29 16:21:52'),
(3, 'image-1699005717987.jpg', 'uploads/image-1699005717987.jpg', '2023-11-03 10:02:27'),
(4, 'image-1699005726791.jpg', 'uploads/image-1699005726791.jpg', '2023-11-03 10:02:27'),
(5, 'image-1699005746919.jpg', 'uploads/image-1699005746919.jpg', '2023-11-03 10:02:53'),
(6, 'image-1699005746730.jpg', 'uploads/image-1699005746730.jpg', '2023-11-03 10:02:53'),
(7, 'image-1699005756944.jpg', 'uploads/image-1699005756944.jpg', '2023-11-03 10:02:56'),
(8, 'image-1699005762326.jpg', 'uploads/image-1699005762326.jpg', '2023-11-03 10:02:58'),
(9, 'image-1699005768094.jpg', 'uploads/image-1699005768094.jpg', '2023-11-03 10:03:10'),
(10, 'image-1699006877598.jpg', 'uploads/image-1699006877598.jpg', '2023-11-03 10:21:40'),
(11, 'image-1699006878059.jpg', 'uploads/image-1699006878059.jpg', '2023-11-03 10:21:45'),
(12, 'image-1699006906032.jpg', 'uploads/image-1699006906032.jpg', '2023-11-03 10:21:51'),
(13, 'image-1699858056632.jpg', 'uploads/image-1699858056632.jpg', '2023-11-13 06:47:38'),
(14, 'image-1699858128929.jpg', 'uploads/image-1699858128929.jpg', '2023-11-13 06:48:50'),
(15, 'image-1701639774376.jpg', 'uploads/image-1701639774376.jpg', '2023-12-03 21:42:54'),
(16, 'image-1701639798679.png', 'uploads/image-1701639798679.png', '2023-12-03 21:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `joining_fee`
--

CREATE TABLE `joining_fee` (
  `id` int(11) NOT NULL,
  `joining_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `joining_fee`
--

INSERT INTO `joining_fee` (`id`, `joining_fee`) VALUES
(1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `team` int(11) DEFAULT 0,
  `level_name` int(11) DEFAULT 0,
  `1stWithdraw` int(11) DEFAULT 0,
  `2ndWithdraw` int(11) DEFAULT 0,
  `3rdWithdraw` int(11) DEFAULT 0,
  `4thWithdraw` int(11) DEFAULT 0,
  `5thWithdraw` int(11) DEFAULT 0,
  `indirect_bonus` decimal(11,7) DEFAULT 0.0000000,
  `direct_bonus` decimal(11,7) DEFAULT 0.0000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `team`, `level_name`, `1stWithdraw`, `2ndWithdraw`, `3rdWithdraw`, `4thWithdraw`, `5thWithdraw`, `indirect_bonus`, `direct_bonus`) VALUES
(11, 3, 1, 4, 5, 6, 7, 8, 0.2000000, 2.0000000),
(12, 10, 2, 1000, 2000, 3000, 4000, 5000, 80.0000000, 80.0000000),
(13, 15, 3, 1000, 2000, 3000, 4000, 5000, 70.0000000, 70.0000000),
(14, 20, 4, 1000, 2000, 3000, 4000, 5000, 60.0000000, 60.0000000),
(15, 25, 5, 1000, 2000, 3000, 4000, 5000, 50.0000000, 50.0000000),
(16, 30, 6, 1000, 2000, 3000, 4000, 5000, 40.0000000, 40.0000000),
(17, 35, 7, 1000, 2000, 3000, 4000, 5000, 30.0000000, 30.0000000),
(18, 40, 8, 1000, 2000, 3000, 4000, 5000, 20.0000000, 20.0000000),
(19, 45, 9, 1000, 2000, 3000, 4000, 5000, 10.0000000, 10.0000000),
(20, 50, 10, 1000, 2000, 3000, 4000, 5000, 5.0000000, 5.0000000);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_content` text NOT NULL,
  `sent_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `user_id`, `message_content`, `sent_time`) VALUES
(1, 24, 'hi', '2023-11-26 10:11:22'),
(3, 24, 'hello', '2023-11-26 10:27:44'),
(9, 37, 'how are you', '2023-11-26 10:28:27'),
(11, 39, 'jani', '2023-11-26 10:47:36'),
(12, 24, 'helo', '2023-11-26 10:58:37'),
(13, 39, 'jj', '2023-11-26 10:59:06'),
(15, 61, 'hi jani kia', '2023-11-26 11:06:43'),
(16, 61, '612', '2023-11-26 11:09:08'),
(17, 48, 'hi', '2023-11-26 11:13:51'),
(18, 48, 'hello 48', '2023-11-26 11:19:14'),
(19, 48, 'yes', '2023-11-26 11:19:28'),
(20, 48, 'bro', '2023-11-26 11:19:59'),
(24, 55, 'hi', '2023-11-26 11:20:28'),
(25, 48, 'hi', '2023-11-26 11:20:37'),
(28, 86, 'hi', '2023-11-26 11:25:33'),
(29, 86, 'hello', '2023-11-26 11:25:47'),
(30, 86, 'hahaha', '2023-11-26 11:25:50'),
(32, 86, 'ji', '2023-11-26 12:06:45'),
(33, 24, '1', '2023-11-26 12:53:06'),
(34, 24, '2', '2023-11-26 12:53:08'),
(35, 24, '3', '2023-11-26 12:53:12'),
(36, 24, '4', '2023-11-26 12:53:14'),
(37, 24, '5', '2023-11-26 12:53:17'),
(38, 24, 'ji', '2023-11-26 16:44:46'),
(39, 24, 'huu', '2023-11-26 19:21:44'),
(41, 39, 'kkkk', '2024-01-31 12:05:33'),
(45, 24, 'hi', '2024-03-13 21:12:05'),
(46, 24, 'ko', '2024-03-13 21:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `offer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`id`, `offer`) VALUES
(1, '\"Why was the JavaScript developer sad? Because he didn\'t know how to \'null\' his emotions.\"\n');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `reward` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `description`, `link`, `reward`, `created_at`) VALUES
(7, 'Rate This Place Accordingly, And Earn Points', 'https://maps.app.goo.gl/7XVB7MhtaRMsbWfS9', 100.00, '2023-10-29 11:32:01'),
(8, 'Rate This Place Accordingly, And Earn Points ', 'https://maps.app.goo.gl/EguFPWLwaSkChWD18', 100.00, '2023-10-29 11:32:26'),
(9, 'Rate This Place Accordingly, And Earn Points ', 'https://maps.app.goo.gl/xR9ZM2rGAtyXgPc67', 100.00, '2023-10-29 11:32:49'),
(10, 'Rate This Place Accordingly, And Earn Points ', 'https://maps.app.goo.gl/ENzSqncfLaVFkaFMA', 100.00, '2023-10-29 11:33:14'),
(11, 'Rate This Place Accordingly, And Earn Points ', 'https://maps.app.goo.gl/TbD3WNn3pse49SMj6', 100.00, '2023-10-29 11:34:29'),
(12, 'Rate This Place Accordingly, And Earn Points ', 'https://maps.app.goo.gl/pWYfTr9t5xPJof2t9', 100.00, '2023-10-29 11:35:04'),
(13, 'Rate This Place Accordingly, And Earn Points ', 'https://maps.app.goo.gl/tK6gGTsyMLgazWgN7', 100.00, '2023-10-29 11:35:27'),
(14, 'Rate This Place Accordingly, And Earn Points ', 'https://maps.app.goo.gl/d3cAzhHcneHC43rv9', 100.00, '2023-10-29 11:36:08'),
(15, '11', '1', 100.00, '2023-11-26 09:23:30'),
(16, '1', '1', 100.00, '2023-11-26 09:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(11) NOT NULL,
  `referrer_id` int(11) DEFAULT NULL,
  `referred_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `approved` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `referrer_id`, `referred_id`, `created_at`, `approved`) VALUES
(53, 7, 26, '2023-11-02 09:07:18', 1),
(54, 7, 27, '2023-11-02 09:22:33', 0),
(55, 7, 28, '2023-11-02 10:17:03', 0),
(56, 7, 29, '2023-11-02 10:33:32', 0),
(57, 7, 30, '2023-11-02 10:51:55', 0),
(58, 7, 31, '2023-11-02 10:52:34', 0),
(59, 7, 32, '2023-11-02 11:30:15', 0),
(60, 7, 33, '2023-11-02 11:32:41', 0),
(62, 7, 35, '2023-11-02 12:38:56', 0),
(63, 7, 36, '2023-11-02 15:27:32', 0),
(64, 7, 37, '2023-11-02 15:34:25', 1),
(65, 7, 38, '2023-11-02 15:44:07', 0),
(66, 7, 39, '2023-11-02 16:04:28', 1),
(67, 7, 40, '2023-11-02 17:07:26', 0),
(68, 7, 41, '2023-11-02 17:24:36', 0),
(69, 7, 42, '2023-11-02 18:44:13', 0),
(70, 7, 43, '2023-11-02 19:17:34', 0),
(71, 7, 44, '2023-11-02 19:29:05', 0),
(72, 7, 45, '2023-11-03 04:43:50', 1),
(73, 7, 46, '2023-11-03 05:56:40', 0),
(74, 7, 47, '2023-11-03 05:57:29', 0),
(75, 7, 48, '2023-11-03 06:14:20', 1),
(76, 7, 49, '2023-11-03 06:55:25', 0),
(77, 7, 50, '2023-11-03 09:22:28', 0),
(79, 7, 52, '2023-11-03 10:39:57', 1),
(80, 39, 53, '2023-11-03 12:17:21', 0),
(81, 7, 54, '2023-11-03 14:02:32', 0),
(82, 7, 55, '2023-11-03 15:45:42', 1),
(83, 7, 59, '2023-11-03 17:58:48', NULL),
(84, 7, 60, '2023-11-03 18:10:56', 1),
(85, 7, 61, '2023-11-03 18:45:20', 0),
(86, 7, 62, '2023-11-03 20:27:30', 0),
(87, 7, 63, '2023-11-04 07:33:54', 0),
(88, 39, 64, '2023-11-04 08:32:16', 0),
(89, 7, 65, '2023-11-04 09:01:58', 1),
(90, 7, 68, '2023-11-04 09:56:52', 0),
(91, 65, 69, '2023-11-04 10:30:54', 0),
(92, 65, 70, '2023-11-04 10:31:46', 0),
(93, 7, 71, '2023-11-04 11:17:33', 0),
(94, 7, 73, '2023-11-04 15:31:45', 1),
(95, 7, 74, '2023-11-04 15:48:15', 0),
(96, 7, 75, '2023-11-04 15:54:03', 0),
(97, 7, 76, '2023-11-04 16:59:14', 0),
(98, 7, 77, '2023-11-04 17:04:00', 0),
(99, 65, 78, '2023-11-04 19:22:43', 0),
(100, 7, 79, '2023-11-04 19:33:29', 1),
(101, 65, 80, '2023-11-04 19:52:11', 0),
(102, 7, 81, '2023-11-04 20:07:18', 1),
(103, 7, 82, '2023-11-05 02:41:54', 0),
(104, 7, 83, '2023-11-05 04:49:48', 0),
(105, 7, 84, '2023-11-05 06:35:27', 0),
(106, 7, 85, '2023-11-05 07:03:13', 0),
(108, 7, 87, '2023-11-05 09:16:48', 1),
(109, 7, 88, '2023-11-05 12:49:32', 1),
(110, 7, 89, '2023-11-05 12:53:29', 0),
(111, 7, 90, '2023-11-05 14:02:16', 1),
(112, 7, 91, '2023-11-05 18:06:17', 0),
(113, 7, 92, '2023-11-05 18:36:50', 0),
(114, 7, 93, '2023-11-06 03:45:31', 1),
(115, 90, 94, '2023-11-06 05:28:05', 0),
(116, 7, 95, '2023-11-06 06:36:40', 0),
(117, 7, 96, '2023-11-06 07:41:29', 0),
(118, 37, 97, '2023-11-06 08:27:51', 1),
(120, 37, 99, '2023-11-06 15:51:14', 1),
(122, 37, 101, '2023-11-06 15:57:16', 1),
(125, 7, 104, '2023-11-06 17:38:09', 0),
(126, 100, 105, '2023-11-06 17:44:58', 0),
(127, 7, 109, '2023-11-06 18:09:18', 0),
(128, 7, 110, '2023-11-06 18:23:25', 1),
(129, 37, 111, '2023-11-06 18:48:50', 1),
(130, 76, 112, '2023-11-06 19:33:22', 0),
(131, 7, 114, '2023-11-06 20:09:42', 0),
(132, 100, 117, '2023-11-07 01:31:32', 0),
(134, 100, 119, '2023-11-07 01:44:18', 0),
(135, 76, 120, '2023-11-07 03:54:16', 0),
(139, 7, 124, '2023-11-07 09:21:08', 0),
(140, 7, 125, '2023-11-07 09:22:59', 0),
(141, 7, 126, '2023-11-07 10:00:45', 0),
(142, 39, 127, '2023-11-07 10:11:57', 0),
(143, 7, 129, '2023-11-07 11:43:52', 0),
(144, 7, 130, '2023-11-07 12:11:52', 0),
(145, 7, 131, '2023-11-07 12:44:03', 0),
(150, 7, 136, '2023-11-07 16:03:35', 1),
(151, 7, 138, '2023-11-07 17:12:40', 1),
(152, 7, 139, '2023-11-07 18:32:48', 1),
(154, 7, 141, '2023-11-07 20:41:13', NULL),
(155, 139, 142, '2023-11-07 21:49:03', NULL),
(156, 123, 143, '2023-11-08 05:25:04', NULL),
(157, 37, 144, '2023-11-08 05:37:03', NULL),
(159, 7, 146, '2023-11-08 09:10:47', NULL),
(160, 7, 147, '2023-11-08 12:08:21', NULL),
(161, 7, 148, '2023-11-08 16:42:09', NULL),
(162, 7, 149, '2023-11-08 17:12:15', NULL),
(163, 7, 150, '2023-11-08 17:43:42', NULL),
(164, 7, 151, '2023-11-08 19:23:23', NULL),
(165, 7, 152, '2023-11-09 05:39:39', NULL),
(166, 7, 153, '2023-11-09 09:51:46', NULL),
(167, 7, 154, '2023-11-09 09:56:25', NULL),
(168, 86, 155, '2023-11-09 12:42:16', NULL),
(169, 7, 156, '2023-11-09 13:42:53', NULL),
(171, 151, 158, '2023-11-09 15:39:47', NULL),
(172, 7, 159, '2023-11-09 17:31:15', NULL),
(173, 7, 160, '2023-11-09 17:54:36', NULL),
(174, 7, 161, '2023-11-09 19:44:48', 1),
(175, 7, 162, '2023-11-09 20:06:45', NULL),
(176, 139, 163, '2023-11-10 01:28:22', NULL),
(177, 7, 164, '2023-11-10 05:06:31', NULL),
(178, 7, 165, '2023-11-10 07:20:33', 1),
(179, 138, 166, '2023-11-10 08:48:25', NULL),
(180, 138, 167, '2023-11-10 08:50:08', NULL),
(182, 139, 169, '2023-11-10 09:06:05', NULL),
(183, 161, 170, '2023-11-10 09:21:56', NULL),
(187, 138, 174, '2023-11-10 11:06:55', NULL),
(188, 7, 175, '2023-11-10 11:35:12', 1),
(189, 7, 176, '2023-11-10 11:55:39', 1),
(190, 7, 177, '2023-11-10 12:00:45', NULL),
(193, 7, 180, '2023-11-10 13:19:20', NULL),
(194, 7, 181, '2023-11-10 13:35:59', NULL),
(195, 7, 182, '2023-11-10 13:40:15', NULL),
(197, 7, 184, '2023-11-10 13:45:29', NULL),
(206, 7, 193, '2023-11-10 18:25:19', NULL),
(208, 79, 195, '2023-11-10 18:33:36', NULL),
(209, 139, 196, '2023-11-10 19:11:14', NULL),
(210, 7, 203, '2023-11-10 19:45:14', NULL),
(225, 98, 222, '2023-11-11 04:20:14', NULL),
(226, 213, 223, '2023-11-11 04:41:50', NULL),
(228, 213, 225, '2023-11-11 05:57:14', NULL),
(229, 7, 226, '2023-11-11 06:22:35', NULL),
(231, 7, 228, '2023-11-11 06:36:56', NULL),
(232, 213, 229, '2023-11-11 06:37:01', 1),
(234, 7, 231, '2023-11-11 07:27:12', NULL),
(235, 7, 232, '2023-11-11 09:43:24', NULL),
(236, 97, 233, '2023-11-11 10:19:12', NULL),
(238, 139, 235, '2023-11-11 10:36:19', NULL),
(239, 7, 236, '2023-11-11 11:14:00', NULL),
(240, 7, 237, '2023-11-11 12:03:06', NULL),
(242, 237, 239, '2023-11-11 13:29:01', NULL),
(243, 81, 240, '2023-11-11 14:09:28', NULL),
(244, 81, 241, '2023-11-11 14:11:37', NULL),
(245, 81, 244, '2023-11-11 14:16:11', NULL),
(246, 81, 245, '2023-11-11 14:30:08', NULL),
(247, 81, 246, '2023-11-11 14:31:47', NULL),
(248, 97, 247, '2023-11-11 15:29:37', NULL),
(249, 81, 248, '2023-11-11 15:31:00', NULL),
(250, 81, 249, '2023-11-11 15:44:04', NULL),
(251, 97, 250, '2023-11-11 15:59:28', NULL),
(252, 97, 251, '2023-11-11 16:54:20', NULL),
(253, 237, 252, '2023-11-11 17:09:26', NULL),
(254, 81, 253, '2023-11-11 17:12:14', NULL),
(255, 237, 254, '2023-11-11 17:25:43', NULL),
(260, 97, 259, '2023-11-11 18:04:20', NULL),
(261, 97, 260, '2023-11-11 18:20:21', NULL),
(262, 97, 262, '2023-11-11 18:27:39', NULL),
(263, 97, 263, '2023-11-11 19:07:20', NULL),
(264, 237, 264, '2023-11-11 19:10:50', NULL),
(265, 97, 265, '2023-11-11 19:57:43', NULL),
(266, 7, 266, '2023-11-11 20:10:44', NULL),
(267, 215, 273, '2023-11-11 21:35:28', NULL),
(268, 237, 274, '2023-11-11 22:32:41', NULL),
(269, 81, 275, '2023-11-11 22:36:06', NULL),
(270, 97, 276, '2023-11-12 02:23:56', NULL),
(272, 97, 278, '2023-11-12 03:10:05', NULL),
(274, 237, 280, '2023-11-12 04:19:49', NULL),
(276, 237, 282, '2023-11-12 05:05:53', NULL),
(277, 97, 283, '2023-11-12 05:32:26', NULL),
(281, 162, 287, '2023-11-12 07:15:12', NULL),
(282, 139, 292, '2023-11-12 09:18:45', NULL),
(284, 231, 294, '2023-11-12 09:22:42', NULL),
(285, 97, 295, '2023-11-12 09:28:13', NULL),
(286, 231, 296, '2023-11-12 09:28:43', NULL),
(287, 231, 297, '2023-11-12 09:45:33', NULL),
(288, 97, 298, '2023-11-12 09:48:04', NULL),
(289, 231, 299, '2023-11-12 09:55:43', NULL),
(290, 277, 300, '2023-11-12 11:22:54', NULL),
(291, 231, 301, '2023-11-12 13:03:47', NULL),
(293, 231, 303, '2023-11-12 13:16:33', NULL),
(294, 277, 304, '2023-11-12 13:18:23', NULL),
(297, 299, 307, '2023-11-12 14:45:32', NULL),
(298, 237, 308, '2023-11-12 14:45:34', NULL),
(299, 97, 309, '2023-11-12 15:54:40', NULL),
(301, 287, 311, '2023-11-12 16:31:52', NULL),
(303, 303, 314, '2023-11-12 17:31:26', NULL),
(304, 303, 315, '2023-11-12 17:35:10', NULL),
(305, 303, 316, '2023-11-12 17:36:14', NULL),
(307, 277, 319, '2023-11-12 18:13:45', NULL),
(308, 314, 320, '2023-11-12 18:46:26', NULL),
(309, 7, 321, '2023-11-13 01:33:23', NULL),
(310, 277, 322, '2023-11-13 04:10:40', NULL),
(312, 97, 325, '2023-11-13 07:13:33', NULL),
(316, 325, 335, '2023-11-13 10:14:49', NULL),
(318, 7, 337, '2023-11-13 10:17:04', NULL),
(322, 97, 342, '2023-11-13 11:55:28', NULL),
(323, 231, 343, '2023-11-13 11:56:13', NULL),
(329, 7, 349, '2023-11-13 13:54:19', NULL),
(330, 81, 350, '2023-11-13 14:01:24', NULL),
(333, 214, 353, '2023-11-13 15:39:07', NULL),
(337, 214, 357, '2023-11-13 16:58:28', NULL),
(338, 327, 359, '2023-11-13 18:12:51', NULL),
(341, 302, 362, '2023-11-13 19:08:50', NULL),
(342, 61, 363, '2023-11-13 19:26:57', NULL),
(343, 324, 364, '2023-11-14 00:57:54', NULL),
(344, 81, 365, '2023-11-14 02:21:14', NULL),
(348, 97, 369, '2023-11-14 05:25:24', NULL),
(349, 277, 370, '2023-11-14 05:29:09', NULL),
(350, 61, 371, '2023-11-14 05:31:47', NULL),
(351, 81, 372, '2023-11-14 06:53:12', NULL),
(353, 7, 375, '2023-11-14 07:48:00', NULL),
(354, 277, 376, '2023-11-14 08:55:30', NULL),
(356, 347, 378, '2023-11-14 10:02:55', NULL),
(357, 347, 379, '2023-11-14 10:36:53', NULL),
(358, 162, 380, '2023-11-14 10:46:49', NULL),
(361, 237, 383, '2023-11-14 11:51:53', NULL),
(362, 376, 384, '2023-11-14 12:57:57', NULL),
(365, 277, 387, '2023-11-14 14:53:21', NULL),
(367, 7, 389, '2023-11-14 14:55:55', NULL),
(370, 277, 392, '2023-11-14 16:04:40', NULL),
(371, 97, 393, '2023-11-14 16:05:13', NULL),
(374, 7, 396, '2023-11-14 16:27:40', NULL),
(381, 7, 403, '2023-11-14 18:30:41', NULL),
(382, 237, 404, '2023-11-14 19:36:07', NULL),
(383, 258, 405, '2023-11-15 01:49:49', NULL),
(388, 7, 410, '2023-11-15 04:04:31', NULL),
(390, 387, 412, '2023-11-15 05:00:30', NULL),
(395, 97, 417, '2023-11-15 08:38:55', NULL),
(399, 367, 421, '2023-11-15 12:26:30', NULL),
(400, 7, 422, '2023-11-15 12:44:39', NULL),
(403, 7, 425, '2023-11-15 14:15:28', NULL),
(404, 406, 426, '2023-11-15 14:19:03', NULL),
(406, 406, 428, '2023-11-15 14:49:03', NULL),
(408, 7, 430, '2023-11-15 14:58:18', NULL),
(409, 237, 431, '2023-11-15 15:07:23', NULL),
(410, 237, 432, '2023-11-15 15:09:29', NULL),
(411, 396, 433, '2023-11-15 15:24:35', NULL),
(412, 406, 434, '2023-11-15 15:24:57', NULL),
(413, 7, 435, '2023-11-15 15:50:51', NULL),
(417, 400, 447, '2023-11-15 20:03:26', NULL),
(418, 237, 448, '2023-11-15 20:27:57', NULL),
(419, 81, 449, '2023-11-15 21:51:25', NULL),
(420, 81, 450, '2023-11-15 23:04:05', NULL),
(422, 400, 452, '2023-11-16 01:06:49', NULL),
(423, 400, 453, '2023-11-16 02:04:18', NULL),
(425, 400, 455, '2023-11-16 02:37:01', NULL),
(427, 400, 457, '2023-11-16 03:04:53', NULL),
(428, 425, 458, '2023-11-16 03:46:17', NULL),
(431, 400, 461, '2023-11-16 04:41:55', NULL),
(440, 7, 470, '2023-11-16 07:46:48', NULL),
(442, 97, 472, '2023-11-16 08:12:45', NULL),
(443, 466, 473, '2023-11-16 08:16:30', NULL),
(445, 400, 475, '2023-11-16 08:34:07', NULL),
(446, 400, 476, '2023-11-16 08:38:33', NULL),
(449, 367, 479, '2023-11-16 09:45:46', NULL),
(452, 319, 482, '2023-11-16 10:34:04', NULL),
(453, 7, 483, '2023-11-16 11:01:27', NULL),
(454, 429, 484, '2023-11-16 11:17:59', NULL),
(455, 39, 485, '2023-11-16 11:28:09', NULL),
(456, 7, 486, '2023-11-16 12:10:34', NULL),
(458, 429, 488, '2023-11-16 12:26:01', NULL),
(459, 7, 489, '2023-11-16 12:28:07', NULL),
(460, 400, 490, '2023-11-16 12:41:08', NULL),
(461, 425, 491, '2023-11-16 12:49:46', NULL),
(462, 441, 492, '2023-11-16 12:53:26', NULL),
(463, 425, 493, '2023-11-16 12:56:10', NULL),
(464, 425, 494, '2023-11-16 12:56:54', NULL),
(465, 466, 496, '2023-11-16 12:58:21', NULL),
(466, 7, 497, '2023-11-16 13:12:30', NULL),
(467, 345, 498, '2023-11-16 13:55:31', NULL),
(468, 400, 499, '2023-11-16 14:01:01', NULL),
(470, 441, 501, '2023-11-16 14:14:07', NULL),
(472, 441, 503, '2023-11-16 14:34:40', NULL),
(473, 345, 504, '2023-11-16 14:42:28', NULL),
(474, 498, 505, '2023-11-16 14:51:12', NULL),
(477, 345, 508, '2023-11-16 15:21:31', NULL),
(478, 429, 510, '2023-11-16 15:27:47', NULL),
(480, 503, 512, '2023-11-16 15:34:33', NULL),
(486, 498, 519, '2023-11-16 16:00:13', NULL),
(488, 400, 521, '2023-11-16 16:09:30', NULL),
(495, 429, 528, '2023-11-16 17:17:04', NULL),
(496, 7, 529, '2023-11-16 17:29:14', NULL),
(502, 512, 535, '2023-11-16 18:11:44', NULL),
(503, 429, 536, '2023-11-16 18:28:40', NULL),
(504, 345, 539, '2023-11-16 23:38:30', NULL),
(506, 81, 541, '2023-11-17 02:01:14', NULL),
(508, 498, 545, '2023-11-17 03:05:52', NULL),
(511, 7, 548, '2023-11-17 03:43:10', NULL),
(512, 345, 549, '2023-11-17 03:51:11', NULL),
(513, 503, 550, '2023-11-17 03:54:26', NULL),
(514, 435, 551, '2023-11-17 04:00:51', NULL),
(515, 321, 552, '2023-11-17 04:30:34', NULL),
(516, 545, 553, '2023-11-17 05:30:29', NULL),
(519, 512, 558, '2023-11-17 06:14:55', NULL),
(520, 512, 559, '2023-11-17 06:47:37', NULL),
(521, 400, 560, '2023-11-17 06:53:14', NULL),
(522, 7, 561, '2023-11-17 06:57:51', NULL),
(523, 429, 562, '2023-11-17 07:01:37', NULL),
(524, 349, 563, '2023-11-17 07:13:00', NULL),
(525, 429, 564, '2023-11-17 07:17:58', NULL),
(526, 449, 566, '2023-11-17 07:19:55', NULL),
(527, 503, 568, '2023-11-17 07:29:06', NULL),
(528, 545, 569, '2023-11-17 07:37:50', NULL),
(529, 7, 570, '2023-11-17 07:39:51', NULL),
(530, 7, 571, '2023-11-17 07:40:24', NULL),
(531, 7, 572, '2023-11-17 07:40:54', NULL),
(532, 7, 573, '2023-11-17 07:43:53', NULL),
(533, 550, 574, '2023-11-17 07:56:02', NULL),
(534, 7, 575, '2023-11-17 07:59:03', NULL),
(535, 429, 576, '2023-11-17 08:00:24', NULL),
(536, 349, 577, '2023-11-17 08:10:12', NULL),
(537, 345, 578, '2023-11-17 08:10:21', NULL),
(538, 7, 579, '2023-11-17 08:12:47', NULL),
(539, 564, 580, '2023-11-17 08:18:48', NULL),
(540, 545, 581, '2023-11-17 08:25:48', NULL),
(543, 591, 592, '2024-03-10 08:17:44', NULL),
(544, 591, 593, '2024-03-10 08:34:17', NULL),
(545, 591, 594, '2024-03-10 08:53:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usd_rate`
--

CREATE TABLE `usd_rate` (
  `id` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usd_rate`
--

INSERT INTO `usd_rate` (`id`, `rate`) VALUES
(1, 111.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cnic` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(120) NOT NULL,
  `phoneNumber` varchar(55) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `city` varchar(55) NOT NULL,
  `completeAddress` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `sender_name` varchar(55) DEFAULT NULL,
  `sender_number` varchar(55) DEFAULT NULL,
  `trx_id` varchar(55) DEFAULT NULL,
  `payment_ok` int(11) DEFAULT 0,
  `approved` int(11) DEFAULT 0,
  `balance` decimal(11,6) DEFAULT 0.000000,
  `total_withdrawal` int(11) DEFAULT 0,
  `team` int(11) DEFAULT 0,
  `approved_at` datetime DEFAULT NULL,
  `rejected` int(11) DEFAULT 0,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `request` int(11) DEFAULT 0,
  `CurrTeam` int(11) DEFAULT 0,
  `refer_by` varchar(55) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `withdrawalAttempts` int(11) DEFAULT 0,
  `level_name` int(11) DEFAULT 1,
  `backend_wallet` decimal(10,2) DEFAULT 0.00,
  `balance_pkr` decimal(11,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `cnic`, `email`, `password`, `phoneNumber`, `dateOfBirth`, `city`, `completeAddress`, `gender`, `created_at`, `sender_name`, `sender_number`, `trx_id`, `payment_ok`, `approved`, `balance`, `total_withdrawal`, `team`, `approved_at`, `rejected`, `rejected_at`, `request`, `CurrTeam`, `refer_by`, `profile_picture`, `withdrawalAttempts`, `level_name`, `backend_wallet`, `balance_pkr`) VALUES
(24, 'Kashif Hussai', '3130120762121', 'KH4976567@gmail.com', '0011', '03458196838', '2003-03-15', 'Khanpur', 'Basti haj Muhammad Nawaz', 'Male', '2023-11-02 05:10:12', 'Kashif Hussain', '03458196838', '24573230906', 1, 1, 100.000000, 12000, 20, '2023-11-02 07:50:32', 0, NULL, 0, 0, '7', 'uploads/profilePicture-1710415594852.png', 3, 4, 0.00, 0),
(584, 'Mosa Kazam', '9281829', 'mosa kazaM', '010101', '0339088372', '2024-03-05', 'Lahore', 'LPOO', 'Male', '2024-03-06 15:54:02', 'Hassan', '0333882888', '120909912092', 1, 1, 1000.000000, 1500, 10, '2024-03-06 20:54:02', 0, NULL, 0, 10, '1', 'uploads/profilePicture-1702559081704.jpg', 0, 1, 0.00, 0),
(589, 'ALlesaa Aazam', '92810829', 'mosakazwaM@gmail.com', '0d10101', '0319088372', '2024-03-05', 'Lahore', 'LPOO', 'Male', '2024-03-06 15:54:02', 'Hassan', '0333882888', '109099132092', 1, 1, 1000.000000, 1500, 10, '2024-03-06 20:54:02', 0, NULL, 0, 10, '593', 'uploads/profilePicture-1708938300894.jpg', 0, 1, 0.00, 0),
(590, 'Muhammad Aizaz', '2341', 'azazkhan1992@gmail.com', '0101', '03369318885', '1970-01-14', 'Layyah', 'Karor Lal-e-hussain , layyah', 'Female', '2024-03-08 21:11:01', 'koin', '03337478478', '32', 1, 1, 0.000000, 0, 0, '2024-03-09 03:29:46', 0, NULL, 0, 15, '24', 'uploads/profilePicture-1708938300894.jpg', 0, 1, 30.00, 0),
(591, 'Jamaal Beer', '3213', 'jamalali@gmail.com', '0011', '03444444999', '1979-09-07', 'Asheboro', '206 Yzex St', 'Male', '2024-03-09 15:55:06', 'Monik', '03444444999', '99229087127', 1, 1, 40.000000, 0, 0, '2024-03-09 20:58:07', 0, NULL, 0, 3, '24', 'uploads/profilePicture-1702559081704.jpg', 0, 2, 32.00, 0),
(592, 'iqra malik', '7878787878', 'iqra@malik.com', '0011', '03369318885', '1970-02-01', 'Layyah', 'Karor Lal-e-hussain , layyah', 'Male', '2024-03-10 08:17:44', 'iqk', '03444444999', '89727987817', 1, 1, 0.000000, 0, 0, '2024-03-10 13:20:03', 0, NULL, 0, 0, '591', 'uploads/profilePicture-1708938300894.jpg', 0, 1, 2.00, 0),
(593, 'Malika', '732873782', 'maliksanwal2626@gmail.com', '0011', '03444444999', '1995-12-12', 'Asheboro', '206 Yzex St', 'Male', '2024-03-10 08:34:17', 'Malika', '03444444999', '76767676761', 1, 1, 0.000000, 0, 0, '2024-03-10 13:34:54', 0, NULL, 0, 0, '591', 'uploads/profilePicture-1702559081704.jpg', 0, 1, 2.00, 0),
(594, 'Kazi', '837728818', 'kaskksak@kaskas.comq', '0011', '03444444999', '1976-07-07', 'mULTAN', 'Multan', 'Male', '2024-03-10 08:53:28', 'Mosa Kazam', '03337478478', '76767676769', 1, 1, 0.000000, 0, 0, '2024-03-10 13:55:06', 0, NULL, 0, 0, '591', 'uploads/profilePicture-1708938300894.jpg', 0, 1, 2.00, 0);

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `team_withdrawal_requests` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
    UPDATE withdrawal_requests
    SET team = NEW.team
    WHERE withdrawal_requests.user_id = NEW.id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `total_withdrawal_requests` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
    UPDATE withdrawal_requests
    SET total_withdrawn = NEW.total_withdrawal
    WHERE withdrawal_requests.user_id = NEW.id; -- Assuming 'id' is the column name in 'users' table
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_withdrawal_requests` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
    UPDATE withdrawal_requests
    SET CurrTeam = NEW.CurrTeam
    WHERE withdrawal_requests.user_id = NEW.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_product_clicks`
--

CREATE TABLE `user_product_clicks` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `last_clicked` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_product_clicks`
--

INSERT INTO `user_product_clicks` (`user_id`, `product_id`, `last_clicked`) VALUES
(24, 14, '2024-03-13 21:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_requests`
--

CREATE TABLE `withdrawal_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `request_date` datetime NOT NULL DEFAULT current_timestamp(),
  `approved` varchar(11) DEFAULT 'pending',
  `approved_time` datetime DEFAULT NULL,
  `reject` int(11) DEFAULT 0,
  `team` int(11) DEFAULT 0,
  `reject_at` timestamp NULL DEFAULT NULL,
  `total_withdrawn` int(11) DEFAULT 0,
  `CurrTeam` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdrawal_requests`
--

INSERT INTO `withdrawal_requests` (`id`, `user_id`, `amount`, `account_name`, `account_number`, `bank_name`, `request_date`, `approved`, `approved_time`, `reject`, `team`, `reject_at`, `total_withdrawn`, `CurrTeam`) VALUES
(1, 24, 1000.00, 'mosa', '03338976656', 'EasyPaisa', '2024-03-13 15:26:21', 'approved', '2024-03-13 15:29:45', 0, 20, NULL, 12000, '0'),
(2, 24, 12.00, 'Hadi', '0333', 'JazzCash', '2024-03-14 23:30:37', 'approved', '2024-03-14 23:30:02', 0, 0, NULL, 0, NULL),
(3, 24, 12.00, 'Hadi', '0333', 'JazzCash', '2024-03-14 23:30:40', 'approved', '2024-03-14 23:30:02', 0, 0, NULL, 0, NULL),
(4, 24, 12.00, 'Hadi', '0333', 'JazzCash', '2024-03-14 23:31:01', 'pending', '2024-03-14 23:30:02', 0, 0, NULL, 0, NULL),
(5, 24, 12.00, 'Hadi', '0333', 'JazzCash', '2024-03-14 23:31:08', 'reject', '2024-03-14 23:30:02', 0, 0, NULL, 0, NULL),
(6, 24, 12.00, 'Hadi', '0333', 'JazzCash', '2024-03-14 23:37:58', 'approved', '2024-03-14 23:30:02', 0, 0, NULL, 0, NULL),
(7, 24, 12.00, 'Hadi', '0333', 'JazzCash', '2024-03-14 23:38:04', 'pending', '2024-03-14 23:30:02', 0, 0, NULL, 0, NULL),
(8, 24, 12.00, 'Hadi', '0333', 'JazzCash', '2024-03-14 23:38:08', 'pending', '2024-03-14 23:30:02', 0, 0, NULL, 0, NULL),
(9, 24, 12.00, 'Hadi', '0333', 'JazzCash', '2024-03-14 23:38:15', 'reject', '2024-03-14 23:30:02', 0, 0, NULL, 0, NULL),
(10, 24, 12.00, 'Hadi', '0333', 'JazzCash', '2024-03-14 23:38:17', 'reject', '2024-03-14 23:30:02', 0, 0, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joining_fee`
--
ALTER TABLE `joining_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usd_rate`
--
ALTER TABLE `usd_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cnic` (`cnic`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `trx_id` (`trx_id`);

--
-- Indexes for table `user_product_clicks`
--
ALTER TABLE `user_product_clicks`
  ADD PRIMARY KEY (`user_id`,`product_id`);

--
-- Indexes for table `withdrawal_requests`
--
ALTER TABLE `withdrawal_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT for table `usd_rate`
--
ALTER TABLE `usd_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;

--
-- AUTO_INCREMENT for table `withdrawal_requests`
--
ALTER TABLE `withdrawal_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
