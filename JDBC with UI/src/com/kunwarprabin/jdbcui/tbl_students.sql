-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2016 at 03:31 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courseportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`student_id`, `first_name`, `last_name`, `email`, `added_date`, `modified_date`) VALUES
(1, 'Prabin', 'Kunwar', 'kunwar.prabin02@gmail.com', '2016-07-03 07:25:12', '2016-07-06 18:15:00'),
(2, 'Ram', 'kumar', 'tff@gmail.com', '2016-07-03 07:57:15', NULL),
(5, 'Prabesh', 'Khadka', 'Kdkapk@gmail.com', '2016-07-03 12:04:17', NULL),
(8, 'Bishal', 'Dotel', 'dotelbishal@yahoo.com', '2016-07-04 18:41:08', NULL),
(9, 'Tom', 'Hanks', 'hankstom@hotmail.com', '2016-07-05 07:11:38', NULL),
(10, 'Prazzon', 'Karki', 'przzon@gmail.com', '2016-07-05 09:21:42', NULL),
(11, 'Bishal', 'Dotel', 'dotelbishal@yahoo.com', '2016-07-05 12:45:25', NULL),
(12, 'Sudeep', 'Dotel', 'dotelbishal@yahoo.com', '2016-07-05 12:45:26', NULL),
(14, 'Sudarshan', 'Bohra', 'bohrasuds@yahoo.com', '2016-07-05 12:47:26', NULL),
(22, 'Jyoti', 'Uprety', 'upretyjyoti@yahoo.com', '2016-07-05 12:50:43', NULL),
(28, 'Dipesh', 'Basnet', 'bsntDpes@yahoo.com', '2016-07-05 12:52:26', NULL),
(29, 'Diwakaar', 'Basnet', 'bsntDwkaar@yahoo.com', '2016-07-05 12:52:37', NULL),
(30, 'Gokul', 'Jha', 'jhaGok@yahoo.com', '2016-07-05 12:56:01', NULL),
(31, 'Christan', 'Bale', 'bale.cr@gmail.com', '2016-07-05 17:34:32', NULL),
(32, 'Prabesh', 'Khadka', 'Kdkapk@gmail.com', '2016-07-05 17:39:03', NULL),
(33, 'Tom', 'Hanks', 'hankstom@hotmail.com', '2016-07-05 17:39:06', NULL),
(34, 'Jyoti', 'Uprety', 'upretyjyoti@yahoo.com', '2016-07-05 17:39:09', NULL),
(35, 'Gokul', 'Jha', 'jhaGok@yahoo.com', '2016-07-05 17:39:11', NULL),
(36, 'Prabin', 'Kunwar', 'kunwar.prabin02@gmail.com', '2016-07-05 17:39:15', NULL),
(37, 'Ram', 'kumar', 'tff@gmail.com', '2016-07-05 17:39:17', NULL),
(38, 'Gokul', 'Jha', 'jhaGok@yahoo.com', '2016-07-05 17:39:20', NULL),
(39, 'Bikesh', 'Pokharel', 'pokharelpat@yahoo.com', '2016-07-05 17:39:23', NULL),
(40, 'Prabesh', 'Khadka', 'Kdkapk@gmail.com', '2016-07-05 17:39:26', NULL),
(41, 'Prabesh', 'Khadka', 'Kdkapk@gmail.com', '2016-07-05 17:39:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
