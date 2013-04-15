-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 26, 2013 at 12:46 AM
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

--
-- Dumping data for table `spw_language`
--

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

--
-- Dumping data for table `spw_project_status`
--

INSERT INTO `spw_project_status` (`id`, `name`) VALUES
(1, 'created'),
(2, 'sent for approval'),
(3, 'approved'),
(4, 'rejected'),
(5, 'done');

--
-- Dumping data for table `spw_role`
--

INSERT INTO `spw_role` (`id`, `name`, `description`) VALUES
(1, 'admin', NULL),
(2, 'head professor', 'professor in charge of the class'),
(3, 'professor', 'a professor can act also as a mentor'),
(4, 'client', NULL),
(5, 'student', NULL);


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
(44, 'iOS', b'1'),
(45, 'RESTful WebServices', b'0');

--
-- Dumping data for table `spw_term`
--

INSERT INTO `spw_term` (`id`, `name`, `description`, `start_date`, `end_date`, `closed_requests`) VALUES
(1, 'Spring 2013', 'spring 2013', '2013-01-08', '2013-04-30', '2013-04-30'),
(2, 'Fall 2013', 'fall 2013', '2013-08-26', '2013-12-13', '2013-09-02'),
(3, 'Spring 2014', 'spring 2014', '2014-01-07', '2014-04-19', '2014-01-14'),
(4, 'Fall 2014', 'fall 2014', '2014-08-25', '2014-12-09', '2014-09-01'),
(5, 'Fall 2012', 'fall 2012', '2012-08-20', '2012-12-14', '2012-08-27'),
(6, 'Spring 2012', 'spring 2012', '2012-01-09', '2012-04-13', '2012-01-16');

--
-- Dumping data for table `spw_user`
--



INSERT INTO `spw_user` (`id`, `first_name`, `last_name`, `email`, `picture`, `hash_pwd`, `summary_spw`, `headline_linkedIn`, `summary_linkedIn`, `positions_linkedIn`, `graduation_term`, `project`, `google_id`, `linkedin_id`, `facebook_id`) VALUES
(63, 'Masoud', 'Sadjadi', 'masoud@fiu.com', 'http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/2/000/00d/234/1554fd3.jpg', 'cbfdff2e561d061d119e68c15f2f2820477eba3f', 'My goal with this class is to prepare my students for the real world market. This will be a tough class. ', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
(64, 'Juan ', 'Caraballo', 'juancaraballo@ibm.com', 'http://www.cis.fiu.edu/photo-gallery/d/8378-2/Juan+Caraballo.jpg', '741f9373d57d707d577e955bff933fbe2d7f0830', 'I''m from IBM. I will work hard with students to get great projects at the end of the term. ', '', NULL, '', NULL, NULL, NULL, NULL, NULL),
(65, 'Keiser ', 'Moya', 'keisermoya@yahoo.com', 'http://m.c.lnkd.licdn.com/media/p/7/000/1e8/39e/1e9388f.jpg', '542a628b047b5751d070fbd222141d8a383000e4', 'Great student!', '', NULL, '', 1,NULL, NULL, NULL, NULL),
(70, 'Karen', 'Fernandez', 'karenfernandez@fiu.edu', 'http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/5/000/22d/202/19edd27.jpg', '0c566738e5a91c4168641d64c3df811527599a8d', 'I am a good student. Like to work hard. I am looking forward to work on mobile applications for my Senior Project. Please email me if you are interested  in me as a team member. ', '', NULL, '', 1, NULL, NULL, NULL, NULL);


--
-- Dumping data for table `spw_project`
--

INSERT INTO `spw_project` (`id`, `title`, `description`, `max_students`, `proposed_by`, `delivery_term`, `status`) VALUES
(1, 'Virtual Job Fair', 'This project develops a Web site that makes it easy for FIU-SCIS students to find jobs and for potential employers to find talent', 5, 63, 1, 3),
(5, 'Online Judge', 'This project develops a mobile application that can be quickly and easily installed on most popular mobile devices such as iPhones, Android cell phones, iPads, and other handheld devices that Senior Project judges may carry in their pockets, briefcase, etc. The judges should be able to download and install the software when they sign in at the registration desk at the Senior Projects Demo Event. They should be able to register online, login, and get their assignments. The software should allow an admin user to define how many students will be evaluated by each judge. The list of ongoing projects and the students and mentors working on the projects should be retrieved from the Senior Project Web Site project. The software should randomly make the assignments and should provide an easy way for the judges to find the individuals and enter their evaluations online.', 3, 64, 1, 3),
(6, ' vMoodle Social', 'This project integrate Facebook with vMoodle. ', 5, 65, 1, 2);


UPDATE spw_user
SET project = 6
WHERE id = 65;

UPDATE spw_user
SET project = 6
WHERE id = 70;



--
-- Dumping data for table `spw_mentor_project`
--

INSERT INTO `spw_mentor_project` (`id`, `mentor`, `project`) VALUES
(1, 63, 1),
(2, 64, 5),
(3, 63, 6),
(4, 64, 1);


--
-- Dumping data for table `spw_role_user`
--

INSERT INTO `spw_role_user` (`id`, `role`, `user`) VALUES
(6, 2, 63),
(1, 3, 63),
(4, 4, 64),
(5, 5, 65),
(12, 5, 70);

--
-- Dumping data for table `spw_skill_user`
--

INSERT INTO `spw_skill_user` (`id`, `skill`, `user`) VALUES
(1, 1, 64),
(2, 24, 64),
(3, 16, 64),
(4, 12, 64),
(5, 33, 64),
(6, 18, 63),
(7, 21, 63),
(8, 33, 63),
(9, 24, 63),
(10, 1, 65),
(11, 33, 65),
(12, 21, 65);


--
-- Dumping data for table `spw_skill_project`
--

INSERT INTO `spw_skill_project` (`id`, `skill`, `project`) VALUES
(1, 1, 1),
(2, 24, 1),
(3, 12, 1),
(4, 18, 1),
(5, 33, 1),
(6, 16, 1),
(7, 24, 5),
(8, 44, 5),
(9, 37, 5),
(10, 9, 6),
(11, 40, 6),
(12, 33, 6),
(13, 1, 6),
(14, 21, 6),
(15, 16, 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;