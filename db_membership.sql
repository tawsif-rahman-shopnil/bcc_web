-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2023 at 03:42 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_membership`
--

-- --------------------------------------------------------

--
-- Table structure for table `reg_member`
--

CREATE TABLE `reg_member` (
  `member_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `session` varchar(45) NOT NULL,
  `admityr` year(4) NOT NULL,
  `email` varchar(100) NOT NULL,
  `c_number` varchar(20) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `date` int(100) NOT NULL,
  `uid` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_member`
--

INSERT INTO `reg_member` (`member_id`, `fullname`, `dept`, `session`, `admityr`, `email`, `c_number`, `gender`, `date`, `uid`) VALUES
(0, 'Tawsif Rahman Shopnil', 'CSE', 'Fall', 2019, 'shopnil@baiust.edu.bd', '017306269877', 'Male', 2147483647, 1110024),
(0, 'Ashadul Amin Fahim', 'CSE', 'Fall', 2018, 'fahim.cse@baiust.edu.bd', '01752581500', 'Male', 2147483647, 1107058);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'admin', 'admin', 'John', 'Doe');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
