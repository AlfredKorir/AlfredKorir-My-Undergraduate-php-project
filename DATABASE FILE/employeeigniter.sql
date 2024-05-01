-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2024 at 11:49 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeeigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `country_tbl`
--

CREATE TABLE `country_tbl` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_tbl`
--

INSERT INTO `country_tbl` (`id`, `country_code`, `country_name`) VALUES
(1, 'KE', 'Mombasa'),
(2, 'KE', 'Kwale'),
(3, 'KE', 'Kilifi'),
(4, 'KE', 'Tana River'),
(5, 'KE', 'Lamu'),
(6, 'KE', 'Taita-Taveta'),
(7, 'KE', 'Garissa'),
(8, 'KE', 'Wajir'),
(9, 'KE', 'Mandera'),
(10, 'KE', 'Marsabit'),
(11, 'KE', 'Isiolo'),
(12, 'KE', 'Meru'),
(13, 'KE', 'Tharaka-Nithi'),
(14, 'KE', 'Embu'),
(15, 'KE', 'Kitui'),
(16, 'KE', 'Machakos'),
(17, 'KE', 'Makueni'),
(18, 'KE', 'Nyandarua'),
(19, 'KE', 'Nyeri'),
(20, 'KE', 'Kirinyaga'),
(21, 'KE', 'Muranga'),
(22, 'KE', 'Kiambu'),
(23, 'KE', 'Turkana'),
(24, 'KE', 'West Pokot'),
(25, 'KE', 'Samburu'),
(26, 'KE', 'Trans-Nzoia'),
(27, 'KE', 'Uasin Gishu'),
(28, 'KE', 'Elgeyo-Marakwet'),
(29, 'KE', 'Nandi'),
(30, 'KE', 'Baringo'),
(31, 'KE', 'Laikipia'),
(32, 'KE', 'Nakuru'),
(33, 'KE', 'Narok'),
(34, 'KE', 'Kajiado'),
(35, 'KE', 'Kericho'),
(36, 'KE', 'Bomet'),
(37, 'KE', 'Kakamega'),
(38, 'KE', 'Vihiga'),
(39, 'KE', 'Bungoma'),
(40, 'KE', 'Busia'),
(41, 'KE', 'Siaya'),
(42, 'KE', 'Kisumu'),
(43, 'KE', 'Homa Bay'),
(44, 'KE', 'Migori'),
(45, 'KE', 'Kisii'),
(46, 'KE', 'Nyamira'),
(47, 'KE', 'Nairobi');

-- --------------------------------------------------------

--
-- Table structure for table `department_tbl`
--

CREATE TABLE `department_tbl` (
  `id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_tbl`
--

INSERT INTO `department_tbl` (`id`, `department_name`, `added_on`) VALUES
(1, 'Human Resources', '2021-05-27 15:34:10'),
(2, 'Back-End Development', '2021-05-27 15:22:55'),
(3, 'Designing', '2019-10-04 05:25:15'),
(4, 'Front-End Development', '2021-05-27 13:53:48'),
(5, 'Marketing', '2021-05-27 16:48:45'),
(6, 'Finance', '2021-05-27 17:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `leave_tbl`
--

CREATE TABLE `leave_tbl` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `leave_reason` varchar(90) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `updated_on` date NOT NULL,
  `applied_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE `login_tbl` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `usertype` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tbl`
--

INSERT INTO `login_tbl` (`id`, `username`, `password`, `usertype`, `status`) VALUES
(1, 'admin', 'password0101', 1, 1),
(12353, 'geff@gmail.com', '12345', 2, 1),
(12354, 'barack@kenya.com', '0788889999', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_tbl`
--

CREATE TABLE `salary_tbl` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `basic_salary` bigint(20) NOT NULL,
  `allowance` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL,
  `added_by` int(11) NOT NULL,
  `updated_on` date NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary_tbl`
--

INSERT INTO `salary_tbl` (`id`, `staff_id`, `basic_salary`, `allowance`, `total`, `added_by`, `updated_on`, `added_on`) VALUES
(13, 12353, 90000, 45000, 135000, 1, '0000-00-00', '2024-04-05 09:39:21'),
(14, 12354, 200000, 40000, 240000, 1, '0000-00-00', '2024-04-05 09:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `staff_tbl`
--

CREATE TABLE `staff_tbl` (
  `id` int(11) NOT NULL,
  `staff_name` varchar(150) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `dob` date NOT NULL,
  `doj` date NOT NULL,
  `address` text,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `department_id` int(11) NOT NULL,
  `pic` varchar(150) NOT NULL DEFAULT 'default-pic.jpg',
  `added_by` int(11) NOT NULL,
  `updated_on` date NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_tbl`
--

INSERT INTO `staff_tbl` (`id`, `staff_name`, `gender`, `email`, `mobile`, `dob`, `doj`, `address`, `city`, `state`, `country`, `department_id`, `pic`, `added_by`, `updated_on`, `added_on`) VALUES
(12353, 'Geff', 'Male', 'geff@gmail.com', 711112222, '1990-01-01', '2024-04-05', '1928 kutus', 'Kerugoya', 'kutus', 'Kirinyaga', 1, 'alfred.jpeg', 1, '0000-00-00', '2024-04-05 09:39:02'),
(12354, 'Barack', 'Male', 'barack@kenya.com', 788889999, '1963-01-01', '2024-04-04', '0101 Karen', 'Karen', 'Karen ndogo', 'Nairobi', 6, 'obama1.jpeg', 1, '0000-00-00', '2024-04-05 09:41:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_tbl`
--
ALTER TABLE `department_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_tbl`
--
ALTER TABLE `leave_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_tbl`
--
ALTER TABLE `login_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_tbl`
--
ALTER TABLE `salary_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_tbl`
--
ALTER TABLE `staff_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department_tbl`
--
ALTER TABLE `department_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leave_tbl`
--
ALTER TABLE `leave_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login_tbl`
--
ALTER TABLE `login_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12355;

--
-- AUTO_INCREMENT for table `salary_tbl`
--
ALTER TABLE `salary_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `staff_tbl`
--
ALTER TABLE `staff_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12355;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
