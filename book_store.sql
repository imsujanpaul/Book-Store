-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2019 at 05:01 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book store`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_ID` varchar(50) NOT NULL,
  `Name` text NOT NULL,
  `Edition` int(30) NOT NULL,
  `Publisher` text NOT NULL,
  `Pages` int(30) NOT NULL,
  `Price` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_ID`, `Name`, `Edition`, `Publisher`, `Pages`, `Price`) VALUES
('123', 'Physics', 1, 'Arihant', 260, 300),
('123', 'Physics', 1, 'Arihant', 123, 123),
('1234', 'Chemistry', 1, 'Arihant', 678, 700);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` varchar(30) NOT NULL,
  `Customer_Name` text NOT NULL,
  `Mobile Number` int(20) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Customer_Name`, `Mobile Number`, `Address`) VALUES
('1111', 'Saiful', 456789, 'Numaligarh'),
('cs16', 'saiful ali', 76767898, 'Numaligarh');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Full Name` text NOT NULL,
  `ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Username`, `Password`, `Full Name`, `ID`) VALUES
('imsujan', 'imsujan', 'Sujan Paul', 'CS18MSIIT011'),
('imsujan', 'imsujan', 'Sujan Paul', 'cs11'),
('imsujan', 'sujan', 'Sujan Paul', 'cs18msiit011'),
('sanchari', 'sanchari', 'Sanchari Dey', 'cs28');

-- --------------------------------------------------------

--
-- Table structure for table `sellbook`
--

CREATE TABLE `sellbook` (
  `Book_ID` varchar(30) NOT NULL,
  `Book_Name` text NOT NULL,
  `Edition` int(5) NOT NULL,
  `Publisher` varchar(30) NOT NULL,
  `Pages` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Customer_ID` varchar(30) NOT NULL,
  `Name` text NOT NULL,
  `Mobile` int(30) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellbook`
--

INSERT INTO `sellbook` (`Book_ID`, `Book_Name`, `Edition`, `Publisher`, `Pages`, `Price`, `Customer_ID`, `Name`, `Mobile`, `Address`) VALUES
('123', 'Physics', 1, 'Arihant', 260, 300, '1111', 'Saiful', 456789, 'Numaligarh'),
('1234', 'Chemistry', 1, 'Arihant', 678, 700, 'cs16', 'saiful ali', 76767898, 'Numaligarh');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
