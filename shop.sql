-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 10, 2021 at 07:49 AM
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
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2021-04-24 16:21:18', '2-05-2021 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(12, 'Fruits and Veggies', '', '2021-05-02 04:17:51', NULL),
(13, 'Grocery', '', '2021-05-02 04:20:03', NULL),
(14, 'Bakery and Diary', '', '2021-05-02 04:20:22', NULL),
(15, 'Beverages', '', '2021-05-02 04:22:34', NULL),
(18, 'Bread', 'bakery', '2021-05-20 09:53:27', NULL),
(20, 'Medical', 'Medicines', '2021-05-24 10:19:02', NULL),
(21, 'Frozen', '', '2021-05-30 03:13:25', NULL),
(22, 'Cosmetic', '', '2021-05-30 03:51:33', NULL),
(23, 'Utensils', '', '2021-05-31 05:23:56', NULL),
(24, 'Pooja Items', '', '2021-05-31 05:32:29', NULL),
(25, 'Ready to eat', '', '2021-05-31 05:40:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(17, 4, '75', 1, '2021-05-02 08:28:06', 'card', NULL),
(18, 7, '58', 1, '2021-05-18 00:17:57', 'COD', NULL),
(19, 7, '58', 1, '2021-06-07 09:26:13', 'paypal', NULL),
(20, 7, '58', 1, '2021-06-07 09:30:06', 'COD', NULL),
(21, 7, '58', 1, '2021-06-07 09:36:18', 'COD', NULL),
(22, 7, '59', 1, '2021-06-07 10:12:51', 'COD', NULL),
(23, 7, '58', 1, '2021-06-07 10:16:47', 'paypal', NULL),
(24, 7, '58', 1, '2021-06-07 10:18:12', 'paypal', NULL),
(25, 7, '58', 1, '2021-06-07 10:19:23', 'paypal', NULL),
(26, 7, '59', 1, '2021-06-07 10:22:32', 'COD', NULL),
(27, 7, '58', 1, '2021-06-07 10:22:48', 'COD', NULL),
(28, 7, '59', 1, '2021-06-07 10:22:48', 'COD', NULL),
(29, 7, '58', 1, '2021-06-07 10:23:12', 'COD', NULL),
(30, 7, '58', 1, '2021-06-07 10:25:22', 'paypal', NULL),
(31, 7, '58', 3, '2021-06-07 10:30:32', 'paypal', NULL),
(32, 7, '58', 3, '2021-06-07 23:28:31', 'paypal', NULL),
(33, 7, '58', 1, '2021-06-08 01:37:09', 'COD', NULL),
(34, 7, '58', 1, '2021-06-08 01:52:48', 'paypal', NULL),
(35, 7, '58', 3, '2021-06-08 02:01:42', 'paypal', NULL),
(36, 7, '74', 1, '2021-06-08 02:01:42', 'paypal', NULL),
(37, 7, '58', 3, '2021-06-08 02:04:53', 'paypal', NULL),
(38, 7, '59', 1, '2021-06-08 02:04:53', 'paypal', NULL),
(39, 7, '74', 1, '2021-06-08 02:04:53', 'paypal', NULL),
(40, 7, '58', 3, '2021-06-08 02:09:06', 'paypal', NULL),
(41, 7, '59', 3, '2021-06-08 02:09:06', 'paypal', NULL),
(42, 7, '61', 1, '2021-06-08 02:09:06', 'paypal', NULL),
(43, 7, '74', 1, '2021-06-08 02:09:06', 'paypal', NULL),
(44, 7, '58', 8, '2021-06-08 08:11:31', 'paypal', NULL),
(45, 7, '59', 8, '2021-06-08 08:11:31', 'paypal', NULL),
(46, 7, '60', 1, '2021-06-08 08:11:31', 'paypal', NULL),
(47, 7, '61', 1, '2021-06-08 08:11:31', 'paypal', NULL),
(48, 7, '74', 1, '2021-06-08 08:11:31', 'paypal', NULL),
(49, 7, '58', 9, '2021-06-08 08:13:51', 'paypal', NULL),
(50, 7, '59', 8, '2021-06-08 08:13:51', 'paypal', NULL),
(51, 7, '60', 1, '2021-06-08 08:13:51', 'paypal', NULL),
(52, 7, '61', 1, '2021-06-08 08:13:51', 'paypal', NULL),
(53, 7, '74', 1, '2021-06-08 08:13:51', 'paypal', NULL),
(54, 7, '58', 9, '2021-06-08 08:15:44', 'paypal', NULL),
(55, 7, '59', 8, '2021-06-08 08:15:44', 'paypal', NULL),
(56, 7, '60', 1, '2021-06-08 08:15:44', 'paypal', NULL),
(57, 7, '61', 1, '2021-06-08 08:15:44', 'paypal', NULL),
(58, 7, '74', 1, '2021-06-08 08:15:44', 'paypal', NULL),
(59, 7, '58', 9, '2021-06-08 08:16:33', 'paypal', NULL),
(60, 7, '59', 8, '2021-06-08 08:16:33', 'paypal', NULL),
(61, 7, '60', 1, '2021-06-08 08:16:33', 'paypal', NULL),
(62, 7, '61', 1, '2021-06-08 08:16:33', 'paypal', NULL),
(63, 7, '74', 1, '2021-06-08 08:16:33', 'paypal', NULL),
(64, 7, '58', 1, '2021-06-10 02:41:51', 'paypal', 'Delivered'),
(65, 7, '58', 1, '2021-06-10 02:52:02', 'paypal', NULL),
(66, 7, '60', 3, '2021-06-10 02:52:02', 'paypal', NULL),
(67, 7, '67', 1, '2021-06-10 02:52:02', 'paypal', NULL),
(68, 7, '58', 1, '2021-06-10 02:55:10', 'paypal', NULL),
(69, 7, '60', 3, '2021-06-10 02:55:10', 'paypal', NULL),
(70, 7, '67', 1, '2021-06-10 02:55:10', 'paypal', NULL),
(71, 7, '80', 1, '2021-06-10 02:55:10', 'paypal', NULL),
(72, 7, '58', 1, '2021-06-10 03:07:26', 'paypal', NULL),
(73, 7, '80', 1, '2021-06-10 03:11:35', 'COD', NULL),
(74, 7, '58', 1, '2021-06-10 03:13:05', 'COD', NULL),
(75, 7, '80', 2, '2021-06-10 03:13:05', 'COD', NULL),
(76, 7, '58', 3, '2021-06-10 03:27:24', 'COD', NULL),
(77, 7, '59', 1, '2021-06-10 03:27:24', 'COD', NULL),
(78, 7, '80', 2, '2021-06-10 03:27:24', 'COD', NULL),
(79, 7, '58', 4, '2021-06-10 04:02:59', 'COD', NULL),
(80, 7, '59', 1, '2021-06-10 04:02:59', 'COD', NULL),
(81, 7, '60', 1, '2021-06-10 04:02:59', 'COD', NULL),
(82, 7, '80', 2, '2021-06-10 04:02:59', 'COD', NULL),
(83, 7, '58', 5, '2021-06-10 04:04:43', 'COD', NULL),
(84, 7, '59', 1, '2021-06-10 04:04:43', 'COD', NULL),
(85, 7, '60', 1, '2021-06-10 04:04:43', 'COD', NULL),
(86, 7, '80', 2, '2021-06-10 04:04:43', 'COD', NULL),
(87, 7, '58', 5, '2021-06-10 04:05:05', 'COD', NULL),
(88, 7, '59', 1, '2021-06-10 04:05:05', 'COD', NULL),
(89, 7, '60', 1, '2021-06-10 04:05:05', 'COD', NULL),
(90, 7, '80', 2, '2021-06-10 04:05:05', 'COD', NULL),
(91, 7, '58', 5, '2021-06-10 04:05:36', 'COD', NULL),
(92, 7, '59', 1, '2021-06-10 04:05:36', 'COD', NULL),
(93, 7, '60', 1, '2021-06-10 04:05:36', 'COD', NULL),
(94, 7, '80', 2, '2021-06-10 04:05:36', 'COD', NULL),
(95, 7, '58', 6, '2021-06-10 04:09:41', 'COD', NULL),
(96, 7, '59', 1, '2021-06-10 04:09:41', 'COD', NULL),
(97, 7, '60', 1, '2021-06-10 04:09:41', 'COD', NULL),
(98, 7, '68', 1, '2021-06-10 04:09:41', 'COD', NULL),
(99, 7, '80', 2, '2021-06-10 04:09:41', 'COD', NULL),
(100, 7, '58', 1, '2021-06-10 04:13:30', 'paypal', NULL),
(101, 7, '102', 1, '2021-06-10 05:22:28', 'paypal', NULL),
(102, 7, '102', 1, '2021-06-10 05:43:18', 'paypal', NULL),
(103, 7, '105', 1, '2021-06-10 05:43:18', 'paypal', NULL),
(104, 7, '58', 1, '2021-06-10 05:47:52', 'paypal', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(6, 64, 'Delivered', 'delivered', '2021-06-10 04:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(5, 53, 1, 2, 4, 'user', 'summary', 'Customers\'s review here', '2021-05-01 06:34:32'),
(6, 58, 5, 5, 5, 'Roshan', 'Very bad and fresh product', 'Good', '2021-05-18 00:24:40'),
(7, 61, 5, 4, 5, 'Roshan Guragain', 'It was fresh and good', 'Good', '2021-05-20 10:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) NOT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(58, 12, 25, 'Pineapple', '-', 3, 3, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'pineapple.jpg', 'pineapple.jpg', '', 1, 'In Stock', '2021-05-02 05:36:18', NULL),
(59, 12, 25, 'Pomogranate', '-', 8, 9, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'pomegranate.jpg', 'pomegranate.jpg', '', 1, 'In Stock', '2021-05-02 05:51:36', NULL),
(60, 12, 26, 'Beet Root', '-', 2, 3, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'beet_root.jpg', 'beet_root.jpg', '', 1, 'In Stock', '2021-05-02 06:29:49', NULL),
(61, 12, 26, 'Brocolli', '-', 4, 4, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'brocolli.jpg', 'brocolli.jpg', '', 1, 'In Stock', '2021-05-02 06:30:25', NULL),
(62, 12, 28, 'Apple', 'Kinnaur', 8, 9, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'Apple_Kinnaur.jpg', 'Apple_Kinnaur.jpg', '', 1, 'In Stock', '2021-05-02 06:31:16', NULL),
(63, 12, 28, 'Avocado', '-', 13, 14, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'avocado.jpg', 'avocado.jpg', '', 1, 'In Stock', '2021-05-02 06:31:50', NULL),
(64, 12, 28, 'Papaya', '-', 6, 7, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'papaya.jpg', 'papaya.jpg', '', 1, 'In Stock', '2021-05-02 06:32:20', NULL),
(65, 12, 27, 'Cabbage', '-', 4, 4, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'cabbage.jpg', 'cabbage.jpg', '', 1, 'In Stock', '2021-05-02 06:33:06', NULL),
(66, 12, 27, 'Dil Leaves', '-', 2, 2, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'dill leaves.jpg', 'dill leaves.jpg', '', 1, 'In Stock', '2021-05-02 06:33:47', NULL),
(67, 12, 29, 'Brinjal', '-', 7, 7, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'brinjal_small.jpg', 'brinjal_small.jpg', '', 1, 'In Stock', '2021-05-02 06:34:41', NULL),
(68, 13, 30, 'Ashirwad Atta', 'Ashirwad ', 33, 35, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'ashirwad_atta.jpg', 'ashirwad_atta.jpg', '', 2, 'In Stock', '2021-05-02 06:42:06', NULL),
(69, 13, 31, 'Red Mix Kiwi', '-', 13, 14, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'red_kiwi_mix_dal.jpg', 'red_kiwi_mix_dal.jpg', '', 1, 'In Stock', '2021-05-02 06:43:03', NULL),
(70, 13, 32, 'Butterscoth', 'Esence', 12, 13, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'esence_butterscotch.jpg', 'esence_butterscotch.jpg', '', 1, 'In Stock', '2021-05-02 06:43:59', NULL),
(71, 13, 33, 'Figora Olive oil', 'Figora', 17, 18, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'figora_olive_oil.jpg', 'figora_olive_oil.jpg', '', 1, 'In Stock', '2021-05-02 06:45:02', NULL),
(72, 13, 34, 'BTC Kolam Rice', 'BTC', 40, 42, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'Btc_Kolam_Rice.jpg', 'Btc_Kolam_Rice.jpg', '', 2, 'In Stock', '2021-05-02 07:57:16', NULL),
(73, 13, 35, 'Wheat Grass Powder', 'Mantra', 22, 24, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'mantra_wheat_grass_powder.jpg', 'mantra_wheat_grass_powder.jpg', '', 2, 'In Stock', '2021-05-02 07:58:11', NULL),
(74, 14, 39, 'AmulKool', 'Amul', 8, 8, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'amulkool_rose.jpg', 'amulkool_rose.jpg', '', 1, 'In Stock', '2021-05-02 07:59:13', NULL),
(75, 15, 44, 'Mango Juice', 'Almarai', 8, 9, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'almarai_mango_flavoured_milk.jpg', 'almarai_mango_flavoured_milk.jpg', '', 1, 'In Stock', '2021-05-02 07:59:54', NULL),
(76, 14, 40, 'Almond Milk', 'Almond', 11, 12, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'almond_milk.jpg', 'almond_milk.jpg', '', 1, 'In Stock', '2021-05-02 08:00:44', NULL),
(77, 14, 41, 'MilkMaid', '-', 13, 15, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'milkmaid.jpg', 'milkmaid.jpg', '', 2, 'In Stock', '2021-05-02 08:01:33', NULL),
(78, 15, 42, 'Pineapple Water', '-', 9, 10, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'pineapple.jpg', 'pineapple.jpg', '', 1, 'In Stock', '2021-05-02 08:02:30', NULL),
(79, 15, 43, 'Evian Water', 'Evian', 4, 4, '<span style=\"color: rgb(0, 0, 0); font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>', 'evian.jpg', 'evian.jpg', '', 1, 'In Stock', '2021-05-02 08:03:28', NULL),
(80, 20, 46, 'Tiger Balm', 'Tiger', 3, 5, 'tIGER BALM IS USEFULF FOR NOSE RUNNING, COMMON COLD.', 'ZANDU.jpg', 'ZANDU.jpg', 'ZANDU.jpg', 0, 'In Stock', '2021-05-24 10:24:10', NULL),
(81, 21, 47, 'Vadilal Green Chilli 343.2g', 'Vadilal', 3, 3, 'Very hot chilies for any kind of food.', 'Vadilal Green Chilli 343.2g.png', 'Vadilal Green Chilli 343.2g.png', 'Vadilal Green Chilli 343.2g.png', 1, 'In Stock', '2021-05-30 03:19:37', NULL),
(82, 21, 47, 'Vadilal Bhindi Cut (Cut Okra) 343g', 'Vadilal ', 3, 3, 'Feel the freshness of the frozen Bhindi for fry or curry.', 'Vadilal Bhindi Cut (Cut Okra) 343g.png', 'Vadilal Bhindi Cut (Cut Okra) 343g.png', 'Vadilal Bhindi Cut (Cut Okra) 343g.png', 1, 'In Stock', '2021-05-30 03:22:11', NULL),
(83, 21, 47, 'Deep Frozen Coconut Shreded 340g', 'DEEP', 5, 5, 'Shredded coconut for any kind of curry or pickles.&nbsp;', 'Deep Frozen Coconut Shreded 340g.png', 'Deep Frozen Coconut Shreded 340g.png', 'Deep Frozen Coconut Shreded 340g.png', 1, 'In Stock', '2021-05-30 03:25:52', NULL),
(84, 21, 47, 'Vadilal Green Peas - Mutter 312g', 'Vadilal', 4, 4, 'Feel the taste of Indian pees in Australia.&nbsp;', 'Vadilal Green Peas - Mutter 312g .png', 'Vadilal Green Peas - Mutter 312g .png', 'Vadilal Green Peas - Mutter 312g .png', 1, 'Out of Stock', '2021-05-30 03:27:53', NULL),
(85, 21, 47, 'Saurbhi Iqf - Palak 312g', 'Saurbhi', 2, 2, 'Best palak produced by Saurbhi company.', 'Saurbhi Iqf - Palak 312g .png', 'Saurbhi Iqf - Palak 312g .png', 'Saurbhi Iqf - Palak 312g .png', 1, 'In Stock', '2021-05-30 03:30:04', NULL),
(86, 21, 48, 'Nanak Paneer Cube 1kg', 'Nanak', 14, 14, 'These are the paneer which makes you taste even better and memoriable.&nbsp;', 'Nanak Paneer Cube 1kg .png', 'Nanak Paneer Cube 1kg .png', 'Nanak Paneer Cube 1kg .png', 1, 'In Stock', '2021-05-30 03:32:16', NULL),
(87, 21, 48, 'Nanak Paneer Cube 400g', 'Nanak', 6, 7, '<div class=\"MoreInfo__Banner__Name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 90px 0px 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, Calibri, Verdana, &quot;Sans serif&quot;; font-size: 14px; vertical-align: baseline; color: rgb(0, 0, 0);\"><h1 style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: var(--heading-font-weight); font-stretch: inherit; line-height: 27px; font-family: var(--heading-font-family); font-size: 20px; vertical-align: baseline; color: var(--heading-font-color);\">Nanak Paneer Cube 400g</h1><div><br></div></div>', 'Nanak Paneer Cube 400g .png', 'Nanak Paneer Cube 400g .png', 'Nanak Paneer Cube 400g .png', 1, 'In Stock', '2021-05-30 03:33:35', NULL),
(88, 21, 48, 'Nanak Paneer Cubes - Fried 1kg', 'Nanak', 14, 14, '<div class=\"MoreInfo__Banner__Name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 90px 0px 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, Calibri, Verdana, &quot;Sans serif&quot;; font-size: 14px; vertical-align: baseline; color: rgb(0, 0, 0);\"><h1 style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: var(--heading-font-weight); font-stretch: inherit; line-height: 27px; font-family: var(--heading-font-family); font-size: 20px; vertical-align: baseline; color: var(--heading-font-color);\">Nanak Paneer Cubes - Fried 1kg</h1><div><br></div></div>', 'Nanak Paneer Cubes - Fried 1kg .png', 'Nanak Paneer Cubes - Fried 1kg .png', 'Nanak Paneer Cubes - Fried 1kg .png', 1, 'In Stock', '2021-05-30 03:34:43', NULL),
(89, 21, 49, 'Shuddh Ice Cream - Pistachio 150ml', 'Shuddh Premium ', 7, 7, '<div class=\"MoreInfo__Banner__Name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 90px 0px 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, Calibri, Verdana, &quot;Sans serif&quot;; font-size: 14px; vertical-align: baseline; color: rgb(0, 0, 0);\"><h1 style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: var(--heading-font-weight); font-stretch: inherit; line-height: 27px; font-family: var(--heading-font-family); font-size: 20px; vertical-align: baseline; color: var(--heading-font-color);\">Shuddh Ice Cream - Pistachio 150ml</h1><div><br></div></div>', 'Shuddh Ice Cream - Pistachio 150ml .png', 'Shuddh Ice Cream - Pistachio 150ml .png', 'Shuddh Ice Cream - Pistachio 150ml .png', 1, 'In Stock', '2021-05-30 03:36:32', NULL),
(90, 22, 50, 'Bajaj Almond Hair Oil 200ml', 'Bajaj', 5, 5, '<div class=\"MoreInfo__Banner__Name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 90px 0px 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, Calibri, Verdana, &quot;Sans serif&quot;; font-size: 14px; vertical-align: baseline; color: rgb(0, 0, 0);\"><h1 style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: var(--heading-font-weight); font-stretch: inherit; line-height: 27px; font-family: var(--heading-font-family); font-size: 20px; vertical-align: baseline; color: var(--heading-font-color);\">Bajaj Almond Hair Oil 200ml</h1><div><br></div></div>', 'icon-512-512-true-9169cb237e40b4890263e1908713dc5f.png', 'icon-512-512-true-9169cb237e40b4890263e1908713dc5f.png', 'icon-512-512-true-9169cb237e40b4890263e1908713dc5f.png', 1, 'Out of Stock', '2021-05-30 03:53:59', NULL),
(92, 22, 50, 'Bajaj Almond Hair Oil 500ml', 'Bajaj', 12, 12, '<h1 class=\"a-size-base-plus a-text-bold\" style=\"box-sizing: border-box; padding: 0px 0px 4px; margin-bottom: 0px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 16px !important; line-height: 24px !important;\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">It Reduces Hair fall.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Bajaj Almond Drops hair oil has the goodness of Almond oil and Vitamin E. Its every drop is enriched with 3X Vitamin E* and Sweet Almond Oil, that makes your hair Stronger and gives your hair the power to fight Hair fall.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">It is Light &amp; Non sticky and makes hair lustrous.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">It Nourishes the Scalp and keeps hair Healthy and Beautiful.</span></li></ul>', 'Bajaj Almond Hair Oil 500ml .png', 'Bajaj Almond Hair Oil 500ml .png', 'Bajaj Almond Hair Oil 500ml .png', 1, 'In Stock', '2021-05-31 05:02:33', NULL),
(93, 22, 50, 'Patanjali Kesh Kanti Reetha Hair 200ml', 'Patanjali', 6, 6, '<h1 class=\"a-size-base-plus a-text-bold\" style=\"box-sizing: border-box; padding: 0px 0px 4px; margin-bottom: 0px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 16px !important; line-height: 24px !important;\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Popular Kesh Kanti Shampoo with added Reetha!</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Promotes Healthy Hair Growth</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Keeps Hair Strong, Soft and Shiny!</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Reduces Hair Fall</span></li></ul>', 'Patanjali Kesh Kanti Reetha Hair Cleanser 200ml .png', 'Patanjali Kesh Kanti Reetha Hair Cleanser 200ml .png', 'Patanjali Kesh Kanti Reetha Hair Cleanser 200ml .png', 1, 'In Stock', '2021-05-31 05:07:43', NULL),
(94, 22, 50, 'Godrej Nupur Mehendi 120g', 'Godrej', 3, 2, '<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 18.6667px;\">Godrej Nupur, the 100 percent natural henna, is loved by millions of Indians. Henna is deeply rooted in Indian tradition not only as a 100 percent natural hair colour but also a natural hair conditioner. In natural products, the source and consistency can make all the difference. At Godrej nupur, we source the henna from choicest of leaves grown in Rajasthan not just for it’s unmatched rich shade, but also for the unmatched quality, each time. In nupur, along with 100 percent natural henna, we’ve added 9 pure herbs – like amla, jatamanasi, neem, brahmi, etc. That are known to give great shine and health to hair. Nupur isn’t just a henna, it’s a celebration of hair health because healthy, is indeed beautiful.</span><br>', 'Godrej Nupur Mehendi 120g .png', 'Godrej Nupur Mehendi 120g .png', 'Godrej Nupur Mehendi 120g .png', 1, 'In Stock', '2021-05-31 05:11:09', NULL),
(95, 22, 50, 'Parachute Coconut Oil 250ml', 'Parachute', 5, 5, '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: small;\">About the product Made from the finest, natural, edible grade coconuts Free from chemical additives or solvents Non-Hydrogenated, Non-Deodorized, Non-Solvents Used Unrefined, Unbleached &amp; Scientifically Filtered Best quality product</span><br>', 'p.png', 'p.png', 'p.png', 1, 'In Stock', '2021-05-31 05:14:50', NULL),
(96, 22, 51, 'Dabur Gulabari 250ml', 'Dabar', 3, 3, '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;\">Dabur Gulabari Rose Water works wonders for your skin. Dabur Gulabari Rose water is now available in store and online for the purchase. Stay Tuned On the Latest! Love all things Indian? Storage Instructions: Keep stored in a dry cool place.</span><br>', 'g.png', 'g.png', 'g.png', 1, 'Out of Stock', '2021-05-31 05:17:04', NULL),
(97, 22, 51, 'Fair & Lovely Multi vitamin Advance 80g', 'Fair & Lovely', 7, 7, '<h1 class=\"a-size-base-plus a-text-bold\" style=\"box-sizing: border-box; padding: 0px 0px 4px; margin-bottom: 0px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 16px !important; line-height: 24px !important;\">About this item</h1><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Enriched with multi vitamins; Laser like precision on skin marks</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Face polish and peel to remove sun tan and dullness</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Antioxidants lighten dark circles, Gives high definition (HD) glow</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Vitamin mask lightens skin colour</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Gives unbeatable fairness even against some of the international creams</span></li></ul>', 'Fair & Lovely Multi vitamin Advance 80g .png', 'Fair & Lovely Multi vitamin Advance 80g .png', 'Fair & Lovely Multi vitamin Advance 80g .png', 1, 'Out of Stock', '2021-05-31 05:22:31', NULL),
(98, 23, 52, 'Tea Strainer', 'United', 3, 3, 'Very easy to use.', 'Tea Strainer .png', 'Tea Strainer .png', 'Tea Strainer .png', 1, 'In Stock', '2021-05-31 05:26:54', NULL),
(99, 23, 52, 'Tea Strainer Sonata 8cm', 'Sonata', 2, 3, 'Very easy to use.', 'Tea Strainer Sonata 8cm .png', 'Tea Strainer Sonata 8cm .png', 'Tea Strainer Sonata 8cm .png', 1, 'Out of Stock', '2021-05-31 05:28:06', NULL),
(100, 23, 52, 'Spice Container Stainless Steel 20cm', 'Sonata', 22, 23, 'Easy storage of any kind of spices.&nbsp;', 'Spice Container Stainless Steel 20cm .png', 'Spice Container Stainless Steel 20cm .png', 'Spice Container Stainless Steel 20cm .png', 1, 'In Stock', '2021-05-31 05:29:37', NULL),
(101, 23, 52, 'Marble Mortan N Pestle 10 X 11cm', 'Sonata', 8, 10, '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: small; font-weight: 700;\">&nbsp;Kitchen aid for the pulverisation of dried and fresh herbs, spices, etc. The mortar and pestle are both made of marble.</span><br>', 'marble..png', 'marble..png', 'marble..png', 1, 'In Stock', '2021-05-31 05:31:42', NULL),
(102, 24, 53, 'Pooja Coconut', 'Natural', 4, 4, 'Very fresh coconuts for pooja or to eat.', 'Pooja Coconut .png', 'Pooja Coconut .png', 'Pooja Coconut .png', 1, 'In Stock', '2021-05-31 05:34:42', NULL),
(103, 24, 53, 'Pooja Cotton Wicks Long', 'Pooja', 3, 3, 'Very good and long-burning wicks.', 'Pooja Cotton Wicks Long .png', 'Pooja Cotton Wicks Long .png', 'Pooja Cotton Wicks Long .png', 1, 'In Stock', '2021-05-31 05:36:07', NULL),
(104, 24, 53, 'Pooja Janoi 1 Pc', 'Pooja', 1, 2, 'Suitable for all ages and any kind of pooja. It is made from the hand of Brahmin.&nbsp;', 'Pooja Janoi 1 Pc .png', 'Pooja Janoi 1 Pc .png', 'Pooja Janoi 1 Pc .png', 1, 'In Stock', '2021-05-31 05:38:07', NULL),
(105, 25, 54, 'Mitchell Sarson Ka Saag 800g', 'Mitchell', 3, 3, 'Get the best taste you wanted.', 'Mitchell Sarson Ka Saag 800g .png', 'Mitchell Sarson Ka Saag 800g .png', 'Mitchell Sarson Ka Saag 800g .png', 1, 'In Stock', '2021-05-31 05:44:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(25, 12, 'Exotic_fruits', '2021-05-02 04:45:10', NULL),
(26, 12, 'Exotic_veggies', '2021-05-02 04:45:22', NULL),
(27, 12, 'Leafies', '2021-05-02 04:45:31', NULL),
(28, 12, 'Fruits', '2021-05-02 04:45:39', NULL),
(29, 12, 'Veggies', '2021-05-02 04:45:48', NULL),
(30, 13, 'Atta and Flours', '2021-05-02 04:46:06', NULL),
(31, 13, 'Pulses', '2021-05-02 04:46:17', NULL),
(32, 13, 'Food Additives', '2021-05-02 04:46:25', NULL),
(33, 13, 'Olive Oil', '2021-05-02 04:46:38', NULL),
(34, 13, 'Rice', '2021-05-02 04:46:44', NULL),
(35, 13, 'Seasoning', '2021-05-02 04:46:52', NULL),
(36, 16, 'Cereals', '2021-05-02 04:47:14', NULL),
(37, 16, 'Diet Soya Snacks', '2021-05-02 04:47:27', NULL),
(38, 16, 'Dried Fruits', '2021-05-02 04:47:39', NULL),
(39, 14, 'Flavored Milk ', '2021-05-02 04:48:02', NULL),
(40, 14, 'Milk', '2021-05-02 04:48:07', NULL),
(41, 14, 'Other', '2021-05-02 04:48:21', '02-05-2021 10:51:34 AM'),
(42, 15, 'Syrups and Cordials', '2021-05-02 04:48:55', NULL),
(43, 15, 'Water', '2021-05-02 04:49:02', NULL),
(44, 15, 'Cold Drinks', '2021-05-02 04:49:10', NULL),
(45, 19, 'Second sprint', '2021-05-20 10:15:02', NULL),
(46, 20, 'Zandu balm', '2021-05-24 10:20:13', NULL),
(47, 21, 'VEGETABLES', '2021-05-30 03:14:09', NULL),
(48, 21, 'Paneer', '2021-05-30 03:14:39', NULL),
(49, 21, 'Ice Cream', '2021-05-30 03:14:54', NULL),
(50, 22, 'Hair Product', '2021-05-30 03:52:14', NULL),
(51, 22, 'Beauty ', '2021-05-31 05:15:23', NULL),
(52, 23, 'Utensils', '2021-05-31 05:25:56', NULL),
(53, 24, 'Pooja stuffs ', '2021-05-31 05:33:07', NULL),
(54, 25, 'Ready food items', '2021-05-31 05:40:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(29, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-02 03:57:48', NULL, 1),
(30, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-02 08:27:56', NULL, 1),
(31, 'roshanguragain555@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-18 00:17:51', '18-05-2021 02:18:24 AM', 1),
(32, 'roshanguragain555@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-18 00:26:04', '20-05-2021 11:27:51 AM', 1),
(33, 'roshanguragain555@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-20 09:50:56', '20-05-2021 12:06:40 PM', 1),
(34, 'bibek1995512@gmail.com', 0x3132372e302e302e3100000000000000, '2021-06-01 00:05:07', NULL, 0),
(35, 'bibek1995512@gmail.com', 0x3132372e302e302e3100000000000000, '2021-06-01 00:05:37', '01-06-2021 02:07:15 AM', 1),
(36, 'roshanguragain555@gmail.com', 0x3132372e302e302e3100000000000000, '2021-06-07 09:26:06', '07-06-2021 12:11:59 PM', 1),
(37, 'roshanguragain555@gmail.com', 0x3132372e302e302e3100000000000000, '2021-06-07 10:12:47', '08-06-2021 03:42:37 AM', 1),
(38, 'roshanguragain555@gmail.com', 0x3132372e302e302e3100000000000000, '2021-06-08 01:52:45', NULL, 1),
(39, 'roshanguragain10@gmail.com', 0x3132372e302e302e3100000000000000, '2021-06-10 02:40:55', NULL, 0),
(40, 'roshanguragain555@gmail.com', 0x3132372e302e302e3100000000000000, '2021-06-10 02:41:06', NULL, 0),
(41, 'roshanguragain555@gmail.com', 0x3132372e302e302e3100000000000000, '2021-06-10 02:41:31', NULL, 0),
(42, 'roshanguragain555@gmail.com', 0x3132372e302e302e3100000000000000, '2021-06-10 02:41:47', '10-06-2021 06:13:47 AM', 1),
(43, 'roshanguragain555@gmail.com', 0x3132372e302e302e3100000000000000, '2021-06-10 05:22:25', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'User', 'user@gmail.com', 1234567895, 'f925916e2754e5e03f75dd58a5733251', '123', 'ABC', 'Sydney', 123, '123', 'ABC', 'SYDNEY', 123, '2019-12-29 08:13:29', NULL),
(7, 'Roshan Guragain', 'roshanguragain555@gmail.com', 450238009, 'b0ad80266fc30c141ff3f8734a3897cd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-18 00:17:27', NULL),
(8, 'bibek poudel', 'bibek1995512@gmail.com', 416416403, 'b95495d2b655e0cd832244427261b76a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01 00:05:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(8, 7, 58, '2021-05-18 00:26:12'),
(9, 7, 58, '2021-05-20 09:51:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
