-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 01:24 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vmed`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '30-10-2022 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `doctorName`, `address`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'P. Sathiyalingam', 'Vavuniya', 242224674, 'sathyalingam@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-10-30 18:16:52', '2023-04-25 10:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, NULL, 'gfdgdf', 0x3a3a3100000000000000000000000000, '2022-11-04 01:02:16', NULL, 0),
(24, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:23:18', '06-11-2022 05:53:40 PM', 1),
(26, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:17:33', '06-11-2022 06:50:28 PM', 1),
(27, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-02-21 17:59:40', NULL, 1),
(28, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-02-21 21:14:31', NULL, 1),
(29, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-02-21 22:23:53', NULL, 1),
(30, NULL, 'doc@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-21 22:27:39', NULL, 0),
(31, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-02-22 05:01:44', NULL, 0),
(32, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-02-22 05:01:53', '22-02-2023 10:32:01 AM', 1),
(33, NULL, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-22 05:06:04', NULL, 0),
(34, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-22 05:06:47', NULL, 1),
(35, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-22 05:30:39', NULL, 1),
(36, NULL, 'sthyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-22 08:03:19', NULL, 0),
(37, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-22 08:03:47', NULL, 1),
(38, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-22 09:15:51', NULL, 1),
(39, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-23 05:48:38', NULL, 1),
(40, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-23 05:59:49', NULL, 1),
(41, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-23 06:02:31', NULL, 1),
(42, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-23 06:06:28', NULL, 1),
(43, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-23 18:53:41', '24-02-2023 12:27:49 AM', 1),
(44, 4, 'ss@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-23 18:57:59', '24-02-2023 12:28:13 AM', 1),
(45, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-23 20:42:13', NULL, 1),
(46, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-24 07:58:57', NULL, 1),
(47, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-24 08:25:16', NULL, 1),
(48, NULL, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-02-24 08:30:04', NULL, 0),
(49, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-24 08:37:43', NULL, 1),
(50, NULL, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-03-11 06:20:51', NULL, 0),
(51, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-03-11 06:21:05', NULL, 1),
(52, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-03-11 14:53:43', NULL, 1),
(53, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-03-15 17:04:01', NULL, 1),
(54, NULL, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-04-25 10:55:40', NULL, 0),
(55, NULL, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-04-25 10:55:57', NULL, 0),
(56, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-04-25 10:56:13', NULL, 1),
(57, NULL, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-04-25 11:17:08', NULL, 0),
(58, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-04-25 11:17:22', '25-04-2023 04:47:26 PM', 1),
(59, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-04-25 14:41:15', '25-04-2023 08:11:19 PM', 1),
(60, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-04-25 14:56:30', '25-04-2023 08:26:34 PM', 1),
(61, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-04-25 15:13:38', '25-04-2023 11:21:14 PM', 1),
(62, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-04-25 17:20:28', NULL, 0),
(63, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-04-26 07:03:42', '26-04-2023 01:08:02 PM', 1),
(64, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-04-26 07:41:49', NULL, 1),
(65, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-04-26 08:25:19', NULL, 1),
(66, 1, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-04-26 10:41:46', '26-04-2023 04:32:11 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `email`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'anujk30@test.com', 'This is for testing purposes.   This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.', '2022-10-30 16:52:03', NULL, NULL, NULL),
(2, 'ak@gmail.com', 'This is for testing', '2022-11-06 13:13:41', 'Contact the patient', '2022-11-06 13:13:57', 1),
(3, 'nirashawanigasekar@gmail.com', 'Hi', '2023-02-22 09:44:01', 's', '2023-02-22 09:45:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` text DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `GeneralExamination` text DEFAULT NULL,
  `Diagnosis` text DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `GeneralExamination`, `Diagnosis`, `MedicalPres`, `CreationDate`) VALUES
(5, '2018/ICT/1', '120', '100', '65', '40', NULL, 'fever', 'panadol', '2023-02-21 19:03:33'),
(7, '2018/ICT/64', '120', '100', '75', '40', NULL, 'fever', 'Panadol', '2023-02-21 22:24:24'),
(8, '2018/ICT/1', '120', '100', '65', '50', NULL, 'fever', 'Panadol', '2023-02-22 05:08:56'),
(9, '2018/ICT/1', '120', '100', '65', '40', NULL, 'fever', 'panadol', '2023-02-23 06:08:08'),
(16, '2018/ICT/64', '110', '90', '75', '45', 'fever', 'fever', 'paracetamol ', '2023-03-11 18:16:16'),
(17, '2018/ICT/64', '120', '100', '65', '50', 'fever', 'fever', 'panadol', '2023-03-11 18:21:16'),
(18, '2018/ICT/64', '120', '100', '75', '45', 'fever', 'fever', 'pn', '2023-03-11 18:24:12'),
(19, '2018/ICT/64', '120', '200', '75', '50', 'fever', 'fever', 'paracetamol ', '2023-03-15 17:20:15'),
(20, '2018/ICT/64', '100', '100', '65', '70', 'fever', 'fever', 'pp', '2023-03-15 17:55:39'),
(21, '2018/ICT/64', '120', '100', '65', '70', 'fever', 'fever', 'ppp', '2023-03-15 18:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:14:11', NULL, 1),
(2, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:21:20', '06-11-2022 05:53:00 PM', 1),
(3, NULL, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:43', NULL, 0),
(4, 2, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:58', '06-11-2022 06:50:46 PM', 1),
(5, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2023-02-21 17:03:28', NULL, 1),
(6, 2018, 'amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-21 17:27:28', '21-02-2023 11:25:03 PM', 1),
(7, 2018, 'amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-21 17:55:17', NULL, 1),
(8, 2, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-21 17:58:12', NULL, 1),
(9, 2018, 'amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-21 19:38:44', '22-02-2023 03:04:09 AM', 1),
(10, NULL, 'johndoe12@test.com/', 0x3a3a3100000000000000000000000000, '2023-02-21 21:13:06', NULL, 0),
(11, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2023-02-21 21:13:30', NULL, 1),
(12, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2023-02-21 21:39:26', NULL, 1),
(13, 2018, 'amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-21 21:53:50', NULL, 1),
(14, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2023-02-21 21:58:24', '26-04-2023 12:56:27 PM', 1),
(15, 2018, 'amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-21 22:04:25', NULL, 1),
(16, NULL, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-21 22:21:49', NULL, 0),
(17, 2018, 'nirashawanigasekara@gmail.c', 0x3a3a3100000000000000000000000000, '2023-02-21 22:22:46', NULL, 1),
(18, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-21 22:24:52', NULL, 1),
(19, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-22 05:12:02', NULL, 1),
(20, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-22 08:52:27', NULL, 1),
(21, 2018, 'amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-22 08:53:27', NULL, 1),
(22, 2018, 'kamal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-22 09:15:19', NULL, 1),
(23, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-22 09:18:33', NULL, 1),
(24, 2018, 'amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-22 09:19:41', NULL, 1),
(25, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-23 06:24:12', NULL, 1),
(26, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-02-23 19:01:41', NULL, 1),
(27, 2018, 'amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-23 19:01:57', NULL, 1),
(28, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-02-23 19:04:17', NULL, 1),
(29, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-02-23 19:56:25', NULL, 1),
(30, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-02-23 19:57:02', NULL, 1),
(31, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-02-23 19:57:20', NULL, 1),
(32, NULL, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-02-24 08:30:47', NULL, 0),
(33, NULL, 'wd', 0x3a3a3100000000000000000000000000, '2023-02-24 08:31:45', NULL, 0),
(34, NULL, 'sathyalingam@test.com', 0x3a3a3100000000000000000000000000, '2023-02-24 08:32:29', NULL, 0),
(35, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-02-26 14:59:52', NULL, 1),
(36, NULL, '2018/ICT/64', 0x3a3a3100000000000000000000000000, '2023-02-26 17:38:20', NULL, 0),
(37, NULL, '2018/ICT/64', 0x3a3a3100000000000000000000000000, '2023-02-26 17:39:17', NULL, 0),
(38, NULL, '2018/ICT/64', 0x3a3a3100000000000000000000000000, '2023-02-26 17:40:17', NULL, 0),
(39, NULL, '2018/ICT/64', 0x3a3a3100000000000000000000000000, '2023-02-26 17:46:39', NULL, 0),
(40, NULL, '2018/ICT/64', 0x3a3a3100000000000000000000000000, '2023-02-26 17:46:48', NULL, 0),
(41, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-02-27 16:44:52', NULL, 0),
(42, NULL, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-27 17:29:32', NULL, 0),
(43, NULL, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-27 17:31:06', NULL, 0),
(44, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-11 06:17:10', NULL, 1),
(45, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-11 10:16:57', NULL, 1),
(46, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-11 18:09:38', NULL, 1),
(47, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-03-15 18:09:07', NULL, 1),
(48, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-25 10:38:02', NULL, 1),
(49, 2018, 'sawbagya@gamil.com', 0x3a3a3100000000000000000000000000, '2023-04-25 10:39:51', NULL, 1),
(50, NULL, '	 Amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-25 10:41:21', NULL, 0),
(51, NULL, '	 Amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-25 10:41:33', NULL, 0),
(52, NULL, ' Amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-25 10:41:49', NULL, 0),
(53, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-25 10:42:37', NULL, 1),
(54, 2018, 'Amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-25 10:45:24', NULL, 1),
(55, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-25 11:16:50', NULL, 1),
(56, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-04-25 11:18:11', NULL, 0),
(57, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-25 14:34:23', NULL, 1),
(58, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-25 14:42:56', '25-04-2023 08:14:23 PM', 1),
(59, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-25 14:45:48', '25-04-2023 08:15:52 PM', 1),
(60, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-25 14:46:37', '25-04-2023 08:16:40 PM', 1),
(61, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-25 14:55:47', '25-04-2023 08:25:50 PM', 1),
(62, 2018, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-25 15:13:27', NULL, 1),
(63, NULL, 'nirashawanigasekara@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-25 17:03:56', NULL, 0),
(64, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-26 07:01:23', NULL, 1),
(65, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-26 07:03:28', NULL, 1),
(66, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-26 07:07:07', NULL, 1),
(67, NULL, 'chathu@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-26 07:17:43', NULL, 0),
(68, NULL, 'chathu@gamil.com ', 0x3a3a3100000000000000000000000000, '2023-04-26 07:18:38', NULL, 0),
(69, 2018, 'sawbagya@gamil.com', 0x3a3a3100000000000000000000000000, '2023-04-26 07:19:26', '26-04-2023 12:51:49 PM', 1),
(70, 2018, 'amal@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-26 07:21:56', NULL, 1),
(71, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-26 08:24:50', NULL, 1),
(72, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-26 11:02:31', NULL, 1),
(73, 2018, 'nirashawanigasekara@gmail.com ', 0x3a3a3100000000000000000000000000, '2023-04-26 11:02:41', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(15) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `faculty` varchar(255) DEFAULT NULL,
  `bloodgroup` text DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `allergic` varchar(255) DEFAULT NULL,
  `surgery` varchar(255) DEFAULT NULL,
  `disease` varchar(255) DEFAULT NULL,
  `vaccination` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `course`, `department`, `faculty`, `bloodgroup`, `gender`, `allergic`, `surgery`, `disease`, `vaccination`, `email`, `password`, `regDate`, `updationDate`) VALUES
('2018/ICT/1', 'Amal K', 'Divulapitiya', 'Gampaha', '', 'Physical Science', 'Applied Science', 'O+', 'male', 'food,drugs', ' ', 'Asthma', 'Moderna', 'Amal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-02-21 17:26:40', '2023-04-26 07:22:20'),
('2018/ICT/101', 'Panchali', 'Yagoda', 'Gampaha', 'AMC', 'Physical Science', 'Applied Science', 'B-', 'female', NULL, NULL, NULL, NULL, 'panchali@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-26 07:55:42', NULL),
('2018/ICT/30', 'Sawbagya', 'Kurunegala', 'Kurunegala', 'IT', 'Physical Science', 'Applied Science', 'AB+', 'female', NULL, NULL, NULL, NULL, 'sawbagya@gamil.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-02-22 09:08:59', NULL),
('2018/ICT/39', 'Herath Mudiyanselage Bavantha Vidarshana Herath', '10/2H, Nuwara Wewa Watta, Anuradhapura', 'Anuradhapura', 'Information Technology', 'Physical Science', 'Applied Science', 'B-', 'male', NULL, NULL, NULL, NULL, 'vuni@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-04-26 07:12:53', NULL),
('2018/ICT/64', 'Gayeshi N W', '124,Gaspe,Banduragoda', 'Gampaha', '', 'Physical Science', 'Applied Science', 'O+', 'female', 'yes,prawns,drugs', 'no.', 'asthma,vizing', 'sinopharm,phizer', 'nirashawanigasekara@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-02-21 22:21:33', '2023-03-15 19:14:18'),
('2018/ICT/78', 'Bavindya Wijerathne', 'Nawalapitiya rd,Gamploa.', 'Gampola', 'IT', 'Physical Science', 'Applied Science', 'A+', 'female', NULL, NULL, NULL, NULL, 'wijerathne@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-26 07:47:56', NULL),
('2018/ICT/88', 'Ruchira Jayamanna', '153/B, Ihalayagoda, Gampaha', 'Gampaha', 'IT', 'Physical Science', 'Applied Science', 'B+', 'male', NULL, NULL, NULL, NULL, 'kdhslkdh@gmail.com', '57703b9f43d44d89c6a7e7e1d6c772aa', '2023-02-22 07:25:21', NULL),
('2018AMC67', 'Chathurya Weerasinghe', 'Kandy rd,Galewela', 'kurunegala', 'AMC', 'Physical Science', 'Applied Science', 'A+', 'female', NULL, NULL, NULL, NULL, 'chathu@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2023-04-26 07:17:11', NULL),
('2018ICT02', 'Kamal', 'Mirigama', 'Gampaha', 'IT', 'Physical Science', 'Applied Science', 'B-', 'male', NULL, NULL, NULL, NULL, 'kamal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-02-22 09:15:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
