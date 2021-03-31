-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 09:47 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'arsalanmughal400@gmail.com', 'phpstore');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'pants', '2020-10-29 01:24:54', '2020-10-29 01:24:54'),
(2, 'shirts', '2020-10-30 16:49:05', '2020-10-30 16:49:05'),
(3, 'Shubharam', '2021-03-31 06:50:24', '2021-03-31 06:50:24'),
(4, 'Sukoon', '2021-03-31 06:50:35', '2021-03-31 06:50:35'),
(5, 'Shubharambh', '2021-03-31 07:26:11', '2021-03-31 07:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'arsalanmughal41@yahoo.com', 'Is it visible in DATABASE?', '2020-10-27 06:01:59', '2020-10-27 06:01:59'),
(2, 'arsalanmughal400@gmail.com', '', '2020-11-12 21:34:01', '2020-11-12 21:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'arsalanmughal324@gmail.com', 'customer', '2020-11-12 21:43:13', '2020-11-12 21:43:13'),
(2, 'arsalanmughal400@gmail.com', 'buy', '2020-11-12 21:44:24', '2020-11-12 21:44:24'),
(3, 'axe.tech07@gmail.com', 'asd', '2021-03-27 02:49:48', '2021-03-27 02:49:48'),
(4, 'axe.tech07@gmail.com', 'asd', '2021-03-27 02:58:52', '2021-03-27 02:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `total` int(11) NOT NULL,
  `pay_method` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 5, 9, 1, '2020-11-14 23:03:39', '2020-11-14 23:03:39'),
(2, 6, 9, 1, '2020-11-14 23:11:07', '2020-11-14 23:11:07'),
(3, 8, 9, 1, '2020-11-19 07:10:05', '2020-11-19 07:10:05'),
(4, 9, 9, 1, '2020-11-19 07:10:14', '2020-11-19 07:10:14'),
(5, 10, 9, 1, '2020-11-19 07:12:15', '2020-11-19 07:12:15'),
(6, 11, 9, 1, '2020-11-19 07:12:51', '2020-11-19 07:12:51'),
(7, 12, 9, 1, '2020-11-19 07:13:15', '2020-11-19 07:13:15'),
(8, 13, 9, 1, '2020-11-19 07:17:39', '2020-11-19 07:17:39'),
(9, 14, 9, 1, '2020-11-19 07:17:51', '2020-11-19 07:17:51'),
(10, 15, 9, 1, '2020-11-19 07:19:04', '2020-11-19 07:19:04'),
(11, 16, 9, 1, '2020-11-19 07:19:10', '2020-11-19 07:19:10'),
(12, 17, 9, 1, '2020-11-19 07:19:25', '2020-11-19 07:19:25'),
(13, 18, 9, 1, '2020-11-19 07:19:36', '2020-11-19 07:19:36'),
(14, 19, 9, 1, '2020-11-19 07:21:22', '2020-11-19 07:21:22'),
(15, 20, 9, 1, '2020-11-19 07:21:32', '2020-11-19 07:21:32'),
(16, 4, 13, 1, '2020-11-19 08:12:43', '2020-11-19 08:12:43'),
(17, 4, 13, 1, '2020-11-19 08:12:50', '2020-11-19 08:12:50'),
(18, 4, 13, 1, '2020-11-19 08:13:09', '2020-11-19 08:13:09'),
(19, 4, 13, 1, '2020-11-19 08:13:38', '2020-11-19 08:13:38'),
(20, 21, 13, 1, '2020-11-19 08:15:32', '2020-11-19 08:15:32'),
(21, 22, 9, 1, '2021-03-27 09:02:34', '2021-03-27 09:02:34'),
(22, 22, 6, 1, '2021-03-27 09:02:35', '2021-03-27 09:02:35'),
(23, 25, 9, 1, '2021-03-27 22:23:56', '2021-03-27 22:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(30) NOT NULL,
  `description` mediumtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(22, 'Tie and dye designer saree,Red', 10900, 'uploads/product-02.jpg', 'SAREE: brown and carrot pink tie dye saree with gota on border\r\nSaree length:5.5 meter \r\nBlouse: sleeveless brown padded blouse \r\nBlouse length: 14 inch \r\nJacket : one side jacket with exquisite blend of different handwork like cutdana , Resham work , Moti and gotta Patti Side tie up with handmade hangings \r\nJacket length:14.5 inch \r\nFabric-viscose georgette\r\nLining fabric:shantoon \r\nSaree Colour -brown, carrot pink tie dye \r\nJacket colour: carrot pink colour \r\nSleeve: 3/4th 3 layered ruffle sleeves\r\nCare: Dry Clean Only , no bleach \r\nModel Size: Model is wearing XS Size\r\nModel Height: 5â€™3â€\r\n', 5, '2021-03-31 07:00:30', '2021-03-31 07:00:30'),
(23, 'All black Printed lehenga', 10990, 'uploads/product-03.jpg', 'lehenga description- digital printed organza lehenga with self made dreamy night print.\r\nLehenga length:41 inch \r\nBlouse: ELEGANT BLOUSE WITH STATEMENT SLEEVES and mirror work on neckline.\r\nBlouse length-14 inch \r\nDupatta Description -plain black dupatta with printed fabric finished side border and handmade hangings\r\nDupatta Fabric: net \r\nColour: black printed \r\nFabric: viscose organza\r\nLining fabric: shantoon \r\nNeckline: sweetheart neckline of blouse \r\nSleeve: full corrugated sleeves \r\nCare: Dry Clean Only , no bleach \r\nModel Size: Model is wearing XS Size\r\nModel Height: 5â€™3â€\r\n\r\n', 5, '2021-03-31 07:03:20', '2021-03-31 07:03:20'),
(24, 'Top with kali palazzo set,pink', 7750, 'uploads/product-04.jpg', 'Top:block  printed top with puff sleeves and frill details\r\nTop length:16 inch \r\nPalazzo: printed Kalidar palazzo with spacious pockets \r\nPalazzo length: 45inch \r\nLining fabric: mulmul cotton \r\nSleeves :Elbow sleeves with frill details \r\ndupatta description : pink plain dupatta \r\nDupatta fabric: kota doriya \r\nDupatta length: 2.5 meter\r\nColour: pink base and ink blue print\r\nfabric:Pure muslin \r\nBlock print: overall leaf and spiral block print \r\nNeckline:round neck \r\nCare: cold hand wash , no bleach \r\nModel Size: Model is wearing XS Size\r\nModel Height: 5â€™3â€\r\n', 4, '2021-03-31 07:04:41', '2021-03-31 07:04:41'),
(25, 'Digital print silk satin lehen', 11980, 'uploads/product-01.jpg', 'Blouse description: padded blouse with beautiful digital print all over \r\nBlouse length : 14.5 inch \r\nLehenga description:all over floral digital print lehenga \r\nLehenga length: 44 inch \r\nDupatta : plain orange dupatta with side fabric border and hangings \r\nDupatta length: 2.5 meter \r\nDupatta fabric: net \r\nNeckline: round deep neck \r\nColour: cream base with colour full orange-blue digital print on it \r\nFabric: silk satin\r\nLining fabric:  shantoon \r\nSleeves :straight elbow sleeves \r\nCare: Dry Clean Only , no bleach \r\nModel Size: Model is wearing S Size\r\nModel Height: 5â€™8â€\r\n', 5, '2021-03-31 07:06:16', '2021-03-31 07:06:16'),
(26, 'Yellow white tie dye one side ', 11520, 'uploads/product-05.jpg', 'Kurti Description - Yellow and white tie dye viscose georgette one side kurta with beautiful zardosi and cutdana hand work to give it a feel of India \r\nKurta length:41 inch \r\nlehenga description- viscose georgette knife pleated lehenga and ombre yellow white dye.\r\nLehenga length:41 inch \r\nBlouse: plain white padded sleeveless  blouse with side chain.\r\nBlouse length-14.5 inch \r\nColour: Yellow and white tie dye\r\nFabric: viscose georgette \r\nLining fabric: shantoon \r\nNeckline: jewel neck of Kurti and sweet heart neckline of blouse \r\nSleeve: full sleeves\r\nCare: Dry Clean Only , no bleach \r\nModel Size: Model is wearing XS Size\r\nModel Height: 5â€™3â€\r\n', 5, '2021-03-31 07:07:21', '2021-03-31 07:07:21'),
(27, 'Block print cotton party wear ', 11980, 'uploads/product-06.jpg', 'Blouse description: fully block printed padded blouse \r\nBlouse length : 14.5 inch \r\nLehenga description: block print all over lehenga with heritage lace on the hem and handmade beautiful hangings on the side.\r\nLehenga length:44 inch \r\nDupatta : dark blue dupatta with fabric border and handmade hangings  \r\nDupatta length: 2.5 meter \r\nDupatta fabric: chinon\r\nColour: sky blue (cerulean)Lehenga With dark blue block print on it \r\nFabric: muslin \r\nLining fabric:  mulmul\r\nNeckline: v-neck \r\nSleeves :straight 3/4 th sleeves with heritage lace on the hem and attached frill \r\nCare: Dry Clean Only , no bleach \r\nModel Size: Model is wearing XS Size\r\nModel Height: 5â€™6â€\r\n', 5, '2021-03-31 07:08:06', '2021-03-31 07:08:06'),
(28, 'Crop top and skirt lehenga', 9990, 'uploads/product-07.jpg', 'Blouse description: padded blouse with beautiful cutdana , sequence  and resham handwork\r\nBlouse length : 14.5 inch \r\nSkirt  description: side slit up down designer skirt \r\nSkirt  length: 44 inch \r\nNeckline: round deep neck \r\nColour: sky blue (cerulean)\r\nFabric: viscose georgette \r\nLining fabric:  shantoon \r\nSleeves :one side sleeveless and one side loose sleeves with ruffle details\r\nCare: Dry Clean Only , no bleach \r\nModel Size: Model is wearing XS Size\r\nModel Height: 5â€™6â€\r\n', 5, '2021-03-31 07:09:20', '2021-03-31 07:09:20'),
(29, 'Blouse And layered sharara', 14500, 'uploads/product-08.jpg', 'Blouse : one side off shoulder padded blouse with mirror and resham handwork to give the blouse an edge. Attached drape from one side.\r\nBlouse Color: fairy pink \r\nBlouse length :15 inch \r\nBottom description: 4 layer sharara with handwork belt \r\nBottom length:43 inch \r\nBottom colour: Teal \r\nFabric: viscose georgette \r\nLining fabric:  shantoon \r\nSleeves : 3/4th 3 layers ruffle sleeves \r\nCare: Dry Clean Only , no bleach \r\nModel Size: Model is wearing S Size\r\nModel Height: 5â€™8â€\r\n', 5, '2021-03-31 07:10:02', '2021-03-31 07:10:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
