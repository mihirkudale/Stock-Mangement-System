-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 31, 2021 at 10:41 AM
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
-- Database: `stockmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `Admin_name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `contact` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Admin_name`, `pass`, `contact`) VALUES
(2, 'Harshal', 'imcc@123', 8182838485);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `contact`) VALUES
(1, 'harshal', 'har@1234', 8182838485);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `barcode` varchar(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `retail` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `Type`, `barcode`, `cost`, `retail`, `qty`) VALUES
(1, 'pick and mix slik', 'cadbury', 'C1', 40, 35, 21),
(2, 'Dove 2in1', 'shampoo', 'S1', 10, 8, 105),
(3, 'Gemini  Soyabean Oil ', 'Oil', 'O12', 1100, 1000, 27),
(4, 'Good Day', 'Bisciut', 'B12', 20, 15, 20);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `bal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `date`, `vendor`, `subtotal`, `pay`, `bal`) VALUES
(1, '2021-04-28', 'Ashish Mane', 510, 510, 0),
(2, '2021-04-28', 'Taimur Khan', 10470, 10000, 470),
(3, '2021-04-29', 'Ashish Mane', 5000, 5000, 0),
(4, '2021-04-29', 'Ashish Mane', 160, 160, 0),
(5, '2021-04-29', 'Ashish Mane', 175, 175, 0),
(6, '2021-04-29', 'Ashish Mane', 175, 175, 0),
(7, '2021-04-29', 'Ashish Mane', 5000, 5000, 0),
(8, '2021-04-29', 'Akshay Yadav', 5080, 5080, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

CREATE TABLE `purchaseitem` (
  `id` int(10) NOT NULL,
  `purid` int(10) NOT NULL,
  `pid` varchar(10) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `rprice` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchaseitem`
--

INSERT INTO `purchaseitem` (`id`, `purid`, `pid`, `pname`, `rprice`, `qty`, `total`) VALUES
(1, 1, 'C1', 'pick and mix slik', 35, 10, 350),
(2, 1, 'S1', 'Dove 2in1', 8, 20, 160),
(3, 2, 'O12', 'Gemini  Soyabean Oil', 1000, 10, 10000),
(4, 2, 'c1', 'pick and mix slik', 35, 10, 350),
(5, 2, 's1', 'Dove 2in1', 8, 15, 120),
(6, 3, 'O12', 'Gemini  Soyabean Oil', 1000, 5, 5000),
(7, 4, 's1', 'Dove 2in1', 8, 20, 160),
(8, 5, 'c1', 'pick and mix slik', 35, 5, 175),
(9, 6, 'C1', 'pick and mix slik', 35, 5, 175),
(10, 7, 'O12', 'Gemini  Soyabean Oil', 1000, 5, 5000),
(11, 8, 'S1', 'Dove 2in1', 8, 10, 80),
(12, 8, 'O12', 'Gemini  Soyabean Oil', 1000, 5, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `bal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `subtotal`, `pay`, `bal`) VALUES
(1, '2021-04-28', 5000, 5000, 0),
(2, '2021-04-28', 1230, 1230, 0),
(3, '2021-04-29', 200, 200, 0),
(4, '2021-04-29', 200, 200, 0),
(5, '2021-04-30', 2330, 2330, 0),
(6, '2021-04-30', 5700, 5700, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `salesid`, `pid`, `pname`, `price`, `qty`, `total`) VALUES
(1, 1, 'O12', 'Gemini  Soyabean Oil', 1000, 5, 5000),
(2, 2, 's1', 'Dove 2in1', 10, 5, 50),
(3, 2, 'c1', 'pick and mix slik', 40, 2, 80),
(4, 2, 'O12', 'Gemini  Soyabean Oil', 1100, 1, 1100),
(5, 3, 'C1', 'pick and mix slik', 40, 5, 200),
(6, 4, 'C1', 'pick and mix slik', 40, 5, 200),
(7, 5, 'O12', 'Gemini  Soyabean Oil', 1100, 2, 2200),
(8, 5, 'c1', 'pick and mix slik', 40, 2, 80),
(9, 5, 's1', 'Dove 2in1', 10, 5, 50),
(10, 6, 'O12', 'Gemini  Soyabean Oil', 1100, 5, 5500),
(11, 6, 'C1', 'pick and mix slik', 40, 5, 200);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` bigint(12) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `phone`, `company`, `address`) VALUES
(1, 'Ashish Mane', 8182838485, 'SNG pvt', 'Atpadi'),
(2, 'Akshay Yadav', 9192939495, 'SAM Enterprise', 'Sangli'),
(3, 'Taimur Khan', 7877757675, 'KRP Enterprise', 'Kolhapur'),
(4, 'Sagam Chavan', 8583828180, 'G&S suppliers', 'Satara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
