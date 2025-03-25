-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2025 at 01:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `hr`
--

CREATE TABLE `hr` (
  `id` int(11) NOT NULL,
  `attrition_workmen` text DEFAULT NULL,
  `attrition_junior_middle` text DEFAULT NULL,
  `attrition_senior` text DEFAULT NULL,
  `absenteeism_workmen` text DEFAULT NULL,
  `training_programs` text DEFAULT NULL,
  `attendance_percentage` text DEFAULT NULL,
  `job_descriptions` varchar(3) DEFAULT NULL,
  `pms_process` varchar(3) DEFAULT NULL,
  `pms_followed` varchar(3) DEFAULT NULL,
  `performance_communicated` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hr`
--

INSERT INTO `hr` (`id`, `attrition_workmen`, `attrition_junior_middle`, `attrition_senior`, `absenteeism_workmen`, `training_programs`, `attendance_percentage`, `job_descriptions`, `pms_process`, `pms_followed`, `performance_communicated`) VALUES
(1, '12', '32', 'aewwqf', 'daewq', 'asdas', 'fqwe', 'yes', 'no', 'yes', 'no'),
(2, '12', '32', 'aewwqf', 'daewq', 'asdas', 'fqwe', 'yes', 'no', 'yes', 'no'),
(3, 'adas', 'as', 'sas', 'sadf', 'adsa', 'asda', 'yes', 'no', 'yes', 'no'),
(4, 'adsa', 'asda', 'asdad', 'asda', 'asdf', 'asda', 'yes', 'no', 'yes', 'no'),
(5, 'adsa', 'asda', 'asdad', 'asda', 'asdf', 'asda', 'yes', 'no', 'yes', 'no'),
(6, 'adsa', 'asda', 'asdad', 'asda', 'asdf', 'asda', 'yes', 'no', 'yes', 'no'),
(7, 'adsa', 'asda', 'asdad', 'asda', 'asdf', 'asda', 'yes', 'no', 'yes', 'no'),
(8, 'adsa', 'asda', 'asdad', 'asda', 'asdf', 'asda', 'yes', 'no', 'yes', 'no'),
(9, 's', 'sfa', 'asd', 'dfsa', 'asda', 'asd', 'yes', 'no', 'yes', 'no'),
(10, 's', 'sfa', 'asd', 'dfsa', 'asda', 'asd', 'yes', 'no', 'yes', 'no'),
(11, 's', 'sfa', 'asd', 'dfsa', 'asda', 'asd', 'yes', 'no', 'yes', 'no'),
(12, 's', 'sfa', 'asd', 'dfsa', 'asda', 'asd', 'yes', 'no', 'yes', 'no'),
(13, 's', 'sfa', 'asd', 'dfsa', 'asda', 'asd', 'yes', 'no', 'yes', 'no'),
(14, '12', '35', '783', '56', '576', '76', 'yes', 'no', 'yes', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hr`
--
ALTER TABLE `hr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hr`
--
ALTER TABLE `hr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
