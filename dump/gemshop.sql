-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: gemshop
-- Generation Time: Nov 03, 2023 at 05:39 PM
-- Server version: 5.7.28
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gemshop`
--
CREATE DATABASE IF NOT EXISTS `gemshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gemshop`;

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE `Person` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`id`, `name`) VALUES
(1, 'Ranjit'),
(2, 'Rakesh'),
(3, 'Dinesh'),
(4, 'Karthik');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, '11.43ct Natural White Sapphire', 'Gem type: Natural White Sapphire\r\n\r\nWeight: 11.43 carat\r\n\r\nClarity: Eye Clean\r\n\r\nShape & Cut: Mix Sizes', 5619.99, 5700.00, 10, '11.43ct Natural White Sapphire.png', '2023-11-03 10:33:01'),
(2, '4.11ct Natural Blue Sapphire Pair', 'Gem type: Natural Blue Sapphire\r\n\r\nWeight: 4.11carat\r\n\r\nClarity: Eye clean\r\n\r\nSize: 8.6x6.4mm -8.2x6.2mm\r\n\r\nColour: Cornflower Blue\r\n\r\nShape & Cut: Oval Mixed \r\n\r\nTreatment: heated\r\n\r\nCertificate: FL1-741\r\n\r\n', 6200.99, 6499.99, 5, 'redgem.png', '2019-03-13 18:52:49'),
(3, '12.89Ct Natural Chrysoberyl', 'Gem type: Natural Chrysoberyl\r\n\r\nWeight: 12.89ct \r\n\r\nClarity: Eye clean\r\n\r\nColour: Yellow\r\n\r\nShape & Cut: Oval / Step Cut', 1599.99, 1799.99, 13, 'yellowgem.png', '2019-03-13 18:47:56'),
(4, '2.22ct Natural Unheated Purple Sapphire.', 'Gem type: Natural Purple Sapphire\r\n\r\nWeight: 2.22 carat\r\n\r\nSize :  9x6.8 mm\r\n\r\nColour: Purple\r\n\r\nShape & Cut:Pear/ Step Cut\r\n\r\nSKU : CR-5609.\r\n\r\n', 2069.99, 0.00, 6, 'purplegem.png', '2019-03-13 17:42:04'),
(5, '3.86ct Unheated Blue Sapphire.', 'Gem type: Unheated   Blue Sapphire\r\n\r\nWeight: 3.86 carat\r\n\r\nSize: 9.5x8.5x5.3mm\r\n\r\nColour: Cornflower\r\n\r\nShape & Cut: Cushion / Step Cut\r\n\r\nCertificate :  \r\n\r\nSKU : CR/6243 N', 2700.00, 0.00, 16, '3.86ct Unheated Blue Sapphire.png', '2023-11-03 10:15:24'),
(6, 'Natural Baguette White Sapphire Per Stone - Multiple Sizes', 'Gem type: Natural White Sapphire\r\n\r\nClarity: Loupe Clean\r\n\r\nSize : 6.7x4.4mm\r\n\r\nColour: White\r\n\r\nShape & Cut: Rectangle Baguette\r\n\r\n', 172.99, 189.99, 22, 'Natural Baguette White Sapphire Per Stone - Multiple Sizes.png', '2023-11-03 10:40:06'),
(7, '1.64ct Natural Pink Sapphire', 'Gem type: Natural Pink Sapphire\r\n\r\nWeight: 1.64 carat\r\n\r\nSize : 8.1 x6.1  mm\r\n\r\nColour: Pink\r\n\r\nShape & Cut:  Oval / Step Cut\r\n\r\nSKU : CR-5102.\r\n\r\n', 1199.99, 1399.99, 11, '1.64ct Natural Pink Sapphire.png', '2023-11-03 10:42:50'),
(8, '29.40ct Natural Garnet', 'Colour: Orangish Brown\r\n\r\nShape & Cut: Cabachon\r\n\r\n', 1299.99, 1399.99, 6, '29.40ct Natural Garnet.png', '2023-11-03 09:09:05'),
(9, '3.15ct Natural Spinel', 'Gem type: Natural Spinel\r\n\r\nClarity: Eye clean\r\n\r\nSize: 9.8 x 9.0 mm\r\n\r\nColour: Dark Pink\r\n\r\nShape & Cut: Cushion  Step cut\r\n\r\nCerttificate: GG-102456', 1500.00, 1599.99, 1, '3.15ct Natural Spinel.png', '2023-11-03 09:26:55'),
(10, '3.11Ct Natural Pink Sapphire', 'Gem type: Natural Pink Sapphire\r\n\r\nWeight: 3.11 Carat\r\n\r\nSize: 9.5x7mm \r\n\r\nColour : Pinkish Red\r\n\r\nShape & Cut: Cushion/ Step cut', 11449.99, 11999.99, 2, '3.11Ct Natural Pink Sapphire.png', '2023-11-03 10:20:26'),
(11, '1.5ct Natural Unheated Padparadscha', 'Gem type: Natural Padparadscha\r\n\r\nWeight: 1.56 carat\r\n\r\nClarity: Eye clean\r\n\r\nSize: 9.35x3.8 mm\r\n\r\nColour: Pinkish Orange\r\n\r\nShape & Cut: Pear Step cut', 1368.14, 1499.99, 1, '1.5ct Natural Unheated Padparadscha.png', '2023-11-03 10:23:51'),
(12, '3.5+mm Round Teal Sapphire (14.94Ct)-55 Pcs.', 'Gem type: Natural Teal Sapphires\r\n\r\nWeight: 14.94 carat\r\n\r\nClarity: Eye clean\r\n\r\nSize: 3.5+mm\r\n\r\nColour: Teal colour\r\n\r\nShape & Cut: Round /Flower Cut', 3669.60, 3999.99, 15, '3.5+mm Round Teal Sapphire (14.94Ct)-55 Pcs..png', '2023-11-03 10:26:34'),
(13, '1.82 ct Natural Teal Sapphire-02 Pcs', 'Gem type: Natural Teal Sapphire\r\n\r\nWeight: 1.82 carat\r\n\r\nClarity: Eye Clean\r\n\r\nSize: 5 × 5 mm\r\n\r\nShape & Cut: Cushion /Step Cut', 659.99, 699.99, 17, '1.82 ct Natural Teal Sapphire-02 Pcs.png', '2023-11-03 10:30:16'),
(14, 'Natural Star Sapphire Per Gemstone', 'Gem type: Natural Star Sapphire\r\n\r\nWeight: 12.00 carat/ 1.09 carat average per piece\r\n\r\nClarity: Eye clean\r\n\r\nSize: Mix\r\n\r\nPieces: 11\r\n\r\nColour: Pinkish', 149.99, 199.99, 8, 'Natural Star Sapphire Per Gemstone.png', '2023-11-03 10:48:48'),
(15, '0.70ct Natural Parti Sapphire', 'Gem type: Natural Parti Sapphire\r\n\r\nWeight: 0.70 carat\r\n\r\nClarity: Eye clean\r\n\r\nSize:  5.2x3.1mm\r\n\r\nColour:  Blue and White\r\n\r\nShape & Cut: Round Step', 99.99, 120.00, 41, '0.70ct Natural Parti Sapphire.png', '2023-11-03 10:51:57'),
(16, '1.22 ct Natural Emerald', 'Gem type: Natural Emerald\r\n\r\nWeight: 1.22 carat\r\n\r\nClarity: Eye clean\r\n\r\nSize: 10.5 X 6.7 mm\r\n\r\nColour: Green\r\n\r\nShape & Cut: Pear & Step cut', 1099.99, 1299.99, 9, '1.22 ct Natural Emerald.png', '2023-11-03 10:54:12'),
(17, '3.52ct Cat\'s eye Moonstone', 'Gem type: Natural Cat\'s eye Moonstone\r\n\r\nClarity: Loupe clean\r\n\r\nWeight: 3.52 carat\r\n\r\nSize: 11x9.4x4.6 mm\r\n\r\nColour: \r\n\r\nShape & Cut: Oval Cabochon', 88.99, 99.99, 20, '3.52ct Cat\'s eye Moonstone.png', '2023-11-03 10:57:26'),
(18, '10.10Ct Natural Apatite -08Pcs', 'Gem type: Natural Apatite\r\n\r\nWeight: 10.10 carat   \r\n\r\nClarity: Eye Clean \r\n\r\nSize: Free Size\r\n\r\nShape & Cut: Oval/ Step\r\n\r\n', 899.99, 979.99, 3, '10.10Ct Natural Apatite -08Pcs.png', '2023-11-03 10:59:44'),
(19, '100.00 Ct Natural Blue Topaz', 'Gem type: Natural Blue Topaz\r\n\r\nWeight:  99.85 Caret\r\n\r\nSize: 35x27x17.7mm\r\n\r\nColour: Blue\r\n\r\nShape & Cut: Pear / Step Cut\r\n\r\n', 2399.99, 2499.99, 11, '99.85 Ct Natural Blue Topaz.png', '2023-11-03 11:01:50'),
(20, 'Round Natural Garnet\r\n', 'Gem type: Natural Garnet\r\n\r\nWeight: 1.50 carat average\r\n\r\nClarity: Eye Clean\r\n\r\nSize : 7mm\r\n\r\nColour: Red\r\n\r\nShape & Cut: Round Mixed', 100.99, 129.99, 32, 'Round Natural Garnet.png', '2023-11-03 11:03:57'),
(21, '5x5mm Princess Natural Garnet (15.17Ct)', 'Gem type: Natural Garnet\\r\\n\\r\\nWeight 15.17 carat\\r\\n\\r\\nSize : 5x5mm\\r\\n\\r\\nColour: Pink\\r\\n\\r\\nShape & Cut: Rectangle ,Princess', 499.99, 599.99, 28, '5x5mm Princess Natural Garnet (15.17Ct).png', '2023-11-03 12:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'seller', 'seller@gmail.com', '0772289561', '$2y$10$rKZOWWcF2LuTqPdz4k8wiuALEvzY9rsoMhmES9ODGkMEpI0F5oKJG'),
(2, 'Sanju', 'sanjumadushan770@gmail.com', '0786224115', '$2y$10$7pwhQX2ORp89sY5AvTWlKuDK4RO8W.fOvb.Bkc3eczApHvO8iiPm6');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `age` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `age`) VALUES
(1, '12'),
(2, '14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'gem', 'gem@gmail.com', '0772289561', '$2y$10$IxtMVDfRnFmyx0kgIDmZK.Wc7sAuGUrFKReFQeWObc4f.yxtCuFzi'),
(2, 'seller', 'seller@gmail.com', '0772289561', '$2y$10$V38rtt6Ym8gHPICgMfL/5.5drKe0y2g74ZukKCatiBjX3PsnkZaOK'),
(3, 'sanju', 'shashindumadushan63@gamil.com', '0770222960', '$2y$10$ivMI5JJWmxhj50aEkoh4Z.6QKq5A4NHMnaIqbW3yTBARKj/Qxy59u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
