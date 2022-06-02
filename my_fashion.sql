-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: June 02, 2022 at 07:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_order`
--

CREATE TABLE `t_order` (
  `ORDER_ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  `PRODUCT_ID` int(11) DEFAULT NULL,
  `AMOUNT` int(11) DEFAULT NULL,
  `DELIVERY_ADDRESS` varchar(255) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `PAID_DATE` datetime DEFAULT NULL,
  `DATETIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_order`
--

INSERT INTO `t_order` (`ORDER_ID`, `CUSTOMER_ID`, `PRODUCT_ID`, `AMOUNT`, `DELIVERY_ADDRESS`, `STATUS`, `PAID_DATE`, `DATETIME`) VALUES
(1, 1, 1, 1, '555 หมู่2 ต.มะขามคู่ อ.นิคมพัฒนา จ.ระยอง 21180', 'shipping', '2022-04-16 08:00:00', '2022-06-02 01:27:27'),
(2, 2, 2, 2, '555 หมู่2 ต.มะขามคู่ อ.นิคมพัฒนา จ.ระยอง 21180', 'shipped', '2022-04-20 08:00:00', '2022-06-02 01:28:43'),
(3, 3, 3, 3, '555 หมู่2 ต.มะขามคู่ อ.นิคมพัฒนา จ.ระยอง 21180', 'prepare ', '2022-04-20 08:00:00', '2022-06-02 01:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `t_product_list`
--

CREATE TABLE `t_product_list` (
  `PRODUCT_ID` int(11) NOT NULL,
  `CATEGOLY` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `SIZE` varchar(50) DEFAULT NULL,
  `AMOUNT` int(11) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `DATE_TIME_UPDATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_product_list`
--

INSERT INTO `t_product_list` (`PRODUCT_ID`, `CATEGOLY`, `GENDER`, `SIZE`, `AMOUNT`, `PRICE`, `DATE_TIME_UPDATE`) VALUES
(1, 'Plain Color', 'male', 'xs', 10, 199, '2022-06-02 21:12:42'),
(2, 'Plain Color', 'male', 'xs', 10, 199, '2022-06-02 22:33:36'),
(3, 'Plain Color', 'male', 's', 15, 199, '2022-06-02 22:33:36'),
(4, 'Plain Color', 'male', 'm', 45, 199, '2022-06-02 22:33:36'),
(5, 'Plain Color', 'male', 'l', 25, 199, '2022-06-02 22:33:36'),
(6, 'Plain Color', 'male', 'xl', 20, 199, '2022-06-02 22:33:36'),
(7, 'Plain Color', 'female', 'xs', 10, 199, '2022-06-02 22:33:36'),
(8, 'Plain Color', 'female', 's', 15, 199, '2022-06-02 22:33:36'),
(9, 'Plain Color', 'female', 'm', 45, 199, '2022-06-02 22:33:36'),
(10, 'Plain Color', 'female', 'l', 25, 199, '2022-06-02 22:33:36'),
(11, 'Plain Color', 'female', 'xl', 20, 199, '2022-06-02 22:33:36'),
(12, 'Pattern', 'male', 'xs', 10, 199, '2022-06-02 22:58:17'),
(13, 'Pattern', 'male', 's', 15, 199, '2022-06-02 22:58:17'),
(14, 'Pattern', 'male', 'm', 45, 199, '2022-06-02 22:58:17'),
(15, 'Pattern', 'male', 'l', 25, 199, '2022-06-02 22:58:17'),
(16, 'Pattern', 'male', 'xl', 20, 199, '2022-06-02 22:58:17'),
(17, 'Pattern', 'female', 'xs', 10, 199, '2022-06-02 22:58:17'),
(18, 'Pattern', 'female', 's', 15, 199, '2022-06-02 22:58:17'),
(19, 'Pattern', 'female', 'm', 45, 199, '2022-06-02 22:58:17'),
(20, 'Pattern', 'female', 'l', 25, 199, '2022-06-02 22:58:17'),
(21, 'Pattern', 'female', 'xl', 20, 199, '2022-06-02 22:58:17'),
(22, 'Figure', 'male', 'xs', 10, 199, '2022-06-02 22:59:42'),
(23, 'Figure', 'male', 's', 15, 199, '2022-06-02 22:59:42'),
(24, 'Figure', 'male', 'm', 45, 199, '2022-06-02 22:59:42'),
(25, 'Figure', 'male', 'l', 25, 199, '2022-06-02 22:59:42'),
(26, 'Figure', 'male', 'xl', 20, 199, '2022-06-02 22:59:42'),
(27, 'Figure', 'female', 'xs', 10, 199, '2022-06-02 22:59:42'),
(28, 'Figure', 'female', 's', 15, 199, '2022-06-02 22:59:42'),
(29, 'Figure', 'female', 'm', 45, 199, '2022-06-02 22:59:42'),
(30, 'Figure', 'female', 'l', 25, 199, '2022-06-02 22:59:42'),
(31, 'Figure', 'female', 'xl', 20, 199, '2022-06-02 22:59:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_order`
--
ALTER TABLE `t_order`
  ADD PRIMARY KEY (`ORDER_ID`);

--
-- Indexes for table `t_product_list`
--
ALTER TABLE `t_product_list`
  ADD PRIMARY KEY (`PRODUCT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_order`
--
ALTER TABLE `t_order`
  MODIFY `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_product_list`
--
ALTER TABLE `t_product_list`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
