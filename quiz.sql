-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2018 at 04:52 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(1, 'PHP'),
(2, 'HTML'),
(3, 'JAVASCRIPT'),
(4, 'JQUERY');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `questions` varchar(100) NOT NULL,
  `ans1` varchar(50) NOT NULL,
  `ans2` varchar(50) NOT NULL,
  `ans3` varchar(50) NOT NULL,
  `ans` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `questions`, `ans1`, `ans2`, `ans3`, `ans`, `cat_id`) VALUES
(1, 'What does PHP stand for?', 'Personal Hypertext Processor', 'PHP: Hypertext Preprocessor', 'Private Home Page', 1, 1),
(2, 'How do you write "Hello World" in PHP ?', '"Hello World";', ' echo "Hello World";', 'Document.Write("Hello World");', 1, 1),
(3, ' All variables in PHP start with which symbol ?', '!', '&', '$', 2, 1),
(4, 'What is the correct way to end a PHP statement?', ';', '. New line', ' ?>', 0, 1),
(5, 'The PHP syntax is most similar to:', ' VBScript', ' JavaScript', 'Perl and C', 2, 1),
(6, 'How do you get information from a form that is submitted using the "get" method?', '$_GET[];', ' Request.QueryString;', 'Request.Form;', 0, 1),
(7, 'Include files must have the file extension ".inc"', 'Flase', 'True', 'None', 0, 1),
(8, 'The die() and exit() functions do the exact same thing.', 'False', 'True', 'None', 0, 1),
(9, 'How do you create an array in PHP?', '$cars = array["Volvo", "BMW", "Toyota"];', ' $cars = array("Volvo", "BMW", "Toyota");', ' $cars = "Volvo", "BMW", "Toyota";', 1, 1),
(10, 'Which operator is used to check if two values are equal and of same data type?', '==', ' !=', '===', 2, 1),
(11, ' What does HTML stand for?', 'Hyperlinks and Text Markup Language', ' Hyper Text Markup Language', 'Home Tool Markup Language', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `rightans` int(20) NOT NULL,
  `wrongans` int(20) NOT NULL,
  `noattempt` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `image` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `password`, `image`) VALUES
(2, 'Abhi', 'abhilashbaby1995@gma', '23445', 'IMG_20170828_152721_1503916283653.jpg'),
(3, 'Akhi', 'a@gmailcom', '123456', 'IMG-20161001-WA0010.jpg'),
(4, 'Akhi', 'a@gmailcom', '123456', 'IMG-20161001-WA0010.jpg'),
(5, 'Abhi', 'abhilashbaby1995@gmail.com', '1234567', 'abhi.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
