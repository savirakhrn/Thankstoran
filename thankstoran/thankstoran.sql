-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 02, 2020 at 06:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thankstoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_pages`
--

CREATE TABLE `active_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `active_pages`
--

INSERT INTO `active_pages` (`id`, `name`, `enabled`) VALUES
(1, 'blog', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `bic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `image`, `url`, `time`) VALUES
(1, 'blog1.jpg', 'UNDERSTANDING_SUSTAINABLE_FASHION_AND_WHAT_IT_MEANS_TO_YOU_1', 1592403816);

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `title`, `description`, `abbr`, `for_id`) VALUES
(1, 'UNDERSTANDING SUSTAINABLE FASHION, AND WHAT IT MEANS TO YOU.', '<p style=\"text-align: center;\"><span style=\"font-size:20px;\"><span style=\"color:#336699;\"><strong><span style=\"font-family:tahoma,geneva,sans-serif;\">What is sustainable fashion?</span></strong></span></span></p>\r\n\r\n<p style=\"text-align: center;\">Pros and Cons of <strong>second hand</strong>, <strong>slow</strong> &amp; <strong>fair</strong> <strong>fashion</strong>, <strong>vegan</strong>, <strong>organic cotton</strong>, <strong>clothing swaps</strong>, <strong>minimalism</strong>, <strong>local production</strong> and <strong>recycled materials</strong>.</p>\r\n\r\n<p style=\"text-align: center;\">Here is: How to be Sustainable!</p>\r\n\r\n<hr />\r\n<p style=\"text-align: center;\"><img alt=\"What is sustainable fashion?\" src=\"https://images.squarespace-cdn.com/content/v1/593703c3db29d68bdf92d914/1509888000876-HM5SZ5T418J66D0VGSMB/ke17ZwdGBToddI8pDm48kLPswmMOqQZ9-Q6KHLjvbpZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UTcpTqfU-ZEsztPyQLxhSSK-PhJjRDDFQG0l3_ZnmWi1QjT9byXZM3ISxo3y1NRptg/what-is-sustainable-fashion.jpg?format=500w\" style=\"float: left; width: 200px; height: 200px;\" /></p>\r\n\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n\r\n<p style=\"text-align: center;\">Hate to break it to you, but <strong>there is no such thing as being 100% </strong><strong>sustainable with fashion</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>&nbsp;</h1>\r\n\r\n<h1><span style=\"font-size:36px;\"><span style=\"color:#000080;\">1</span></span></h1>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:courier new,courier,monospace;\">The first reason being: washing clothes infuses nature with <a href=\"https://www.sustainablefashionmatterz.com/sustainable-fashion-blog/what-you-need-to-know-about-plastic-fashion-microfibers-careful-what-you-wash-for\">microfibers</a>. It also takes a toll on the environment through the use of water, electricity, and most laundry detergent is not eco-friendly. Here you can find a list of some green laundry detergents: <a href=\"https://www.thespruce.com/emergency-laundry-detergent-substitutions-2146653\" target=\"_blank\">EN</a>/<a href=\"https://utopia.de/ratgeber/oekologische-waschmittel/\" target=\"_blank\">DE</a></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><span style=\"font-size:36px;\"><span style=\"color:#000080;\">2</span></span></h1>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:courier new,courier,monospace;\">There are, however, many different ways of approaching the topic that <strong>you can learn</strong> from to become more sustainable and<strong> decide where you stand</strong>.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><span style=\"font-size:36px;\"><span style=\"color:#000080;\">3</span></span></h1>\r\n\r\n<p><span style=\"font-family:courier new,courier,monospace;\"><span style=\"font-size:16px;\">Before we get started on all the different aspects there are to consider as a consumer, we want to address that there are two perspectives: that of brands and that of consumers.</span></span></p>\r\n', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'Denim Addict'),
(2, 'Vero Moda Yoursbutter'),
(3, 'Solene'),
(4, 'Giordano'),
(5, 'Nuber Jasmine'),
(6, 'Mango');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_links`
--

CREATE TABLE `confirm_links` (
  `id` int(11) NOT NULL,
  `link` char(32) NOT NULL,
  `for_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `confirm_links`
--

INSERT INTO `confirm_links` (`id`, `link`, `for_order`) VALUES
(1, '93fb4494a84898db56ce327740e4bea3', 1234),
(2, '6651ad928fe8154866f476856f32b307', 1235),
(3, '6cfc6b6192c94f95a211853942121815', 1236),
(4, '9c0e67bfe46f4d07883d9207dd66edbf', 1237);

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law`
--

CREATE TABLE `cookie_law` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law_translations`
--

CREATE TABLE `cookie_law_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `learn_more` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `valid_from_date` int(10) UNSIGNED NOT NULL,
  `valid_to_date` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1-enabled, 0-disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `activity`, `username`, `time`) VALUES
(1, 'Go to History', 'admin', 1592420870),
(2, 'Go to orders page', 'admin', 1592420949),
(3, 'Go to shop categories', 'admin', 1592420950),
(4, 'Go to products', 'admin', 1592420953),
(5, 'Go to shop categories', 'admin', 1592421134),
(6, 'Go to shop categories', 'admin', 1592421147),
(7, 'Go to shop categories', 'admin', 1592421175),
(8, 'Change subcategory for category id - 1', 'admin', 1592421179),
(9, 'Go to shop categories', 'admin', 1592421179),
(10, 'Go to shop categories', 'admin', 1592421194),
(11, 'Go to shop categories', 'admin', 1592421203),
(12, 'Go to shop categories', 'admin', 1592421213),
(13, 'Go to shop categories', 'admin', 1592421222),
(14, 'Go to shop categories', 'admin', 1592421234),
(15, 'Go to products', 'admin', 1592421251),
(16, 'Go to publish product', 'admin', 1592421254),
(17, 'Go to shop categories', 'admin', 1592421256),
(18, 'Change subcategory for category id - 5', 'admin', 1592421268),
(19, 'Go to shop categories', 'admin', 1592421268),
(20, 'Go to orders page', 'admin', 1592421300),
(21, 'Go to Settings Page', 'admin', 1592421302),
(22, 'Go to products', 'admin', 1592421371),
(23, 'Go to publish product', 'admin', 1592421374),
(24, 'Go to Settings Page', 'admin', 1592421426),
(25, 'Go to Settings Page', 'admin', 1592421584),
(26, 'Go to publish product', 'admin', 1592421664),
(27, 'Success published product', 'admin', 1592421732),
(28, 'Go to products', 'admin', 1592421732),
(29, 'Go to publish product', 'admin', 1592421767),
(30, 'Success updated product', 'admin', 1592421783),
(31, 'Go to products', 'admin', 1592421783),
(32, 'Go to publish product', 'admin', 1592421870),
(33, 'Go to publish product', 'admin', 1592421873),
(34, 'Success updated product', 'admin', 1592421894),
(35, 'Go to products', 'admin', 1592421894),
(36, 'Go to publish product', 'admin', 1592421901),
(37, 'Success updated product', 'admin', 1592421918),
(38, 'Go to products', 'admin', 1592421918),
(39, 'Go to products', 'admin', 1592421922),
(40, 'Go to products', 'admin', 1592421997),
(41, 'Go to publish product', 'admin', 1592422000),
(42, 'Success updated product', 'admin', 1592422010),
(43, 'Go to products', 'admin', 1592422010),
(44, 'Go to products', 'admin', 1592422012),
(45, 'Go to products', 'admin', 1592422052),
(46, 'Go to Templates Page', 'admin', 1592422110),
(47, 'Go to Templates Page', 'admin', 1592422115),
(48, 'Go to Templates Page', 'admin', 1592422124),
(49, 'Go to Templates Page', 'admin', 1592422131),
(50, 'Go to products', 'admin', 1592422287),
(51, 'Go to publish product', 'admin', 1592422290),
(52, 'Success updated product', 'admin', 1592422324),
(53, 'Go to products', 'admin', 1592422324),
(54, 'Go to publish product', 'admin', 1592422329),
(55, 'Go to shop categories', 'admin', 1592422330),
(56, 'Go to orders page', 'admin', 1592422332),
(57, 'Go to discounts page', 'admin', 1592422333),
(58, 'Go to orders page', 'admin', 1592422335),
(59, 'Go to orders page', 'admin', 1592422336),
(60, 'Go to Styling page', 'admin', 1592422341),
(61, 'Go to Settings Page', 'admin', 1592422344),
(62, 'Brands visibility changed', 'admin', 1592422355),
(63, 'Go to Settings Page', 'admin', 1592422355),
(64, 'Go to publish product', 'admin', 1592422357),
(65, 'Go to products', 'admin', 1592422358),
(66, 'Go to brands page', 'admin', 1592422360),
(67, 'Go to brands page', 'admin', 1592422367),
(68, 'Go to products', 'admin', 1592422369),
(69, 'Go to publish product', 'admin', 1592422371),
(70, 'Success updated product', 'admin', 1592422379),
(71, 'Go to products', 'admin', 1592422379),
(72, 'Go to Blog', 'admin', 1592422431),
(73, 'Go to Blog Publish', 'admin', 1592422432),
(74, 'Go to Blog', 'admin', 1592422444),
(75, 'Go to Styling page', 'admin', 1592422605),
(76, 'Go to Settings Page', 'admin', 1592422606),
(77, 'Go to languages', 'admin', 1592422614),
(78, 'Go to products', 'admin', 1592422810),
(79, 'Go to brands page', 'admin', 1592422812),
(80, 'Go to brands page', 'admin', 1592422828),
(81, 'Go to products', 'admin', 1592422829),
(82, 'Go to publish product', 'admin', 1592422830),
(83, 'Success published product', 'admin', 1592422885),
(84, 'Go to products', 'admin', 1592422885),
(85, 'Go to Settings Page', 'admin', 1592423056),
(86, 'Change Shipping free for order more than 499.999', 'admin', 1592423070),
(87, 'Go to Settings Page', 'admin', 1592423070),
(88, 'Go to products', 'admin', 1592423118),
(89, 'Go to publish product', 'admin', 1592423121),
(90, 'Success updated product', 'admin', 1592423142),
(91, 'Go to products', 'admin', 1592423143),
(92, 'Go to publish product', 'admin', 1592423148),
(93, 'Go to home page', 'admin', 1592423155),
(94, 'Go to products', 'admin', 1592423170),
(95, 'Delete product id - 1', 'admin', 1592423174),
(96, 'Go to products', 'admin', 1592423175),
(97, 'Go to brands page', 'admin', 1592423367),
(98, 'Go to brands page', 'admin', 1592423379),
(99, 'Go to products', 'admin', 1592423404),
(100, 'Go to publish product', 'admin', 1592423407),
(101, 'Success published product', 'admin', 1592423462),
(102, 'Go to products', 'admin', 1592423463),
(103, 'Go to publish product', 'admin', 1592423553),
(104, 'Go to products', 'admin', 1592423557),
(105, 'Go to publish product', 'admin', 1592423558),
(106, 'Success published product', 'admin', 1592423589),
(107, 'Go to products', 'admin', 1592423589),
(108, 'Go to brands page', 'admin', 1592423591),
(109, 'Go to brands page', 'admin', 1592423599),
(110, 'Go to products', 'admin', 1592423600),
(111, 'Go to publish product', 'admin', 1592423603),
(112, 'Success updated product', 'admin', 1592423610),
(113, 'Go to products', 'admin', 1592423610),
(114, 'Go to brands page', 'admin', 1592423667),
(115, 'Go to brands page', 'admin', 1592423680),
(116, 'Go to products', 'admin', 1592423685),
(117, 'Go to publish product', 'admin', 1592423690),
(118, 'Success published product', 'admin', 1592423736),
(119, 'Go to products', 'admin', 1592423737),
(120, 'Go to brands page', 'admin', 1592423770),
(121, 'Go to brands page', 'admin', 1592423779),
(122, 'Go to products', 'admin', 1592423780),
(123, 'Go to publish product', 'admin', 1592423784),
(124, 'Success published product', 'admin', 1592423825),
(125, 'Go to products', 'admin', 1592423825),
(126, 'Go to products', 'admin', 1592423893),
(127, 'Go to publish product', 'admin', 1592423896),
(128, 'Success updated product', 'admin', 1592423902),
(129, 'Go to products', 'admin', 1592423902),
(130, 'User admin logged in', NULL, 1592451345),
(131, 'Go to home page', 'admin', 1592451345),
(132, 'Go to Styling page', 'admin', 1592451347),
(133, 'Change site styling', 'admin', 1592451358),
(134, 'Go to Styling page', 'admin', 1592451358),
(135, 'Go to publish product', 'admin', 1592451371),
(136, 'Go to products', 'admin', 1592451372),
(137, 'Go to brands page', 'admin', 1592451379),
(138, 'Go to shop categories', 'admin', 1592451381),
(139, 'Go to orders page', 'admin', 1592451386),
(140, 'Go to discounts page', 'admin', 1592451393),
(141, 'Go to Blog Publish', 'admin', 1592451402),
(142, 'Go to Blog', 'admin', 1592451407),
(143, 'Go to Settings Page', 'admin', 1592451410),
(144, 'Go to Settings Page', 'admin', 1592451575),
(145, 'Go to orders page', 'admin', 1592451577),
(146, 'Go to orders page', 'admin', 1592452016),
(147, 'Go to publish product', 'admin', 1592452036),
(148, 'Go to products', 'admin', 1592452044),
(149, 'Go to brands page', 'admin', 1592452063),
(150, 'Go to shop categories', 'admin', 1592452064),
(151, 'Go to brands page', 'admin', 1592452066),
(152, 'Go to shop categories', 'admin', 1592452071),
(153, 'Go to orders page', 'admin', 1592452074),
(154, 'Go to Blog Publish', 'admin', 1592452081),
(155, 'Go to Blog', 'admin', 1592452087),
(156, 'Go to Blog Publish', 'admin', 1592452091),
(157, 'Go to products', 'admin', 1592452098),
(158, 'Go to Settings Page', 'admin', 1592452132),
(159, 'Change footer contacts', 'admin', 1592452180),
(160, 'Go to Settings Page', 'admin', 1592452180),
(161, 'Go to products', 'admin', 1592452195),
(162, 'Go to publish product', 'admin', 1592452198),
(163, 'Go to publish product', 'admin', 1592452210),
(164, 'Success published product', 'admin', 1592452239),
(165, 'Go to products', 'admin', 1592452239),
(166, 'Go to products', 'admin', 1592452308),
(167, 'Go to orders page', 'admin', 1592452451),
(168, 'Go to products', 'admin', 1592452478),
(169, 'Go to orders page', 'admin', 1592452482),
(170, 'Change status of Order Id 3 to status 1', 'admin', 1592452483),
(171, 'Go to home page', 'admin', 1592452565),
(172, 'Go to orders page', 'admin', 1592452572),
(173, 'Change status of Order Id 2 to status 0', 'admin', 1592452575),
(174, 'Change status of Order Id 2 to status 0', 'admin', 1592452578),
(175, 'Change status of Order Id 1 to status 2', 'admin', 1592452581),
(176, 'Go to products', 'admin', 1592452585),
(177, 'Go to products', 'admin', 1592452586),
(178, 'Go to orders page', 'admin', 1592452596),
(179, 'Go to products', 'admin', 1592452638),
(180, 'User admin logged in', NULL, 1593443349),
(181, 'Go to home page', 'admin', 1593443349),
(182, 'Go to Admin Users', 'admin', 1593443371),
(183, 'Go to File Manager', 'admin', 1593443377),
(184, 'Go to Templates Page', 'admin', 1593443628),
(185, 'Go to Subscribed Emails', 'admin', 1593443668),
(186, 'Go to Templates Page', 'admin', 1593443671),
(187, 'Go to Styling page', 'admin', 1593443672),
(188, 'Go to Settings Page', 'admin', 1593443673),
(189, 'Go to Settings Page', 'admin', 1593443728),
(190, 'Go to Styling page', 'admin', 1593443729),
(191, 'Go to languages', 'admin', 1593443940),
(192, 'Go to File Manager', 'admin', 1593443947),
(193, 'Go to Pages manage', 'admin', 1593443966),
(194, 'Go to Titles / Descriptions page', 'admin', 1593443968),
(195, 'Go to Templates Page', 'admin', 1593443970),
(196, 'Go to Styling page', 'admin', 1593443971),
(197, 'Go to Settings Page', 'admin', 1593443972),
(198, 'Go to Titles / Descriptions page', 'admin', 1593443979),
(199, 'Go to Templates Page', 'admin', 1593444001),
(200, 'Go to Styling page', 'admin', 1593444002),
(201, 'Go to Settings Page', 'admin', 1593444012),
(202, 'Go to Settings Page', 'admin', 1593444720),
(203, 'Go to Settings Page', 'admin', 1593444786),
(204, 'Go to Settings Page', 'admin', 1593445081),
(205, 'Go to Templates Page', 'admin', 1593446295),
(206, 'Go to Templates Page', 'admin', 1593446301),
(207, 'Go to Templates Page', 'admin', 1593446383),
(208, 'Go to Settings Page', 'admin', 1593448693),
(209, 'Go to Styling page', 'admin', 1593448702),
(210, 'Go to Styling page', 'admin', 1593448709),
(211, 'Go to Templates Page', 'admin', 1593448710),
(212, 'Go to brands page', 'admin', 1593448712),
(213, 'Go to products', 'admin', 1593448714),
(214, 'Go to publish product', 'admin', 1593448715),
(215, 'Go to orders page', 'admin', 1593448718),
(216, 'Go to discounts page', 'admin', 1593448719),
(217, 'Go to Blog', 'admin', 1593448720),
(218, 'Go to Settings Page', 'admin', 1593448722),
(219, 'Go to Styling page', 'admin', 1593448724),
(220, 'Go to Templates Page', 'admin', 1593448725),
(221, 'Go to Titles / Descriptions page', 'admin', 1593448728),
(222, 'Go to Pages manage', 'admin', 1593448732),
(223, 'Go to Templates Page', 'admin', 1593448734),
(224, 'Go to Titles / Descriptions page', 'admin', 1593448735),
(225, 'Go to Pages manage', 'admin', 1593448736),
(226, 'Go to publish product', 'admin', 1593448739),
(227, 'Go to discounts page', 'admin', 1593448750),
(228, 'Go to orders page', 'admin', 1593448751),
(229, 'Go to shop categories', 'admin', 1593448752),
(230, 'Go to orders page', 'admin', 1593448754),
(231, 'Go to shop categories', 'admin', 1593448755),
(232, 'Go to Settings Page', 'admin', 1593448757),
(233, 'Go to publish product', 'admin', 1593448782),
(234, 'Success published product', 'admin', 1593448799),
(235, 'Go to products', 'admin', 1593448799),
(236, 'Go to publish product', 'admin', 1593448813),
(237, 'Success updated product', 'admin', 1593448850),
(238, 'Go to products', 'admin', 1593448850),
(239, 'Delete product id - 9', 'admin', 1593448873),
(240, 'Go to products', 'admin', 1593448873),
(241, 'Go to orders page', 'admin', 1593448876),
(242, 'Go to shop categories', 'admin', 1593448878),
(243, 'Go to brands page', 'admin', 1593448879),
(244, 'Go to products', 'admin', 1593448880),
(245, 'Go to discounts page', 'admin', 1593448882),
(246, 'Go to Blog Publish', 'admin', 1593448883),
(247, 'Go to Blog', 'admin', 1593448883),
(248, 'Go to Settings Page', 'admin', 1593448884),
(249, 'Change publicQuantity visibility', 'admin', 1593448903),
(250, 'Go to Settings Page', 'admin', 1593448903),
(251, 'Go to Styling page', 'admin', 1593448922),
(252, 'Go to Templates Page', 'admin', 1593448924),
(253, 'Go to Titles / Descriptions page', 'admin', 1593448928),
(254, 'Go to Pages manage', 'admin', 1593448929),
(255, 'Go to Settings Page', 'admin', 1593448939),
(256, 'Go to Templates Page', 'admin', 1593448951),
(257, 'Go to Blog Publish', 'admin', 1593449274),
(258, 'Go to Blog', 'admin', 1593449275),
(259, 'Go to Settings Page', 'admin', 1593449277),
(260, 'Go to Styling page', 'admin', 1593449278),
(261, 'Go to Templates Page', 'admin', 1593449278),
(262, 'Go to publish product', 'admin', 1593449280),
(263, 'Success published product', 'admin', 1593449323),
(264, 'Go to products', 'admin', 1593449323),
(265, 'Go to publish product', 'admin', 1593449338),
(266, 'Success updated product', 'admin', 1593449344),
(267, 'Go to products', 'admin', 1593449344),
(268, 'Go to publish product', 'admin', 1593449368),
(269, 'Delete product id - 10', 'admin', 1593449385),
(270, 'Go to products', 'admin', 1593449385),
(271, 'Go to publish product', 'admin', 1593449387),
(272, 'Success updated product', 'admin', 1593449393),
(273, 'Go to products', 'admin', 1593449393),
(274, 'Go to publish product', 'admin', 1593449413),
(275, 'Success updated product', 'admin', 1593452066),
(276, 'Go to products', 'admin', 1593452066),
(277, 'Go to publish product', 'admin', 1593452071),
(278, 'Success updated product', 'admin', 1593452094),
(279, 'Go to products', 'admin', 1593452095),
(280, 'Go to publish product', 'admin', 1593452109),
(281, 'Success updated product', 'admin', 1593452226),
(282, 'Go to products', 'admin', 1593452226),
(283, 'Go to publish product', 'admin', 1593452231),
(284, 'Success updated product', 'admin', 1593452255),
(285, 'Go to products', 'admin', 1593452255),
(286, 'User admin logged in', NULL, 1593676667),
(287, 'Go to home page', 'admin', 1593676667),
(288, 'Go to Templates Page', 'admin', 1593676670),
(289, 'Go to Blog Publish', 'admin', 1593676694),
(290, 'Go to Blog', 'admin', 1593676695),
(291, 'Go to discounts page', 'admin', 1593676696),
(292, 'Go to orders page', 'admin', 1593676697),
(293, 'Go to shop categories', 'admin', 1593676698),
(294, 'Go to brands page', 'admin', 1593676699),
(295, 'Go to products', 'admin', 1593676700),
(296, 'Go to publish product', 'admin', 1593676701),
(297, 'Go to Titles / Descriptions page', 'admin', 1593676705),
(298, 'Go to Templates Page', 'admin', 1593676706),
(299, 'Go to Pages manage', 'admin', 1593676707),
(300, 'Go to Templates Page', 'admin', 1593676709),
(301, 'Go to Styling page', 'admin', 1593676709),
(302, 'Go to Settings Page', 'admin', 1593676711),
(303, 'Go to Templates Page', 'admin', 1593678686),
(304, 'User admin logged in', NULL, 1593699077),
(305, 'Go to home page', 'admin', 1593699079),
(306, 'Go to publish product', 'admin', 1593699084),
(307, 'Go to Blog Publish', 'admin', 1593700093),
(308, 'Go to products', 'admin', 1593700290),
(309, 'Go to publish product', 'admin', 1593700294),
(310, 'Success updated product', 'admin', 1593700307),
(311, 'Go to products', 'admin', 1593700307),
(312, 'Go to Blog Publish', 'admin', 1593700359),
(313, 'Go to orders page', 'admin', 1593700477),
(314, 'Go to orders page', 'admin', 1593700495),
(315, 'Change Cash On Delivery Visibility - 1', 'admin', 1593700523),
(316, 'Go to orders page', 'admin', 1593700523),
(317, 'Go to orders page', 'admin', 1593700525),
(318, 'Go to orders page', 'admin', 1593700527),
(319, 'Go to products', 'admin', 1593700555),
(320, 'Go to publish product', 'admin', 1593700556),
(321, 'Go to products', 'admin', 1593700583),
(322, 'Go to brands page', 'admin', 1593700585),
(323, 'Go to publish product', 'admin', 1593700587),
(324, 'Go to Templates Page', 'admin', 1593700907),
(325, 'Go to Blog Publish', 'admin', 1593701717),
(326, 'Go to Blog', 'admin', 1593701721),
(327, 'Go to Blog', 'admin', 1593701728),
(328, 'Go to Blog Publish', 'admin', 1593701729),
(329, 'User admin logged in', NULL, 1593701767),
(330, 'Go to home page', 'admin', 1593701767),
(331, 'Go to Blog Publish', 'admin', 1593701911),
(332, 'Go to Blog', 'admin', 1593701917),
(333, 'Go to Blog Publish', 'admin', 1593701918),
(334, 'Go to Blog Publish', 'admin', 1593701950),
(335, 'Go to home page', 'admin', 1593702155),
(336, 'Go to home page', 'admin', 1593702340),
(337, 'Go to home page', 'admin', 1593702352),
(338, 'Go to home page', 'admin', 1593702369),
(339, 'Go to Settings Page', 'admin', 1593702374),
(340, 'Go to Styling page', 'admin', 1593702375),
(341, 'Go to products', 'admin', 1593702377),
(342, 'Go to orders page', 'admin', 1593702382),
(343, 'Go to publish product', 'admin', 1593702389),
(344, 'Go to products', 'admin', 1593702399),
(345, 'Go to publish product', 'admin', 1593702402),
(346, 'Success updated product', 'admin', 1593702414),
(347, 'Go to products', 'admin', 1593702414),
(348, 'Go to publish product', 'admin', 1593702452),
(349, 'Success updated product', 'admin', 1593702491),
(350, 'Go to products', 'admin', 1593702491),
(351, 'Go to Blog', 'admin', 1593703314),
(352, 'Go to home page', 'admin', 1593703320),
(353, 'Go to orders page', 'admin', 1593703325),
(354, 'Go to publish product', 'admin', 1593704091),
(355, 'Go to home page', 'admin', 1593704092),
(356, 'Go to products', 'admin', 1593704696),
(357, 'Go to publish product', 'admin', 1593704698),
(358, 'Success updated product', 'admin', 1593704704),
(359, 'Go to products', 'admin', 1593704704),
(360, 'Go to Blog Publish', 'admin', 1593704718),
(361, 'Go to Blog', 'admin', 1593704723),
(362, 'Go to Blog Publish', 'admin', 1593704724),
(363, 'Go to Blog', 'admin', 1593704728),
(364, 'Go to shop categories', 'admin', 1593704784),
(365, 'Go to products', 'admin', 1593704808),
(366, 'Delete product id - 8', 'admin', 1593704814),
(367, 'Go to products', 'admin', 1593704814),
(368, 'Go to publish product', 'admin', 1593704829),
(369, 'Success updated product', 'admin', 1593704836),
(370, 'Go to products', 'admin', 1593704836),
(371, 'Go to publish product', 'admin', 1593704852),
(372, 'Success updated product', 'admin', 1593704857),
(373, 'Go to products', 'admin', 1593704857),
(374, 'Go to publish product', 'admin', 1593705249),
(375, 'Go to products', 'admin', 1593705254),
(376, 'Go to publish product', 'admin', 1593705257),
(377, 'Go to Blog Publish', 'admin', 1593705274),
(378, 'Go to Blog', 'admin', 1593705336),
(379, 'Go to Blog Publish', 'admin', 1593705340),
(380, 'Go to Blog Publish', 'admin', 1593705345),
(381, 'Go to Blog Publish', 'admin', 1593705367),
(382, 'Go to Blog', 'admin', 1593705378),
(383, 'Go to Blog Publish', 'admin', 1593705379),
(384, 'Go to Blog', 'admin', 1593705384),
(385, 'Go to Blog Publish', 'admin', 1593705464),
(386, 'Go to Blog Publish', 'admin', 1593705466),
(387, 'Go to Blog', 'admin', 1593705468),
(388, 'Go to Blog Publish', 'admin', 1593705470),
(389, 'User admin logged in', NULL, 1593706275),
(390, 'Go to home page', 'admin', 1593706275),
(391, 'Go to publish product', 'admin', 1593706279),
(392, 'Go to products', 'admin', 1593706286),
(393, 'Go to publish product', 'admin', 1593706289),
(394, 'Success updated product', 'admin', 1593706296),
(395, 'Go to products', 'admin', 1593706296),
(396, 'Go to Blog Publish', 'admin', 1593706353),
(397, 'Go to Blog', 'admin', 1593706365),
(398, 'Go to Blog', 'admin', 1593706365),
(399, 'Go to Blog', 'admin', 1593706366),
(400, 'Go to Blog', 'admin', 1593706366),
(401, 'Go to Blog Publish', 'admin', 1593706379),
(402, 'Go to Blog', 'admin', 1593706388),
(403, 'Go to home page', 'admin', 1593706605),
(404, 'Go to orders page', 'admin', 1593706607);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currencyKey` varchar(5) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `abbr`, `name`, `currency`, `currencyKey`, `flag`) VALUES
(2, 'en', 'english', 'IDR', 'USD', 'en.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'point to public_users ID',
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'viewed status is change when change processed status',
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `products`, `date`, `referrer`, `clean_referrer`, `payment_type`, `paypal_status`, `processed`, `viewed`, `confirmed`, `discount_code`) VALUES
(1, 1234, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"2\";s:6:\"folder\";s:10:\"1592421664\";s:5:\"image\";s:16:\"dennimaddict.png\";s:4:\"time\";s:10:\"1592421732\";s:11:\"time_update\";s:10:\"1592423142\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"1\";s:8:\"quantity\";s:1:\"3\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:15:\"Dennim_Addict_2\";s:16:\"virtual_products\";N;s:8:\"brand_id\";s:1:\"1\";s:8:\"position\";s:1:\"0\";s:5:\"price\";s:5:\"99000\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1592451557, 'http://localhost/shop/', 'localhost', 'cashOnDelivery', NULL, 2, 1, 0, ''),
(2, 1235, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"3\";s:6:\"folder\";s:10:\"1592422830\";s:5:\"image\";s:10:\"skirt.jpeg\";s:4:\"time\";s:10:\"1592422885\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"8\";s:8:\"quantity\";s:1:\"5\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:28:\"Leather_Short_Coated_Skirt_3\";s:16:\"virtual_products\";N;s:8:\"brand_id\";s:1:\"2\";s:8:\"position\";s:1:\"0\";s:5:\"price\";s:6:\"250000\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1592451973, 'http://localhost/shop/', 'localhost', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(3, 1236, 0, 'a:2:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"2\";s:6:\"folder\";s:10:\"1592421664\";s:5:\"image\";s:16:\"dennimaddict.png\";s:4:\"time\";s:10:\"1592421732\";s:11:\"time_update\";s:10:\"1592423142\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"1\";s:8:\"quantity\";s:1:\"3\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:15:\"Dennim_Addict_2\";s:16:\"virtual_products\";N;s:8:\"brand_id\";s:1:\"1\";s:8:\"position\";s:1:\"0\";s:5:\"price\";s:5:\"99000\";}s:16:\"product_quantity\";s:1:\"1\";}i:1;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"4\";s:6:\"folder\";s:10:\"1592423407\";s:5:\"image\";s:8:\"top.jpeg\";s:4:\"time\";s:10:\"1592423462\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"5\";s:8:\"quantity\";s:1:\"3\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:27:\"White_Short_Sleeve_Blouse_4\";s:16:\"virtual_products\";N;s:8:\"brand_id\";s:1:\"1\";s:8:\"position\";s:1:\"0\";s:5:\"price\";s:5:\"99000\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1592452441, 'http://localhost/shop/', 'localhost', 'cashOnDelivery', NULL, 1, 1, 0, ''),
(4, 1237, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"6\";s:6:\"folder\";s:10:\"1592423690\";s:5:\"image\";s:10:\"jeans.jpeg\";s:4:\"time\";s:10:\"1592423736\";s:11:\"time_update\";s:10:\"1593704836\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"7\";s:8:\"quantity\";s:1:\"2\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:39:\"Boyfriend_Jeans_Bio_Navy_Black_Rumbay_6\";s:16:\"virtual_products\";N;s:8:\"brand_id\";s:1:\"5\";s:8:\"position\";s:1:\"4\";s:5:\"price\";s:6:\"100000\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1593706593, 'http://localhost/shop/', 'localhost', 'cashOnDelivery', NULL, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_clients`
--

CREATE TABLE `orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_clients`
--

INSERT INTO `orders_clients` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `post_code`, `notes`, `for_id`) VALUES
(1, 'Savira', 'Ilyas', 'rani.savira!@live.com', '081296003330', 'KOMP DKI Blok P No.12', 'Jakarta', '11640', '', 1),
(2, 'savira', 'ilyas', 'rani.savira@live.com', '5841248', 'komplek dki', 'jakarta', '11640', '', 2),
(3, 'riski', 'nasution', 'xxx@gmail.com', '081296003330', 'bogor', 'BOGRO', '00000', '', 3),
(4, 'Nabila', 'Putri', 'nabila@gmail.com', '0837292948', 'Depok', 'Jakarta', '13203', 'Size 36', 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder` int(10) UNSIGNED DEFAULT NULL COMMENT 'folder with images',
  `image` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL COMMENT 'time created',
  `time_update` int(10) UNSIGNED NOT NULL COMMENT 'time updated',
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `shop_categorie` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `procurement` int(10) UNSIGNED NOT NULL,
  `in_slider` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `virtual_products` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` int(5) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `folder`, `image`, `time`, `time_update`, `visibility`, `shop_categorie`, `quantity`, `procurement`, `in_slider`, `url`, `virtual_products`, `brand_id`, `position`, `vendor_id`) VALUES
(2, 1592421664, 'dennimaddict.png', 1592421732, 1593706296, 1, 1, 0, 1, 0, 'Dennim_Addict_2', NULL, 1, 0, 0),
(3, 1592422830, 'rok.jpg', 1592422885, 1593704704, 1, 8, 5, 0, 1, 'Leather_Short_Coated_Skirt_3', NULL, 2, 0, 0),
(4, 1592423407, 'top.jpeg', 1592423462, 0, 1, 5, 2, 1, 0, 'White_Short_Sleeve_Blouse_4', NULL, 1, 0, 0),
(5, 1592423558, 'top1.jpeg', 1592423589, 1592423610, 1, 1, 7, 0, 0, 'Baby_Blue_Sport_Tank_Top_5', NULL, 4, 0, 0),
(6, 1592423690, 'jeans.jpeg', 1592423736, 1593704836, 1, 7, 2, 0, 0, 'Boyfriend_Jeans_Bio_Navy_Black_Rumbay_6', NULL, 5, 4, 0),
(7, 1592423784, 'kemeja.jpg', 1592423825, 1593700307, 1, 5, 2, 0, 1, 'Yellow_Relaxed_Flowy_Shirt_7', NULL, 6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_translations`
--

CREATE TABLE `products_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `basic_description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `old_price` varchar(20) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_translations`
--

INSERT INTO `products_translations` (`id`, `title`, `description`, `basic_description`, `price`, `old_price`, `abbr`, `for_id`) VALUES
(4, 'Women Bomber Jacket Dennim Addict', '', '', '99000', '399000', 'en', 2),
(5, 'New Arrival: Leather Skirt', '', '', '250000', '839000', 'en', 3),
(6, 'White Short Sleeve Blouse', '', '', '99000', '150000', 'en', 4),
(7, 'Baby Blue Sport Tank Top', '', '', '50000', '199000', 'en', 5),
(8, 'Boyfriend Jeans Bio Navy Black Rumbay', '<p>Jeans layak pakai.</p>\r\n\r\n<p>Size 38 only.</p>\r\n', '', '100000', '330000', 'en', 6),
(9, 'Yellow Relaxed Flowy Shirt', '', '', '150000', '479000', 'en', 7);

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages`
--

CREATE TABLE `seo_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seo_pages`
--

INSERT INTO `seo_pages` (`id`, `name`) VALUES
(1, 'home'),
(2, 'checkout'),
(3, 'contacts'),
(4, 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages_translations`
--

CREATE TABLE `seo_pages_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `page_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_for` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `sub_for`, `position`) VALUES
(1, 3, 0),
(2, 0, 0),
(3, 0, 0),
(4, 2, 0),
(5, 2, 0),
(6, 0, 0),
(7, 2, 0),
(8, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories_translations`
--

CREATE TABLE `shop_categories_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories_translations`
--

INSERT INTO `shop_categories_translations` (`id`, `name`, `abbr`, `for_id`) VALUES
(2, 'Jacket', 'en', 1),
(4, 'Top', 'en', 2),
(5, 'Outer', 'en', 3),
(6, 'Shirt', 'en', 4),
(7, 'Blouse', 'en', 5),
(8, 'Bottom', 'en', 6),
(9, 'Jeans', 'en', 7),
(10, 'Skirt', 'en', 8);

-- --------------------------------------------------------

--
-- Table structure for table `subscribed`
--

CREATE TABLE `subscribed` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `textual_pages_tanslations`
--

CREATE TABLE `textual_pages_tanslations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'notifications by email',
  `last_login` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `notify`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'your@email.com', 0, 1593706275);

-- --------------------------------------------------------

--
-- Table structure for table `users_public`
--

CREATE TABLE `users_public` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `value_store`
--

CREATE TABLE `value_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `thekey` varchar(50) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `value_store`
--

INSERT INTO `value_store` (`id`, `thekey`, `value`) VALUES
(1, 'sitelogo', '3.png'),
(2, 'navitext', ''),
(3, 'footercopyright', 'Powered by Thansktoran © All right reserved. '),
(4, 'contactspage', 'Hello dear client'),
(5, 'footerContactAddr', ''),
(6, 'footerContactEmail', 'support@thankstoran.com'),
(7, 'footerContactPhone', '081296003330'),
(8, 'googleMaps', '42.671840, 83.279163'),
(9, 'footerAboutUs', ''),
(10, 'footerSocialFacebook', ''),
(11, 'footerSocialTwitter', ''),
(12, 'footerSocialGooglePlus', ''),
(13, 'footerSocialPinterest', ''),
(14, 'footerSocialYoutube', ''),
(16, 'contactsEmailTo', 'contacts@thankstoran.com'),
(17, 'shippingOrder', '499.999'),
(18, 'addJs', ''),
(19, 'publicQuantity', '1'),
(20, 'paypal_email', ''),
(21, 'paypal_sandbox', '0'),
(22, 'publicDateAdded', '0'),
(23, 'googleApi', ''),
(24, 'template', 'greenlabel'),
(25, 'cashondelivery_visibility', '1'),
(26, 'showBrands', '1'),
(27, 'showInSlider', '0'),
(28, 'codeDiscounts', '1'),
(29, 'virtualProducts', '0'),
(30, 'multiVendor', '0'),
(31, 'outOfStock', '0'),
(32, 'newStyle', '');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders`
--

CREATE TABLE `vendors_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_code` varchar(20) NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders_clients`
--

CREATE TABLE `vendors_orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_pages`
--
ALTER TABLE `active_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_links`
--
ALTER TABLE `confirm_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law`
--
ALTER TABLE `cookie_law`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`abbr`,`for_id`) USING BTREE;

--
-- Indexes for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_clients`
--
ALTER TABLE `orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_translations`
--
ALTER TABLE `products_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages`
--
ALTER TABLE `seo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed`
--
ALTER TABLE `subscribed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_public`
--
ALTER TABLE `users_public`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_store`
--
ALTER TABLE `value_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`thekey`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_pages`
--
ALTER TABLE `active_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `confirm_links`
--
ALTER TABLE `confirm_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cookie_law`
--
ALTER TABLE `cookie_law`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders_clients`
--
ALTER TABLE `orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products_translations`
--
ALTER TABLE `products_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `seo_pages`
--
ALTER TABLE `seo_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subscribed`
--
ALTER TABLE `subscribed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_public`
--
ALTER TABLE `users_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `value_store`
--
ALTER TABLE `value_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
