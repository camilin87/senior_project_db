-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 01, 2013 at 07:38 PM
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
-- Table structure for table `spw_experience`
--

CREATE TABLE IF NOT EXISTS `spw_experience` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `spw_language`
--

CREATE TABLE IF NOT EXISTS `spw_language` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `spw_language_user`
--

CREATE TABLE IF NOT EXISTS `spw_language_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language` bigint(20) unsigned NOT NULL,
  `user` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `language` (`language`,`user`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `spw_project`
--

CREATE TABLE IF NOT EXISTS `spw_project` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(140) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `max_students` int(11) NOT NULL,
  `team_leader` int(11) NOT NULL,
  `delivery_term` bigint(20) unsigned NOT NULL,
  `status` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `delivery_term` (`delivery_term`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `spw_project_request_notification`
--

CREATE TABLE IF NOT EXISTS `spw_project_request_notification` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from` bigint(20) unsigned NOT NULL,
  `to` bigint(20) unsigned NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `is_read_flag` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `to` (`to`),
  KEY `from` (`from`,`to`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `spw_project_status`
--

CREATE TABLE IF NOT EXISTS `spw_project_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `spw_project_status`
--

INSERT INTO `spw_project_status` (`id`, `name`) VALUES
(1, 'created'),
(2, 'sent for approval'),
(3, 'approved'),
(4, 'rejected'),
(5, 'done');

-- --------------------------------------------------------

--
-- Table structure for table `spw_role`
--

CREATE TABLE IF NOT EXISTS `spw_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `spw_role`
--

INSERT INTO `spw_role` (`id`, `name`, `description`) VALUES
(1, 'admin', NULL),
(2, 'head professor', 'professor in charge of the class'),
(3, 'professor', 'a professor can act also as a mentor'),
(4, 'client', NULL),
(5, 'student', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spw_role_user`
--

CREATE TABLE IF NOT EXISTS `spw_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role` bigint(20) unsigned NOT NULL,
  `user` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `role` (`role`,`user`),
  KEY `user` (`user`),
  KEY `user_2` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `spw_skill`
--

CREATE TABLE IF NOT EXISTS `spw_skill` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `website_active` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `spw_skill`
--

INSERT INTO `spw_skill` (`id`, `name`, `website_active`) VALUES
(1, 'C#', b'1'),
(2, 'C# 2.0/3.5', b'1'),
(3, 'C# 3.0', b'1'),
(4, 'C# 2.0', b'1'),
(5, 'C# 4.0', b'1'),
(6, 'Visual C#', b'1'),
(8, 'F#', b'1'),
(9, 'GNU/Linux', b'1'),
(10, 'C', b'1'),
(11, 'C++', b'1'),
(12, 'Java', b'1'),
(13, 'JavaServlets', b'1'),
(14, 'JavaScript', b'1'),
(15, 'jQuery', b'1'),
(16, '.NET', b'1'),
(17, '.NET CLR', b'1'),
(18, 'SQL', b'1'),
(19, 'Oracle', b'1'),
(20, 'MySQL', b'1'),
(21, 'Visual Studio', b'1'),
(23, 'XMLHTTP', b'1'),
(24, 'XML', b'1'),
(25, 'XSLT', b'1'),
(26, 'XSL', b'1'),
(27, 'Linux Server', b'1'),
(28, 'AJAX', b'1'),
(29, 'REST', b'1'),
(30, 'Entity Framework', b'1'),
(31, 'ADO.NET', b'1'),
(32, 'ADO', b'1'),
(33, 'PHP', b'1'),
(34, 'PHP 4/5', b'1'),
(35, 'PHPNuke', b'1'),
(36, 'phpMyAdmin', b'1'),
(37, 'HTML', b'1'),
(38, 'HTML 5', b'1'),
(39, 'Ruby', b'1'),
(40, 'Python', b'1'),
(41, 'NoSQL', b'1'),
(42, 'NetBeans', b'1'),
(43, 'Eclipse', b'1'),
(44, 'iOS', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `spw_skill_project`
--

CREATE TABLE IF NOT EXISTS `spw_skill_project` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `skill` bigint(20) unsigned NOT NULL,
  `project` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `skill` (`skill`,`project`),
  KEY `project` (`project`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `spw_skill_user`
--

CREATE TABLE IF NOT EXISTS `spw_skill_user` (
  `id` int(11) NOT NULL,
  `skill` bigint(20) unsigned NOT NULL,
  `user` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `skill` (`skill`,`user`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spw_term`
--

CREATE TABLE IF NOT EXISTS `spw_term` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `closed_requests` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `spw_term`
--

INSERT INTO `spw_term` (`id`, `name`, `description`, `start_date`, `end_date`, `closed_requests`) VALUES
(1, 'spring 2013', 'spring 2013', '2013-01-08', '2013-03-15', '2013-01-15'),
(2, 'fall 2013', 'fall 2013', '2013-08-26', '2013-12-13', '2013-09-02'),
(3, 'spring 2014', 'spring 2014', '2014-01-07', '2014-04-19', '2014-01-14'),
(4, 'fall 2014', 'fall 2014', '2014-08-25', '2014-12-09', '2014-09-01'),
(5, 'fall 2012', 'fall 2012', '2012-08-20', '2012-12-14', '2012-08-27'),
(6, 'spring 2012', 'spring 2012', '2012-01-09', '2012-04-13', '2012-01-16');

-- --------------------------------------------------------

--
-- Table structure for table `spw_user`
--

CREATE TABLE IF NOT EXISTS `spw_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `hash_pwd` varchar(250) DEFAULT NULL,
  `summary` varchar(2000) DEFAULT NULL,
  `graduation_term` bigint(20) unsigned DEFAULT NULL,
  `project` bigint(20) unsigned DEFAULT NULL,
  `google_id` bigint(20) DEFAULT NULL,
  `linkedin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `graduation_term` (`graduation_term`),
  KEY `graduation_term_2` (`graduation_term`),
  KEY `project` (`project`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `spw_user`
--

INSERT INTO `spw_user` (`id`, `first_name`, `last_name`, `email`, `picture`, `hash_pwd`, `summary`, `graduation_term`, `project`, `google_id`, `linkedin_id`) VALUES
(1, '', '', 'ysosa011@fiu.edu', NULL, 'c39f26d6f9cd1ff11a1ece039d40473e9d2a9735', NULL, NULL, NULL, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `spw_experience`
--
ALTER TABLE `spw_experience`
  ADD CONSTRAINT `spw_experience_ibfk_1` FOREIGN KEY (`user`) REFERENCES `spw_user` (`id`);

--
-- Constraints for table `spw_language_user`
--
ALTER TABLE `spw_language_user`
  ADD CONSTRAINT `spw_language_user_ibfk_1` FOREIGN KEY (`language`) REFERENCES `spw_language` (`id`),
  ADD CONSTRAINT `spw_language_user_ibfk_2` FOREIGN KEY (`user`) REFERENCES `spw_user` (`id`);

--
-- Constraints for table `spw_project`
--
ALTER TABLE `spw_project`
  ADD CONSTRAINT `spw_project_ibfk_1` FOREIGN KEY (`status`) REFERENCES `spw_project_status` (`id`),
  ADD CONSTRAINT `spw_project_ibfk_2` FOREIGN KEY (`delivery_term`) REFERENCES `spw_term` (`id`);

--
-- Constraints for table `spw_project_request_notification`
--
ALTER TABLE `spw_project_request_notification`
  ADD CONSTRAINT `spw_project_request_notification_ibfk_1` FOREIGN KEY (`from`) REFERENCES `spw_user` (`id`),
  ADD CONSTRAINT `spw_project_request_notification_ibfk_2` FOREIGN KEY (`to`) REFERENCES `spw_project` (`id`);

--
-- Constraints for table `spw_role_user`
--
ALTER TABLE `spw_role_user`
  ADD CONSTRAINT `spw_role_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `spw_role` (`id`),
  ADD CONSTRAINT `spw_role_user_ibfk_2` FOREIGN KEY (`user`) REFERENCES `spw_user` (`id`);

--
-- Constraints for table `spw_skill_project`
--
ALTER TABLE `spw_skill_project`
  ADD CONSTRAINT `spw_skill_project_ibfk_1` FOREIGN KEY (`skill`) REFERENCES `spw_skill` (`id`),
  ADD CONSTRAINT `spw_skill_project_ibfk_2` FOREIGN KEY (`project`) REFERENCES `spw_project` (`id`);

--
-- Constraints for table `spw_skill_user`
--
ALTER TABLE `spw_skill_user`
  ADD CONSTRAINT `spw_skill_user_ibfk_1` FOREIGN KEY (`skill`) REFERENCES `spw_skill` (`id`),
  ADD CONSTRAINT `spw_skill_user_ibfk_2` FOREIGN KEY (`user`) REFERENCES `spw_user` (`id`);

--
-- Constraints for table `spw_user`
--
ALTER TABLE `spw_user`
  ADD CONSTRAINT `spw_user_ibfk_1` FOREIGN KEY (`graduation_term`) REFERENCES `spw_term` (`id`),
  ADD CONSTRAINT `spw_user_ibfk_2` FOREIGN KEY (`project`) REFERENCES `spw_project` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
