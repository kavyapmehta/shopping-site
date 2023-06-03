-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 03:50 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
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
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '18-04-2021 03:24:37 PM');

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
(6, 'Clothing', 'Clothes', '2017-02-20 19:18:52', '05-04-2021 10:12:35 AM');

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
(10, 1, '1', 1, '2021-03-31 03:44:11', 'COD', 'in Process'),
(11, 1, '3', 1, '2021-03-31 05:52:40', 'COD', NULL),
(12, 1, '1', 1, '2021-04-01 05:29:53', 'Debit / Credit card', 'Delivered'),
(13, 1, '2', 1, '2021-04-01 05:29:53', 'Debit / Credit card', NULL),
(14, 1, '31', 1, '2021-04-18 12:17:26', NULL, NULL),
(15, 5, '5', 1, '2021-04-18 13:30:21', 'COD', 'Delivered');

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
(6, 12, 'Delivered', 'Delivered successfully', '2021-04-01 05:31:35'),
(7, 10, 'in Process', 'Delivered within 2-3 days', '2021-04-05 04:48:33'),
(8, 10, 'in Process', 'Delivered within 2-3 days\r\n', '2021-04-05 04:48:57'),
(9, 15, 'Delivered', 'Delivered Successfully', '2021-04-18 13:34:43');

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
(5, 1, 5, 5, 5, 'KAVYA MEHTA', 'abc', 'xyz', '2021-04-01 05:35:02'),
(6, 4, 5, 4, 5, 'KAVYA MEHTA', 'good', 'nice product', '2021-04-18 13:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
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

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 6, 12, 'Embroidered Striped Dress', 500, 600, 'Dress', 'embroidered-striped-dress-1.jpg', 'embroidered-striped-dress-2.jpg', 'embroidered-striped-dress-3.jpg', 10, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 6, 12, 'Solid-A-Line top', 600, 1000, 'Top', 'solid-A-linetop-1.jpg', 'solid-A-linetop-2.jpg', 'solid-A-linetop-3.jpg', 100, 'Out of Stock', '2017-01-30 16:59:00', ''),
(3, 6, 12, 'Solid Top', 650, 900, 'Top', 'solid-top--1.jpg', 'solid-top--2.jpg', 'solid-top--3.jpg', 0, 'In Stock', '2017-02-04 04:03:15', ''),
(4, 6, 12, 'printed-shirt-style-top', 999, 1500, 'Top', 'printed-shirt-style-top-1.jpg', 'printed-shirt-style-top-2.jpg', 'printed-shirt-style-top-3.jpg', 0, 'In Stock', '2017-02-04 04:04:43', ''),
(5, 6, 14, 'Men\'s Jacket', 999, 1500, 'Jacket', 'mj1.jpeg', 'mj2.jpeg', 'mj3.jpeg', 0, 'In Stock', '2021-04-18 09:21:47', NULL),
(6, 6, 14, 'Jacket', 600, 700, 'Jacket', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'Out Of Stock', '2021-04-18 09:26:10', NULL),
(28, 6, 14, 'Jacket', 900, 800, 'Jacket', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2021-04-18 09:31:52', NULL),
(29, 6, 14, 'Jacket', 2000, 2500, 'Jacket', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2021-04-18 09:35:55', NULL),
(30, 6, 14, 'Jacket', 2100, 2000, 'Leather Jacket', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2021-04-18 09:37:30', NULL),
(31, 6, 12, 'Crop Top', 900, 500, 'Crop Top', 'hign-necked-croptop-1.jpg', 'hign-necked-croptop-2.jpg', 'hign-necked-croptop-3.jpg', 10, 'In Stock', '2021-04-18 09:38:48', NULL),
(32, 6, 12, 'Cotton Ribbed Top', 700, 600, 'Cotton Top', 'cotton-ribbed-top-1.jpg', 'cotton-ribbed-top-2.jpg', 'cotton-ribbed-top-3.jpg', 0, 'In Stock', '2021-04-18 09:40:05', NULL),
(33, 6, 14, 'Denim Jacket', 700, 500, 'Denim Jacket', '1.jpeg', '2.jpeg', '3.jpeg', 10, 'In Stock', '2021-04-18 09:42:16', NULL),
(34, 6, 15, 'Shirt', 900, 700, 'Shirt', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2021-04-18 09:44:06', NULL),
(35, 6, 15, 'Shirt', 1000, 800, 'Royal Blue Shirt', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'Out of Stock', '2021-04-18 09:45:28', NULL),
(36, 6, 15, 'Shirt', 1200, 999, 'Shirt', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2021-04-18 09:46:26', NULL),
(37, 6, 15, 'Shirt', 1800, 1500, 'Shirt', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2021-04-18 09:47:37', NULL),
(38, 6, 15, 'Black Formal Shirt', 1000, 950, 'Black Formal Shirt', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2021-04-18 09:50:58', NULL);

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
(12, 6, 'Tops and Tees', '2017-03-10 20:12:59', '29-03-2021 04:23:26 PM'),
(14, 6, 'Jackets', '2021-04-05 04:42:56', NULL),
(15, 6, 'Formals', '2021-04-05 04:42:56', NULL);

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
(25, 'k@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-29 05:33:14', NULL, 1),
(26, 'K@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-31 03:43:19', '31-03-2021 10:31:05 AM', 1),
(27, 'K@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-31 05:50:57', '31-03-2021 11:36:00 AM', 1),
(28, 'K@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-01 05:28:07', NULL, 1),
(29, 'K@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-01 05:34:17', NULL, 1),
(30, 'K@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-12 04:31:57', NULL, 1),
(31, 'K@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-18 10:41:27', NULL, 0),
(32, 'K@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-18 10:41:35', NULL, 1),
(33, 'K@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-18 12:16:54', NULL, 1),
(34, 'n@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-18 13:27:14', '18-04-2021 07:05:24 PM', 1),
(35, 'n@gmail.com', 0x3a3a3100000000000000000000000000, '2021-04-18 13:35:37', NULL, 1);

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
(1, 'kavya mehta', 'k@gmail.com', 123456789, 'e99a18c428cb38d5f260853678922e03', 'xyz', 'm', 'm', 123, 'abc', 'm', 'm', 12345, '2021-03-29 05:32:55', NULL),
(5, 'nirbhay', 'n@gmail.com', 123456, 'e99a18c428cb38d5f260853678922e03', 'xyz', 'm', 'm', 12345, 'abc', 'm', 'm', 12345, '2021-04-18 13:25:27', NULL);

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
(6, 1, 2, '2021-04-01 05:28:29'),
(7, 1, 3, '2021-04-18 10:41:53');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
