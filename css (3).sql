-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2024 at 06:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `css`
--

-- --------------------------------------------------------

--
-- Table structure for table `basic packages`
--

CREATE TABLE `basic packages` (
  `Event Name` varchar(20) NOT NULL,
  `Package Price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `basic packages`
--

INSERT INTO `basic packages` (`Event Name`, `Package Price`) VALUES
('wedding', 16500.00),
('birthday', 8250.00),
('halloween', 8250.00),
('christmas', 9150.00),
('anniversary', 8250.00);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingID` int(11) NOT NULL,
  `clientName` varchar(100) NOT NULL,
  `clientNumber` varchar(15) NOT NULL,
  `clientEmail` varchar(100) NOT NULL,
  `eventLocation` varchar(255) NOT NULL,
  `eventTime` varchar(50) NOT NULL,
  `eventDate` varchar(20) NOT NULL,
  `selectedPackage` varchar(100) NOT NULL,
  `numberOfGuests` int(11) NOT NULL,
  `numberOfStaff` int(11) NOT NULL,
  `event` varchar(20) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingID`, `clientName`, `clientNumber`, `clientEmail`, `eventLocation`, `eventTime`, `eventDate`, `selectedPackage`, `numberOfGuests`, `numberOfStaff`, `event`, `Status`) VALUES
(2, 'kl', '1', 'l', 'l', '7:00', '2024-April-19', 'Basic', 20, 21, 'Birthday', ''),
(3, 'apol', '1', 'francis@test.com', 'Lian', '8:30', 'April-18-2024', 'Basic', 50, 20, 'Birthday', 'Cancelled'),
(4, 'Jean Iwayan', '09264589521', 'jeaniwayan@example.com', 'nasugbu', '6:30', 'January -1-2024', 'Deluxe', 11, 12, 'Birthday', ''),
(5, 'Rea Casinillo', '09784569851', 'reacas@example.com', 'lian', '5:00', 'January -1-2024', 'Basic', 11, 11, 'Birthday', ''),
(6, 'Testing', '09735254738', 'testing.com', 'Busugna', '7:00', 'January -1-2024', 'Deluxe', 50, 16, 'Birthday', ''),
(7, 'Micford Asuncion', '09624736482', 'micford@test.com', '', '7:00', 'January -1-2024', 'Premium', 40, 7, 'Anniversary', 'Cancelled'),
(8, 'Testing1', '1', 'testing1', 'Tuy', '7:00', 'April-5-2024', 'Basic', 31, 1, 'Birthday', ''),
(9, 'Kimberly Urge', '06352364821', 'kim@test.com', 'Lian', '7:30', 'January -1-2024', 'Premium', 90, 1, 'Anniversary', ''),
(10, 'test', '2', 'test', 'lian', '7:00', 'May-6-2024', 'Basic', 23, 1, 'Birthday', ''),
(11, 'testing3', '09', 'testing3', 'as', '5:00', 'January -1-2024', 'Basic', 31, 1, 'Birthday', ''),
(12, 'Brentdan Landicho', '09625372863', 'bent@test.com', 'Nasugbu', '7:30', 'March-5-2024', 'Premium', 100, 20, 'Wedding', ''),
(13, 'Angel Cortino', '096327281632', 'angel@test.com', 'Lian', '5:00', 'January -1-2024', 'Basic', 50, 1, 'Birthday', ''),
(14, 'Fang, John Geoffrey A.', '09063426382', 'geoff@test.com', 'Nasugbu', '7:00', 'April-6-2024', 'Premium', 50, 10, 'Anniversary', ''),
(15, 'John Geoffrey A.Fang', '09625371726', 'test', 'Nasugbu', '7:30', 'August-3-2024', 'Premium', 20, 8, 'Birthday', ''),
(16, 'testing', '0972514273', 'test', 'nasugbu', '6:30', 'January -1-2024', 'Basic', 20, 6, 'Birthday', ''),
(17, 'Fionah Pat', '094568798', 'Fionahpat@ex.ciom', 'Lian, Wawa', '8:30', 'July-4-2026', 'Deluxe', 25, 5, 'Halloween', ''),
(18, 'John', '11111111111', 'john@test.com', 'Nasugbu', '7:30', 'January -1-2024', 'Premium', 50, 15, 'Wedding', 'Cancelled'),
(19, 'testing', '09052635143', 'testing.com', 'Tuy', '7:00', 'January -20-2024', 'Premium', 50, 20, 'Birthday', ''),
(22, 'Jessa Condizal', '096342637727', 'jessa@test.com', 'Tuy', '11:30', 'October-9-2024', 'Deluxe', 2, 2, 'Anniversary', ''),
(23, 'Angelo calisnao', '09531120885', 'angelocalisnao@gmail.com', 'PLAZA DE ROXAS', '20:00', 'December-25-2024', 'Deluxe', 100, 15, 'Christmas', '');

-- --------------------------------------------------------

--
-- Table structure for table `bookingdetails`
--

CREATE TABLE `bookingdetails` (
  `BookingID` int(11) NOT NULL,
  `ClientName` varchar(100) NOT NULL,
  `ClientNumber` varchar(15) NOT NULL,
  `EventLocation` varchar(100) NOT NULL,
  `EventDate` varchar(255) NOT NULL,
  `EventTime` varchar(50) NOT NULL,
  `NoOfGuests` int(11) NOT NULL,
  `Event` varchar(20) NOT NULL,
  `SelectedPackage` varchar(255) NOT NULL,
  `TotalPrice` decimal(10,2) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookingdetails`
--

INSERT INTO `bookingdetails` (`BookingID`, `ClientName`, `ClientNumber`, `EventLocation`, `EventDate`, `EventTime`, `NoOfGuests`, `Event`, `SelectedPackage`, `TotalPrice`, `Status`) VALUES
(2, 'kl', '1', 'l', '2024-April-19', '7:00', 20, 'Birthday', 'Basic', 8250.00, 'Booked'),
(3, 'apol', '1', 'Lian', 'April-18-2024', '8:30', 50, 'Birthday', 'Basic', 16000.00, 'Cancelled'),
(4, 'Jean Iwayan', '09264589521', 'nasugbu', 'January -1-2024', '6:30', 11, 'Birthday', 'Deluxe', 0.00, 'Cancelled'),
(5, 'Rea Casinillo', '09784569851', 'lian', 'January -1-2024', '5:00', 11, 'Birthday', 'Basic', 0.00, 'Cancelled'),
(6, 'Testing', '09735254738', 'Busugna', 'January -1-2024', '7:00', 50, 'Birthday', 'Deluxe', 0.00, 'Cancelled'),
(7, 'Micford Asuncion', '09624736482', '', 'January -1-2024', '7:00', 40, 'Anniversary', 'Premium', 0.00, 'Cancelled'),
(8, 'Testing1', '1', 'Tuy', 'April-5-2024', '7:00', 31, 'Birthday', 'Basic', 0.00, 'Cancelled'),
(9, 'Kimberly Urge', '06352364821', 'Lian', 'January -1-2024', '7:30', 90, 'Anniversary', 'Premium', 0.00, 'Cancelled'),
(10, 'test', '2', 'lian', 'May-6-2024', '7:00', 23, 'Birthday', 'Basic', 0.00, 'Cancelled'),
(11, 'testing3', '09', 'as', 'January -1-2024', '5:00', 31, 'Birthday', 'Basic', 0.00, 'Cancelled'),
(12, 'Brentdan Landicho', '09625372863', 'Nasugbu', 'March-5-2024', '7:30', 100, 'Wedding', 'Premium', 0.00, 'Cancelled'),
(13, 'Angel Cortino', '096327281632', 'Lian', 'January -1-2024', '5:00', 50, 'Birthday', 'Basic', 0.00, 'Cancelled'),
(14, 'Fang, John Geoffrey A.', '09063426382', 'Nasugbu', 'April-6-2024', '7:00', 50, 'Anniversary', 'Premium', 0.00, 'Cancelled'),
(15, 'John Geoffrey A.Fang', '09625371726', 'Nasugbu', 'August-3-2024', '7:30', 20, 'Birthday', 'Premium', 0.00, 'Cancelled'),
(16, 'testing', '0972514273', 'nasugbu', 'January -1-2024', '6:30', 20, 'Birthday', 'Basic', 0.00, 'Cancelled'),
(17, 'Fionah Pat', '094568798', 'Lian, Wawa', 'July-4-2026', '8:30', 25, 'Halloween', 'Deluxe', 0.00, 'Cancelled'),
(18, 'John', '11111111111', 'Nasugbu', 'January -1-2024', '7:30', 50, 'Wedding', 'Premium', 0.00, 'Cancelled'),
(19, 'testing', '09052635143', 'Tuy', 'January -20-2024', '7:00', 50, 'Birthday', 'Premium', 0.00, 'Cancelled'),
(22, 'Jessa Condizal', '096342637727', 'Tuy', 'October-9-2024', '11:30', 2, 'Anniversary', 'Deluxe', 0.00, 'Cancelled'),
(23, 'Angelo calisnao', '09531120885', 'PLAZA DE ROXAS', 'December-25-2024', '20:00', 100, 'Christmas', 'Deluxe', 0.00, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientID` int(11) NOT NULL,
  `bookingID` int(11) NOT NULL,
  `clientName` varchar(100) NOT NULL,
  `clientNumber` varchar(15) NOT NULL,
  `clientEmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deluxe packages`
--

CREATE TABLE `deluxe packages` (
  `Event Name` varchar(20) NOT NULL,
  `Package Price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deluxe packages`
--

INSERT INTO `deluxe packages` (`Event Name`, `Package Price`) VALUES
('wedding', 50000.00),
('christmas', 27000.00),
('halloween', 24250.00),
('birthday', 27000.00),
('anniversary', 27500.00);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventID` int(255) NOT NULL,
  `eventName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventID`, `eventName`) VALUES
(1, 'Wedding'),
(2, 'Birthday'),
(3, 'Halloween'),
(4, 'Christmas'),
(5, 'Anniversary');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `packageID` int(11) NOT NULL,
  `packageName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`packageID`, `packageName`) VALUES
(2, 'Basic'),
(3, 'Basic'),
(4, 'Deluxe'),
(5, 'Basic'),
(6, 'Deluxe'),
(7, 'Premium'),
(8, 'Basic'),
(9, 'Premium'),
(10, 'Basic'),
(11, 'Basic'),
(12, 'Premium'),
(13, 'Basic'),
(14, 'Premium'),
(15, 'Premium'),
(16, 'Basic'),
(17, 'Deluxe'),
(18, 'Premium'),
(19, 'Premium'),
(22, 'Deluxe'),
(23, 'Deluxe');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(255) NOT NULL,
  `paymentOption` varchar(15) NOT NULL,
  `totalPrice` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `paymentOption`, `totalPrice`) VALUES
(2, 'GCash', 8250.00),
(3, 'Pay In Cash', 16000.00);

-- --------------------------------------------------------

--
-- Table structure for table `premium packages`
--

CREATE TABLE `premium packages` (
  `Event Name` varchar(20) NOT NULL,
  `Package Price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `premium packages`
--

INSERT INTO `premium packages` (`Event Name`, `Package Price`) VALUES
('wedding', 33000.00),
('christmas', 16750.00),
('halloween', 15100.00),
('birthday', 16750.00),
('anniversary', 16500.00);

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `receptionistID` int(11) NOT NULL,
  `receptionistName` varchar(255) NOT NULL,
  `receptionistNumber` varchar(255) NOT NULL,
  `receptionistEmail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`receptionistID`, `receptionistName`, `receptionistNumber`, `receptionistEmail`) VALUES
(1, 'John Geoffrey A. Fang', '09723649273', 'Johnyyy@gmail.com'),
(2, 'Francis M Cupo', '09627352846', 'francis@test.com'),
(3, 'Lady Jean M. Iwayan', '09732645273', 'ladyjean@test.com'),
(4, 'Apple Mae B.Templa', '09236472583', 'apo@test.com'),
(5, 'John Geoffrey A. Fang', '09079253890', 'johnyyy@gamil.com'),
(6, 'John Geoffrey A. Fang', '09079253890', 'geoff@test.com'),
(7, 'John Geoffrey A. Fang', '09079253890', 'geo@test.com'),
(8, 'testing', '09072536272', 'test.com'),
(9, 'John Geoffrey A. Fang', '09063526372', 'Fang@test'),
(10, 'Jessa Concizal', '09635473524', 'Jess@test.com'),
(11, 'John Geoffrey A. Fang', '09079253890', 'geo@gmail.com'),
(12, 'Francis M Cupo', '09079253890', 'francis@gmail.com'),
(13, 'John Geoffrey A. Fang', '09079253890', 'Johnyyy@gmail.com'),
(14, 'Lady Jean M Iwayan', '09263846297', 'ladyjean@gmail.com'),
(15, 'Lady Jean M Iwayan', '09263846297', 'ladyjean@gmail.com'),
(16, 'Francis M Cupo', '09627352846', 'francis@gmail.com'),
(17, 'Francis M Cupo', '09627352846', 'francis@gmail.com'),
(18, 'Francis M Cupo', '09627352846', 'francis@gmail.com'),
(19, 'Lady Jean M Iwayan', '0973264573', 'ladyjean@gmail.com'),
(20, 'John Geoffrey A. Fang', '09079253890', 'johnyyy@gmail.com'),
(21, 'John Geoffrey A. Fang', '09079253890', 'johnyyy@gmail.com'),
(22, 'John Geoffrey A. Fang', '09079253890', 'johnyyy@gmail.com'),
(23, 'John Geoffrey A. Fang', '09079253890', 'johnyyy@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingID`);

--
-- Indexes for table `bookingdetails`
--
ALTER TABLE `bookingdetails`
  ADD PRIMARY KEY (`BookingID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientID`),
  ADD KEY `bookingID` (`bookingID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`packageID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`receptionistID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clientID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `packageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `receptionistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`bookingID`) REFERENCES `booking` (`bookingID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
