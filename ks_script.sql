-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: senior.local
-- Generation Time: Feb 21, 2013 at 04:13 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `senior_project_website`
--

-- --------------------------------------------------------
--
-- Dumping data for table `spw_project`
--

INSERT INTO `spw_project` (`id`, `title`, `description`, `max_students`, `proposed_by` , `delivery_term`, `status`) VALUES
(1, 'SPW', 'Senior Project', 3, 3, 3, 3),
(2, 'ATT', 'ATT', 5, 3, 3, 3),
(3, 'Verizon', 'Wireless', 5, 2, 3, 3),
(4, 'HD', 'Home Depot', 2, 3, 4, 3),
(5, 'WM', 'Walmart', 2, 3, 3, 3),
(6, 'Net', 'Netflix', 3, 3, 3, 4),
(7, 'Ft', 'Football', 2, 3, 4, 3),
(8, 'Bk', 'Basketball', 4, 3, 6, 3);

-- --------------------------------------------------------
--
-- Dumping data for table `spw_skill_project`
--

INSERT INTO `spw_skill_project` (`id`, `skill`, `project`) VALUES
(1, 5, 8),
(2, 3, 8),
(3, 1, 8),
(4, 2, 8),
(5, 6, 8),
(6, 9, 8),
(7, 2, 7),
(8, 4, 7),
(9, 1, 6),
(10, 8, 6),
(11, 3, 6),
(12, 6, 6),
(13, 9, 6),
(14, 10, 6),
(15, 1, 5),
(16, 6, 4),
(17, 3, 4),
(18, 3, 1),
(19, 3, 3),
(20, 6, 3),
(21, 1, 1),
(22, 2, 1),
(23, 4, 2),
(24, 2, 2),
(25, 5, 2),
(26, 3, 2),
(27, 6, 1),
(28, 5, 3);

-- --------------------------------------------------------
--
-- Dumping data for table `spw_user`
--

INSERT INTO `spw_user` (`id`,`first_name`,`last_name`,`email`,`picture`,`hash_pwd`,`summary`,`graduation_term`,`project`, `google_id`, `linkedin_id`) VALUES
(1, 'Alan', 'A', 'alan@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600', null, 3, 2, null, null),
(2, 'Briam', 'B', 'briam@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600', null, NULL, null, null, null),
(3, 'Charlie', 'C', 'charlie@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600', null, NULL, NULL, null, null),
(4, 'Don', 'D', 'don@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600', null, 4, null, null, null),
(5, 'Anthony', 'A', 'anthony@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600', null, 4, 4, null, null),
(6, 'Peter', 'P', 'peter@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600', null, 3, 2, null, null),
(7, 'Katia', 'K', 'katia@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600', null, 4, 4, null, null),
(8, 'Richard', 'R', 'richard@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600', null, 4, 4, null, null);

-- --------------------------------------------------------
--
-- Dumping data for table `spw_skill_user`
--

INSERT INTO `spw_skill_user` (`id`, `skill`, `user`) VALUES
(1, 1, 1),
(2, 4, 1),
(3, 1, 3),
(4, 6, 4),
(5, 1, 4),
(6, 2, 2),
(7, 2, 3),
(8, 6, 1),
(9, 3, 3),
(10, 6, 3),
(11, 4, 5),
(12, 6, 5),
(13, 1, 6),
(14, 3, 6),
(15, 2, 7),
(16, 5, 8),
(17, 4, 8),
(18, 6, 8);

-- --------------------------------------------------------
--
-- Dumping data for table `spw_role_user`
--

INSERT INTO `spw_role_user` (`id`, `role`, `user`) VALUES
(1, 3, 3),
(2, 5, 1),
(3, 5, 6),
(4, 5, 5),
(5, 5, 7),
(6, 5, 8),
(7, 4, 2),
(8, 5, 4);

-- --------------------------------------------------------
--
-- Dumping data for table `spw_mentor_project`
--

INSERT INTO `spw_mentor_project` (`id`, `mentor`, `project`) VALUES
(1, 2, 2),
(2, 2, 3),
(3, 2, 6),
(4, 3, 2);

-- -------------------------------------------------------
--
-- Inserting one record to the table `spw_user`
--
INSERT INTO `spw_user` (`id`, `first_name`, `last_name`, `email`, `picture`, `hash_pwd`, `summary`, `graduation_term`, `project`, `google_id`, `linkedin_id`) VALUES
(9, 'Yaneli', 'Fernandez ', 'ysosa011@fiu.edu', NULL, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600', NULL, 1, NULL, NULL, NULL); 

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;