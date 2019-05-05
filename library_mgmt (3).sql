-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2019 at 07:18 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookassigntbl`
--

CREATE TABLE `bookassigntbl` (
  `ba_slno` int(10) UNSIGNED NOT NULL,
  `f_rfid_slno` int(10) UNSIGNED NOT NULL,
  `f_studentid` varchar(20) NOT NULL,
  `dateofentry` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bookcategorytbl`
--

CREATE TABLE `bookcategorytbl` (
  `bc_slno` int(10) UNSIGNED NOT NULL,
  `bookcategory` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookcategorytbl`
--

INSERT INTO `bookcategorytbl` (`bc_slno`, `bookcategory`) VALUES
(4, 'electronics'),
(5, 'graphics'),
(6, 'e commerce'),
(7, 'it'),
(8, 'artificial intelligence'),
(9, 'accountancy'),
(10, 'dbms'),
(11, 'mathematics'),
(12, ''),
(13, 'science');

-- --------------------------------------------------------

--
-- Table structure for table `bookentryregistertbl`
--

CREATE TABLE `bookentryregistertbl` (
  `br_slno` int(10) NOT NULL,
  `rfidno` varchar(20) NOT NULL,
  `studentid` int(10) NOT NULL,
  `dateofentry` date NOT NULL,
  `dateofreturn` date NOT NULL,
  `bookstatus` int(2) NOT NULL,
  `fineamount` int(10) NOT NULL,
  `finestatus` int(2) NOT NULL,
  `finepaiddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `bookentryregistertbl`
--

INSERT INTO `bookentryregistertbl` (`br_slno`, `rfidno`, `studentid`, `dateofentry`, `dateofreturn`, `bookstatus`, `fineamount`, `finestatus`, `finepaiddate`) VALUES
(77, '00013933213', 1, '2019-05-02', '0000-00-00', 0, 0, 0, '0000-00-00'),
(78, '00013931805', 1, '2019-05-02', '0000-00-00', 0, 0, 0, '0000-00-00'),
(79, '00013954705', 1, '2019-05-02', '0000-00-00', 0, 0, 0, '0000-00-00'),
(80, '00013930822', 1, '2019-05-02', '0000-00-00', 0, 0, 0, '0000-00-00'),
(81, '00001964839', 1, '2019-05-02', '0000-00-00', 0, 0, 0, '0000-00-00'),
(82, '00013930822', 1, '2019-05-02', '0000-00-00', 0, 0, 0, '0000-00-00'),
(83, '00001964839', 1, '2019-05-02', '0000-00-00', 0, 0, 0, '0000-00-00'),
(84, '00001964839', 1, '2019-05-02', '0000-00-00', 0, 0, 0, '0000-00-00'),
(85, '100', 1001, '2019-05-03', '2019-05-03', 1, 0, 0, '0000-00-00'),
(86, '1001', 5, '2019-05-04', '0000-00-00', 1, 0, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `bookrfidassigntbl`
--

CREATE TABLE `bookrfidassigntbl` (
  `br_slno` int(10) UNSIGNED NOT NULL,
  `f_b_slno` int(10) UNSIGNED NOT NULL,
  `f_rfid_slno` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookrfidassigntbl`
--

INSERT INTO `bookrfidassigntbl` (`br_slno`, `f_b_slno`, `f_rfid_slno`) VALUES
(1, 2, 3),
(2, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `booktbl`
--

CREATE TABLE `booktbl` (
  `b_slno` int(10) UNSIGNED NOT NULL,
  `bookname` varchar(45) NOT NULL,
  `bookauthor` text NOT NULL,
  `bookcategory` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booktbl`
--

INSERT INTO `booktbl` (`b_slno`, `bookname`, `bookauthor`, `bookcategory`) VALUES
(8, 'electronics', '', '0'),
(9, 'ai', '', '0'),
(10, 'ai', '', '0'),
(11, 'commerce', '', '0'),
(12, 'c programming', '', 'it'),
(13, 'electro', '', 'electronics'),
(14, 'integration', 'jon snow', 'maths');

-- --------------------------------------------------------

--
-- Table structure for table `rfidtbl`
--

CREATE TABLE `rfidtbl` (
  `rfid_slno` int(10) UNSIGNED NOT NULL,
  `rfidno` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rfidtbl`
--

INSERT INTO `rfidtbl` (`rfid_slno`, `rfidno`) VALUES
(2, '1001'),
(3, '1001'),
(4, '100'),
(5, '1005');

-- --------------------------------------------------------

--
-- Table structure for table `studenttbl`
--

CREATE TABLE `studenttbl` (
  `s_slno` int(10) UNSIGNED NOT NULL,
  `studentid` varchar(45) NOT NULL,
  `studentname` varchar(45) NOT NULL,
  `studentclass` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttbl`
--

INSERT INTO `studenttbl` (`s_slno`, `studentid`, `studentname`, `studentclass`) VALUES
(1, '1001', 'shameer', 'bsc'),
(2, '102', 'midhun', 'bsc'),
(3, '103', 'akash', 'bcom'),
(4, '104', 'abhijith', 'bba'),
(5, '105', 'ananya', 'ma'),
(7, '6', 'syam', 'ma'),
(8, '9', 'arya', 'mcom');

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

CREATE TABLE `usertbl` (
  `slno` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `emailid` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`slno`, `name`, `emailid`, `password`) VALUES
(2, 'a', 'a@a.com', 'aa'),
(3, 'a', 'a@a.com', 'aa'),
(4, 'a', 'a@a.com', 'aa'),
(5, 'shameer', 'shameer661998@gmail.com', '000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookassigntbl`
--
ALTER TABLE `bookassigntbl`
  ADD PRIMARY KEY (`ba_slno`);

--
-- Indexes for table `bookcategorytbl`
--
ALTER TABLE `bookcategorytbl`
  ADD PRIMARY KEY (`bc_slno`);

--
-- Indexes for table `bookentryregistertbl`
--
ALTER TABLE `bookentryregistertbl`
  ADD PRIMARY KEY (`br_slno`);

--
-- Indexes for table `bookrfidassigntbl`
--
ALTER TABLE `bookrfidassigntbl`
  ADD PRIMARY KEY (`br_slno`);

--
-- Indexes for table `booktbl`
--
ALTER TABLE `booktbl`
  ADD PRIMARY KEY (`b_slno`);

--
-- Indexes for table `rfidtbl`
--
ALTER TABLE `rfidtbl`
  ADD PRIMARY KEY (`rfid_slno`);

--
-- Indexes for table `studenttbl`
--
ALTER TABLE `studenttbl`
  ADD PRIMARY KEY (`s_slno`);

--
-- Indexes for table `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`slno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookassigntbl`
--
ALTER TABLE `bookassigntbl`
  MODIFY `ba_slno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookcategorytbl`
--
ALTER TABLE `bookcategorytbl`
  MODIFY `bc_slno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bookentryregistertbl`
--
ALTER TABLE `bookentryregistertbl`
  MODIFY `br_slno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `bookrfidassigntbl`
--
ALTER TABLE `bookrfidassigntbl`
  MODIFY `br_slno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booktbl`
--
ALTER TABLE `booktbl`
  MODIFY `b_slno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rfidtbl`
--
ALTER TABLE `rfidtbl`
  MODIFY `rfid_slno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `studenttbl`
--
ALTER TABLE `studenttbl`
  MODIFY `s_slno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
