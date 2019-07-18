-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2019 at 05:13 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_books`
--

CREATE TABLE `add_books` (
  `id` int(5) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(500) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(20) NOT NULL,
  `books_price` varchar(20) NOT NULL,
  `books_qty` varchar(20) NOT NULL,
  `available_qty` varchar(20) NOT NULL,
  `librarian_username` varchar(50) NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_books`
--

INSERT INTO `add_books` (`id`, `books_name`, `books_image`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_qty`, `available_qty`, `librarian_username`, `is_deleted`) VALUES
(2, 'Core Python', 'books_image/71979a34171ba16527c41f0542b87e16python.jpg', 'Rao', 'Dreamtech', '10/17/18', '500', '9', '7', 'abc', 0),
(3, 'Core Java', 'books_image/109597a443bff2ef5c347d10176b6a01java.jpg', 'Rao', 'Dreamtech', '09/04/18', '800', '65', '63', '', 0),
(4, 'Core C', 'books_image/c2d55f3fd389fe11bb6bb78cde64af93C.jpg', 'Rao', 'Dreamtech', '06/03/18', '600', '50', '49', '', 0),
(5, 'Let us C', 'books_image/e27e59a5d1efe04aab2c6e1683903481let us C.jpg', 'Yashwant Kanetkar', 'BPB Publications', '07/07/17', '750', '10', '10', '', 0),
(6, 'dbms', 'books_image/b345f70e67164e891a801cb9bcc0ec1cavatar_g.jpg', 'Rao', 'abc', '10/17/18', '500', '5', '1', 'abc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `issue_books`
--

CREATE TABLE `issue_books` (
  `id` int(5) NOT NULL,
  `student_enrollment` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_sem` varchar(50) NOT NULL,
  `student_contact` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_issue_date` varchar(50) NOT NULL,
  `books_return_date` varchar(50) NOT NULL,
  `student_user_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_books`
--

INSERT INTO `issue_books` (`id`, `student_enrollment`, `student_name`, `student_sem`, `student_contact`, `student_email`, `books_name`, `books_issue_date`, `books_return_date`, `student_user_name`) VALUES
(57, '1784263590', 'test test', '2', '9922708675', 'test@gmail.com', 'Core Python', '11-10-18', '', 'test'),
(58, '8569231740', 'preeti artani', '4', '7350402576', 'preeti@gmail.com', 'Core Java', '13-10-18', '', 'preeti'),
(59, '1784263590', 'test test', '2', '9922708675', 'test@gmail.com', 'Core Java', '13-10-18', '', 'test'),
(60, '1784263590', 'test test', '2', '9922708675', 'test@gmail.com', 'Core C', '12-10-18', '', 'test'),
(61, '8569231740', 'preeti artani', '4', '7350402576', 'preeti@gmail.com', 'Core Python', '20-10-18', '', 'preeti'),
(62, '8569231740', 'preeti artani', '4', '7350402576', 'preeti@gmail.com', 'dbms', '22-10-18', '22-10-18', 'preeti'),
(63, '65414984893', 'richa bhatia', '5', '9922587565', 'richa@gmail.com', 'dbms', '15-10-18', '', 'richa'),
(64, '1784263590', 'test test', '2', '9922708675', 'test@gmail.com', 'dbms', '22-10-18', '', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `librarian_registration`
--

CREATE TABLE `librarian_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian_registration`
--

INSERT INTO `librarian_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES
(1, 'abc', 'def', 'abc', 'def', 'abc@gmail.com', '9988556699');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `issue_date` varchar(50) NOT NULL,
  `expected_return_date` varchar(50) NOT NULL,
  `student_user_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`issue_date`, `expected_return_date`, `student_user_name`) VALUES
('11-10-18', '18-10-2018', ''),
('13-10-18', '20-10-2018', 'preeti'),
('13-10-18', '20-10-2018', 'test'),
('15-10-18', '22-10-2018', 'richa'),
('19-10-18', '25-10-2018', ''),
('20-10-18', '27-10-2018', 'preeti'),
('22-10-18', '29-10-2018', 'preeti'),
('22-10-18', '29-10-2018', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `enrollment` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`, `sem`, `enrollment`, `status`) VALUES
(1, 'preeti', 'artani', 'preeti', 'preeti', 'preeti@gmail.com', '7350402576', '4', '8569231740', 'yes'),
(2, 'test', 'test', 'test', 'test', 'test@gmail.com', '9922708675', '2', '1784263590', 'yes'),
(3, 'richa', 'bhatia', 'richa', 'richa', 'richa@gmail.com', '9922587565', '5', '65414984893', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_books`
--
ALTER TABLE `add_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`issue_date`,`expected_return_date`,`student_user_name`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_books`
--
ALTER TABLE `add_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `issue_books`
--
ALTER TABLE `issue_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
