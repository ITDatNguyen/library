-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2018 at 03:53 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `fac`
--

CREATE TABLE `fac` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fac`
--

INSERT INTO `fac` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Wifi', NULL, NULL),
(3, 'Bể Bơi', NULL, NULL),
(4, 'Bữa Sáng Miễn Phí', NULL, NULL),
(5, 'Phòng Tập Gym', NULL, NULL),
(6, 'Giặt Sấy', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `County` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TelephoneNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ImagePath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `partner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `Name`, `Address`, `County`, `TelephoneNumber`, `ImagePath`, `created_at`, `updated_at`, `description`, `partner_id`) VALUES
(1, 'Windy Hotel', '59 An Thượng 26', '2', '0964337760', 'imag.jpg', '2018-11-27 19:54:12', '2018-11-27 23:46:19', 'Nằm cách Cầu khóa tình yêu Đà Nẵng 2,6 km, Windy Hotel cung cấp chỗ ở với Wi-Fi miễn phí tại thành phố Đà Nẵng. Nơi nghỉ này nằm trong bán kính khoảng 3,3 km từ Bảo tàng Chăm và 3,7 km từ Cầu Sông Hàn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotels_fac`
--

CREATE TABLE `hotels_fac` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `fac_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotels_fac`
--

INSERT INTO `hotels_fac` (`id`, `hotel_id`, `fac_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 4, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 2, 3, NULL, NULL),
(5, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_photos`
--

CREATE TABLE `hotel_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel_photos`
--

INSERT INTO `hotel_photos` (`id`, `hotel_id`, `path`, `created_at`, `updated_at`) VALUES
(1, 1, '/hotelphotos/photos/1543373652bd81466066064_khach_san_mayana.jpg', '2018-11-27 19:54:12', '2018-11-27 19:54:12'),
(2, 1, '/hotelphotos/photos/1543373756img_9389.jpg', '2018-11-27 19:55:56', '2018-11-27 19:55:56'),
(3, 1, '/hotelphotos/photos/1543373756img_9457.jpg', '2018-11-27 19:55:56', '2018-11-27 19:55:56'),
(4, 1, '/hotelphotos/photos/1543373757img_9458.jpg', '2018-11-27 19:55:57', '2018-11-27 19:55:57'),
(5, 1, '/hotelphotos/photos/1543373757khach-san-7324.jpg', '2018-11-27 19:55:57', '2018-11-27 19:55:57'),
(6, 1, '/hotelphotos/photos/1543373757stan_tw.jpg', '2018-11-27 19:55:57', '2018-11-27 19:55:57'),
(7, 1, '/hotelphotos/photos/1543373757stan_tw2.jpg', '2018-11-27 19:55:58', '2018-11-27 19:55:58'),
(8, 2, '/hotelphotos/photos/1543388930images.jpg', '2018-11-28 00:08:50', '2018-11-28 00:08:50'),
(9, 2, '/hotelphotos/photos/1543388941img_9389.jpg', '2018-11-28 00:09:01', '2018-11-28 00:09:01'),
(10, 2, '/hotelphotos/photos/1543388946img_9457.jpg', '2018-11-28 00:09:06', '2018-11-28 00:09:06'),
(11, 2, '/hotelphotos/photos/1543388946img_9458.jpg', '2018-11-28 00:09:06', '2018-11-28 00:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(55, '2014_10_12_000000_create_users_table', 1),
(56, '2014_10_12_100000_create_password_resets_table', 1),
(57, '2017_01_04_001151_create_hotels_table', 1),
(58, '2017_01_04_143759_create_reviews_table', 1),
(59, '2017_01_05_215637_Add_description_to_hotels_table', 1),
(60, '2017_01_05_231104_create_rooms_table', 1),
(61, '2017_01_08_141939_create_roles_table', 1),
(62, '2017_01_08_144745_add_role_foreignkey_to_users_table', 1),
(63, '2017_01_09_083846_create_proposal_table', 1),
(64, '2017_01_10_172736_create_partners_table', 1),
(65, '2017_01_11_191818_add_partnerid_to_hotels_table', 1),
(66, '2017_01_13_084005_make_hotelsid_foreign_key_on_rooms_table', 1),
(67, '2017_01_13_181402_create_hotel_photos_table', 1),
(68, '2017_01_15_190055_add_totalrooms_to_rooms_table', 1),
(69, '2017_01_15_192737_create_reservations_table', 1),
(70, '2017_01_21_154851_add_rating_to_reviews_table', 1),
(71, '2018_11_14_040813_create_fac_table', 1),
(72, '2018_11_14_040941_create_hotels_fac_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `CompanyName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CompanyEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HQAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `user_id`, `CompanyName`, `CompanyEmail`, `HQAddress`, `created_at`, `updated_at`) VALUES
(1, 1, 'Windy Hotel', 'tringuyendonga@gmail.com', '59 An Thượng 26, Đà Nẵng, Việt Nam', '2018-11-27 19:51:42', '2018-11-27 19:51:42'),
(2, 4, 'VietTri Hotel', 'viettrihotel@gmail.com', '472 Nui Thanh', '2018-11-27 23:52:41', '2018-11-27 23:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `CompanyName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CompanyEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HQAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Vision` text COLLATE utf8_unicode_ci NOT NULL,
  `ImagePath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card` int(11) NOT NULL,
  `cv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `country_code` int(11) NOT NULL,
  `authy_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`id`, `user_id`, `CompanyName`, `CompanyEmail`, `HQAddress`, `Vision`, `ImagePath`, `fname`, `lname`, `card`, `cv`, `phone_number`, `country_code`, `authy_id`, `verified`, `created_at`, `updated_at`) VALUES
(5, 8, 'Khách sạn 5 sao', 'itdatnv@gmail.com', 'k148/4 y lan nguyen phi', 'khach san lon tai da nang', '1543388382img_9457.jpg', 'Dat ', 'Nguyen', 23232323, 'Giam doc', 964337760, 84, '111593416', 1, '2018-11-27 23:59:43', '2018-11-28 00:01:20'),
(6, 9, 'Khách sạn 5 sao', 'itdat@gmail.com', 'dat', 'dat', '1543456528Capture.PNG', 'Khách', '1', 23232323, 'Giam doc', 978150137, 84, '112761880', 0, '2018-11-28 18:55:28', '2018-11-28 18:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `guestName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CheckIn` date NOT NULL,
  `CheckOut` date NOT NULL,
  `totalPrice` int(10) UNSIGNED NOT NULL,
  `statuspayment` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `hotel_id`, `room_id`, `user_id`, `guestName`, `phone`, `CheckIn`, `CheckOut`, `totalPrice`, `statuspayment`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 1, 'mai vũ xuân dư', '0348846043', '2018-12-05', '2018-12-06', 600000, 1, '2018-11-27 20:02:55', '2018-11-27 20:02:55'),
(6, 1, 1, 4, 'viet tri', '0964337760', '2018-11-28', '2018-11-29', 500000, 0, '2018-11-27 20:47:17', '2018-11-27 20:47:17'),
(14, 1, 2, 5, 'Nguyễn Viết Trí', '0964337760', '2018-11-29', '2018-11-30', 600000, 0, '2018-11-27 22:20:17', '2018-11-27 22:20:17'),
(15, 1, 3, 5, 'Nguyễn Văn Đạt', '0706114419', '2018-11-29', '2018-11-30', 400000, 0, '2018-11-27 22:20:54', '2018-11-27 22:20:54'),
(16, 1, 1, 5, 'Bùi Quang Linh', '0703853350', '2018-11-29', '2018-11-30', 500000, 0, '2018-11-27 22:21:47', '2018-11-27 22:21:47'),
(17, 1, 2, 2, 'mai vũ xuân dư', '0348846043', '2018-12-20', '2018-12-21', 600000, 1, '2018-11-27 23:39:45', '2018-11-27 23:39:45'),
(18, 1, 1, 2, 'Nguyễn Viết Trí', '0348846043', '2018-11-28', '2018-11-29', 500000, 0, '2018-11-28 00:13:04', '2018-11-28 00:13:04'),
(19, 1, 2, 2, 'Nguyễn Văn Đạt', '0348846043', '2018-11-28', '2018-11-29', 600000, 1, '2018-11-28 00:14:02', '2018-11-28 00:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `RoleName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `RoleName`, `created_at`, `updated_at`) VALUES
(1, 'Manager Hotel', NULL, NULL),
(2, 'User', NULL, NULL),
(4, 'Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `RoomType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Capacity` int(11) NOT NULL,
  `BedOption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `View` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `TotalRooms` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `hotel_id`, `RoomType`, `Capacity`, `BedOption`, `Price`, `View`, `created_at`, `updated_at`, `TotalRooms`) VALUES
(1, 1, 'Phòng Tiêu Chuẩn', 2, '1 giường đôi lớn', 500000, 'Nhìn Ra Biển', '2018-11-27 19:58:55', '2018-11-27 19:58:55', 3),
(2, 1, 'Phòng 4 Người Hạng Tiết kiệm', 4, '2 giường đôi lớn.', 600000, 'Nhìn Ra Biển', '2018-11-27 19:59:57', '2018-11-27 19:59:57', 4),
(3, 1, ' Studio Nhìn ra Biển', 1, '1 Giường Đơn', 400000, 'Nhìn Ra Biển', '2018-11-27 20:00:33', '2018-11-27 20:00:33', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'managerhotel', 'tringuyendonga@gmail.com', '$2y$10$Ph9keycjYFdatzsn8Amvc.31eygm6RczAK.eP5zpwFjbuFUoOl/8q', 'ZOMDg9PlahqQ7t24moAtOi3GLuQRATwsRmIz01W6hnSqYrwlBTO93EpSPHA1', NULL, '2018-11-28 00:11:55', 1),
(2, 'Mai Dư', 'maixuandu96@gmail.com', '$2y$10$0Pm.jVSZ/O6q3OmgBlARQufwvFiQRYnFUNGnfk2a.mb3L9OLDQTDG', 'zE5NYwE0fleiZf5R4xphqRwwHCgbL8FnsNg4G0sLMT8QoHdgNsTAcPcu1s27', NULL, '2018-11-27 23:45:49', 2),
(3, 'admin', 'admin@gmail.com', '$2y$10$1N6cvIqvL8lQZUAk6.YXh.7RbXKnFxb0G3mt3RcT9AJrQo.iJicpq', 'wpNnvcwgPLHZmjDBJ8Smxr3Aspxi3MTIKsLSrSKFbDdxJHwQFOo6fWlnmEJr', NULL, '2018-11-27 21:18:22', 4),
(4, 'VietTri', 'viettri@gmail.com', '$2y$10$sgQD7GjMzW7G4rI1H2mGxuC3nTgMI44dLFFNZZi9djchpLuCMVG0e', 'JCZDo0iJj6qtZAotAW97WnqI4kEcdyczqhBcFsJNqdiqVQZZHdjp7Lnu0U99', '2018-11-27 20:45:45', '2018-11-27 23:52:41', 1),
(5, 'tai khoan test', 'test@gmail.com', '$2y$10$gmRTvGB6LgeMwheH3..kJOPStxqX8pZhVVB02fDdEZkWdBOORSL9i', 'eOPyQyDMFxPvX4tj9mRHL5RlaKdBwbaq5nH3oXYXNWpYczF4WjcSPobuwpwP', '2018-11-27 22:19:41', '2018-11-27 22:24:09', 2),
(6, 'Tri', 'tri1996@gmail.com', '$2y$10$iJfOqJUxvewokQfb8EhCaubIpKm8GgpiU5IHOPDGjlkgjOo6VQunC', 'MiVVb8Sm7Pt4RmF09tsxJ0AXSXXv58324tvwCGpE7g5HeuAQuTeVnOm91umi', '2018-11-27 22:52:19', '2018-11-27 23:38:37', 2),
(7, 'Tri', 'tri@gmail.com', '$2y$10$fy1Dp2WdmT8I8/SBfVaOfO9MA2Y39FHu4scr4bVlR3MEDdrP10aYe', 'h89xgTbmLcteDz8uirYZ9GlA7f9C6G8Lp5TBpEanYgj3ucNc1QpWUukatBgo', '2018-11-27 23:51:26', '2018-11-27 23:53:22', 2),
(8, 'Dat NGuyen', 'dat@gmail.com', '$2y$10$C.lMMYSNTn35FUXe77eVwuSPYyHDvI4oVif9EzsTg/bggMqtvTVE6', 'OQ2NEaA761uCWnKc1WIZBvuAgd08B8WmN6ouDhXHz7PfXtwH2uIvHvzjenWR', '2018-11-27 23:56:36', '2018-11-28 00:07:35', 2),
(9, 'DatNguyen', 'itdatnv@gmail.com', '$2y$10$ow6j6o7G6PKH5E/n17GM/eXtR6c1m5MDVSd8RCfVS3h8LdJtK1nfy', NULL, '2018-11-28 18:35:18', '2018-11-28 18:35:18', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fac`
--
ALTER TABLE `fac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_partner_id_foreign` (`partner_id`);

--
-- Indexes for table `hotels_fac`
--
ALTER TABLE `hotels_fac`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_fac_hotel_id_index` (`hotel_id`),
  ADD KEY `hotels_fac_fac_id_index` (`fac_id`);

--
-- Indexes for table `hotel_photos`
--
ALTER TABLE `hotel_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_index` (`user_id`),
  ADD KEY `reviews_hotel_id_index` (`hotel_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_rolename_unique` (`RoleName`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_hotel_id_index` (`hotel_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fac`
--
ALTER TABLE `fac`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotels_fac`
--
ALTER TABLE `hotels_fac`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel_photos`
--
ALTER TABLE `hotel_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
