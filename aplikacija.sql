-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 02:02 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikacija`
--
CREATE DATABASE IF NOT EXISTS `aplikacija` DEFAULT CHARACTER SET utf8 COLLATE utf8_slovenian_ci;
USE `aplikacija`;

-- --------------------------------------------------------

--
-- Table structure for table `osebe`
--

CREATE TABLE `osebe` (
  `Id` int(11) NOT NULL,
  `Ime` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `Priimek` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `Naslov` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `Starost` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `osebe`
--

INSERT INTO `osebe` (`Id`, `Ime`, `Priimek`, `Naslov`, `Starost`) VALUES
(83, 'Erik', 'Novak', 'Križ 234', 12),
(84, 'Sonja', 'Podgrad', 'Postojna 23c', 67),
(85, 'Marica', 'Pahor', 'Vipava 234', 67);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `osebe`
--
ALTER TABLE `osebe`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `osebe`
--
ALTER TABLE `osebe`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
