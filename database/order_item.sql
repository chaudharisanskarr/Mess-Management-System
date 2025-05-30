-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 06:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coderszine_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_order_item`
--

CREATE TABLE `Order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `rate` decimal(12,2) NOT NULL,
  `amount` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `restaurant_order_item`
--

INSERT INTO `Order_item` (`id`, `order_id`, `category_id`, `item_id`, `quantity`, `rate`, `amount`) VALUES
(1, 1001, 1, 1, 1, '12.00', '12.00'),
(2, 1001, 3, 3, 1, '24.00', '24.00'),
(3, 1005, 1, 1, 1, '12.00', '12.00'),
(4, 1006, 1, 1, 1, '12.00', '12.00'),
(5, 1007, 1, 1, 1, '12.00', '12.00'),
(6, 1007, 1, 2, 1, '15.00', '15.00'),
(7, 1007, 3, 3, 1, '24.00', '24.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurant_order_item`
--
ALTER TABLE `Order_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurant_order_item`
--
ALTER TABLE `Order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
