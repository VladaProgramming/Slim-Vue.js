-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2017 at 05:29 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slimapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `phone`, `email`, `address`, `city`, `state`) VALUES
(2, 'Sam', 'Smith', '06312495682', 'ssmith@gmail.com', 'New York', 'New York', 'USA'),
(3, 'Vladimir', 'Ilic', '063452136', 'vlada@gmail.com', '12 haduk veljkova', 'Negotin', 'Srbija'),
(4, 'Ivan', 'Dobric', '063451279', 'idobric@gmail.com', 'Omladinskih brigada 45', 'Beograd', 'Serbia'),
(5, 'Nenad', 'Prvulovic', '0635816594', 'nPrvul@gmail.com', 'Kralja Milana 56', 'Nis', 'Srbija'),
(6, 'Nesa', 'Brzulovic', '6451351351', 'nbrz@gmail.com', 'Kralja Petra 23', 'Novi sad', 'Srbija'),
(7, 'Sasa', 'Gornjakovic', '215774463', 'sgornjak@gmail.com', 'Garibaldijeva 14', 'Beograd', 'Srbija'),
(8, 'Petar ', 'Petrovic', '6515431', 'ppetrov@gmail.com', 'Aleksinackih rudara', 'Beograd', 'Srbija');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
