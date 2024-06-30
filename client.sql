-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 09:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `client`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `checkout_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_amount` decimal(10,2) DEFAULT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prénom` varchar(70) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Pays` varchar(50) NOT NULL,
  `Téléphone` varchar(255) NOT NULL,
  `addresse` text NOT NULL,
  `is_livred` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `customer_id`, `checkout_date`, `total_amount`, `Nom`, `Prénom`, `Email`, `Pays`, `Téléphone`, `addresse`, `is_livred`) VALUES
(1, 123, '2024-06-30 18:14:40', 309.97, '', '', '', '', '', '', 0),
(2, 123, '2024-06-30 18:14:45', 309.97, '', '', '', '', '', '', 0),
(3, 123, '2024-06-30 18:15:01', 309.97, '', '', '', '', '', '', 0),
(9, 123, '2024-06-30 18:33:28', 309.97, 'Saif Eddine Mogaadi', 'zazaz', 'mogaadisaif7@gmail.com', 'United States', '   +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(11, 123, '2024-06-30 18:35:02', 309.97, 'Saif Eddine Mogaadi', 'zazaz', 'mogaadisaif7@gmail.com', 'United States', '     +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(12, 123, '2024-06-30 18:37:03', 309.97, 'Saif Eddine Mogaadi', 'zazaz', 'mogaadisaif7@gmail.com', 'United States', '      +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(13, 123, '2024-06-30 18:37:20', 309.97, 'Saif Eddine Mogaadi', 'zazaz', 'mogaadisaif7@gmail.com', 'United States', '       +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(14, 123, '2024-06-30 18:37:53', 309.97, 'Saif Eddine Mogaadi', 'zazaz', 'mogaadisaif7@gmail.com', 'United States', '        +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(15, 123, '2024-06-30 18:41:41', 309.97, 'Saif Eddine Mogaadi', 'zazaz', 'mogaadisaif7@gmail.com', 'United States', '         +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(16, 123, '2024-06-30 19:02:22', 309.97, 'Saif Eddine Mogaadi', 'ezezeze', 'mogaadisaif7@gmail.com', 'United States', ' +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(17, 123, '2024-06-30 19:03:23', 309.97, 'Saif Eddine Mogaadi', 'ezezeze', 'mogaadisaif7@gmail.com', 'United States', '  +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(18, 123, '2024-06-30 19:04:19', 309.97, 'Saif Eddine Mogaadi', 'ezezeze', 'mogaadisaif7@gmail.com', 'United States', '   +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(19, 123, '2024-06-30 19:05:42', 309.97, 'Saif Eddine Mogaadi', 'ezezeze', 'mogaadisaif7@gmail.com', 'United States', '    +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(20, 123, '2024-06-30 19:08:19', 309.97, 'Saif Eddine Mogaadi', 'ezezeze', 'mogaadisaif7@gmail.com', 'United States', '     +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(21, 123, '2024-06-30 19:10:00', 309.97, 'Saif Eddine Mogaadi', 'ezezeze', 'mogaadisaif7@gmail.com', 'United States', '      +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(22, 123, '2024-06-30 19:10:12', 309.97, 'Saif Eddine Mogaadi', 'ezezeze', 'mogaadisaif7@gmail.com', 'United States', '       +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(23, 123, '2024-06-30 19:11:49', 309.97, 'Saif Eddine Mogaadi', 'sqsqsqs', 'mogaadisaif7@gmail.com', 'United States', ' +21653376935', 'menzel bourguiba , bizerte , tunisia', 0),
(24, 123, '2024-06-30 19:18:27', 209.98, 'Saif Eddine Mogaadi', 'sqsqsqs', 'mogaadisaif7@gmail.com', 'United States', '  +21653376935', 'menzel bourguiba , bizerte , tunisia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `checkout_products`
--

CREATE TABLE `checkout_products` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `checkout_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout_products`
--

INSERT INTO `checkout_products` (`id`, `quantity`, `checkout_id`, `product_id`) VALUES
(8, 2, 1, 1),
(9, 1, 1, 3),
(10, 2, 1, 1),
(11, 1, 1, 3),
(12, 2, 1, 1),
(13, 1, 1, 3),
(14, 2, 1, 1),
(15, 1, 1, 3),
(16, 2, 1, 1),
(17, 1, 1, 3),
(18, 2, 1, 1),
(19, 1, 1, 3),
(20, 2, 13, 1),
(21, 1, 13, 3),
(22, 2, 14, 1),
(23, 1, 14, 3),
(24, 2, 15, 1),
(25, 1, 15, 3),
(26, 2, 16, 1),
(27, 1, 16, 3),
(28, 2, 17, 1),
(29, 1, 17, 3),
(30, 2, 18, 1),
(31, 1, 18, 3),
(32, 2, 19, 1),
(33, 1, 19, 3),
(34, 0, 21, 3),
(35, 0, 21, 3),
(36, 0, 21, 3),
(37, 0, 21, 3),
(38, 0, 22, 3),
(39, 0, 22, 3),
(40, 0, 22, 3),
(41, 0, 22, 3),
(42, 0, 23, 3),
(43, 0, 23, 1),
(44, 0, 24, 3),
(45, 0, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacter`
--

CREATE TABLE `contacter` (
  `Prénom` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Message` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contacter`
--

INSERT INTO `contacter` (`Prénom`, `Email`, `Message`) VALUES
('rabeb', 'rabebgorcia@gmail.com', 'kjxqkxhsiusq'),
('zazaz', 'mogaadisaif7@gmail.com', 'sqsq');

-- --------------------------------------------------------

--
-- Table structure for table `inscrit`
--

CREATE TABLE `inscrit` (
  `Nom` varchar(70) NOT NULL,
  `Prénom` varchar(70) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Pays` varchar(50) NOT NULL,
  `Téléphone` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inscrit`
--

INSERT INTO `inscrit` (`Nom`, `Prénom`, `Email`, `Pays`, `Téléphone`) VALUES
('gorcia', 'RAbeb', 'rabebgorcia@gmail.com', 'tunisie', '216574123'),
('Saif Eddine Mogaadi', 'sss', 'mogaadisaif7@gmail.com', 'United States', '   +21653376935'),
('zazazazazzzz', 'zzzzzzz', 'mogaadisazzazazif7@gmail.com', 'United States', ' +21653376935');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `category`, `type`) VALUES
(1, 'Sparkling Sapphire Earrings', 'Elegant dangle earrings featuring shimmering sapphires set in sterling silver', 129.99, 'images/dynamic-assets/earring.jpeg', 'Earrings', 'f'),
(2, 'Classic Gold Necklace', 'A timeless 14k yellow gold chain, perfect for layering or wearing alone', 199.99, 'images/dynamic-assets/gold_necklace.jpeg', 'Necklaces', 'f'),
(3, 'Men\'s Leather Bracelet with Silver Clasp', 'A rugged yet stylish bracelet featuring braided black leather and a polished silver clasp', 79.99, 'images/leather_bracelet.jpeg', 'Bracelets', 'f'),
(4, 'Birthstone Pendant (Select Month)', 'Delicate sterling silver pendant featuring your choice of birthstone', 49.99, 'images/dynamic-assets/birthstone_pendant.jpeg', 'Necklaces', 'f'),
(5, 'Pearl and Diamond Cocktail Ring', 'A statement piece for any occasion, featuring a luminous pearl accented with sparkling diamonds', 499.99, 'images/dynamic-assets/pearl_diamond_ring.jpeg', 'Rings', 'f'),
(6, 'Stackable Sterling Silver Rings (Set of 3)', 'Mix and match these charming sterling silver rings with intricate designs', 89.99, 'images/dynamic-assets/stackable_rings.jpeg', 'Rings', 'f'),
(7, 'Tree of Life Charm for Bracelet or Necklace', 'A meaningful charm with a tree of life symbol, available in silver or gold', 29.99, 'images/dynamic-assets/tree_charm_silver.jpeg', 'Charms', 'f'),
(10, 'Sparkling Sapphire Earrings', 'Elegant dangle earrings featuring shimmering sapphires set in sterling silver', 129.99, 'images/dynamic-assets/earring.jpeg', 'Earrings', 'fi'),
(11, 'Classic Gold Necklace', 'A timeless 14k yellow gold chain, perfect for layering or wearing alone', 199.99, 'images/dynamic-assets/gold_necklace.jpeg', 'Necklaces', 'fi'),
(12, 'Men\'s Leather Bracelet with Silver Clasp', 'A rugged yet stylish bracelet featuring braided black leather and a polished silver clasp', 79.99, 'images/leather_bracelet.jpeg', 'Bracelets', 'fi'),
(13, 'Birthstone Pendant (Select Month)', 'Delicate sterling silver pendant featuring your choice of birthstone', 49.99, 'images/dynamic-assets/birthstone_pendant.jpeg', 'Necklaces', 'fi'),
(14, 'Pearl and Diamond Cocktail Ring', 'A statement piece for any occasion, featuring a luminous pearl accented with sparkling diamonds', 499.99, 'images/dynamic-assets/pearl_diamond_ring.jpeg', 'Rings', 'fi'),
(15, 'Stackable Sterling Silver Rings (Set of 3)', 'Mix and match these charming sterling silver rings with intricate designs', 89.99, 'images/dynamic-assets/stackable_rings.jpeg', 'Rings', 'fi'),
(16, 'Tree of Life Charm for Bracelet or Necklace', 'A meaningful charm with a tree of life symbol, available in silver or gold', 29.99, 'images/dynamic-assets/tree_charm_silver.jpeg', 'Charms', 'fi'),
(17, 'Sparkling Sapphire Earrings', 'Elegant dangle earrings featuring shimmering sapphires set in sterling silver', 129.99, 'images/dynamic-assets/earring.jpeg', 'Earrings', 'h'),
(18, 'Classic Gold Necklace', 'A timeless 14k yellow gold chain, perfect for layering or wearing alone', 199.99, 'images/dynamic-assets/gold_necklace.jpeg', 'Necklaces', 'h'),
(19, 'Men\'s Leather Bracelet with Silver Clasp', 'A rugged yet stylish bracelet featuring braided black leather and a polished silver clasp', 79.99, 'images/leather_bracelet.jpeg', 'Bracelets', 'h'),
(20, 'Birthstone Pendant (Select Month)', 'Delicate sterling silver pendant featuring your choice of birthstone', 49.99, 'images/dynamic-assets/birthstone_pendant.jpeg', 'Necklaces', 'h'),
(21, 'Pearl and Diamond Cocktail Ring', 'A statement piece for any occasion, featuring a luminous pearl accented with sparkling diamonds', 499.99, 'images/dynamic-assets/pearl_diamond_ring.jpeg', 'Rings', 'h'),
(22, 'Stackable Sterling Silver Rings (Set of 3)', 'Mix and match these charming sterling silver rings with intricate designs', 89.99, 'images/dynamic-assets/stackable_rings.jpeg', 'Rings', 'h'),
(23, 'Tree of Life Charm for Bracelet or Necklace', 'A meaningful charm with a tree of life symbol, available in silver or gold', 29.99, 'images/dynamic-assets/tree_charm_silver.jpeg', 'Charms', 'h');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout_products`
--
ALTER TABLE `checkout_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checkout_id` (`checkout_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `contacter`
--
ALTER TABLE `contacter`
  ADD PRIMARY KEY (`Prénom`);

--
-- Indexes for table `inscrit`
--
ALTER TABLE `inscrit`
  ADD PRIMARY KEY (`Nom`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `checkout_products`
--
ALTER TABLE `checkout_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checkout_products`
--
ALTER TABLE `checkout_products`
  ADD CONSTRAINT `checkout_products_ibfk_1` FOREIGN KEY (`checkout_id`) REFERENCES `checkout` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `checkout_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
