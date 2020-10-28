-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2020 at 12:20 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`) VALUES
(20, 'GS2', 'Watch-GA-110HR-1ADR (G700)', 'Casio G-Shock Analog-Digital Black Dial Mens Watch - GA-400-1BDR (G566) with 2 Years warrenty', 7800, 6, 46800, '2020-10-27 05:24:01', 'harish@g.com'),
(19, 'GS1', 'Watch - GA-400-1BDR (G566)', 'Casio G-Shock Analog-Digital Black Dial Mens Watch - GA-400-1BDR (G566) with 2 Year warrenty', 8600, 1, 8600, '2020-10-27 05:23:45', 'harish@g.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'GS1', 'GA-400-1BDR (G566)', 'Casio G-Shock Analog-Digital Black Dial Mens Watch - GA-400-1BDR (G566) with 2 Year warrenty', 'gs1.jpg', 32, '8600.00'),
(2, 'GS2', 'GA-110HR-1ADR (G700)', 'Casio G-Shock Analog-Digital Black Dial Mens Watch - GA-400-1BDR (G566) with 2 Years warrenty', 'gs2.jpg', 39, '7800.00'),
(3, 'GS3', 'GA-100CB-1ADR (G625)', 'Casio G-Shock Analog-Digital Black Dial Mens Watch - GA-400-1BDR (G566) with 2 Years warrenty', 'gs3.jpg', 34, '14500.00'),
(4, 'GS4', 'GM110-1A (G740)', 'Casio G-Shock Analog-Digital Black Dial Mens Watch - GA-400-1BDR (G566) with 2 Years warrenty', 'gs4.jpg', 50, '11000.00'),
(5, 'GS5', 'GM115-BA (G150)', 'Casio G-Shock Analog-Digital Black Dial Mens Watch - GA-400-1BDR (G566) with 2 Years warrenty', 'gs5.jpg', 50, '5500.00'),
(6, 'GS6', 'GM140-BA (G688)', 'Casio G-Shock Analog-Digital Black Dial Mens Watch - GA-400-1BDR (G566) with 2 Years warrenty', 'gs6.jpg', 50, '8500.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'harish', 'kumar', 'karur', 'karur', 639001, 'harish@g.com', 'admin', 'admin'),
(2, 'benlin', 'a', 'theni', 'theni', 632522, 'benlin@g.com', 'hello', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
