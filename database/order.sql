-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 06:20 PM
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
-- Table structure for table `restaurant_order`
--

CREATE TABLE `Order` (
  `id` int(11) NOT NULL,
  `table_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `gross_amount` decimal(12,2) NOT NULL,
  `tax_amount` decimal(12,2) NOT NULL,
  `net_amount` decimal(12,2) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` enum('admin','user','user1') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('In Process','Completed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'In Process'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `restaurant_order`
--

INSERT INTO `Order` (`id`, `table_id`, `gross_amount`, `tax_amount`, `net_amount`, `created`, `created_by`, `status`) VALUES
(1001, '3', '36.00', '10.00', '46.00', '2020-12-27 22:32:28', 'admin', 'In Process'),
(1005, '1', '36.00', '4.68', '40.68', '2020-12-27 22:54:11', 'admin', 'In Process'),
(1006, '1', '36.00', '4.68', '40.68', '2020-12-27 22:49:56', 'admin', 'In Process'),
(1007, '1', '51.00', '6.63', '57.63', '2020-12-27 22:51:46', 'admin', 'In Process');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurant_order`
--
ALTER TABLE `Order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurant_order`
--
ALTER TABLE `Order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
