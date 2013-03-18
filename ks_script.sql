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
-- Dumping data for table `spw_user`
--

INSERT INTO `spw_user` (`id`, `first_name`, `last_name`, `email`, `picture`, `hash_pwd`, `summary_spw`, `headline_linkedIn`, `summary_linkedIn`, `positions_linkedIn`, `graduation_term`, `project`, `google_id`, `linkedin_id`, `facebook_id`) VALUES
(1, 'Alan', 'A', 'alan@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600',        null, '', NULL, '', 3, 	null, null, null, null),
(2, 'Briam', 'B', 'briam@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600',      null, '', null, '', NULL, null, null, null, null),
(3, 'Charlie', 'C', 'charlie@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600',  null, '', null, '', NULL, NULL, null, null, null),
(4, 'Don', 'D', 'don@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600',          null, '', null,'', 4, null, null, null, null),
(5, 'Anthony', 'A', 'anthony@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600',  null, '', NULL, '', 4, 	null, null, null, null),
(6, 'Peter', 'P', 'peter@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600',      null, '', NULL, '', 3, 	null, null, null, null),
(7, 'Katia', 'K', 'katia@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600',      null, '', NULL, '', 4, 	null, null, null, null),
(8, 'Richard', 'R', 'richard@gmail.com', null, 'a150f4d03a8df5d1400a369b4a5aa0dbd2b26600',  null, '', NULL, '', 4, 	null, null, null, null);
-- --------------------------------------------------------

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
-- Updating data for table `spw_user`
--

UPDATE spw_user
SET project = 2
WHERE id = 1;

UPDATE spw_user
SET project = 4
WHERE id = 5;

UPDATE spw_user
SET project = 2
WHERE id = 6;

UPDATE spw_user
SET project = 4
WHERE id = 7;

UPDATE spw_user
SET project = 4
WHERE id = 8;

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

-- ---------------------------------------------------------
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
(4, 3, 2),
(5, 3, 1),
(6, 3, 4),
(7, 3, 5),
(8, 3, 6),
(9, 3, 7),
(10, 3, 8);

-- --------------------------------------------------------
---
--- Dumping data for table `spw_language`
---

INSERT INTO `spw_language` (`id`, `name`) VALUES
(1, 'English'),
(2, 'Spanish'),
(3, 'French'),
(4, 'Chinese'),
(5, 'Dutch'),
(6, 'Italian'),
(7, 'Mandarin'),
(8, 'Portuguese'),
(9, 'Russian');
-- --------------------------------------------------------

---
--- Dumping data for table `spw_project_status`
---

INSERT INTO `spw_project_status` (`id`, `name`) VALUES
(1, 'created'),
(2, 'sent for approval'),
(3, 'approved'),
(4, 'rejected'),
(5, 'done');

-- --------------------------------------------------------

---
--- Dumping data for table `spw_role`
---

INSERT INTO `spw_role` (`id`, `name`, `description`) VALUES
(1, 'admin', NULL),
(2, 'head professor', 'professor in charge of the class'),
(3, 'professor', 'a professor can act also as a mentor'),
(4, 'client', NULL),
(5, 'student', NULL);

-- --------------------------------------------------------
---
--- Dumping data for table `spw_skill`
---

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
(44, 'iOS', b'1'),
(45, 'RESTful WebServices', b'0');

-- --------------------------------------------------------

---
--- Dumping data for table `spw_term`
---

INSERT INTO `spw_term` (`id`, `name`, `description`, `start_date`, `end_date`, `closed_requests`) VALUES
(1, 'spring 2013', 'spring 2013', '2013-01-08', '2013-04-15', '2013-01-15'),
(2, 'fall 2013', 'fall 2013', '2013-08-26', '2013-12-13', '2013-09-02'),
(3, 'spring 2014', 'spring 2014', '2014-01-07', '2014-04-19', '2014-01-14'),
(4, 'fall 2014', 'fall 2014', '2014-08-25', '2014-12-09', '2014-09-01'),
(5, 'fall 2012', 'fall 2012', '2012-08-20', '2012-12-14', '2012-08-27'),
(6, 'spring 2012', 'spring 2012', '2012-01-09', '2012-04-13', '2012-01-16');

-- --------------------------------------------------------


-- -------------------------------------------------------
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;