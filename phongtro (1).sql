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
(1, 'Ph??ng tr???'),
(2, 'Chung c?? mini'),
(3, 'C??n h??? d???ch v??? - Homestay');

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
(1, 'Ba ????nh'),
(2, 'B???c T??? Li??m'),
(3, 'C???u Gi???y'),
(4, '?????ng ??a'),
(5, 'H?? ????ng'),
(6, 'Hai B?? Tr??ng	'),
(7, 'Ho??n Ki???m	'),
(8, 'Ho??ng Mai	'),
(9, 'Long Bi??n	'),
(10, 'Nam T??? Li??m	'),
(11, 'T??y H???	'),
(12, 'Thanh Xu??n	');

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
(20, NULL, 1, NULL, 81, 'Tin c???a b???n ??ang ch??? duy???t ???????c ph?? duy???t t??? admin v?? s??? ???????c x??c nh???n trong th???i gian t???i', '2021-04-21 08:09:01'),
(21, NULL, 2, NULL, 82, 'Tin c???a b???n ??ang ch??? duy???t ???????c ph?? duy???t t??? admin v?? s??? ???????c x??c nh???n trong th???i gian t???i', '2021-04-21 15:21:27'),
(22, NULL, NULL, 2, 81, 'B???n ???? ?????t l???ch xem ph??ng n??y v??o 2021-04-30', '2021-04-21 15:59:06'),
(23, NULL, 1, 2, 81, 'C?? ng?????i ???? ?????t l???ch xem ph??ng n??y v??o ng??y 2021-04-30', '2021-04-21 15:54:20'),
(24, NULL, 1, NULL, 83, 'Tin c???a b???n ??ang ch??? duy???t ???????c ph?? duy???t t??? admin v?? s??? ???????c x??c nh???n trong th???i gian t???i', '2021-04-22 02:31:45'),
(25, NULL, 1, NULL, 84, 'Tin c???a b???n ??ang ch??? duy???t ???????c ph?? duy???t t??? admin v?? s??? ???????c x??c nh???n trong th???i gian t???i', '2021-04-22 02:55:29'),
(26, NULL, 2, NULL, 85, 'Tin c???a b???n ??ang ch??? duy???t ???????c ph?? duy???t t??? admin v?? s??? ???????c x??c nh???n trong th???i gian t???i', '2021-04-22 03:06:19'),
(27, NULL, 2, NULL, 86, 'Tin c???a b???n ??ang ch??? duy???t ???????c ph?? duy???t t??? admin v?? s??? ???????c x??c nh???n trong th???i gian t???i', '2021-04-22 03:28:45'),
(28, NULL, NULL, 2, 83, 'B???n ???? ?????t l???ch xem ph??ng n??y v??o 2021-04-24', '2021-04-22 03:35:38'),
(29, NULL, 1, 2, 83, 'C?? ng?????i ???? ?????t l???ch xem ph??ng n??y v??o ng??y 2021-04-24', '2021-04-22 03:34:11'),
(30, NULL, NULL, 1, 82, 'B???n ???? ?????t l???ch xem ph??ng n??y v??o 2021-04-23', '2021-04-22 09:36:13'),
(31, NULL, 2, 1, 82, 'C?? ng?????i ???? ?????t l???ch xem ph??ng n??y v??o ng??y 2021-04-23', '2021-04-22 09:36:13');

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
(81, 'Cho thu?? chung c?? mini, c??n h??? studio ', '1618992541-km1.jpg', 'S??? 9-10, D??y B5 Ng?? 7 Kim M?? Th?????ng', 7300000, 45, '<p>T&ograve;a nh&agrave; m&atilde; s???&nbsp;<strong>BD002</strong>&nbsp;thi???t k??? cao 6 t???ng, g???m 11 ph&ograve;ng, khu ????? xe v&agrave; khu ph??i ?????.</p>\r\n\r\n<p><strong>T???ng quan c??n ph&ograve;ng</strong></p>\r\n\r\n<p>Ph&ograve;ng thi???t k??? d???ng studio sang tr???ng v???i ?????y ????? n???i th???t, ph&ograve;ng c&oacute; c???a ch&iacute;nh, c???a s??? tho&aacute;ng m&aacute;t, ban c&ocirc;ng ph??i ????? r???ng r&atilde;i. C???a ra v&agrave;o ph&ograve;ng t&iacute;ch h???p m&atilde; kh&oacute;a ?????m b???o an ninh t???t nh???t cho c??n ph&ograve;ng.</p>\r\n\r\n<ul>\r\n	<li>N???i th???t c?? b???n g???m: ??i???u h&ograve;a, n&oacute;ng l???nh, gi?????ng ng???, t??? l???nh, b&agrave;n gh??? sofa, ch???u r???a, t??? b???p, b&agrave;n b???p, m&aacute;y h&uacute;t m&ugrave;i, m&aacute;y gi???t, t??? qu???n &aacute;o, r&egrave;m c???a.</li>\r\n	<li>Chi ph&iacute; ??i???n n?????c: &Aacute;p d???ng t&iacute;nh gi&aacute; nh&agrave; n?????c (ti&ecirc;u chu???n nh&agrave; n?????c).</li>\r\n	<li>&nbsp;An ninh t&ograve;a nh&agrave;: Camera theo d&otilde;i 24h; Kh&oacute;a v&acirc;n tay b???o m???t.</li>\r\n	<li>&nbsp;Ti???n &iacute;ch t&ograve;a nh&agrave;: Khu ????? xe mi???n ph&iacute;; M&aacute;t gi???t chung mi???n ph&iacute;; Khu ph??i ????? chung mi???n ph&iacute;; T??? do ??i l???i 24h, kh&ocirc;ng chung ch???.</li>\r\n</ul>\r\n\r\n<p>Ph&ograve;ng tr??? ph&ugrave; h???p d&agrave;nh cho c&aacute;c h??? gia ??&igrave;nh, ng?????i ??i l&agrave;m.</p>\r\n', 0, 0, '2021-04-21', '2021-05-06', '2021-04-22 18:54:58', 1, 2, 1, 1, 1, 1),
(82, 'Ph??ng tr??? cho thu?? full n???i th???t', '1619018487-cg1.jpg', 'S??? 33A, Ng?? 48 Nguy???n Kh??nh To??n', 4000000, 30, '<p>T&ograve;a nh&agrave; m&atilde; s???&nbsp;<strong>CG005</strong>&nbsp;???????c thi???t k??? cao 6 t???ng, c??? th??? t???ng 1 l&agrave; khu ????? xe cho ng?????i thu&ecirc; ph&ograve;ng, t??? t???ng 2 - 6 g???m 8 ph&ograve;ng, tr&ecirc;n t???ng 6 c&oacute; 1 ph&ograve;ng ng??? v&agrave; khu ph??i ????? chung cho c??? t&ograve;a nh&agrave;.</p>\r\n\r\n<p>Trang thi???t b??? ph&ograve;ng ch&aacute;y ch???a ch&aacute;y ???????c b??? tr&iacute; ??? h&agrave;ng lang c???a m???i t???ng, thi???t b??? camera theo d&otilde;i ???????c l???p ?????t ??? tr?????c c???ng t&ograve;a nh&agrave; v&agrave; khu ????? xe ?????m b???o an ninh cho t&ograve;a nh&agrave;.</p>\r\n\r\n<p><strong>M&ocirc; t??? ph&ograve;ng</strong></p>\r\n\r\n<ul>\r\n	<li>N???i th???t c?? b???n g???m: ??i???u h&ograve;a, n&oacute;ng l???nh, gi?????ng ng???, b&agrave;n b???p, t??? qu???n &aacute;o, r&egrave;m c???a.</li>\r\n	<li>Chi ph&iacute; ??i???n n?????c: &Aacute;p d???ng t&iacute;nh gi&aacute; nh&agrave; n?????c (ti&ecirc;u chu???n nh&agrave; n?????c).</li>\r\n	<li>&nbsp;An ninh t&ograve;a nh&agrave;: Camera theo d&otilde;i 24h; Kh&oacute;a v&acirc;n tay b???o m???t.</li>\r\n	<li>Ti???n &iacute;ch t&ograve;a nh&agrave;: Khu ph??i ????? chung; M&aacute;y gi???t mi???n ph&iacute;; Khu ????? xe mi???n ph&iacute;; T??? do ??i l???i 24h, kh&ocirc;ng chung ch???; Trang thi???t b??? ph&ograve;ng ch&aacute;y ch???a ch&aacute;y (PCCC) ?????y ?????.</li>\r\n</ul>\r\n\r\n<p>T&ograve;a nh&agrave; ph&ugrave; h???p v???i m???i kh&aacute;ch h&agrave;ng: sinh vi&ecirc;n, ng?????i ??i l&agrave;m, h??? gia ??&igrave;nh.</p>\r\n', 21.0373, 105.801, '2021-04-23', '2021-05-09', '2021-04-22 16:22:16', 2, 1, 3, 1, 1, 1),
(83, 'Cho thu?? chung c?? full ????? mini t???i Thanh Xu??n', '1619058705-tx1.jpg', 'S??? 68, NG?? 66B TRI???U KH??C', 4800000, 40, '<p>T&ograve;a nh&agrave; m&atilde; s???&nbsp;<strong>TX002&nbsp;</strong>???????c thi???t k??? cao 8 t???ng, c??? th??? t???ng 1 g???m khu ????? xe, 1 ph&ograve;ng b???o v???, 2 c???a h&agrave;ng, t??? t???ng 2 - 8 ???????c chia th&agrave;nh 35 ph&ograve;ng (m???i t???ng 5 ph&ograve;ng).</p>\r\n\r\n<p>Trang thi???t b??? ph&ograve;ng ch&aacute;y ch???a ch&aacute;y v&agrave; ?????ng h??? ??i???n ???????c b??? tr&iacute; ??? h&agrave;ng lang c???a m???i t???ng, ri&ecirc;ng ?????ng h??? n?????c ???????c ?????t trong nh&agrave; v??? sinh c???a t???ng ph&ograve;ng, thi???t b??? camera theo d&otilde;i ???????c l???p ?????t ??? tr?????c c???ng t&ograve;a nh&agrave; v&agrave; khu ????? xe nh???m ?????m b???o an ninh cho t&ograve;a nh&agrave;.</p>\r\n\r\n<p><strong>M&ocirc; t??? Ph&ograve;ng:</strong></p>\r\n\r\n<ul>\r\n	<li>N???i th???t c?? b???n g???m: ??i???u h&ograve;a, n&oacute;ng l???nh, b&agrave;n b???p, b&agrave;n gh??? ng???i, gi?????ng ng???, ?????m gi?????ng, t??? qu???n &aacute;o, r&egrave;m c???a</li>\r\n	<li>An ninh t&ograve;a nh&agrave;: Camera theo d&otilde;i 24h; Kh&oacute;a v&acirc;n tay b???o m???t.</li>\r\n	<li>Ti???n &iacute;ch t&ograve;a nh&agrave;: Khu ph??i ????? chung; Khu ????? xe c&oacute; b???o v??? qu???n l&yacute;; T??? do ??i l???i 24h, kh&ocirc;ng chung ch???; Trang thi???t b??? ph&ograve;ng ch&aacute;y ch???a ch&aacute;y (PCCC) ?????y ?????.</li>\r\n	<li>T&ograve;a nh&agrave; c&oacute; c&aacute;c ph&ograve;ng ????n 1 ng??? ph&ugrave; h???p d&agrave;nh cho sinh vi&ecirc;n, c&aacute;c ph&ograve;ng 1 kh&aacute;ch + 1 ng??? ph&ugrave; h???p cho c&aacute;c h??? gia ??&igrave;nh.</li>\r\n</ul>\r\n', 0, 0, '2021-04-22', '2021-04-25', '2021-04-22 18:50:33', 1, 2, 12, 1, 1, 1),
(84, 'Cho thu?? ph??ng tr??? - chung c?? mini t???i V?? Th???nh, ?????ng ??a', '1619060129-vt1.jpg', 'S??? 27, NG??CH 29/16 V?? TH???NH', 5500000, 25, '<p>T&ograve;a nh&agrave; m&atilde; s???&nbsp;<strong>DD003</strong>&nbsp;x&acirc;y d???ng cao 6 t???ng, t???ng 1 - 6 ???????c chia th&agrave;nh 6 ph&ograve;ng. Khu ????? xe cho c&aacute;c h??? d&acirc;n n???m ??? t???ng 1, trang thi???t b??? ph&ograve;ng ch&aacute;y ch???a ch&aacute;y v&agrave; ?????ng h??? ??i???n ???????c b??? tr&iacute; ??? h&agrave;ng lang c???a m???i t???ng.</p>\r\n\r\n<p><strong>M&ocirc; t??? chung:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;N???i th???t c?? b???n g???m: ??i???u h&ograve;a, n&oacute;ng l???nh, b&agrave;n gh??? ng???i, gi?????ng ng???, t??? qu???n &aacute;o, b&agrave;n b???p, t??? b???p, ch???u r???a, r&egrave;m c???a.</li>\r\n	<li>Ti???n &iacute;ch t&ograve;a nh&agrave;: Khu ????? xe mi???n ph&iacute;; T??? do ??i l???i 24h, kh&ocirc;ng chung ch???; Trang thi???t b??? ph&ograve;ng ch&aacute;y ch???a ch&aacute;y (PCCC) ?????y ?????.</li>\r\n	<li>Chi ph&iacute; ??i???n n?????c: &Aacute;p d???ng t&iacute;nh gi&aacute; nh&agrave; n?????c (ti&ecirc;u chu???n nh&agrave; n?????c).</li>\r\n</ul>\r\n\r\n<p>Th??? t???c - gi???y t???: H???p ?????ng thu&ecirc; nh&agrave;, h???p ?????ng ?????t c???c, th??? t???c ????ng k&yacute; t???m tr&uacute; t???m v???ng,... ?????i ng?? B???n ??&ocirc;n s??? h??? tr??? kh&aacute;ch h&agrave;ng ho&agrave;n th&agrave;nh t???t c???.</p>\r\n', 0, 0, '2021-04-09', '2021-05-01', '2021-04-22 18:49:45', 1, 2, 4, 1, 1, 1),
(85, 'Cho thu?? c??n h??? gia ????nh ', '1619060779-ht1.jpg', ' S??? 397 Ph???m V??n ?????ng ', 4000000, 30, '<p>C&aacute;c c??n ph&ograve;ng thi???t k??? x&acirc;y d???ng g???m: c???a ch&iacute;nh, c???a s???, c???a nh&agrave; v??? sinh ch???c ch???n, ph&ograve;ng tho&aacute;ng m&aacute;t c&ugrave;ng c&aacute;ch b??? tr&iacute; n???i th???t g???n g&agrave;ng, ti???n nghi cho ng?????i ???.</p>\r\n\r\n<ul>\r\n	<li>N???i th???t c?? b???n g???m: ??i???u h&ograve;a, n&oacute;ng l???nh, gi?????ng ng???, t??? qu???n &aacute;o, r&egrave;m c???a.</li>\r\n	<li>&nbsp;Ti???n &iacute;ch t&ograve;a nh&agrave;: Khu ????? xe mi???n ph&iacute;; M&aacute;y gi???t chung mi???n ph&iacute;; T??? do ??i l???i 24h, kh&ocirc;ng chung ch???.</li>\r\n	<li>Th??? t???c - gi???y t???: H???p ?????ng thu&ecirc; nh&agrave;, h???p ?????ng ?????t c???c, th??? t???c ????ng k&yacute; t???m tr&uacute; t???m v???ng,... ?????i ng?? B???n ??&ocirc;n s??? h??? tr??? kh&aacute;ch h&agrave;ng ho&agrave;n th&agrave;nh t???t c???.</li>\r\n</ul>\r\n\r\n<p>Ph&ograve;ng tr??? ph&ugrave; h???p d&agrave;nh cho c&aacute;c b???n sinh vi&ecirc;n, ng?????i ??i l&agrave;m.</p>\r\n', 21.062, 105.783, '2021-04-24', '2021-05-09', '2021-04-22 15:59:53', 2, 3, 2, 1, 1, 1),
(86, 'Ph??ng tr??? gi?? r??? cho sinh vi??n full ?????', '1619062125-th1.jpg', 'S??? 7, Ng?? 102 Kim Ng??u', 2200000, 35, '<p>T&ograve;a nh&agrave; m&atilde; s???&nbsp;<strong>HBT001</strong>&nbsp;x&acirc;y d???ng&nbsp;cao 5 t???ng. T???ng 1 g???m khu ????? xe + 1 ph&ograve;ng, t??? t???ng 1 - 5 c&oacute; 8 ph&ograve;ng, khu ph??i ????? chung ???????c thi???t k??? ??? m???t tr?????c c???a t???ng 5.</p>\r\n\r\n<ul>\r\n	<li>Ti???n &iacute;ch t&ograve;a nh&agrave;: Khu ph??i ????? chung; Khu ????? xe mi???n ph&iacute;; T??? do ??i l???i 24h, kh&ocirc;ng chung ch???; Trang thi???t b??? ph&ograve;ng ch&aacute;y ch???a ch&aacute;y (PCCC) ?????y ?????.</li>\r\n	<li>Th??? t???c - gi???y t???: H???p ?????ng thu&ecirc; nh&agrave;, h???p ?????ng ?????t c???c, th??? t???c ????ng k&yacute; t???m tr&uacute; t???m v???ng,... ?????i ng?? B???n ??&ocirc;n s??? h??? tr??? kh&aacute;ch h&agrave;ng ho&agrave;n th&agrave;nh t???t c???.</li>\r\n	<li>N???i th???t c?? b???n g???m: ??i???u h&ograve;a, n&oacute;ng l???nh, b&agrave;n gh??? ng???i, gi?????ng ng???, t??? b???p - b&agrave;n b???p.</li>\r\n	<li>Chi ph&iacute; ??i???n n?????c: &Aacute;p d???ng t&iacute;nh gi&aacute; nh&agrave; n?????c (ti&ecirc;u chu???n nh&agrave; n?????c).</li>\r\n</ul>\r\n\r\n<p>T&ograve;a nh&agrave; ph&ugrave; h???p d&agrave;nh cho ng?????i ??i l&agrave;m, ?????c bi???t l&agrave; sinh vi&ecirc;n(???????c gi???m gi&aacute;).</p>\r\n', 0, 0, '2021-04-23', '2021-04-26', '2021-04-22 14:45:22', 2, 1, 11, 1, 1, 1);

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
('<p>d??qd??qd</p>', '2021-04-18 15:17:05'),
('<p>Ph??ng thi???t k??? d???ng studio sang tr???ng v???i ?????y ????? n???i th???t, ph??ng c?? c???a ch??nh, c???a s??? tho??ng m??t, ban c??ng ph??i ????? r???ng r??i. C???a ra v??o ph??ng t??ch h???p m?? kh??a ?????m b???o an ninh t???t nh???t cho c??n ph??ng.</p><ul><li>Di???n t??ch c??n ph??ng: Ph??ng studio t??? 25 - 35m2.</li><li>Chi ph?? ??i???n n?????c: ??p d???ng t??nh gi?? nh?? n?????c (ti??u chu???n nh?? n?????c).</li><li>An ninh t??a nh??: Camera theo d??i 24h; Kh??a v??n tay b???o m???t.</li></ul>', '2021-04-18 15:18:50'),
('<p>??? l?? la</p>', '2021-04-18 15:38:05'),
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
(2, 'ducduc', 'tacongduc123', '1619017958;)).jpg', '2000-01-07', 'ductcph12804@fpt.edu.vn', 'Thanh H??a', '0356322798', '2021-04-22 09:54:58');

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
