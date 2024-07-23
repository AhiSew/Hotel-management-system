-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2024 at 02:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `did` int(15) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `dage` int(20) NOT NULL,
  `dgen` varchar(15) NOT NULL,
  `available` varchar(35) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`did`, `dname`, `dage`, `dgen`, `available`, `location`) VALUES
(1, 'qq', 12, 'Female', 'No', 'ws'),
(2, 'dd', 22, 'Male', 'Yes', '2dd'),
(3, 'ranu', 55, 'Male', 'Yes', 'kandy'),
(6, 'sasi', 25, 'Male', 'No', 'kurunegala'),
(8, 'sumu', 45, 'Male', 'Yes', 'kandy'),
(10, 'udaya', 25, 'Male', 'No', 'nuwaraeliya'),
(11, 'raman', 25, 'Female', 'No', 'kurunegala'),
(12, 'naml', 30, 'Male', 'No', 'kandy'),
(15, 'kamal', 45, 'Male', 'Yes', 'kandy'),
(18, 'manel', 28, 'Male', 'Yes', 'bus stand'),
(20, 'manel', 28, 'Male', 'Yes', 'kandy');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `job` varchar(20) NOT NULL,
  `salary` varchar(15) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `name`, `age`, `gender`, `job`, `salary`, `phone`, `email`) VALUES
(1, 'ahinsa', 20, 'Female', 'Accountant', '25000', 758235124, 'ahi@2019gmail.com'),
(2, 'chamo', 23, 'Female', 'Manager', '25000', 75214893, 'sew@gmail.com'),
(3, 'samu', 32, 'Female', 'Accountant', '30000', 741258742, 'samu@gmail.com'),
(4, 'danu', 27, 'Male', 'Accountant', '17000', 740235148, 'danu@gmail.com'),
(5, 'sumu', 28, 'Female', 'Accountant', '25000', 715842713, 'sumudu@gmail.com'),
(6, 'muthu', 30, 'Female', 'Kitchen Staff', '23000', 714523687, 'muthu@gmail.com'),
(7, 'shanu', 25, 'Female', 'Accountant', '25800', 745821456, 'shanu@gmail.com'),
(8, 'sanhs', 32, 'Female', 'Kitchen Staff', '3500', 741245789, 'dagag@gmail.com'),
(9, 'laki', 29, 'Male', 'Kitchen Staff', '25600', 712548963, 'laki@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `nic` int(250) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country` varchar(35) NOT NULL,
  `contactno` int(15) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `allocated` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `deposit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`nic`, `name`, `country`, `contactno`, `gender`, `allocated`, `email`, `date`, `deposit`) VALUES
(2003145, 'll', 'ok', 124578520, 'Male', 101, 'jgd@gj', '2024/05/27', 1245),
(87548060, 'ahi', 'srilanka', 745821457, 'Female', 117, 'ahi@gmail.co', '2024/05/28', 600),
(123564782, 'rithushi', 'srilanka', 745125478, 'Female', 113, 'rithu@gmail.com', '2024/05/27', 500),
(1954215478, 'rani', 'us', 78541247, 'Male', 106, 'rani@gmail.com', '2024/05/27', 500),
(1963214578, 'danu', 'uk', 478512369, 'Male', 104, 'danu@gmail.com', '2024/05/27', 800),
(1973214578, 'udaya', 'uk', 758474214, 'Male', 109, 'udaya@gmail.com', '2024/05/27', 600),
(1987451254, 'rechal', 'srilanka', 748574521, 'Female', 105, 'rechal@gmail.com', '2024/05/27', 550),
(2000112361, 'mani', 'srilanka', 745874523, 'Female', 103, 'mani@gmail.com', '2024/05/27', 650),
(2103647859, 'sunil', 'china', 745874521, 'Male', 112, 's@gamil.com', '2024/05/28', 400);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `username`, `password`, `email`) VALUES
(1, 'admin', 'ad123', 'ahinsa2@gmail.com'),
(2, 'rece', 'rece123', 'sew2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `rid` int(25) NOT NULL,
  `avilable` varchar(100) NOT NULL,
  `cleaning` varchar(150) NOT NULL,
  `bedtype` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `roomtype` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rid`, `avilable`, `cleaning`, `bedtype`, `price`, `roomtype`) VALUES
(100, 'Occupied', 'cleaning', 'Single Bed', '1000', 'A/C'),
(101, 'Occupied', 'Dirty', 'Single Bed', '1550', 'A/C'),
(102, 'Occupied', 'cleaning', 'Single Bed', '2500', 'A/C'),
(103, 'Occupied', 'cleaning', 'Double Bed', '1500', 'A/C'),
(104, 'Occupied', 'cleaning', 'Double Bed', '1000', 'Non A/C'),
(105, 'Occupied', 'Cleanning', 'Single Bed', '1500', 'A/C'),
(106, 'Occupied', 'cleaning', 'Single Bed', '1000', 'Non A/C'),
(107, 'Occupied', 'cleaning', 'Single Bed', '1235', 'A/C'),
(108, 'Occupied', 'cleaning', 'Single Bed', '1200', 'A/C'),
(109, 'Occupied', 'cleaning', 'Single Bed', '1500', 'A/C'),
(111, 'Occupied', 'cleaning', 'Single Bed', '1234', 'A/C'),
(112, 'Occupied', 'cleaning', 'Single Bed', '2000', 'A/C'),
(117, 'Occupied', 'cleaning', 'Double Bed', '1500', 'A/C'),
(118, 'Available', 'cleaning', 'Double Bed', '1500', 'A/C'),
(122, 'Available', 'cleaning', 'Double Bed', '2500', 'A/C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`nic`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `did` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1254;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `nic` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2103647860;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `rid` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
