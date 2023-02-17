-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 07:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdk`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_addpost`
--

CREATE TABLE `blood_addpost` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(200) NOT NULL,
  `image` varchar(500) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_addpost`
--

INSERT INTO `blood_addpost` (`id`, `name`, `date`, `time`, `image`, `title`) VALUES
(17, '', '29/12/2021', '22:48:38', 'images (2).jpeg', 'Blood donation campaign'),
(18, '', '03/01/2022', '15:07:32', 'images (2).jpeg', 'Blood donation campaign');

-- --------------------------------------------------------

--
-- Table structure for table `blood_districthead`
--

CREATE TABLE `blood_districthead` (
  `id` bigint(20) NOT NULL,
  `dis_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `bdk_locality` varchar(50) NOT NULL,
  `office_name` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_districthead`
--

INSERT INTO `blood_districthead` (`id`, `dis_id`, `username`, `password`, `district`, `bdk_locality`, `office_name`, `place`, `pincode`, `phone`, `type`) VALUES
(1, 1, 'Anju', 'anju', 'Thrissur', 'Thrissur', 'PHC', 'kodugallur', '678345', '9562058113', 'DISTRICT HEAD'),
(2, 2, 'aa', 'anju', 'thrissur', 'kasargode', 'gg', 'thrissur', '680751', '9188172795', 'DISTRICT HEAD');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `donation_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `blood_grp` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `available` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `vid` int(11) NOT NULL,
  `bdklocality` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `vname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`id`, `name`, `email`, `phone`, `place`, `weight`, `donation_date`, `dob`, `blood_grp`, `district`, `available`, `gender`, `vid`, `bdklocality`, `vname`, `status`, `date`, `time`) VALUES
(37, 'anju', '', '9986578382', 'Thrissur ', '', '', '45', 'A+', '', '', 'Female', 55, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `blood_hospitals`
--

CREATE TABLE `blood_hospitals` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(60) NOT NULL,
  `district` varchar(20) NOT NULL,
  `hospital_type` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `license` varchar(100) NOT NULL,
  `approval` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_hospitals`
--

INSERT INTO `blood_hospitals` (`id`, `name`, `address`, `district`, `hospital_type`, `phone`, `username`, `password`, `license`, `approval`, `type`) VALUES
(1, 'aswini', 'thrissur', 'Thrissur', 'aa', '9846334135', 'anju', 'ammu', 'hghgh', 'approved', 'BLOOD BANK'),
(2, 'amala', 'hshss', 'Thrissur', 'BLOOD BANK', '9986578382', 'anu', 'anu', 'hgj', 'approved', 'BLOOD BANK'),
(3, 'amala', 'gssh', 'Thrissur', 'BLOOD BANK', '9986578382', 'amala', 'amala', '', 'not approved', 'BLOOD BANK'),
(4, 'St james', 'afhsbsnsks', 'Kozhikode', 'BLOOD BANK', '987656453', 'stjames', 'stjames', '', 'not approved', 'BLOOD BANK'),
(5, 'g hh h', ' n j bjini', 'Thrissur', 'BLOOD BANK', '7559939170', 'aksha', '46678', '', 'not approved', 'BLOOD BANK'),
(6, 'ghhhhhnch', 'ghdv', 'Thrissur', 'BLOOD BANK', '7559939270', 'aaa', '111', '', 'not approved', 'BLOOD BANK'),
(7, 'j&j hospital', 'Kuthattukulam p o kottayam', 'Kottayam', 'BLOOD BANK', '0484567823', 'jandj', 'jandj', '', 'not approved', 'BLOOD BANK'),
(8, 'Rajagiri', 'Aluva', 'Ernakulam', 'BLOOD BANK', '8976453627', 'rajagiri', 'rajagiri', '', 'not approved', 'BLOOD BANK'),
(9, 'Christ', 'Cheruthoni', 'Malapuram', 'BLOOD BANK', '9876453637', 'christ', 'christ', '', 'not approved', 'BLOOD BANK'),
(10, 'Abcd', 'ghjishaj', 'Kasargod', 'BLOOD BANK', '8976543425', 'abcd', 'abcd', '', 'not approved', 'BLOOD BANK'),
(11, 'Lifeline', 'Kacherithazham p.o konnathadi', 'Kottayam', 'BLOOD BANK', '0484234567', 'lifeline', 'lifeline', '', 'not approved', 'BLOOD BANK'),
(12, 'Nirmala', 'Muvattupuzha', 'Kozhikode', 'BLOOD BANK', '0484264567', 'nirmala', 'nirmala', '', 'not approved', 'BLOOD BANK');

-- --------------------------------------------------------

--
-- Table structure for table `blood_recipient`
--

CREATE TABLE `blood_recipient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cases` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `blood_grp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `vid` int(11) NOT NULL,
  `vname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bdklocality` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blood_recipient`
--

INSERT INTO `blood_recipient` (`id`, `name`, `email`, `phone`, `place`, `unit`, `cases`, `blood_grp`, `district`, `gender`, `vid`, `vname`, `bdklocality`, `status`, `date`, `time`) VALUES
(4, 'aneesha', 'aneeshata554@gmail.com', '7188172795', 'angamaly', '350 ml', 'surgery', 'A+', 'Thrissur', 'Female', 4, 'Anju Tomas', 'Nadathara', 'Blood Recieved', '19-11-2022', '13:59:28'),
(5, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `blood_records`
--

CREATE TABLE `blood_records` (
  `id` int(11) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `dis_id` int(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `hospital` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `blood_grp` varchar(50) NOT NULL,
  `recname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_records`
--

INSERT INTO `blood_records` (`id`, `dname`, `dis_id`, `district`, `hospital`, `unit`, `blood_grp`, `recname`) VALUES
(15, 'aneesha', 1, 'Thrissur', 'aswini', '450 ml', 'A+', 'anju');

-- --------------------------------------------------------

--
-- Table structure for table `blood_requests`
--

CREATE TABLE `blood_requests` (
  `id` int(11) NOT NULL,
  `user_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `student_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `blood_grp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blood_requests`
--

INSERT INTO `blood_requests` (`id`, `user_id`, `student_id`, `name`, `phone`, `place`, `blood_grp`, `status`) VALUES
(37, '54', '55', 'anu', '9986578382', 'Thrissur ', 'A+', 'Accept');

-- --------------------------------------------------------

--
-- Table structure for table `blood_requirements`
--

CREATE TABLE `blood_requirements` (
  `id` int(11) NOT NULL,
  `patient` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `patientname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `emergency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cases` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `required_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hosname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hosphn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hosplace` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `second` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blood_requirements`
--

INSERT INTO `blood_requirements` (`id`, `patient`, `patientname`, `phone`, `blood_group`, `emergency`, `date`, `time`, `unit`, `cases`, `required_date`, `hosname`, `hosphn`, `hosplace`, `status`, `second`, `gender`) VALUES
(19, '35', 'Gopikrishnan', '9856326598', 'A+', 'yes', '21-12-2021', '13:04', '350 ml', 'surgery', '31/12/2021', 'Karthyani Thrissur', '048709876', 'Thrissur', 'Primary slot taken', 'Secondary slot taken', 'Male'),
(21, '37', 'Aneesha', '8965239856', 'O+', 'yes', '03-01-2022', '19:46', '350 ml', 'bddn', '16/01/2022', 'Karthyani', '9188172795', 'thrissur', 'Primary slot taken', 'Secondary slot taken', 'Female'),
(22, '37', 'Ammu', '8523698523', 'A+', 'yes', '03-01-2022', '19:48', '450 ml', 'bsnsns', '29/01/2022', 'Aswini', '8590134552', 'Thrissur', 'Primary slot taken', 'Secondary slot taken', 'Female'),
(23, '41', 'anu', '9986578384', 'A+', 'no', '08-11-2022', '10:36', '1', 'gsgsh', '25/11/2022', 'amala', '99865783254', 'Thrissur ', '', '', 'Female'),
(24, '42', 'Anu', '9658321456', 'O-', 'yes', '12-11-2022', '13:36', '2', 'accident ', '12/11/2022', 'St James ', '9658326954', 'Kottayam', '', '', 'Female'),
(25, '43', 'add', '9400461770', 'O+', 'yes', '17-11-2022', '15:23', '1', 'accident\n', '08/11/2022', 'Akshay hospital ', '86880898', 'fffg', 'Primary slot taken', 'Secondary slot taken', 'Male'),
(32, '48', 'Adhi', '9658326955', 'B+', 'yes', '19-11-2022', '16:21', '2', 'Surgery', '15/12/2022', 'SANJOE Hospital', '8546392615', 'Perumbavoor', 'Primary slot taken', 'Secondary slot taken', 'Male'),
(34, '50', 'Haritha', '9565262819', 'O+', 'yes', '21-11-2022', '10:50', '2', 'surgery', '21/11/2022', 'st Augustine ', '0484653829', 'Kottapady', '', '', 'Male'),
(35, '51', 'Ammu', '9658362456', 'O+', 'yes', '21-11-2022', '11:04', '2', 'Accident', '05/12/2022', 'Djoy', '04842569739', 'Iringol', '', '', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `blood_slot`
--

CREATE TABLE `blood_slot` (
  `id` int(11) NOT NULL,
  `did` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dphone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dbloodgrp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `patient` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pbloodgrp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pphone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `currentDate` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blood_slot`
--

INSERT INTO `blood_slot` (`id`, `did`, `dname`, `dphone`, `dbloodgrp`, `patient`, `pbloodgrp`, `pphone`, `status`, `currentDate`) VALUES
(23, '37', 'aneesha', '9188172795', 'A+', '35', 'A+', '9856326598', 'Secondary', '03-01-2022'),
(24, '37', 'aneesha', '9188172795', 'A+', '35', 'A+', '9856326598', 'Secondary', '03-01-2022'),
(25, '37', 'aneesha', '9188172795', 'A+', '35', 'A+', '9856326598', 'Secondary', '03-01-2022'),
(26, '37', 'aneesha', '9188172795', 'A+', '35', 'A+', '9856326598', '', '03-01-2022'),
(27, '37', 'aneesha', '9188172795', 'A+', '37', 'A+', '8523698523', 'Secondary', '03-01-2022'),
(28, '37', 'aneesha', '9188172795', 'A+', '37', 'A+', '8523698523', 'Secondary', '03-01-2022'),
(29, '37', 'aneesha', '9188172795', 'A+', '37', 'A+', '8523698523', '', '03-01-2022'),
(30, '37', 'aneesha', '9188172795', 'A+', '37', 'A+', '8523698523', '', '03-01-2022'),
(31, '37', 'aneesha', '9188172795', 'A+', '35', 'A+', '9856326598', '', '03-01-2022'),
(32, '39', 'gopi', '8590134552', 'A+', '37', 'A+', '8523698523', '', '03-01-2022'),
(33, '37', 'aneesha', '9188172795', 'A+', '37', 'A+', '8523698523', '', '03-01-2022'),
(34, '37', 'aneesha', '9188172795', 'A+', '35', 'A+', '9856326598', '', '07-11-2022'),
(35, '41', 'reshma', '9986578385', 'A+', '35', 'A+', '9856326598', '', '08-11-2022'),
(36, '42', 'Aswani', '9865324596', 'O+', '37', 'O+', '8965239856', '', '12-11-2022'),
(37, '44', 'Ann', '9658352546', 'O+', '37', 'O+', '8965239856', '', '19-11-2022'),
(38, '44', 'Ann', '9658352546', 'O+', '43', 'O+', '9400461770', 'Secondary', '19-11-2022'),
(39, '44', 'Ann', '9658352546', 'O+', '43', 'O+', '9400461770', 'Secondary', '19-11-2022'),
(40, '44', 'Ann', '9658352546', 'O+', '37', 'O+', '8965239856', '', '19-11-2022'),
(41, '44', 'Ann', '9658352546', 'O+', '43', 'O+', '9400461770', 'Secondary', '19-11-2022'),
(42, '44', 'Ann', '9658352546', 'O+', '37', 'O+', '8965239856', '', '19-11-2022'),
(43, '44', 'Ann', '9658352546', 'O+', '37', 'O+', '8965239856', '', '19-11-2022'),
(44, '44', 'Ann', '9658352546', 'O+', '43', 'O+', '9400461770', 'Secondary', '19-11-2022'),
(45, '44', 'Ann', '9658352546', 'O+', '37', 'O+', '8965239856', '', '19-11-2022'),
(46, '44', 'Ann', '9658352546', 'O+', '43', 'O+', '9400461770', 'Secondary', '19-11-2022'),
(47, '48', 'Vishnu', '9651326495', 'B+', '48', 'B+', '9658326955', 'Secondary', '19-11-2022'),
(48, '48', 'Vishnu', '9651326495', 'B+', '48', 'B+', '9658326955', 'Secondary', '19-11-2022'),
(49, '48', 'Vishnu', '9651326495', 'B+', '48', 'B+', '9658326955', 'Secondary', '19-11-2022'),
(50, '49', 'Amala', '7025997654', 'O+', '43', 'O+', '9400461770', 'Secondary', '21-11-2022');

-- --------------------------------------------------------

--
-- Table structure for table `blood_student`
--

CREATE TABLE `blood_student` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lastddate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blood_student`
--

INSERT INTO `blood_student` (`user_id`, `name`, `gender`, `blood_group`, `phone`, `place`, `username`, `password`, `lastddate`, `type`, `dob`, `district`, `weight`) VALUES
(54, 'anu', 'Female', 'A+', '9986578382', 'Thrissur ', 'anu', 'anu', '15/09/2022', 'A PERSON', '34', 'Thrissur ', ''),
(55, 'anju', 'Female', 'A+', '9986578382', 'Thrissur ', 'anju', 'anju', '22/09/2022', 'A PERSON', '45', 'Thrissur ', '');

-- --------------------------------------------------------

--
-- Table structure for table `blood_users`
--

CREATE TABLE `blood_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blood_users`
--

INSERT INTO `blood_users` (`user_id`, `username`, `password`, `name`, `gender`, `phone`, `place`) VALUES
(2, 'mashood', 'mashood', 'Mohammed Mashood', 'Male', '9567944371', 'Vattamkulam'),
(3, 'thavanish@123', 'thavanish@123', 'sandra', 'Female', '9539126997', 'Avittathur'),
(4, 'thavanish12', 'thavanish12', 'steffy', 'Female', '9539126997', 'Avittathur');

-- --------------------------------------------------------

--
-- Table structure for table `blood_volunteers`
--

CREATE TABLE `blood_volunteers` (
  `id` bigint(20) NOT NULL,
  `dis_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `bdk_locality` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `bloodgrp` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_volunteers`
--

INSERT INTO `blood_volunteers` (`id`, `dis_id`, `name`, `email`, `phone`, `bdk_locality`, `dob`, `bloodgrp`, `place`, `username`, `password`, `type`) VALUES
(4, 1, 'Anju Tomas', 'anjuthomas9037@gmail.com', '9188172795', 'Nadathara', '31/07/2021', 'O+', 'kozhukkully', 'ann', 'ann', 'VOLUNTEER');

-- --------------------------------------------------------

--
-- Table structure for table `blood_wishlist`
--

CREATE TABLE `blood_wishlist` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `student_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `admission` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sem` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blood_wishlist`
--

INSERT INTO `blood_wishlist` (`id`, `username`, `student_id`, `name`, `admission`, `gender`, `blood_group`, `course`, `sem`, `phone`, `place`) VALUES
(6, 'mashood', '5', 'Mohammed Mashood', '3007', 'Male', 'B+', 'BCA', '5', '9567944372', 'Edappal'),
(11, 'mashood', '8', 'Fathima Lamya', '3366', 'Female', 'O+', 'B.Sc CS', '1', '7012726482', 'Edappal'),
(16, 'mashood', '12', 'steffy', '22514', 'Female', 'B+', 'BCA', '6', '9539126997', 'Avittathur'),
(19, 'thavanish12', '12', 'steffy', '22514', 'Female', 'B+', 'BCA', '6', '9539126997', 'Avittathur');

-- --------------------------------------------------------

--
-- Table structure for table `blood_wpost`
--

CREATE TABLE `blood_wpost` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `post` varchar(300) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_wpost`
--

INSERT INTO `blood_wpost` (`id`, `name`, `date`, `time`, `post`, `title`) VALUES
(1, 'anju', '22/12/2021', '15:50:01', 'The need for blood is increasing throughout the world (someone needs blood every two seconds) and we need to motivate people to donate blood at least once in life to save the lives of people in need. Science has now proved that giving blood is a healthy activity and the amount of blood we give is re', 'Donate your blood and make a difference'),
(2, 'Aswathy', '30/12/2021', '11:44 AM', 'ഒരു വ്യക്തിയുടെ ശരീരത്തില്‍ അഞ്ച് മുതല്‍ ആറ് ലിറ്റര്‍ രക്തമാണുണ്ടാകുക. ഇവ കൊടുക്കുന്തോറും കൂടുക മാത്രമേ ചെയ്യുകയുള്ളു....', 'രക്തദാനം മഹാദാനം..');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender_id`, `reciever_id`, `message`) VALUES
(11, 1, 4, 'hi'),
(12, 4, 1, 'hgfghjk'),
(13, 4, 1, 'haloo'),
(14, 1, 4, 'hi dear'),
(15, 1, 4, 'hhhh'),
(16, 1, 4, 'gghh'),
(17, 1, 4, 'hi'),
(18, 1, 4, 'hai'),
(19, 1, 4, 'hai'),
(20, 1, 4, 'hai'),
(21, 1, 4, 'halp'),
(22, 4, 1, 'zjdhgsdh'),
(23, 1, 4, 'hi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_addpost`
--
ALTER TABLE `blood_addpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_districthead`
--
ALTER TABLE `blood_districthead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_hospitals`
--
ALTER TABLE `blood_hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_recipient`
--
ALTER TABLE `blood_recipient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_records`
--
ALTER TABLE `blood_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_requests`
--
ALTER TABLE `blood_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_requirements`
--
ALTER TABLE `blood_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_slot`
--
ALTER TABLE `blood_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_student`
--
ALTER TABLE `blood_student`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `blood_users`
--
ALTER TABLE `blood_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `blood_volunteers`
--
ALTER TABLE `blood_volunteers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_wishlist`
--
ALTER TABLE `blood_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_wpost`
--
ALTER TABLE `blood_wpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_addpost`
--
ALTER TABLE `blood_addpost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `blood_districthead`
--
ALTER TABLE `blood_districthead`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `blood_hospitals`
--
ALTER TABLE `blood_hospitals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blood_recipient`
--
ALTER TABLE `blood_recipient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blood_records`
--
ALTER TABLE `blood_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blood_requests`
--
ALTER TABLE `blood_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `blood_requirements`
--
ALTER TABLE `blood_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `blood_slot`
--
ALTER TABLE `blood_slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `blood_student`
--
ALTER TABLE `blood_student`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `blood_users`
--
ALTER TABLE `blood_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blood_volunteers`
--
ALTER TABLE `blood_volunteers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blood_wishlist`
--
ALTER TABLE `blood_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `blood_wpost`
--
ALTER TABLE `blood_wpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
