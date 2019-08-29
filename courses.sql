-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 29, 2019 at 07:04 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courses`
--

-- --------------------------------------------------------

--
-- Table structure for table `best_courses`
--

DROP TABLE IF EXISTS `best_courses`;
CREATE TABLE IF NOT EXISTS `best_courses` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `COURSE_ID` (`COURSE_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `best_courses`
--

INSERT INTO `best_courses` (`ID`, `COURSE_ID`) VALUES
(1, 10),
(2, 6),
(3, 11),
(4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `image`, `description`, `price`) VALUES
(6, 'Course One', 'https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80', 'This is our first course.', 3210),
(7, 'Course Two', 'https://images.unsplash.com/photo-1519638831568-d9897f54ed69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80', 'This is our second course.', 5264),
(8, 'Course THREE', 'https://images.unsplash.com/photo-1547679904-ac76451d1594?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80', 'This is our third course.', 2500),
(9, 'Course FOUR', 'https://images.unsplash.com/photo-1529734781665-be642ec8fc8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80', 'This is our fourth course.', 10500),
(10, 'COURSE FIVE', 'https://images.unsplash.com/photo-1541516160071-4bb0c5af65ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80', 'This is our fifth course', 8000),
(11, 'COURSE SIX', 'https://images.unsplash.com/photo-1566094265799-0c4914426109?ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80', 'This is our sixth course', 4536),
(12, 'COURSE SEVEN', 'https://images.unsplash.com/photo-1565986826774-968ffb03bc0e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80', 'This is our seventh course', 4623),
(13, 'COURSE EIGHT', 'https://images.unsplash.com/photo-1471341971476-ae15ff5dd4ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80', 'This is our eighth course', 10252),
(14, 'COURSE NINE', 'https://images.unsplash.com/photo-1522204538344-922f76ecc041?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80', 'This is our ninth course', 6500),
(15, 'COURSE TEN', 'https://images.unsplash.com/photo-1500051638674-ff996a0ec29e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1392&q=80', 'This is our tenth course', 8456),
(16, 'COURSE ELEVEN', 'https://images.unsplash.com/photo-1479909031872-133432b2d7c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80', 'This is our eleventh course', 1500),
(17, 'COURSE TWELVE', 'https://images.unsplash.com/photo-1486597622250-f997d79907f8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80', 'This is our twelfth course', 4862),
(18, 'COURSE THIRTEEN', 'https://images.unsplash.com/photo-1499417267106-45cebb7187c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1561&q=80', 'This is our thirteenth course', 7852),
(19, 'COURSE FOURTEEN', 'https://images.unsplash.com/photo-1554844453-7ea2a562a6c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80', 'This is our fourteenth course', 7500);

-- --------------------------------------------------------

--
-- Table structure for table `latest_courses`
--

DROP TABLE IF EXISTS `latest_courses`;
CREATE TABLE IF NOT EXISTS `latest_courses` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `COURSE_ID` (`COURSE_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latest_courses`
--

INSERT INTO `latest_courses` (`ID`, `COURSE_ID`) VALUES
(1, 10),
(2, 15),
(3, 11),
(4, 17),
(5, 13);

-- --------------------------------------------------------

--
-- Table structure for table `onsale_courses`
--

DROP TABLE IF EXISTS `onsale_courses`;
CREATE TABLE IF NOT EXISTS `onsale_courses` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onsale_courses`
--

INSERT INTO `onsale_courses` (`ID`, `COURSE_ID`) VALUES
(1, 6),
(2, 19),
(3, 11),
(4, 6),
(5, 15);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
