-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 02, 2019 at 07:03 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Admin1', '16564017@nuv.ac.in', '1337x', NULL, NULL, NULL),
(2, 'yash karanke', 'll@ll.com', 'random', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(3, 'New Admin', 'admin@admin.com', '1234', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `ID` int(2) NOT NULL AUTO_INCREMENT,
  `coursename` varchar(200) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `coursename` (`coursename`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`ID`, `coursename`, `isActive`) VALUES
(32, 'info tech', NULL),
(33, 'DBA', NULL),
(34, 'CBA', NULL),
(35, 'DIT', NULL),
(36, 'CIT', NULL),
(37, 'Vetinary studies', NULL),
(38, 'CATERING', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education_information`
--

DROP TABLE IF EXISTS `education_information`;
CREATE TABLE IF NOT EXISTS `education_information` (
  `E_ID` int(3) NOT NULL AUTO_INCREMENT,
  `ID` int(9) NOT NULL,
  `ssc_board` varchar(700) NOT NULL,
  `ssc_school` varchar(700) NOT NULL,
  `ssc_per` varchar(300) NOT NULL,
  `ssc_year` varchar(500) NOT NULL,
  `ssc_attempt` varchar(700) NOT NULL,
  `hsc_board` varchar(700) NOT NULL,
  `hsc_school` varchar(700) NOT NULL,
  `hsc_per` varchar(300) NOT NULL,
  `hsc_year` varchar(500) NOT NULL,
  `hsc_attempt` varchar(7) NOT NULL,
  `grad_deg` varchar(700) DEFAULT NULL,
  `grad_board` varchar(700) DEFAULT NULL,
  `grad_school` varchar(700) DEFAULT NULL,
  `grad_per` varchar(300) DEFAULT NULL,
  `grad_year` varchar(500) DEFAULT NULL,
  `grad_attempt` varchar(700) DEFAULT NULL,
  `pgrad_deg` varchar(700) DEFAULT NULL,
  `pgrad_board` varchar(700) DEFAULT NULL,
  `pgrad_school` varchar(700) DEFAULT NULL,
  `pgrad_per` varchar(300) DEFAULT NULL,
  `pgrad_year` varchar(500) DEFAULT NULL,
  `pgrad_attempt` varchar(700) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`E_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `education_information`
--

INSERT INTO `education_information` (`E_ID`, `ID`, `ssc_board`, `ssc_school`, `ssc_per`, `ssc_year`, `ssc_attempt`, `hsc_board`, `hsc_school`, `hsc_per`, `hsc_year`, `hsc_attempt`, `grad_deg`, `grad_board`, `grad_school`, `grad_per`, `grad_year`, `grad_attempt`, `pgrad_deg`, `pgrad_board`, `pgrad_school`, `pgrad_per`, `pgrad_year`, `pgrad_attempt`, `isActive`) VALUES
(1, 2, 'TEST DATA', 'TEST DATA', 'a', '2010', 'First', 'TEST DATA', 'TEST DATA', 'a', '2010', 'First', 'bca', 'TEST DATA', 'TEST DATA', 'a', '2010', 'First', '', '', '', '', '', 'First', 1),
(2, 4, 'Dummy Data', 'Dummy Data', 'A', '2012', 'First', 'Dummy Data', 'Dummy Data', 'A', '2012', 'First', '', '', '', '', '', 'Select ', '', '', '', '', '', 'Select ', 1),
(3, 5, '', '', '', '', 'Select ', '', '', '', '', 'Select ', '', '', '', '', '', 'Select ', '', '', '', '', '', 'Select ', 1),
(4, 18, 'fgdfgd', 'gdfgdfg', '55', '2013', 'Second', 'nbb', 'ghgjh', '56', '2014', 'First', '', 'gjhg', 'jhkjh', '56', '2014', 'Select ', '', '', '', '', '', 'Select ', 1),
(5, 20, 'TAIBAH', 'TAIBAH', '3', '2012', 'First', 'BHNS', 'BHNS', '2', '2017', 'First', '', '', '', '', '', 'Select Attempt', '', '', '', '', '', 'Select Attempt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `education_information_be`
--

DROP TABLE IF EXISTS `education_information_be`;
CREATE TABLE IF NOT EXISTS `education_information_be` (
  `BE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` int(11) NOT NULL,
  `ssc_school` varchar(100) NOT NULL,
  `ssc_year` varchar(100) NOT NULL,
  `ssc_percentage` varchar(100) NOT NULL,
  `ssc_class` varchar(100) NOT NULL,
  `hsc_school` varchar(100) NOT NULL,
  `hsc_year` varchar(100) NOT NULL,
  `hsc_pcm` varchar(100) NOT NULL,
  `hsc_percentage` varchar(100) NOT NULL,
  `hsc_class` varchar(100) NOT NULL,
  `roll_no` varchar(100) NOT NULL,
  `physics` int(11) NOT NULL,
  `chemistry` int(11) NOT NULL,
  `maths` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `jee_main_rank` varchar(100) NOT NULL,
  `contact_01` varchar(100) NOT NULL,
  `contact_02` varchar(100) DEFAULT NULL,
  `acpc_no` varchar(100) DEFAULT NULL,
  `acpc_merit` varchar(100) DEFAULT NULL,
  `p1` varchar(100) NOT NULL,
  `p2` varchar(100) NOT NULL,
  `p3` varchar(100) NOT NULL,
  `p4` varchar(100) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL,
  PRIMARY KEY (`BE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `education_information_be`
--

INSERT INTO `education_information_be` (`BE_ID`, `ID`, `ssc_school`, `ssc_year`, `ssc_percentage`, `ssc_class`, `hsc_school`, `hsc_year`, `hsc_pcm`, `hsc_percentage`, `hsc_class`, `roll_no`, `physics`, `chemistry`, `maths`, `total`, `jee_main_rank`, `contact_01`, `contact_02`, `acpc_no`, `acpc_merit`, `p1`, `p2`, `p3`, `p4`, `isAvailable`) VALUES
(1, 1, 'acpcmeribe', '2016', '55', 'A', 'acpcmeribe', '201', '55', '55', 'A', 'ACPC1', 50, 50, 50, 150, 'JEE2', '9033655920', '', '', '', 'ME', 'EE', 'CSE', 'CE', 1),
(2, 20, 'TAIBAH', '2012-15', '2', 's4', 'BHSN', '2016-2017', '45', '2', 'S5-6', 'LCEAUO2/0456', 3, 3, 3, 9, '2', '3456666666', '666655555', '', '', 'EE', 'CE', 'ME', 'CSE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `selected_courses`
--

DROP TABLE IF EXISTS `selected_courses`;
CREATE TABLE IF NOT EXISTS `selected_courses` (
  `S_ID` int(2) NOT NULL AUTO_INCREMENT,
  `ID` int(30) NOT NULL,
  `coursename` varchar(200) NOT NULL,
  `isAvailable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`S_ID`),
  KEY `bba_index_coursename` (`coursename`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `selected_courses`
--

INSERT INTO `selected_courses` (`S_ID`, `ID`, `coursename`, `isAvailable`) VALUES
(1, 2, 'MHRM', 1),
(2, 0, 'BCA', 1),
(3, 0, 'BCA', 1),
(4, 2, 'MMM', 1),
(5, 2, 'MscIT', 1),
(6, 2, 'MscIT', 1),
(7, 4, 'MHRM', 1),
(8, 1, 'MBA', 1),
(9, 1, 'MBA', 1),
(10, 1, 'MBA', 1),
(11, 1, 'MBA', 1),
(12, 1, 'MBA', 1),
(13, 1, 'BBA', 1),
(14, 1, 'BCA', 1),
(15, 1, 'MHRM', 1),
(16, 1, 'MXA', 1),
(17, 1, 'NEW', 1),
(18, 1, 'MMM', 1),
(19, 15, 'MAA', 1),
(20, 12, 'MAA', 1),
(21, 12, 'BBA', 1),
(22, 18, 'BBA', 1),
(23, 18, 'MAA', 1),
(24, 18, 'TTT', 1),
(25, 1, 'B.E', 1),
(26, 2, 'MBA', 1),
(27, 12, 'MBA', 1),
(28, 12, 'MCA', 1),
(29, 20, 'CATERING', 1),
(30, 20, 'B.E', 1),
(31, 20, 'Vetinary studies', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

DROP TABLE IF EXISTS `student_data`;
CREATE TABLE IF NOT EXISTS `student_data` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `FULLNAME` varchar(70) DEFAULT NULL,
  `GENDER` varchar(8) DEFAULT NULL,
  `BGROUP` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `CITY` varchar(200) DEFAULT NULL,
  `STATE` varchar(500) DEFAULT NULL,
  `ZIP` varchar(100) DEFAULT NULL,
  `PNUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(60) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  KEY `stud_name_index` (`FULLNAME`),
  KEY `gender_stud` (`GENDER`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`ID`, `FULLNAME`, `GENDER`, `BGROUP`, `ADDRESS`, `CITY`, `STATE`, `ZIP`, `PNUMBER`, `EMAIL`, `PASSWORD`, `register_date`, `dob`, `profile_image`, `isActive`) VALUES
(17, 'Yash Karanke', 'Male', '', 'VADODARA', 'VADODARA', 'VADODARA', '390001', '9714574465', 'a@a.com', '74b87337454200d4d33f80c4663dc5e5', '2017-10-25', '11-10-2017', 'profile_images/Shane.png', 1),
(20, 'Agaba Milton', 'Male', 'Catholic', 'kamapala, Kisugu, Makindye division', 'david', '0777707079', 'weekend', '789999996', 'agaba@mail.com', 'b8d42ed85b854e377227c4e8b3c3bbbc', '2019-09-27', '02-09-1980', 'profile_images/20068741.jpg', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
