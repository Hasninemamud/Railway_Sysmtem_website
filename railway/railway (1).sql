-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 03:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uid` int(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canc`
--

CREATE TABLE `canc` (
  `pnr` int(11) NOT NULL,
  `rfare` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `canc`
--

INSERT INTO `canc` (`pnr`, `rfare`) VALUES
(57, 1100),
(58, 5600);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `cname` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cname`) VALUES
('AC1'),
('AC2'),
('AC3'),
('CC'),
('EC'),
('SL');

-- --------------------------------------------------------

--
-- Table structure for table `classseats`
--

CREATE TABLE `classseats` (
  `trainno` int(11) NOT NULL,
  `sp` varchar(50) NOT NULL COMMENT 'Starting_Point',
  `dp` varchar(50) NOT NULL COMMENT 'Destination_Point',
  `doj` date NOT NULL,
  `class` varchar(10) NOT NULL,
  `fare` int(11) NOT NULL,
  `seatsleft` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `classseats`
--

INSERT INTO `classseats` (`trainno`, `sp`, `dp`, `doj`, `class`, `fare`, `seatsleft`) VALUES
(12, 'Bhairab Bazar Railway Station', 'Tangail Railway Station', '2022-05-07', 'AC1', 934, 322),
(12, 'Bhairab Bazar Railway Station', 'Tangail Railway Station', '2022-05-17', 'AC1', 3100, 30),
(12, 'Bhairab Bazar Railway Station', 'Tangail Railway Station', '2022-05-17', 'AC3', 1900, 30),
(12, 'Bhairab Bazar Railway Station', 'Tangail Railway Station', '2022-05-17', 'EC', 1700, 150),
(12, 'Bhairab Bazar Railway Station', 'Tangail Railway Station', '2022-05-17', 'SL', 700, 220),
(12, 'Gazipur Railway Station', 'Bhairab Bazar Railway Station', '2022-05-07', 'AC1', 1434, 243),
(12, 'Gazipur Railway Station', 'Bhairab Bazar Railway Station', '2022-05-17', 'AC1', 2900, 15),
(12, 'Gazipur Railway Station', 'Bhairab Bazar Railway Station', '2022-05-17', 'AC3', 2100, 40),
(12, 'Gazipur Railway Station', 'Bhairab Bazar Railway Station', '2022-05-17', 'EC', 1500, 120),
(12, 'Gazipur Railway Station', 'Bhairab Bazar Railway Station', '2022-05-17', 'SL', 800, 250),
(12, 'Kamalapur Railway Station', 'Gazipur Railway Station', '2022-05-07', 'AC1', 2200, 107),
(12, 'Kamalapur Railway Station', 'Gazipur Railway Station', '2022-05-17', 'AC1', 3200, 20),
(12, 'Kamalapur Railway Station', 'Gazipur Railway Station', '2022-05-17', 'AC3', 2400, 60),
(12, 'Kamalapur Railway Station', 'Gazipur Railway Station', '2022-05-17', 'EC', 1200, 100),
(12, 'Kamalapur Railway Station', 'Gazipur Railway Station', '2022-05-17', 'SL', 500, 200),
(12, 'Tangail Railway Station', 'Narayanganj Railway Station', '2022-05-07', 'AC1', 344, 326),
(12, 'Tangail Railway Station', 'Narayanganj Railway Station', '2022-05-17', 'AC1', 2750, 20),
(12, 'Tangail Railway Station', 'Narayanganj Railway Station', '2022-05-17', 'AC3', 2350, 60),
(12, 'Tangail Railway Station', 'Narayanganj Railway Station', '2022-05-17', 'EC', 1100, 118),
(12, 'Tangail Railway Station', 'Narayanganj Railway Station', '2022-05-17', 'SL', 900, 180),
(18, 'Gazipur Railway Station', 'Narayanganj Railway Station', '2022-05-12', 'AC1', 2750, 20),
(18, 'Gazipur Railway Station', 'Narayanganj Railway Station', '2022-05-12', 'AC3', 1200, 20),
(18, 'Gazipur Railway Station', 'Narayanganj Railway Station', '2022-05-12', 'CC', 900, 150),
(18, 'Kamalapur Railway Station', 'Gazipur Railway Station', '2022-05-12', 'AC1', 2420, 50),
(18, 'Kamalapur Railway Station', 'Gazipur Railway Station', '2022-05-12', 'AC3', 1700, 20),
(18, 'Kamalapur Railway Station', 'Gazipur Railway Station', '2022-05-12', 'CC', 750, 120),
(20, 'Narayanganj Railway Station', 'Gazipur Railway Station', '2022-05-09', 'AC1', 4500, 20),
(20, 'Narayanganj Railway Station', 'Gazipur Railway Station', '2022-05-09', 'AC2', 3200, 50),
(20, 'Narayanganj Railway Station', 'Gazipur Railway Station', '2022-05-09', 'AC3', 2700, 50),
(20, 'Narayanganj Railway Station', 'Gazipur Railway Station', '2022-05-09', 'SL', 900, 300);

--
-- Triggers `classseats`
--
DELIMITER $$
CREATE TRIGGER `before_insert_on_classseats` BEFORE INSERT ON `classseats` FOR EACH ROW begin
if datediff(curdate(),new.doj)>0 then
SIGNAL SQLSTATE '45000' 
SET MESSAGE_TEXT = 'Check date!!!';
end if;
if new.fare<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check fare!!!';
end if;
if new.seatsleft<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check seats!!!';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_classseats` BEFORE UPDATE ON `classseats` FOR EACH ROW begin
if datediff(curdate(),new.doj)>0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'check date!!!';
end if;
if new.fare<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check fare!!!';
end if;
if new.seatsleft<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check seats!!!';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pd`
--

CREATE TABLE `pd` (
  `pnr` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `page` int(11) NOT NULL,
  `pgender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pd`
--

INSERT INTO `pd` (`pnr`, `pname`, `page`, `pgender`) VALUES
(0, 'Abdul', 60, 'M'),
(0, 'Hemel', 22, 'M'),
(0, 'Khan', 22, 'M'),
(0, 'Rekha', 50, 'F'),
(0, 'Rifat', 22, 'M'),
(0, 'Roman', 22, 'M'),
(0, 'Yean', 22, 'M'),
(58, 'Hemel', 21, 'M'),
(58, 'jafor', 20, 'M'),
(58, 'Khan', 12, 'M'),
(58, 'Rifat', 50, 'M'),
(59, 'Partho', 40, 'M'),
(59, 'Yean', 20, 'M'),
(60, 'Sakib', 20, 'M');

--
-- Triggers `pd`
--
DELIMITER $$
CREATE TRIGGER `before_insert_on_pd` BEFORE INSERT ON `pd` FOR EACH ROW begin
if new.pgender NOT IN ('M','F') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Enter M:Male F:Female.';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_pd` BEFORE UPDATE ON `pd` FOR EACH ROW begin
if new.pgender NOT IN ('M','F') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Enter M:Male F:Female.';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `resv`
--

CREATE TABLE `resv` (
  `pnr` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `trainno` int(11) NOT NULL,
  `sp` varchar(50) NOT NULL,
  `dp` varchar(50) NOT NULL,
  `doj` date NOT NULL,
  `tfare` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `nos` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resv`
--

INSERT INTO `resv` (`pnr`, `id`, `trainno`, `sp`, `dp`, `doj`, `tfare`, `class`, `nos`, `status`) VALUES
(51, 4, 12, 'Kamalapur Railway Station', 'Gazipur Railway Station', '2022-05-07', 3300, 'AC1', 2, 'BOOKED'),
(57, 5, 12, 'Kamalapur Railway Station', 'Gazipur Railway Station', '2022-05-07', 2200, 'AC1', 1, 'CANCELLED'),
(58, 6, 20, 'Narayanganj Railway Station', 'Gazipur Railway Station', '2022-05-09', 11200, 'AC2', 4, 'CANCELLED'),
(59, 10, 12, 'Tangail Railway Station', 'Narayanganj Railway Station', '2022-05-17', 2200, 'EC', 2, 'BOOKED');

--
-- Triggers `resv`
--
DELIMITER $$
CREATE TRIGGER `after_insert_on_resv` AFTER INSERT ON `resv` FOR EACH ROW begin
UPDATE classseats SET seatsleft=seatsleft-new.nos where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_on_resv` AFTER UPDATE ON `resv` FOR EACH ROW begin
if (new.status='CANCELLED' AND datediff(new.doj,curdate())<0 ) then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Cancellation Not Possible!!!!';
end if;

if (new.status='CANCELLED' AND datediff(new.doj,curdate())>0 )then
UPDATE classseats SET seatsleft=seatsleft+new.nos where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp;
 if datediff(new.doj,curdate())>=30 then 
 INSERT INTO canc values (new.pnr,new.tfare);
 end if;
 if datediff(new.doj,curdate())<30 then 
 INSERT INTO canc values (new.pnr,0.5*new.tfare);
 end if;
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_on_resv` BEFORE INSERT ON `resv` FOR EACH ROW begin
if new.tfare<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative balance NOT possible';
end if;
if new.nos<=0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative OR 0 seats NOT possible';
end if;
if (select seatsleft from classseats where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp) < new.nos then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Not enough seats available!!!';
end if;
if datediff(new.doj,curdate())<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Booking Not Possible!!!!';
end if;
SET new.status='BOOKED';
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_resv` BEFORE UPDATE ON `resv` FOR EACH ROW begin
if new.tfare<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative balance NOT possible';
end if;
if new.nos<=0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative OR 0 seats NOT possible';
end if;
if (select seatsleft from classseats where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp) < new.nos then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Not enough seats available!!!';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `trainno` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_time` time NOT NULL DEFAULT '00:00:00',
  `distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `trainno`, `sname`, `arrival_time`, `departure_time`, `distance`) VALUES
(1, 12, 'Kamalapur Railway Station', '01:00:12', '01:00:00', 0),
(2, 12, 'Gazipur Railway Station', '03:45:15', '03:50:00', 100),
(3, 12, 'Bhairab Bazar Railway Station', '05:00:00', '05:15:00', 300),
(4, 12, 'Tangail Railway Station', '11:50:10', '12:00:00', 450),
(5, 12, 'Narayanganj Railway Station', '16:30:00', '16:30:00', 600),
(6, 13, 'Dhaka Airport Railway Station', '22:00:00', '22:00:00', 0),
(7, 13, 'Narayanganj Railway Station', '04:00:00', '04:05:00', 700),
(8, 13, 'Joydebpur Railway Station', '07:30:50', '07:33:00', 900),
(9, 13, 'Cumilla Station', '09:00:00', '09:10:00', 1700),
(10, 13, 'B.B. East Railway Station', '11:45:00', '11:47:00', 2500),
(11, 13, 'Narsingdi Railway Station', '13:00:00', '13:00:00', 3600),
(12, 14, 'Dhaka Airport Railway Station', '01:00:12', '01:00:12', 0),
(13, 14, 'Faridpur Railway Station', '22:00:00', '22:00:00', 2500),
(14, 15, 'Narayanganj Railway Station', '16:00:00', '16:00:00', 0),
(15, 15, 'Gazipur Railway Station', '22:45:00', '22:45:00', 800),
(16, 16, 'Gazipur Railway Station', '03:30:00', '03:30:00', 0),
(17, 16, 'Narayanganj Railway Station', '09:30:00', '09:30:00', 800),
(18, 17, 'Narayanganj Railway Station', '00:00:14', '00:00:14', 0),
(19, 17, 'Gazipur Railway Station', '16:00:00', '16:10:00', 500),
(20, 17, 'Kamalapur Railway Station', '20:30:00', '20:30:00', 1200),
(21, 18, 'Kamalapur Railway Station', '08:05:00', '08:05:00', 0),
(22, 18, 'Gazipur Railway Station', '10:15:00', '10:20:00', 700),
(23, 18, 'Narayanganj Railway Station', '14:00:00', '14:00:00', 1200),
(24, 6, 'Gazipur Railway Station', '03:30:00', '03:30:00', 0),
(25, 6, 'Cumilla Station', '08:00:00', '08:15:00', 200),
(26, 6, 'Tangail Railway Station', '15:15:00', '15:15:00', 700),
(27, 19, 'Tangail Railway Station', '13:30:00', '13:30:00', 0),
(28, 19, 'Cumilla Station', '20:00:00', '20:10:00', 300),
(29, 19, 'Gazipur Railway Station', '05:15:00', '05:15:00', 700),
(30, 20, 'Narayanganj Railway Station', '10:04:00', '10:04:00', 0),
(31, 20, 'Gazipur Railway Station', '16:00:00', '16:00:00', 800),
(32, 21, 'Gazipur Railway Station', '20:00:00', '20:00:00', 0),
(33, 21, 'Narayanganj Railway Station', '10:00:00', '10:00:00', 800),
(34, 22, 'Narayanganj Railway Station', '16:35:00', '16:35:00', 0),
(35, 22, 'Joydebpur Railway Station', '20:00:00', '20:10:00', 1100),
(36, 22, 'Narsingdi Railway Station', '03:30:00', '03:33:00', 1500),
(37, 22, 'Tejgaon Railway Station', '09:00:00', '09:00:00', 2300),
(38, 23, 'Tejgaon Railway Station', '01:00:00', '01:00:00', 0),
(39, 23, 'Narsingdi Railway Station', '05:30:00', '05:40:00', 1500),
(40, 23, 'Joydebpur Railway Station', '15:45:00', '15:50:00', 2000),
(41, 23, 'Narayanganj Railway Station', '20:30:00', '20:30:00', 2300);

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `sname`) VALUES
(1, 'Kamalapur Railway Station'),
(2, 'Narayanganj Railway Station'),
(3, 'Gazipur Railway Station'),
(4, 'Tangail Railway Station'),
(5, 'Tejgaon Railway Station'),
(6, 'Cumilla Station'),
(7, 'Bhairab Bazar Railway Station'),
(8, 'B.B. East Railway Station'),
(9, 'Faridpur Railway Station'),
(10, 'Dhaka Airport Railway Station'),
(11, 'Joydebpur Railway Station'),
(12, 'Narsingdi Railway Station'),
(14, 'Kishorganj Station'),
(18, 'Barisal Railway Station');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `trainno` int(11) NOT NULL COMMENT 'Train_no',
  `tname` varchar(50) NOT NULL COMMENT 'Train_name',
  `sp` varchar(50) NOT NULL COMMENT 'Starting_Point',
  `st` time NOT NULL COMMENT 'Arrival_Time',
  `dp` varchar(50) NOT NULL COMMENT 'Destination_Point',
  `dt` time NOT NULL,
  `dd` varchar(10) DEFAULT NULL COMMENT 'Day',
  `distance` int(11) NOT NULL COMMENT 'Distance'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`trainno`, `tname`, `sp`, `st`, `dp`, `dt`, `dd`, `distance`) VALUES
(6, 'Godhuli Express', 'Gazipur Railway Station', '10:00:00', 'Tangail Railway Station', '21:30:00', 'Day 1', 700),
(12, 'Ekota Express', 'Kamalapur Railway Station', '01:00:12', 'Narayanganj Railway Station', '16:30:00', 'Day 1', 600),
(13, 'Tista Express', 'Dhaka Airport Railway Station', '22:00:00', 'Narsingdi Railway Station', '13:00:00', 'Day2', 3600),
(14, 'Parabat Express', 'Dhaka Airport Railway Station', '01:00:12', 'Faridpur Railway Station', '22:00:00', 'Day 1', 2500),
(15, 'Karatoya Express', 'Narayanganj Railway Station', '16:00:00', 'Gazipur Railway Station', '22:45:00', 'Day 1', 800),
(16, 'Kapotaksha Express', 'Gazipur Railway Station', '03:30:00', 'Narayanganj Railway Station', '09:30:00', 'Day 1', 800),
(17, 'Jayantika Express', 'Narayanganj Railway Station', '00:00:14', 'Kamalapur Railway Station', '20:30:00', 'Day 1', 1200),
(18, 'Paharika Express', 'Kamalapur Railway Station', '08:05:00', 'Narayanganj Railway Station', '14:00:00', 'Day 2', 1200),
(19, 'Mohanagar Express', 'Tangail Railway Station', '13:30:00', 'Gazipur Railway Station', '05:15:00', 'Day 2', 700),
(20, 'Sundarban Express', 'Narayanganj Railway Station', '10:04:00', 'Gazipur Railway Station', '16:00:00', 'Day 1', 800),
(21, 'Frontier Express', 'Gazipur Railway Station', '20:00:00', 'Narayanganj Railway Station', '10:00:00', 'Day 2', 800),
(22, 'Rajdhani Express', 'Narayanganj Railway Station', '16:35:00', 'Tejgaon Railway Station', '09:00:00', 'Day 2 ', 2300),
(23, 'Rajdhani Express', 'Tejgaon Railway Station', '01:00:00', 'Narayanganj Railway Station', '20:30:00', 'Day 1', 2300),
(24, 'Titumir Express', 'Narayanganj Railway Station', '16:00:00', 'Gazipur Railway Station', '22:45:00', 'Day 1', 800);

--
-- Triggers `train`
--
DELIMITER $$
CREATE TRIGGER `before_insert_on_train` BEFORE INSERT ON `train` FOR EACH ROW begin
if (new.dt<new.st AND new.dd='Day 1') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Improper Timings';
end if;
if (new.dp=new.sp) then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Same Starting & Destination Points not allowed';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_train` BEFORE UPDATE ON `train` FOR EACH ROW begin
if (new.dt<new.st AND new.dd='Day 1') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Improper Timings';
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `emailid`, `password`, `mobileno`, `dob`) VALUES
(4, 'hemel@gmail.com', 'garvit', '9312201852', '1994-01-01'),
(5, 'hemelgoel@hotmail.com', 'Hemel', '9312201853', '1994-02-22'),
(6, 'jaforkumar@yahoo.co.in', 'jafor', '9872231234', '1994-03-04'),
(7, 'ayushjain@outlook.com', 'ayush', '9810150525', '1995-01-03'),
(8, 'aakashbharadwaj@yahoo.com', 'aakash', '9013452635', '1993-12-30'),
(10, 'Yeansingh@gmail.com', 'Yean', '9876675567', '1991-01-01'),
(12, 'amanmalik@hotmail.com', 'aman', '9878876654', '1997-09-08'),
(19, 'dhruvgosian@gmail.com', 'dhruv', '9807890453', '1965-04-01'),
(20, 'chiragbansal@nsitonline.com', 'chirag', '9123456789', '1960-06-02'),
(21, 'mimoraihan@gmail.com', '12345678', '0163644189', '1998-12-19'),
(23, '', '', '', '0000-00-00'),
(30, 'hasninehemel85@gmail.com', '12345678', '0170029768', '2000-12-15'),
(33, 'hasnine85@gmail.com', '1234', '0987414558', '2002-12-13'),
(34, 'Orpito@gmail.com', '12345678', '0192578086', '2001-01-20'),
(56, 'sharoti85@gmail.com', '12345678', '0198765432', '2000-01-07'),
(57, 'abir@gmail.com', '12345678', '0163644199', '2000-01-12'),
(73, 'akmhemel@gmail.com', '8513512', '0140638003', '2000-09-21'),
(74, 'rifathasan@gmail.com', '12345678', '0175208844', '1999-11-16'),
(75, 'fghjk@gmail.com', '12345678', '0173558195', '2000-02-01'),
(76, 'abc@gmail.com', '12345678', '1636441892', '2000-09-21'),
(77, 'iiiii@gmail.com', '88888888', '0735581966', '2000-12-22');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `before_insert_on_user` BEFORE INSERT ON `user` FOR EACH ROW begin
if (year(curdate())-year(new.dob))<18 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_on_user` BEFORE UPDATE ON `user` FOR EACH ROW begin
if (year(curdate())-year(new.dob))<18 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
end if;
end
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canc`
--
ALTER TABLE `canc`
  ADD PRIMARY KEY (`pnr`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`cname`);

--
-- Indexes for table `classseats`
--
ALTER TABLE `classseats`
  ADD PRIMARY KEY (`trainno`,`sp`,`dp`,`doj`,`class`),
  ADD KEY `class` (`class`),
  ADD KEY `sp` (`sp`,`dp`),
  ADD KEY `dp` (`dp`);

--
-- Indexes for table `pd`
--
ALTER TABLE `pd`
  ADD PRIMARY KEY (`pnr`,`pname`,`page`,`pgender`);

--
-- Indexes for table `resv`
--
ALTER TABLE `resv`
  ADD PRIMARY KEY (`pnr`),
  ADD UNIQUE KEY `UNIQUE` (`id`,`trainno`,`doj`,`status`),
  ADD UNIQUE KEY `pnr` (`pnr`,`id`,`trainno`,`doj`,`class`,`status`),
  ADD UNIQUE KEY `pnr_2` (`pnr`,`id`,`trainno`,`sp`,`dp`,`doj`,`tfare`,`class`,`nos`,`status`),
  ADD KEY `FK_ID` (`id`),
  ADD KEY `FK_TN_DOJ_C` (`trainno`,`doj`,`class`),
  ADD KEY `class` (`class`),
  ADD KEY `sp` (`sp`,`dp`),
  ADD KEY `dp` (`dp`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainno` (`trainno`),
  ADD KEY `sname` (`sname`),
  ADD KEY `id` (`id`),
  ADD KEY `distance` (`distance`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`sname`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`trainno`),
  ADD KEY `sp` (`sp`),
  ADD KEY `dp` (`dp`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUEMN` (`mobileno`),
  ADD UNIQUE KEY `UNIQUEEI` (`emailid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resv`
--
ALTER TABLE `resv`
  MODIFY `pnr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `trainno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Train_no', AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classseats`
--
ALTER TABLE `classseats`
  ADD CONSTRAINT `classseats_ibfk_1` FOREIGN KEY (`trainno`) REFERENCES `train` (`trainno`),
  ADD CONSTRAINT `classseats_ibfk_3` FOREIGN KEY (`sp`) REFERENCES `station` (`sname`),
  ADD CONSTRAINT `classseats_ibfk_4` FOREIGN KEY (`dp`) REFERENCES `station` (`sname`),
  ADD CONSTRAINT `classseats_ibfk_5` FOREIGN KEY (`class`) REFERENCES `class` (`cname`);

--
-- Constraints for table `resv`
--
ALTER TABLE `resv`
  ADD CONSTRAINT `resv_ibfk_1` FOREIGN KEY (`trainno`) REFERENCES `train` (`trainno`),
  ADD CONSTRAINT `resv_ibfk_2` FOREIGN KEY (`sp`) REFERENCES `station` (`sname`),
  ADD CONSTRAINT `resv_ibfk_3` FOREIGN KEY (`dp`) REFERENCES `station` (`sname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
