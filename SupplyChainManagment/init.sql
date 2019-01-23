-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2018 at 04:09 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `init`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`email`, `password`) VALUES
('admin@gmail.com', 'admin'),
('sir@gmail.com', 'sagar');

-- --------------------------------------------------------

--
-- Table structure for table `assign`
--

CREATE TABLE IF NOT EXISTS `assign` (
  `aid` int(100) NOT NULL AUTO_INCREMENT,
  `cid` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `cvid` varchar(100) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `assign`
--

INSERT INTO `assign` (`aid`, `cid`, `id`, `cvid`) VALUES
(98, '3', '25', '44');

-- --------------------------------------------------------

--
-- Table structure for table `cat_table`
--

CREATE TABLE IF NOT EXISTS `cat_table` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `id` (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `cat_table`
--

INSERT INTO `cat_table` (`cid`, `cat_name`) VALUES
(3, 'WELDING'),
(7, 'MILLING'),
(14, 'TURNING'),
(24, 'ITI'),
(26, 'CNC'),
(27, '3D PRINTNGs');

-- --------------------------------------------------------

--
-- Table structure for table `getin`
--

CREATE TABLE IF NOT EXISTS `getin` (
  `getin_id` int(200) NOT NULL AUTO_INCREMENT,
  `emailid` varchar(200) NOT NULL,
  `auth` varchar(200) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`getin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `getin`
--

INSERT INTO `getin` (`getin_id`, `emailid`, `auth`, `question`, `answer`, `type`) VALUES
(26, 'admin@gmail.com', 'admin', 'no question', 'no answer', 'pro'),
(46, 'merchant@gmail.com', '123', 'Whats your mother madian name', 'maya', 'merchant'),
(47, 'merchantf@gmail.com', '123', 'Who is your Best Friend', 'venk', 'merchant'),
(49, 'vendors@gmail.com', '123', 'Who is your Best Friend', 'venk', 'temp'),
(50, 'vendort@gmail.com', '123', 'Who is your Best Friend', 'venk', 'temp'),
(51, 'vendorfo@gmail.com', '123', 'Who is your Best Friend', 'v', 'temp'),
(52, 'vendorfi@gmail.com', '123', 'Who is your Best Friend', 'venk', 'temp'),
(53, 'vendorsi@gmail.com', '123', 'Who is your Best Friend', 'v', 'temp'),
(54, 'vendorse@gmail.com', '123', 'Who is your Best Friend', 'venk', 'temp'),
(55, 'vendore@gmail.com', '123', 'Who is your Best Friend', 'venk', 'temp'),
(56, 'vendorn@gmail.com', '123', 'Who is your Best Friend', 'venk', 'temp'),
(57, 'indushree135@gmail.com', '123', 'Who is your Best Friend', '123', 'merchant'),
(58, 'vendorf@gmail.com', '123', 'Who is your Best Friend', '123', 'vendor'),
(59, 'divyambhat32@gmail.com', '123', 'Who is your Best Friend', '123', 'temp');

-- --------------------------------------------------------

--
-- Table structure for table `march_assign`
--

CREATE TABLE IF NOT EXISTS `march_assign` (
  `send_id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` varchar(10) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `cvid` varchar(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `qty_id` varchar(10) NOT NULL,
  `uiid` varchar(10) NOT NULL,
  `mdesc` varchar(100) NOT NULL,
  `mview` int(5) NOT NULL,
  PRIMARY KEY (`send_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `march_assign`
--

INSERT INTO `march_assign` (`send_id`, `mid`, `mname`, `cvid`, `date`, `qty_id`, `uiid`, `mdesc`, `mview`) VALUES
(75, '12', 'merchant@gmail.com', '44', '17-04-2018', '2', '6', 'more or less than 15', 0),
(76, '13', 'merchantf@gmail.com', '44', '18-04-2018', '3', '8', 'now ', 0),
(77, '13', 'merchantf@gmail.com', '44', '18-04-2018', '3', '7', '123', 0),
(78, '12', 'merchant@gmail.com', '44', '18-04-2018', 'Select Qua', 'Select Uni', '', 1),
(79, '12', 'merchant@gmail.com', '44', '18-04-2018', '2', '6', '100', 0),
(80, '12', 'merchant@gmail.com', '44', '18-04-2018', '3', '7', 'sdf', 0),
(84, '12', 'merchant@gmail.com', '44', '18-04-2018', '2', '6', 'lopo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `march_assign_view`
--

CREATE TABLE IF NOT EXISTS `march_assign_view` (
  `send_id` int(100) NOT NULL AUTO_INCREMENT,
  `mid` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `cvid` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `qty_id` varchar(100) NOT NULL,
  `uiid` varchar(100) NOT NULL,
  `desc` varchar(100) NOT NULL,
  PRIMARY KEY (`send_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `march_assign_view`
--

INSERT INTO `march_assign_view` (`send_id`, `mid`, `mname`, `cvid`, `date`, `qty_id`, `uiid`, `desc`) VALUES
(43, '12', 'merchant@gmail.com', '44', '17-04-2018', '2', '6', 'more or less than 15'),
(44, '13', 'merchantf@gmail.com', '44', '18-04-2018', '3', '8', 'now '),
(45, '13', 'merchantf@gmail.com', '44', '18-04-2018', '3', '7', '123'),
(46, '12', 'merchant@gmail.com', '44', '18-04-2018', 'Select Quantity', 'Select Unit', ''),
(47, '12', 'merchant@gmail.com', '44', '18-04-2018', '2', '6', '100'),
(48, '12', 'merchant@gmail.com', '44', '18-04-2018', '3', '7', 'sdf'),
(49, '12', 'merchant@gmail.com', '', '18-04-2018', '3', '7', 'xcs'),
(50, '12', 'merchant@gmail.com', '', '18-04-2018', 'Select Quantity', 'Select Unit', ''),
(51, '12', 'merchant@gmail.com', '', '18-04-2018', 'Select Quantity', 'Select Unit', ''),
(52, '12', 'merchant@gmail.com', '44', '18-04-2018', '2', '6', 'lopo');

-- --------------------------------------------------------

--
-- Table structure for table `march_completed`
--

CREATE TABLE IF NOT EXISTS `march_completed` (
  `completed_id` int(20) NOT NULL AUTO_INCREMENT,
  `recieve_id` varchar(20) NOT NULL,
  `send_id` varchar(20) NOT NULL,
  `mid` varchar(20) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `cvid` varchar(20) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `qty_id` varchar(20) NOT NULL,
  `uiid` varchar(20) NOT NULL,
  `mdesc` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `hours` varchar(100) NOT NULL,
  `vdesc` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`completed_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `march_completed`
--

INSERT INTO `march_completed` (`completed_id`, `recieve_id`, `send_id`, `mid`, `mname`, `cvid`, `rdate`, `qty_id`, `uiid`, `mdesc`, `price`, `hours`, `vdesc`, `status`) VALUES
(4, '32', '75', '12', 'merchant@gmail.com', '44', '17-04-2018', '10', '', 'more or less than 15', '5000', '10', 'needs place', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `march_decline`
--

CREATE TABLE IF NOT EXISTS `march_decline` (
  `decline_id` int(100) NOT NULL AUTO_INCREMENT,
  `send_id` varchar(100) NOT NULL,
  `mid` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `cvid` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `qty_id` varchar(100) NOT NULL,
  `uiid` varchar(100) NOT NULL,
  `descp` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `m_flag` varchar(200) NOT NULL,
  `v_flag` varchar(200) NOT NULL,
  PRIMARY KEY (`decline_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `march_decline`
--

INSERT INTO `march_decline` (`decline_id`, `send_id`, `mid`, `mname`, `cvid`, `date`, `qty_id`, `uiid`, `descp`, `reason`, `m_flag`, `v_flag`) VALUES
(21, '79', '12', 'merchant@gmail.com', '44', '18-04-2018', '10', 'km', '100', 'not', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `march_recived`
--

CREATE TABLE IF NOT EXISTS `march_recived` (
  `recieve_id` int(100) NOT NULL AUTO_INCREMENT,
  `send_id` varchar(100) NOT NULL,
  `mid` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `cvid` varchar(100) NOT NULL,
  `rdate` varchar(100) NOT NULL,
  `qty_id` varchar(100) NOT NULL,
  `uiid` varchar(100) NOT NULL,
  `mdesc` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `hours` varchar(100) NOT NULL,
  `vdesc` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `view` int(5) NOT NULL,
  PRIMARY KEY (`recieve_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `march_recived`
--

INSERT INTO `march_recived` (`recieve_id`, `send_id`, `mid`, `mname`, `cvid`, `rdate`, `qty_id`, `uiid`, `mdesc`, `price`, `hours`, `vdesc`, `status`, `view`) VALUES
(33, '76', '13', 'merchantf@gmail.com', '44', '18-04-2018', '30', 'mtr', 'now ', '2000', '2', 'nthng', 'Pending', 1),
(34, '77', '13', 'merchantf@gmail.com', '44', '18-04-2018', '30', 'ltr', '123', '30', '30', '30', 'On Going', 1),
(35, '80', '12', 'merchant@gmail.com', '44', '18-04-2018', '30', 'ltr', 'sdf', '&lt;h1&gt;hhh&lt;/h1&gt;', '&lt;script&gt;alert();&lt;/script&gt;', '0', 'On Going', 1);

-- --------------------------------------------------------

--
-- Table structure for table `march_register`
--

CREATE TABLE IF NOT EXISTS `march_register` (
  `mid` int(10) NOT NULL AUTO_INCREMENT,
  `mname` varchar(100) NOT NULL,
  `mcompany` varchar(100) NOT NULL,
  `memail` varchar(100) NOT NULL,
  `mphone` varchar(10) NOT NULL,
  `mcity` varchar(100) NOT NULL,
  `mpassword` varchar(100) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `march_register`
--

INSERT INTO `march_register` (`mid`, `mname`, `mcompany`, `memail`, `mphone`, `mcity`, `mpassword`) VALUES
(12, '&lt;h1&gt;merchant&lt;/h1&gt;', 'merchant', 'merchant@gmail.com', '1234567890', 'banglore', 'dumpasword'),
(13, 'merchantf', 'merchantf', 'merchantf@gmail.com', '1234567800', 'banglore', 'dumpasword');

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE IF NOT EXISTS `quantity` (
  `qty_id` int(11) NOT NULL AUTO_INCREMENT,
  `qty_no` varchar(10) NOT NULL,
  PRIMARY KEY (`qty_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `quantity`
--

INSERT INTO `quantity` (`qty_id`, `qty_no`) VALUES
(2, '10'),
(3, '30'),
(4, '20');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat_table`
--

CREATE TABLE IF NOT EXISTS `sub_cat_table` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` varchar(100) NOT NULL,
  `sub_cat_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `sub_cat_table`
--

INSERT INTO `sub_cat_table` (`id`, `cid`, `sub_cat_name`) VALUES
(25, '3', 'CO2 WELDING'),
(27, '5', 'MBA'),
(28, '5', 'BBA'),
(29, '7', 'SLAB MILLING'),
(30, '7', 'FACE MILLING'),
(32, '14', 'BOARING'),
(35, '14', 'HONING'),
(46, '3', 'ARC WELDING'),
(47, '3', 'TIG WELDING'),
(49, '3', 'MIG WELDING'),
(50, '25', 'sub demo 1'),
(51, '25', 'sub demo 3'),
(52, '25', 'cnc turning'),
(53, '26', 'CNC MILLING'),
(54, '26', 'CNC TURNING'),
(55, '26', 'CNC WATER JET CUTTING'),
(56, '27', 'FDM'),
(57, '', 'demo1'),
(58, '', 'demo2'),
(59, '', 'd3'),
(60, '', 'd4');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE IF NOT EXISTS `units` (
  `uiid` int(10) NOT NULL AUTO_INCREMENT,
  `ui_no` varchar(100) NOT NULL,
  PRIMARY KEY (`uiid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`uiid`, `ui_no`) VALUES
(6, 'km'),
(7, 'ltr'),
(8, 'mtr');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_confirm`
--

CREATE TABLE IF NOT EXISTS `vendor_confirm` (
  `cvid` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `vdesc` varchar(100) NOT NULL,
  `client` varchar(100) NOT NULL,
  `service` varchar(100) NOT NULL,
  `certificate` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`cvid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `vendor_confirm`
--

INSERT INTO `vendor_confirm` (`cvid`, `name`, `email`, `phone`, `city`, `vdesc`, `client`, `service`, `certificate`, `password`) VALUES
(44, 'vendorf', 'vendorf@gmail.com', '8123326329', 'mysore', 'vendor first', 'merchant 1', 'lap', '2008 : 2012', 'dumpasword');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_request`
--

CREATE TABLE IF NOT EXISTS `vendor_request` (
  `vid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `vendor_request`
--

INSERT INTO `vendor_request` (`vid`, `name`, `email`, `phone`, `city`, `password`) VALUES
(12, 'del', 'divyambhat32@gmail.com', '213', 'mysore', 'dumpasword');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
