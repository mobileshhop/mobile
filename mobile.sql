-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 18, 2019 lúc 02:29 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mb_categories`
--

CREATE TABLE `mb_categories` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mb_categories`
--

INSERT INTO `mb_categories` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(1, 'iPhone', 'iphone', NULL, NULL),
(2, 'Samsung', 'samsung', NULL, NULL),
(3, 'LG', 'lg', '2019-04-16 04:21:09', '2019-04-16 04:21:09'),
(4, 'Sony', 'sony', '2019-04-17 04:36:04', '2019-04-17 04:36:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mb_comment`
--

CREATE TABLE `mb_comment` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mb_comment`
--

INSERT INTO `mb_comment` (`com_id`, `com_email`, `com_name`, `com_content`, `com_product`, `created_at`, `updated_at`) VALUES
(1, 'mobileadmin@gmail.com', 'Duy Long', 'Sản Phẩm Còn Hàng Không', 5, '2019-04-16 23:36:33', '2019-04-16 23:36:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mb_products`
--

CREATE TABLE `mb_products` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mb_products`
--

INSERT INTO `mb_products` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_warranty`, `prod_accessories`, `prod_condition`, `prod_promotion`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(4, 'Iphone 6 Plus', 'iphone-6-plus', 11900000, 'iphone-6s-plus-silver-thumb_n8vx-y7.jpg', '12 Tháng', 'Sạc,Tai Nghe', 'Mới 100%', 'Dán Cường Lức', 1, '<p>h&agrave;ng mới 100 %</p>', 1, 1, '2019-04-16 10:57:50', '2019-04-16 10:57:50'),
(5, 'Iphone 6 Plus', 'iphone-6-plus', 10900000, 'iphone-6s-plus-silver-thumb_n8vx-y7.jpg', '12 Tháng', 'Sạc,Tai Nghe', 'máy mới 100%', 'Dán Cường Lức', 1, '<p>M&aacute;y Mới 100%</p>', 1, 1, '2019-04-16 11:00:21', '2019-04-16 11:00:21'),
(6, 'SamSung', 'samsung', 12000000, 'iphone-6s-plus-silver-thumb_n8vx-y7.jpg', '123', 'Sạc,Tai Nghe', 'máy mới 100%', 'Dán Cường Lức', 1, '<p>1231231231231231</p>', 1, 2, '2019-04-16 11:27:57', '2019-04-16 11:27:57'),
(8, 'Đã Được Sửa', 'da-duoc-sua', 123123123, 'wallpaper2you_429730.jpg', '12 Tháng', 'Sạc,Tai Nghe', 'máy mới 100%', 'Dán Cường Lức', 0, '<p>het</p>', 1, 2, '2019-04-16 11:32:49', '2019-04-16 11:56:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mb_users`
--

CREATE TABLE `mb_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mb_users`
--

INSERT INTO `mb_users` (`id`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mobileadmin@gmail.com', '$2y$10$QmIAZ2H8ZyfXYCLACjvgv.xyScCQ169fFJgxIaso2qNuRYkuk3OqS', 1, 'AECiUGbQdz4lyAox5FBqiW3w1SMNrakFKShh1MfpDWD8p42k87GW5qHITg6Y', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_14_154342_mb_users', 1),
(4, '2019_04_16_100520_mb_categories', 2),
(5, '2019_04_16_151700_mb_products', 3),
(6, '2019_04_17_062117_mb_comment', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `mb_categories`
--
ALTER TABLE `mb_categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `mb_comment`
--
ALTER TABLE `mb_comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `mb_comment_com_product_foreign` (`com_product`);

--
-- Chỉ mục cho bảng `mb_products`
--
ALTER TABLE `mb_products`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `mb_products_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `mb_users`
--
ALTER TABLE `mb_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `mb_categories`
--
ALTER TABLE `mb_categories`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `mb_comment`
--
ALTER TABLE `mb_comment`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `mb_products`
--
ALTER TABLE `mb_products`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `mb_users`
--
ALTER TABLE `mb_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `mb_comment`
--
ALTER TABLE `mb_comment`
  ADD CONSTRAINT `mb_comment_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `mb_products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `mb_products`
--
ALTER TABLE `mb_products`
  ADD CONSTRAINT `mb_products_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `mb_categories` (`cate_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
