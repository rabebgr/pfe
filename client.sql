-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 11:56 AM
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
  `Nom` varchar(70) NOT NULL,
  `Prénom` varchar(70) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Pays` varchar(50) NOT NULL,
  `Téléphone` varchar(255) NOT NULL,
  `addresse` text NOT NULL,
  `products` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`Nom`, `Prénom`, `Email`, `Pays`, `Téléphone`, `addresse`, `products`) VALUES
('sqsqsqsq', 'sqsqsq', 'mogaadisaif7@gmail.com', 'United States', '  777777777777', 'qsq\r\n                        sqsq', ''),
('Saif Eddine Mogaadiddd', 'ddddd', 'mogaddddddddadisaif7@gmail.com', 'United States', ' +21653376935', 'menzel bourguiba , bizerte , tunisia', ''),
('dsdsdsd', 'sdsdsdsdddddddd', 'mogaadisaaaaif7@gmail.com', 'United States', ' 53376935', 'Rue laMartine\r\nCentre hbiba', ''),
('Saif Eddine Mogaadi', 'aaaaaaa', 'mogaadisaif7@gmazzzil.com', 'United States', ' +21653376935', 'menzel bourguiba , bizerte , tunisiqqa', '[{\"name\":\"Classic Gold Necklace\",\"description\":\"A timeless 14k yellow gold chain, perfect for layering or wearing alone\",\"price\":199.99,\"image\":\"images/dynamic-assets/gold_necklace.jpeg\",\"category\":\"Necklaces\"},{\"name\":\"Classic Gold Necklace\",\"description\":\"A timeless 14k yellow gold chain, perfect for layering or wearing alone\",\"price\":199.99,\"image\":\"images/dynamic-assets/gold_necklace.jpeg\",\"category\":\"Necklaces\"}]');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`Nom`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
