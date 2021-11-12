-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 05:40 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phongtro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_password`) VALUES
(1, 'duc2410', '24102000');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `image_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`image_id`, `room_id`, `image`) VALUES
(24, 81, '1618992541km2.jpg'),
(25, 81, '1618992541km3.jpg'),
(26, 81, '1618992541km4.jpg'),
(27, 82, '1619018487cg2.jpg'),
(28, 82, '1619018487cg3.jpg'),
(29, 82, '1619018487cg4.jpg'),
(30, 83, '1619058705tx2.jpg'),
(31, 83, '1619058705tx3.jpg'),
(32, 84, '1619060129vt2.jpg'),
(33, 84, '1619060129vt3.jpg'),
(34, 85, '1619060779ht2.jpg'),
(35, 85, '1619060779ht3.jpg'),
(36, 86, '1619062125tx3.jpg'),
(37, 86, '1619062125vt3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cate_id`, `cate_name`) VALUES
(1, 'Phòng trọ'),
(2, 'Chung cư mini'),
(3, 'Căn hộ dịch vụ - Homestay');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `commen_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `loca_id` int(11) NOT NULL,
  `loca_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`loca_id`, `loca_name`) VALUES
(1, 'Ba Đình'),
(2, 'Bắc Từ Liêm'),
(3, 'Cầu Giấy'),
(4, 'Đống Đa'),
(5, 'Hà Đông'),
(6, 'Hai Bà Trưng	'),
(7, 'Hoàn Kiếm	'),
(8, 'Hoàng Mai	'),
(9, 'Long Biên	'),
(10, 'Nam Từ Liêm	'),
(11, 'Tây Hồ	'),
(12, 'Thanh Xuân	');

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE `notify` (
  `notify_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `landlords` int(11) DEFAULT NULL,
  `renter` int(11) DEFAULT NULL,
  `room_id` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notify`
--

INSERT INTO `notify` (`notify_id`, `admin_id`, `landlords`, `renter`, `room_id`, `message`, `create_at`) VALUES
(20, NULL, 1, NULL, 81, 'Tin của bạn đang chờ duyệt được phê duyệt từ admin và sẽ được xác nhận trong thời gian tới', '2021-04-21 08:09:01'),
(21, NULL, 2, NULL, 82, 'Tin của bạn đang chờ duyệt được phê duyệt từ admin và sẽ được xác nhận trong thời gian tới', '2021-04-21 15:21:27'),
(22, NULL, NULL, 2, 81, 'Bạn đã đặt lịch xem phòng này vào 2021-04-30', '2021-04-21 15:59:06'),
(23, NULL, 1, 2, 81, 'Có người đã đặt lịch xem phòng này vào ngày 2021-04-30', '2021-04-21 15:54:20'),
(24, NULL, 1, NULL, 83, 'Tin của bạn đang chờ duyệt được phê duyệt từ admin và sẽ được xác nhận trong thời gian tới', '2021-04-22 02:31:45'),
(25, NULL, 1, NULL, 84, 'Tin của bạn đang chờ duyệt được phê duyệt từ admin và sẽ được xác nhận trong thời gian tới', '2021-04-22 02:55:29'),
(26, NULL, 2, NULL, 85, 'Tin của bạn đang chờ duyệt được phê duyệt từ admin và sẽ được xác nhận trong thời gian tới', '2021-04-22 03:06:19'),
(27, NULL, 2, NULL, 86, 'Tin của bạn đang chờ duyệt được phê duyệt từ admin và sẽ được xác nhận trong thời gian tới', '2021-04-22 03:28:45'),
(28, NULL, NULL, 2, 83, 'Bạn đã đặt lịch xem phòng này vào 2021-04-24', '2021-04-22 03:35:38'),
(29, NULL, 1, 2, 83, 'Có người đã đặt lịch xem phòng này vào ngày 2021-04-24', '2021-04-22 03:34:11'),
(30, NULL, NULL, 1, 82, 'Bạn đã đặt lịch xem phòng này vào 2021-04-23', '2021-04-22 09:36:13'),
(31, NULL, 2, 1, 82, 'Có người đã đặt lịch xem phòng này vào ngày 2021-04-23', '2021-04-22 09:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `image` varchar(150) NOT NULL,
  `address` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `area` float NOT NULL,
  `summary` text NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `day_start` date NOT NULL,
  `day_end` date NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `loca_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `visible` int(1) NOT NULL DEFAULT 1,
  `censorship` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_name`, `image`, `address`, `price`, `area`, `summary`, `latitude`, `longitude`, `day_start`, `day_end`, `create_at`, `user_id`, `cate_id`, `loca_id`, `status`, `visible`, `censorship`) VALUES
(81, 'Cho thuê chung cư mini, căn hộ studio ', '1618992541-km1.jpg', 'Số 9-10, Dãy B5 Ngõ 7 Kim Mã Thượng', 7300000, 45, '<p>T&ograve;a nh&agrave; m&atilde; số&nbsp;<strong>BD002</strong>&nbsp;thiết kế cao 6 tầng, gồm 11 ph&ograve;ng, khu để xe v&agrave; khu phơi đồ.</p>\r\n\r\n<p><strong>Tổng quan căn ph&ograve;ng</strong></p>\r\n\r\n<p>Ph&ograve;ng thiết kế dạng studio sang trọng với đầy đủ nội thất, ph&ograve;ng c&oacute; cửa ch&iacute;nh, cửa sổ tho&aacute;ng m&aacute;t, ban c&ocirc;ng phơi đồ rộng r&atilde;i. Cửa ra v&agrave;o ph&ograve;ng t&iacute;ch hợp m&atilde; kh&oacute;a đảm bảo an ninh tốt nhất cho căn ph&ograve;ng.</p>\r\n\r\n<ul>\r\n	<li>Nội thất cơ bản gồm: Điều h&ograve;a, n&oacute;ng lạnh, giường ngủ, tủ lạnh, b&agrave;n ghế sofa, chậu rửa, tủ bếp, b&agrave;n bếp, m&aacute;y h&uacute;t m&ugrave;i, m&aacute;y giặt, tủ quần &aacute;o, r&egrave;m cửa.</li>\r\n	<li>Chi ph&iacute; điện nước: &Aacute;p dụng t&iacute;nh gi&aacute; nh&agrave; nước (ti&ecirc;u chuẩn nh&agrave; nước).</li>\r\n	<li>&nbsp;An ninh t&ograve;a nh&agrave;: Camera theo d&otilde;i 24h; Kh&oacute;a v&acirc;n tay bảo mật.</li>\r\n	<li>&nbsp;Tiện &iacute;ch t&ograve;a nh&agrave;: Khu để xe miễn ph&iacute;; M&aacute;t giặt chung miễn ph&iacute;; Khu phơi đồ chung miễn ph&iacute;; Tự do đi lại 24h, kh&ocirc;ng chung chủ.</li>\r\n</ul>\r\n\r\n<p>Ph&ograve;ng trọ ph&ugrave; hợp d&agrave;nh cho c&aacute;c hộ gia đ&igrave;nh, người đi l&agrave;m.</p>\r\n', 0, 0, '2021-04-21', '2021-05-06', '2021-04-22 18:54:58', 1, 2, 1, 1, 1, 1),
(82, 'Phòng trọ cho thuê full nội thất', '1619018487-cg1.jpg', 'Số 33A, Ngõ 48 Nguyễn Khánh Toàn', 4000000, 30, '<p>T&ograve;a nh&agrave; m&atilde; số&nbsp;<strong>CG005</strong>&nbsp;được thiết kế cao 6 tầng, cụ thể tầng 1 l&agrave; khu để xe cho người thu&ecirc; ph&ograve;ng, từ tầng 2 - 6 gồm 8 ph&ograve;ng, tr&ecirc;n tầng 6 c&oacute; 1 ph&ograve;ng ngủ v&agrave; khu phơi đồ chung cho cả t&ograve;a nh&agrave;.</p>\r\n\r\n<p>Trang thiết bị ph&ograve;ng ch&aacute;y chữa ch&aacute;y được bố tr&iacute; ở h&agrave;ng lang của mỗi tầng, thiết bị camera theo d&otilde;i được lắp đặt ở trước cổng t&ograve;a nh&agrave; v&agrave; khu để xe đảm bảo an ninh cho t&ograve;a nh&agrave;.</p>\r\n\r\n<p><strong>M&ocirc; tả ph&ograve;ng</strong></p>\r\n\r\n<ul>\r\n	<li>Nội thất cơ bản gồm: Điều h&ograve;a, n&oacute;ng lạnh, giường ngủ, b&agrave;n bếp, tủ quần &aacute;o, r&egrave;m cửa.</li>\r\n	<li>Chi ph&iacute; điện nước: &Aacute;p dụng t&iacute;nh gi&aacute; nh&agrave; nước (ti&ecirc;u chuẩn nh&agrave; nước).</li>\r\n	<li>&nbsp;An ninh t&ograve;a nh&agrave;: Camera theo d&otilde;i 24h; Kh&oacute;a v&acirc;n tay bảo mật.</li>\r\n	<li>Tiện &iacute;ch t&ograve;a nh&agrave;: Khu phơi đồ chung; M&aacute;y giặt miễn ph&iacute;; Khu để xe miễn ph&iacute;; Tự do đi lại 24h, kh&ocirc;ng chung chủ; Trang thiết bị ph&ograve;ng ch&aacute;y chữa ch&aacute;y (PCCC) đầy đủ.</li>\r\n</ul>\r\n\r\n<p>T&ograve;a nh&agrave; ph&ugrave; hợp với mọi kh&aacute;ch h&agrave;ng: sinh vi&ecirc;n, người đi l&agrave;m, hộ gia đ&igrave;nh.</p>\r\n', 21.0373, 105.801, '2021-04-23', '2021-05-09', '2021-04-22 16:22:16', 2, 1, 3, 1, 1, 1),
(83, 'Cho thuê chung cư full đồ mini tại Thanh Xuân', '1619058705-tx1.jpg', 'SỐ 68, NGÕ 66B TRIỀU KHÚC', 4800000, 40, '<p>T&ograve;a nh&agrave; m&atilde; số&nbsp;<strong>TX002&nbsp;</strong>được thiết kế cao 8 tầng, cụ thể tầng 1 gồm khu để xe, 1 ph&ograve;ng bảo vệ, 2 cửa h&agrave;ng, từ tầng 2 - 8 được chia th&agrave;nh 35 ph&ograve;ng (mỗi tầng 5 ph&ograve;ng).</p>\r\n\r\n<p>Trang thiết bị ph&ograve;ng ch&aacute;y chữa ch&aacute;y v&agrave; đồng hồ điện được bố tr&iacute; ở h&agrave;ng lang của mỗi tầng, ri&ecirc;ng đồng hồ nước được đặt trong nh&agrave; vệ sinh của từng ph&ograve;ng, thiết bị camera theo d&otilde;i được lắp đặt ở trước cổng t&ograve;a nh&agrave; v&agrave; khu để xe nhằm đảm bảo an ninh cho t&ograve;a nh&agrave;.</p>\r\n\r\n<p><strong>M&ocirc; tả Ph&ograve;ng:</strong></p>\r\n\r\n<ul>\r\n	<li>Nội thất cơ bản gồm: Điều h&ograve;a, n&oacute;ng lạnh, b&agrave;n bếp, b&agrave;n ghế ngồi, giường ngủ, đệm giường, tủ quần &aacute;o, r&egrave;m cửa</li>\r\n	<li>An ninh t&ograve;a nh&agrave;: Camera theo d&otilde;i 24h; Kh&oacute;a v&acirc;n tay bảo mật.</li>\r\n	<li>Tiện &iacute;ch t&ograve;a nh&agrave;: Khu phơi đồ chung; Khu để xe c&oacute; bảo vệ quản l&yacute;; Tự do đi lại 24h, kh&ocirc;ng chung chủ; Trang thiết bị ph&ograve;ng ch&aacute;y chữa ch&aacute;y (PCCC) đầy đủ.</li>\r\n	<li>T&ograve;a nh&agrave; c&oacute; c&aacute;c ph&ograve;ng đơn 1 ngủ ph&ugrave; hợp d&agrave;nh cho sinh vi&ecirc;n, c&aacute;c ph&ograve;ng 1 kh&aacute;ch + 1 ngủ ph&ugrave; hợp cho c&aacute;c hộ gia đ&igrave;nh.</li>\r\n</ul>\r\n', 0, 0, '2021-04-22', '2021-04-25', '2021-04-22 18:50:33', 1, 2, 12, 1, 1, 1),
(84, 'Cho thuê phòng trọ - chung cư mini tại Vũ Thạnh, Đống Đa', '1619060129-vt1.jpg', 'SỐ 27, NGÁCH 29/16 VŨ THẠNH', 5500000, 25, '<p>T&ograve;a nh&agrave; m&atilde; số&nbsp;<strong>DD003</strong>&nbsp;x&acirc;y dựng cao 6 tầng, tầng 1 - 6 được chia th&agrave;nh 6 ph&ograve;ng. Khu để xe cho c&aacute;c hộ d&acirc;n nằm ở tầng 1, trang thiết bị ph&ograve;ng ch&aacute;y chữa ch&aacute;y v&agrave; đồng hồ điện được bố tr&iacute; ở h&agrave;ng lang của mỗi tầng.</p>\r\n\r\n<p><strong>M&ocirc; tả chung:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Nội thất cơ bản gồm: Điều h&ograve;a, n&oacute;ng lạnh, b&agrave;n ghế ngồi, giường ngủ, tủ quần &aacute;o, b&agrave;n bếp, tủ bếp, chậu rửa, r&egrave;m cửa.</li>\r\n	<li>Tiện &iacute;ch t&ograve;a nh&agrave;: Khu để xe miễn ph&iacute;; Tự do đi lại 24h, kh&ocirc;ng chung chủ; Trang thiết bị ph&ograve;ng ch&aacute;y chữa ch&aacute;y (PCCC) đầy đủ.</li>\r\n	<li>Chi ph&iacute; điện nước: &Aacute;p dụng t&iacute;nh gi&aacute; nh&agrave; nước (ti&ecirc;u chuẩn nh&agrave; nước).</li>\r\n</ul>\r\n\r\n<p>Thủ tục - giấy tờ: Hợp đồng thu&ecirc; nh&agrave;, hợp đồng đặt cọc, thủ tục đăng k&yacute; tạm tr&uacute; tạm vắng,... Đội ngũ Bản Đ&ocirc;n sẽ hỗ trợ kh&aacute;ch h&agrave;ng ho&agrave;n th&agrave;nh tất cả.</p>\r\n', 0, 0, '2021-04-09', '2021-05-01', '2021-04-22 18:49:45', 1, 2, 4, 1, 1, 1),
(85, 'Cho thuê căn hộ gia đình ', '1619060779-ht1.jpg', ' Số 397 Phạm Văn Đồng ', 4000000, 30, '<p>C&aacute;c căn ph&ograve;ng thiết kế x&acirc;y dựng gồm: cửa ch&iacute;nh, cửa sổ, cửa nh&agrave; vệ sinh chắc chắn, ph&ograve;ng tho&aacute;ng m&aacute;t c&ugrave;ng c&aacute;ch bố tr&iacute; nội thất gọn g&agrave;ng, tiện nghi cho người ở.</p>\r\n\r\n<ul>\r\n	<li>Nội thất cơ bản gồm: Điều h&ograve;a, n&oacute;ng lạnh, giường ngủ, tủ quần &aacute;o, r&egrave;m cửa.</li>\r\n	<li>&nbsp;Tiện &iacute;ch t&ograve;a nh&agrave;: Khu để xe miễn ph&iacute;; M&aacute;y giặt chung miễn ph&iacute;; Tự do đi lại 24h, kh&ocirc;ng chung chủ.</li>\r\n	<li>Thủ tục - giấy tờ: Hợp đồng thu&ecirc; nh&agrave;, hợp đồng đặt cọc, thủ tục đăng k&yacute; tạm tr&uacute; tạm vắng,... Đội ngũ Bản Đ&ocirc;n sẽ hỗ trợ kh&aacute;ch h&agrave;ng ho&agrave;n th&agrave;nh tất cả.</li>\r\n</ul>\r\n\r\n<p>Ph&ograve;ng trọ ph&ugrave; hợp d&agrave;nh cho c&aacute;c bạn sinh vi&ecirc;n, người đi l&agrave;m.</p>\r\n', 21.062, 105.783, '2021-04-24', '2021-05-09', '2021-04-22 15:59:53', 2, 3, 2, 1, 1, 1),
(86, 'Phòng trọ giá rẻ cho sinh viên full đồ', '1619062125-th1.jpg', 'Số 7, Ngõ 102 Kim Ngưu', 2200000, 35, '<p>T&ograve;a nh&agrave; m&atilde; số&nbsp;<strong>HBT001</strong>&nbsp;x&acirc;y dựng&nbsp;cao 5 tầng. Tầng 1 gồm khu để xe + 1 ph&ograve;ng, từ tầng 1 - 5 c&oacute; 8 ph&ograve;ng, khu phơi đồ chung được thiết kế ở mặt trước của tầng 5.</p>\r\n\r\n<ul>\r\n	<li>Tiện &iacute;ch t&ograve;a nh&agrave;: Khu phơi đồ chung; Khu để xe miễn ph&iacute;; Tự do đi lại 24h, kh&ocirc;ng chung chủ; Trang thiết bị ph&ograve;ng ch&aacute;y chữa ch&aacute;y (PCCC) đầy đủ.</li>\r\n	<li>Thủ tục - giấy tờ: Hợp đồng thu&ecirc; nh&agrave;, hợp đồng đặt cọc, thủ tục đăng k&yacute; tạm tr&uacute; tạm vắng,... Đội ngũ Bản Đ&ocirc;n sẽ hỗ trợ kh&aacute;ch h&agrave;ng ho&agrave;n th&agrave;nh tất cả.</li>\r\n	<li>Nội thất cơ bản gồm: Điều h&ograve;a, n&oacute;ng lạnh, b&agrave;n ghế ngồi, giường ngủ, tủ bếp - b&agrave;n bếp.</li>\r\n	<li>Chi ph&iacute; điện nước: &Aacute;p dụng t&iacute;nh gi&aacute; nh&agrave; nước (ti&ecirc;u chuẩn nh&agrave; nước).</li>\r\n</ul>\r\n\r\n<p>T&ograve;a nh&agrave; ph&ugrave; hợp d&agrave;nh cho người đi l&agrave;m, đặc biệt l&agrave; sinh vi&ecirc;n(được giảm gi&aacute;).</p>\r\n', 0, 0, '2021-04-23', '2021-04-26', '2021-04-22 14:45:22', 2, 1, 11, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `room_id`, `user_id`, `date`) VALUES
(7, 81, 2, '2021-04-30'),
(8, 83, 2, '2021-04-24'),
(9, 82, 1, '2021-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `electric` int(10) NOT NULL,
  `water` int(10) NOT NULL,
  `internet` int(10) NOT NULL,
  `clean` int(10) NOT NULL,
  `parking` int(10) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `electric`, `water`, `internet`, `clean`, `parking`, `room_id`) VALUES
(16, 3200, 20000, 50000, 30000, 0, 81),
(17, 3200, 80000, 50000, 30000, 0, 82),
(18, 3200, 20000, 70000, 30000, 100000, 83),
(19, 3200, 80000, 80000, 30000, 0, 84),
(20, 3200, 85000, 50000, 30000, 50000, 85),
(21, 3500, 50000, 80000, 40000, 50000, 86),
(26, 3200, 85000, 50000, 30000, 50000, 85),
(27, 3200, 85000, 50000, 30000, 50000, 85),
(28, 3200, 85000, 50000, 30000, 50000, 85),
(29, 3200, 85000, 50000, 30000, 50000, 85),
(30, 3200, 85000, 50000, 30000, 50000, 85),
(31, 3200, 85000, 50000, 30000, 50000, 85),
(32, 3200, 85000, 50000, 30000, 50000, 85),
(33, 3200, 85000, 50000, 30000, 50000, 85),
(34, 3200, 85000, 50000, 30000, 50000, 85),
(35, 3200, 85000, 50000, 30000, 50000, 85),
(36, 3200, 80000, 50000, 30000, 0, 82),
(37, 3200, 80000, 80000, 30000, 0, 84),
(38, 3200, 80000, 80000, 30000, 0, 84),
(39, 3200, 80000, 80000, 30000, 0, 84),
(40, 3200, 20000, 70000, 30000, 100000, 83),
(41, 3200, 20000, 70000, 30000, 100000, 83),
(42, 3200, 20000, 50000, 30000, 0, 81),
(43, 3200, 20000, 50000, 30000, 0, 81),
(44, 3200, 20000, 50000, 30000, 0, 81),
(45, 3200, 20000, 50000, 30000, 0, 81),
(46, 3200, 20000, 50000, 30000, 0, 81);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `content` varchar(9999) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`content`, `create_at`) VALUES
('<p>dưqdưqd</p>', '2021-04-18 15:17:05'),
('<p>Phòng thiết kế dạng studio sang trọng với đầy đủ nội thất, phòng có cửa chính, cửa sổ thoáng mát, ban công phơi đồ rộng rãi. Cửa ra vào phòng tích hợp mã khóa đảm bảo an ninh tốt nhất cho căn phòng.</p><ul><li>Diện tích căn phòng: Phòng studio từ 25 - 35m2.</li><li>Chi phí điện nước: Áp dụng tính giá nhà nước (tiêu chuẩn nhà nước).</li><li>An ninh tòa nhà: Camera theo dõi 24h; Khóa vân tay bảo mật.</li></ul>', '2021-04-18 15:18:50'),
('<p>ồ lá la</p>', '2021-04-18 15:38:05'),
('<p>dwqd</p>', '2021-04-19 08:45:33'),
('<p>123</p>', '2021-04-19 08:46:18'),
('<p>123</p>', '2021-04-19 08:46:34'),
('<p>123</p>', '2021-04-19 08:49:17'),
('<p>dwq</p>', '2021-04-19 08:49:45'),
('<p>dqwdwq</p>', '2021-04-19 08:55:35'),
('<p>dqwdwq</p>', '2021-04-19 09:07:00'),
('<p>fffff</p>', '2021-04-19 09:07:04'),
('<p>fffff</p>', '2021-04-19 09:11:54'),
('<p>fffff</p>', '2021-04-19 09:12:01'),
('<p>fffff</p>', '2021-04-19 09:12:13'),
('<p>fffff</p>', '2021-04-19 09:12:29'),
('<p>dwqvvv</p>', '2021-04-19 09:12:39'),
('<p>dwqvvv</p>', '2021-04-19 09:18:31'),
('<p>dqwdwq</p>', '2021-04-19 09:25:17'),
('<p>ta</p>', '2021-04-19 09:25:26'),
('dsadasdas', '2021-04-19 09:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `avatar`, `birthday`, `email`, `address`, `phone`, `create_at`) VALUES
(1, 'tacongduc', '24102000', '1618912122bg.png', '2000-10-24', 'tacongduc123@gmail.com', 'Hanoi', '0866553202', '2021-04-21 08:22:22'),
(2, 'ducduc', 'tacongduc123', '1619017958;)).jpg', '2000-01-07', 'ductcph12804@fpt.edu.vn', 'Thanh Hóa', '0356322798', '2021-04-22 09:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_renting`
--

CREATE TABLE `user_renting` (
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `FR_album_room` (`room_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commen_id`),
  ADD KEY `FR_cm_user` (`user_id`),
  ADD KEY `FR_cm_room` (`room_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`loca_id`);

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
  ADD PRIMARY KEY (`notify_id`),
  ADD KEY `FR_noti_room` (`room_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `FR_room_user` (`user_id`),
  ADD KEY `FR_room_cate` (`cate_id`),
  ADD KEY `FR_room_location` (`loca_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `FR_schedule_user` (`user_id`),
  ADD KEY `FR_schedule_room` (`room_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `FR_servide_room` (`room_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_renting`
--
ALTER TABLE `user_renting`
  ADD KEY `FR_renting_room` (`room_id`),
  ADD KEY `FR_renting_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `commen_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `loca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
  MODIFY `notify_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `FR_album_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FR_cm_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FR_cm_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notify`
--
ALTER TABLE `notify`
  ADD CONSTRAINT `FR_noti_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FR_room_cate` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FR_room_location` FOREIGN KEY (`loca_id`) REFERENCES `location` (`loca_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FR_room_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `FR_schedule_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FR_schedule_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `FR_servide_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_renting`
--
ALTER TABLE `user_renting`
  ADD CONSTRAINT `FR_renting_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FR_renting_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
