-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 08:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upload_files`
--

-- --------------------------------------------------------

--
-- Table structure for table `sheets`
--

CREATE TABLE `sheets` (
  `id` int(11) NOT NULL,
  `week_no` varchar(100) DEFAULT NULL,
  `week_start` varchar(200) DEFAULT NULL,
  `week_end` varchar(200) DEFAULT NULL,
  `days_worked` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `real_name` varchar(200) DEFAULT NULL,
  `alias` varchar(200) DEFAULT NULL,
  `employee_id` varchar(200) DEFAULT NULL,
  `employee_status` varchar(200) DEFAULT NULL,
  `daily_target` varchar(200) DEFAULT NULL,
  `weekly_target` varchar(200) DEFAULT NULL,
  `paper` varchar(200) DEFAULT NULL,
  `team_manager` varchar(200) DEFAULT NULL,
  `center` varchar(200) DEFAULT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sheets`
--
ALTER TABLE `sheets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sheets`
--
ALTER TABLE `sheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
