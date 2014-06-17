-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 10, 2014 at 10:47 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `final_teacher`
--
CREATE DATABASE IF NOT EXISTS `final_teacher` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `final_teacher`;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_options`
--

CREATE TABLE IF NOT EXISTS `assignment_options` (
  `Option_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Questions_Id` int(11) NOT NULL,
  `Options` text NOT NULL,
  `Correct_Ans` varchar(10) NOT NULL,
  PRIMARY KEY (`Option_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `assignment_options`
--

INSERT INTO `assignment_options` (`Option_Id`, `Questions_Id`, `Options`, `Correct_Ans`) VALUES
(1, 2, 'langauage#plateform#specification#not', '1'),
(2, 4, 'unique key#unique key with no null#candidate key#none of the above', '2'),
(62, 5, 'Unique key with no null#unique key#Uniquely identified each rows of table #candidate key with not null', '1 3');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_questions`
--

CREATE TABLE IF NOT EXISTS `assignment_questions` (
  `Question_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Assignment_Id` int(11) NOT NULL,
  `Assignment_Question` text NOT NULL,
  `Question_Type` varchar(100) NOT NULL,
  `explanation` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`Question_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `assignment_questions`
--

INSERT INTO `assignment_questions` (`Question_Id`, `Assignment_Id`, `Assignment_Question`, `Question_Type`, `explanation`, `answer`) VALUES
(2, 2, 'java is', 'Single', '', ''),
(4, 4, 'Primary key is', 'Single', '', ''),
(5, 4, 'Primary key are', 'Multi', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_solutions`
--

CREATE TABLE IF NOT EXISTS `assignment_solutions` (
  `Solution_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Assignment_Id` int(11) NOT NULL,
  `File_Name` varchar(100) NOT NULL,
  `Upload_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Solution_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `Book_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Chapter_Id` int(11) NOT NULL,
  `Teacher_Id` int(11) NOT NULL,
  `Book_Name` varchar(50) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Book_Type` varchar(100) DEFAULT NULL,
  `Name_Url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Book_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_Id`, `Chapter_Id`, `Teacher_Id`, `Book_Name`, `Description`, `Book_Type`, `Name_Url`) VALUES
(1, 7, 13, 'Java', 'Complete Reference of Java', 'File', '1aptitude_test.sql'),
(2, 7, 13, 'Java', 'Complete Refrence of java', 'URL', 'http://www.google.com'),
(3, 3, 13, 'Php', 'PHP My Admin', 'File', '3DPR (25-03-2014).docx'),
(5, 7, 13, 'php', 'basic php', 'File', '5DPR (25-03-2014).docx'),
(6, 7, 13, 'pdf', '', 'File', '6123.pdf'),
(7, 7, 13, 'Html', '', 'URL', 'http://www.google.com');

-- --------------------------------------------------------

--
-- Table structure for table `chapter_added`
--

CREATE TABLE IF NOT EXISTS `chapter_added` (
  `Chapter_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Teacher_Id` int(11) NOT NULL,
  `Subject_Id` int(11) NOT NULL,
  `Class_ID` int(11) NOT NULL,
  PRIMARY KEY (`Chapter_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `chapter_added`
--

INSERT INTO `chapter_added` (`Chapter_Id`, `Teacher_Id`, `Subject_Id`, `Class_ID`) VALUES
(3, 13, 2, 1),
(4, 13, 2, 1),
(5, 13, 1, 1),
(6, 13, 1, 1),
(7, 13, 1, 1),
(8, 13, 1, 1),
(9, 13, 1, 1),
(11, 13, 2, 1),
(12, 13, 1, 1),
(13, 13, 1, 1),
(14, 13, 1, 1),
(15, 13, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chapter_assignment`
--

CREATE TABLE IF NOT EXISTS `chapter_assignment` (
  `Assignment_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Teacher_Id` int(11) NOT NULL,
  `Chapter_Id` int(11) NOT NULL,
  PRIMARY KEY (`Assignment_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `chapter_assignment`
--

INSERT INTO `chapter_assignment` (`Assignment_Id`, `Teacher_Id`, `Chapter_Id`) VALUES
(2, 13, 7),
(4, 13, 7),
(5, 13, 7),
(6, 13, 7);

-- --------------------------------------------------------

--
-- Table structure for table `chapter_test`
--

CREATE TABLE IF NOT EXISTS `chapter_test` (
  `Test_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Chapter_Id` int(11) NOT NULL,
  `Teacher_Id` int(11) NOT NULL,
  PRIMARY KEY (`Test_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `chapter_test`
--

INSERT INTO `chapter_test` (`Test_Id`, `Chapter_Id`, `Teacher_Id`) VALUES
(1, 7, 13),
(2, 7, 13),
(3, 7, 13),
(4, 7, 13),
(5, 12, 13),
(6, 13, 13),
(7, 7, 13);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `Class_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Class_Name` varchar(100) NOT NULL,
  `Teacher_Id` int(11) NOT NULL,
  PRIMARY KEY (`Class_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class_Id`, `Class_Name`, `Teacher_Id`) VALUES
(1, 'B.tech', 13);

-- --------------------------------------------------------

--
-- Table structure for table `create_assignment`
--

CREATE TABLE IF NOT EXISTS `create_assignment` (
  `Assignment_Id` int(11) NOT NULL AUTO_INCREMENT,
  `File_Name` varchar(100) DEFAULT NULL,
  `Assignment_Type` varchar(100) NOT NULL,
  `Upload_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Assignment_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `create_assignment`
--

INSERT INTO `create_assignment` (`Assignment_Id`, `File_Name`, `Assignment_Type`, `Upload_Date`) VALUES
(2, 'Java new', 'Enter', '2014-06-02 11:43:30'),
(4, 'SQL', 'Enter', '2014-06-03 03:49:38'),
(5, '512.pdf.docx', 'File', '2014-06-03 07:53:43'),
(6, '6PROBLEM DEFINITION REPORT.doc', 'File', '2014-06-03 07:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `create_test`
--

CREATE TABLE IF NOT EXISTS `create_test` (
  `Test_Id` int(11) NOT NULL,
  `Test_Name` varchar(200) NOT NULL,
  `Test_Time` varchar(20) NOT NULL,
  `No_of_section` int(11) NOT NULL,
  `Created_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `create_test`
--

INSERT INTO `create_test` (`Test_Id`, `Test_Name`, `Test_Time`, `No_of_section`, `Created_Date`) VALUES
(1, 'Java Basics', '00:40:00', 3, '2014-05-29 04:35:45'),
(2, 'Java', '00:20:00', 2, '2014-05-29 04:52:46'),
(3, 'SQL', '00:20:00', 2, '2014-05-29 06:38:51'),
(4, 'Hibernate', '00:05:00', 2, '2014-05-30 07:22:20'),
(5, 'Hibernate basics', '00:02:00', 1, '2014-06-02 04:05:57'),
(6, 'Jdbc basics', '00:02:00', 1, '2014-06-02 10:32:19'),
(7, 'Swing', '12:00:00', 2, '2014-06-05 06:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `lms_main_admin`
--

CREATE TABLE IF NOT EXISTS `lms_main_admin` (
  `ADMIN_ID` int(11) NOT NULL,
  `USER_NAME` varchar(32) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  PRIMARY KEY (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lms_main_admin`
--

INSERT INTO `lms_main_admin` (`ADMIN_ID`, `USER_NAME`, `PASSWORD`) VALUES
(101, 'Binay Gaur', 'admin'),
(102, 'Pankaj', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `lms_main_student`
--

CREATE TABLE IF NOT EXISTS `lms_main_student` (
  `STUDENT_ID` varchar(100) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `FATHER_NAME` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `SEX` varchar(10) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `EMAIL_ID` varchar(100) NOT NULL,
  `MOBILE_NUMBER` varchar(20) NOT NULL,
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lms_main_student`
--

INSERT INTO `lms_main_student` (`STUDENT_ID`, `NAME`, `USERNAME`, `PASSWORD`, `FATHER_NAME`, `DOB`, `SEX`, `ADDRESS`, `EMAIL_ID`, `MOBILE_NUMBER`) VALUES
('12312', 'binay kumar gaur', 'binay', 'binay123', 'Mr. R.A', '1990-01-12', 'Male', 'new delhi', 'binay@gmail.com', '9971246824'),
('2324', 'binay kumar gaur', 'binay gaur', '5445', 'Mr. R.A', '1990-01-12', 'Male', 'new delhi', 'binay@gmail.com', '9971246824');

-- --------------------------------------------------------

--
-- Table structure for table `lms_main_teacher`
--

CREATE TABLE IF NOT EXISTS `lms_main_teacher` (
  `TEACHER_ID` varchar(100) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `FATHER_NAME` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `SEX` varchar(10) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `EMAIL_ID` varchar(100) NOT NULL,
  `MOBILE_NUMBER` varchar(20) NOT NULL,
  PRIMARY KEY (`TEACHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lms_main_teacher`
--

INSERT INTO `lms_main_teacher` (`TEACHER_ID`, `NAME`, `USERNAME`, `PASSWORD`, `FATHER_NAME`, `DOB`, `SEX`, `ADDRESS`, `EMAIL_ID`, `MOBILE_NUMBER`) VALUES
('101', 'binay gaur', 'binay', 'binay123', 'Mr. R.A', '1990-01-12', 'Male', 'New Delhi', 'binay@gmail.com', '9971246824'),
('12345', 'teacher1', 'teacher', 'teacher', '', '0000-00-00', '', '', '', ''),
('123456', 'fred', 'dswd', 're', '', '0000-00-00', '', '', '', ''),
('3543', 'bfdgfdg', 'fgfd', '5435', 'fgfds', '2014-06-19', 'Male', 'fgfd', 'fgfd', 'fdgdf'),
('APS123', 'Anupam Kumar', 'Anupam', 'anupam', 'Mr xyz', '1993-06-09', 'Male', 'new delhi', 'anupam@gmail.com', '9971246824'),
('cef', 'fred', 'fedf', 're', '', '0000-00-00', '', '', '', ''),
('er', 'ere', 'rer', 'ere', '', '0000-00-00', '', '', '', ''),
('rterg', 'dxs', 'fedf', 're', '', '0000-00-00', '', '', '', ''),
('ryr', 'rgr', 'yry', 'rhr', '', '0000-00-00', '', '', '', ''),
('scxs', 'ere', 'fedf', 'ere', '', '0000-00-00', '', '', '', ''),
('vvcd', 'fred', 'ere', 'ere', '', '0000-00-00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lms_teacher_query`
--

CREATE TABLE IF NOT EXISTS `lms_teacher_query` (
  `QUERY_ID` int(100) NOT NULL AUTO_INCREMENT,
  `ACK_QUERY` int(1) NOT NULL DEFAULT '0',
  `TEACHER_ID` varchar(100) NOT NULL,
  `QUERY_STRING` varchar(100) NOT NULL,
  `QUERY_TIMESTAMP` varchar(100) NOT NULL,
  PRIMARY KEY (`QUERY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `lms_teacher_query`
--

INSERT INTO `lms_teacher_query` (`QUERY_ID`, `ACK_QUERY`, `TEACHER_ID`, `QUERY_STRING`, `QUERY_TIMESTAMP`) VALUES
(39, 0, '13', 'hello how r u?', '2014-06-05 16:30:47.538'),
(40, 0, '13', 'hello how r u?', '2014-06-05 16:31:40.561'),
(41, 0, '13', 'hello how r u?', '2014-06-05 16:35:39.115'),
(42, 0, '13', 'hello how r u?', '2014-06-05 16:36:52.448'),
(43, 0, '13', 'hello how r u?', '2014-06-05 16:37:09.864'),
(44, 0, '13', 'hello how r u?', '2014-06-05 16:37:34.163'),
(45, 0, '13', 'hello how r u?', '2014-06-05 16:38:44.362'),
(46, 0, '13', 'hello how r u?', '2014-06-05 16:40:43.266'),
(47, 0, '13', 'you are not submitted paper marks.', '2014-06-05 16:42:10.732'),
(48, 0, '13', 'you are not submitted paper marks.', '2014-06-05 16:42:27.446'),
(49, 0, '13', 'fgdhf', '2014-06-05 17:14:59.023'),
(50, 0, 'APS123', 'fdgfdgfd', '2014-06-06 17:32:02.883'),
(51, 0, 'APS123', 'njffhghgjgh', '2014-06-06 22:35:36.497');

-- --------------------------------------------------------

--
-- Table structure for table `new_chapter`
--

CREATE TABLE IF NOT EXISTS `new_chapter` (
  `Chapter_Id` int(11) NOT NULL,
  `Chapter_Name` varchar(200) NOT NULL,
  `Descriptions` text NOT NULL,
  PRIMARY KEY (`Chapter_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_chapter`
--

INSERT INTO `new_chapter` (`Chapter_Id`, `Chapter_Name`, `Descriptions`) VALUES
(3, 'abcd', 'abcd'),
(4, 'efgh', 'efgh'),
(7, 'Mayank', 'Mayank<br>'),
(8, 'scsac', 'scsac'),
(9, 'sadsadas', 'sadsadas'),
(11, 'asda', 'sadsadad'),
(12, 'Hibernate', 'Hibernate is implementation of orm design pattern.'),
(13, 'JDBC', 'Java Database Connectivity'),
(14, 'Struts', 'Implementation of mvc design pattern '),
(15, 'ghgfh', 'gfhfghgf');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `Notification_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Notification_Type` varchar(20) NOT NULL,
  `Notification_Date` date NOT NULL,
  `Notification` varchar(500) NOT NULL,
  PRIMARY KEY (`Notification_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`Notification_Id`, `Notification_Type`, `Notification_Date`, `Notification`) VALUES
(1, 'Assignment', '2014-04-30', 'All Student will submit resume till Date 5-05-2014'),
(2, 'Test', '2014-05-13', 'Online Aptitude Test'),
(3, 'Test', '2014-06-11', 'All the test approve before end of june month ');

-- --------------------------------------------------------

--
-- Table structure for table `student_answer`
--

CREATE TABLE IF NOT EXISTS `student_answer` (
  `Student_Id` int(11) NOT NULL,
  `Test_Id` int(11) NOT NULL,
  `user_answer` varchar(100) NOT NULL,
  `Question_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_answer`
--

INSERT INTO `student_answer` (`Student_Id`, `Test_Id`, `user_answer`, `Question_Id`) VALUES
(101, 20, 'Unique key with no null', 7),
(101, 20, 'Unique key with no null', 7),
(101, 20, 'Unique key with no null', 7),
(101, 20, 'Unique key with no null', 7),
(101, 20, 'unique key', 7),
(101, 20, 'unique key', 7),
(101, 20, 'unique key', 7),
(101, 20, 'unique key', 7),
(101, 20, 'unique key', 7),
(101, 20, 'unique key', 7),
(101, 20, 'both of above', 7),
(101, 21, 'c', 10),
(101, 20, 'unique key', 7),
(101, 20, 'Unique key with no null', 7),
(101, 20, 'Unique key with no null', 7),
(101, 20, 'Open Database Connectivety', 8),
(101, 20, 'Open Database Connectivety', 8),
(101, 21, 'p', 11),
(101, 20, 'Unique key with no null', 7),
(101, 20, 'Unique key with no null', 7),
(101, 20, 'Unique key with no null', 7),
(101, 20, 'Open Database Connectivety', 8),
(101, 21, 'sss', 9),
(101, 21, 'c', 10),
(101, 21, 'p', 11),
(101, 21, 'xx', 13),
(101, 21, 'l', 12),
(101, 21, 'a', 14);

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment_marks`
--

CREATE TABLE IF NOT EXISTS `student_assignment_marks` (
  `Marks_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Student_Id` int(11) NOT NULL,
  `Subject_Id` int(11) NOT NULL,
  `Chapter_Id` int(11) NOT NULL,
  `Assignment_Id` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `User_Answer` varchar(255) NOT NULL DEFAULT 'no',
  `Question` varchar(255) NOT NULL DEFAULT 'no',
  `Total_Marks` int(11) NOT NULL DEFAULT '0',
  `Obtained_Marks` int(11) NOT NULL DEFAULT '0',
  `Uploaded_Answer` varchar(100) NOT NULL DEFAULT 'no',
  `Credit` varchar(20) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`Marks_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `student_assignment_marks`
--

INSERT INTO `student_assignment_marks` (`Marks_Id`, `Student_Id`, `Subject_Id`, `Chapter_Id`, `Assignment_Id`, `Date`, `User_Answer`, `Question`, `Total_Marks`, `Obtained_Marks`, `Uploaded_Answer`, `Credit`) VALUES
(65, 101, 1, 7, 4, '2014-06-03 12:22:17', '0/1 3', '4/5', 8, 4, '', 'no'),
(66, 101, 1, 7, 4, '2014-06-03 12:46:04', '2/1 3', '4/5', 8, 8, '', 'no'),
(67, 101, 1, 7, 2, '2014-06-03 12:48:38', '1', '2', 4, 4, '', 'no'),
(68, 101, 1, 7, 4, '2014-06-03 12:49:03', '2/1 2 4', '4/5', 8, 4, '', 'no'),
(69, 101, 1, 7, 5, '2014-06-06 14:56:23', 'no', 'no', 0, 0, '101512.pdf.docx', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE IF NOT EXISTS `student_login` (
  `Student_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Student_Name` varchar(30) NOT NULL,
  `Student_Password` varchar(30) NOT NULL,
  `email_id` varchar(32) NOT NULL,
  PRIMARY KEY (`Student_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`Student_Id`, `Student_Name`, `Student_Password`, `email_id`) VALUES
(101, 'Prabhat', 'jain', 'jain@gmail.com'),
(102, 'Mayank', 'pass', 'mayank@gmail.com'),
(103, 'Jain', 'pass', 'jain@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student_query_submission`
--

CREATE TABLE IF NOT EXISTS `student_query_submission` (
  `Query_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Student_Id` varchar(11) NOT NULL,
  `Notification_Id` int(11) NOT NULL,
  `Query` varchar(500) NOT NULL,
  `Query_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Answer` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`Query_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `student_query_submission`
--

INSERT INTO `student_query_submission` (`Query_Id`, `Student_Id`, `Notification_Id`, `Query`, `Query_Date`, `Answer`) VALUES
(1, '101', 1, 'Sir I am submitted the asignment. ', '2014-06-02 12:31:21', ''),
(2, '101', 2, 'yes it is fine.', '2014-06-02 12:47:05', ''),
(3, '101', 1, 'I want one more week to submit.', '2014-06-02 12:47:50', ''),
(4, '101', 3, 'hello', '2014-06-02 15:19:03', ''),
(5, '101', 3, 'j,vhd,fs', '2014-06-06 14:58:28', ''),
(6, '101', 3, 'njhghejeghj', '2014-06-06 17:03:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_test_answer`
--

CREATE TABLE IF NOT EXISTS `student_test_answer` (
  `Answer_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Student_Id` int(11) NOT NULL,
  `Subject_Id` int(11) NOT NULL,
  `Chapter_Id` int(11) NOT NULL,
  `Test_Id` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `User_Answer` varchar(500) NOT NULL,
  `Questions` varchar(255) NOT NULL,
  `Obtained_Marks` int(11) NOT NULL,
  `Total_Marks` int(11) NOT NULL,
  PRIMARY KEY (`Answer_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `student_test_answer`
--

INSERT INTO `student_test_answer` (`Answer_Id`, `Student_Id`, `Subject_Id`, `Chapter_Id`, `Test_Id`, `Date`, `User_Answer`, `Questions`, `Obtained_Marks`, `Total_Marks`) VALUES
(51, 101, 1, 7, 1, '2014-05-30 11:02:26', '1/1 2 3/1 3 4/1 2 4/2', '2/1/3/4/5', 20, 20),
(52, 101, 1, 7, 2, '2014-05-30 11:17:46', '1 4/1/2', '7/6/8', 12, 12),
(53, 101, 1, 7, 2, '2014-05-30 11:24:02', '1/1 4/2', '6/7/8', 8, 12),
(54, 101, 1, 7, 1, '2014-05-30 11:34:09', '0/1/1 2/2/2', '1/2/4/3/5', 8, 20),
(55, 101, 1, 7, 1, '2014-05-30 11:59:55', '2/1 2 3/3/1 2 4/2', '2/1/3/4/5', 12, 20),
(56, 101, 1, 7, 4, '2014-05-30 13:48:37', '3/0', '12/13', 4, 8),
(57, 101, 1, 7, 4, '2014-05-30 13:55:46', '3/0', '12/12/13', 4, 8),
(58, 101, 1, 7, 4, '2014-05-30 14:01:12', '0', '12', 0, 8),
(59, 101, 1, 7, 4, '2014-05-30 15:17:09', '3/0', '12/13', 4, 8),
(60, 101, 1, 7, 1, '2014-05-30 15:28:15', '0/0/0/0/0', '2/1/4/3/5', 0, 20),
(61, 101, 1, 7, 1, '2014-05-30 15:29:25', '0/0/0/0/0/0', '2/1/4/3/5', 0, 20),
(62, 101, 1, 7, 4, '2014-05-30 15:40:35', '0/0', '12/13', 0, 8),
(63, 101, 1, 7, 4, '2014-05-30 15:42:03', '3/2', '12/13', 8, 8),
(64, 101, 1, 7, 1, '2014-05-30 15:43:13', '1 2 3/1/1 3 4/1 2 4/2', '1/2/3/4/5', 20, 20),
(65, 101, 1, 7, 4, '2014-05-30 15:51:18', '3/2', '12/13/13', 8, 8),
(66, 101, 1, 7, 4, '2014-06-02 09:32:27', '3/2', '12/12/12/12/12/12/12/13', 0, 8),
(67, 101, 1, 7, 4, '2014-06-02 09:32:58', '3/2', '12/13', 8, 8),
(68, 101, 1, 7, 4, '2014-06-02 09:53:44', '0', '12/12', 0, 8),
(69, 101, 1, 12, 5, '2014-06-02 10:09:56', '0', '14/14', 0, 8),
(70, 101, 1, 12, 5, '2014-06-02 10:12:31', '1/2', '15/14', 4, 8),
(71, 101, 1, 12, 4, '2014-06-02 10:22:03', '2/0', '12/13/13/13/13/13/13', 0, 8),
(72, 101, 1, 12, 1, '2014-06-02 10:24:50', '2/1 2 3/1 3 4/1 2 4/2', '2/2/2/2/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/3/4/5', 0, 20),
(73, 101, 1, 7, 4, '2014-06-02 11:53:04', '2/0', '12/12/12/12/12/12/12/12/13/13/13/13/13/13/13/13/13/13/13/13/13/13/13/13/13/13/13', 0, 8),
(74, 101, 1, 7, 4, '2014-06-02 13:18:43', '2/0', '12/13', 0, 8),
(75, 101, 1, 7, 4, '2014-06-02 13:25:14', '3/0', '12/13/13/13/13/13', 4, 8),
(76, 101, 1, 7, 3, '2014-06-02 13:41:37', '2/2/3', '9/11/11/10/10/10', 4, 12),
(77, 101, 1, 7, 1, '2014-06-02 13:44:26', '2/2/1 2/1 2/2', '1/2/4/3/5/5', 4, 20),
(78, 101, 1, 7, 4, '2014-06-02 13:46:36', '3/2', '12/13', 8, 8),
(79, 101, 1, 7, 1, '2014-06-02 13:51:03', '1 2/2/2/1 2/2', '1/2/2/2/2/4/3/3/3/3/3/3/3/3/3/3/5', 0, 20),
(80, 101, 1, 7, 3, '2014-06-02 14:05:22', '2/2/1 4', '9/9/9/11/10/10/10/10', 0, 12),
(81, 101, 1, 7, 1, '2014-06-02 14:10:27', '1 2/2/1 3/1 2/2', '1/2/2/2/2/2/2/3/4/5', 0, 20),
(82, 101, 1, 7, 4, '2014-06-02 14:12:58', '3/3', '12/12/12/12/12/12/12/12/12/12/12/12/12/12/12/12/12/12/12/12/12/12/12/12/12/12/13', 4, 8),
(83, 101, 1, 7, 1, '2014-06-02 15:33:25', '1/1 2 4/1 2 4/1 3 4/2', '2/1/4/3/5', 16, 20),
(84, 101, 1, 7, 1, '2014-06-02 15:33:27', '1/1 2 4/1 2 4/1 3 4/2', '2/1/4/3/5', 16, 20),
(85, 101, 1, 12, 5, '2014-06-02 16:04:37', '2/2', '14/14/15', 0, 8),
(86, 101, 1, 12, 5, '2014-06-02 16:04:39', '2/2', '14/14/15', 0, 8),
(87, 101, 1, 7, 3, '2014-06-03 15:41:18', '1/1 4/3', '9/9/10/10/11/11', 0, 12),
(88, 101, 1, 7, 1, '2014-06-03 15:46:28', '1 2 3/1/1 2 4/1 3 4/2', '1/2/4/3/5', 20, 20),
(89, 101, 1, 7, 2, '2014-06-03 15:49:15', '2/1 4/2', '6/7/8', 12, 12),
(90, 101, 1, 7, 3, '2014-06-03 15:52:28', '1/3/2 3', '9/11/10', 8, 12),
(91, 101, 1, 13, 6, '2014-06-03 15:56:43', '2', '16', 4, 4),
(92, 101, 1, 12, 5, '2014-06-03 15:59:34', '1/1', '15/14', 8, 8),
(93, 101, 1, 13, 6, '2014-06-03 16:00:46', '2', '16', 4, 4),
(94, 101, 1, 7, 1, '2014-06-06 15:16:47', '1/1/1/1', '2/4/3/5', 4, 16),
(95, 101, 1, 7, 4, '2014-06-06 15:24:45', '0', '0', 0, 8),
(96, 101, 1, 7, 4, '2014-06-06 15:28:56', '1/1', '12/13', 0, 8),
(97, 101, 1, 7, 1, '2014-06-06 15:53:31', '0', '0', 0, 16),
(98, 101, 1, 7, 1, '2014-06-06 17:04:15', '2/2/1 2 4/2', '2/3/4/5', 8, 16);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `Subject_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Teacher_Id` int(11) NOT NULL COMMENT 'FK',
  `Subject_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Subject_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`Subject_Id`, `Teacher_Id`, `Subject_Name`) VALUES
(1, 13, 'Java'),
(2, 13, 'PHP'),
(3, 13, 'Hadoop');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_login`
--

CREATE TABLE IF NOT EXISTS `teacher_login` (
  `Teacher_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Password` varchar(100) NOT NULL,
  `Teacher_Name` varchar(100) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  PRIMARY KEY (`Teacher_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `teacher_login`
--

INSERT INTO `teacher_login` (`Teacher_Id`, `Password`, `Teacher_Name`, `email_id`) VALUES
(13, 'admin', 'admin', 'binay@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `test_options`
--

CREATE TABLE IF NOT EXISTS `test_options` (
  `Option_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Question_Id` int(11) NOT NULL,
  `Test_Options` varchar(255) NOT NULL,
  `Correct_Ans` varchar(10) NOT NULL,
  PRIMARY KEY (`Option_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `test_options`
--

INSERT INTO `test_options` (`Option_Id`, `Question_Id`, `Test_Options`, `Correct_Ans`) VALUES
(1, 1, 'Language#Specification#Technology#Plateform', '1 2 3'),
(2, 2, 'technology#language#plateform#envirnment', ' 1'),
(3, 3, 'Inheritance#Miltithreading#Encapsulation#Abstraction', ' 1 3 4'),
(4, 4, 'int a[][]=new int[][]#int []a[]=new int[][]#int a[]=new int [][]#int [][]a=new int[][]', ' 1 2 4'),
(5, 5, 'wrapping the data member and member funtion#Reusability reduce#complexity#none of the above', ' 2'),
(6, 6, 'window based application#web based appliaction#mobile application#none of the above', ' 2'),
(7, 7, 'Duplicate#Unique#Oreder#Unorder', ' 1 4'),
(8, 8, 'Most Confusing for developer#takes more memory#depends plateform#none of the above', ' 2'),
(9, 9, 'Unique key with no null#unique key#candidate key#none of the above', '1'),
(10, 10, 'delete#remove#drop#truncate', '1 4'),
(11, 11, '2#3#4#5', '3'),
(12, 12, 'mvc#singlton#orm#none of the above', '3'),
(13, 13, 'making platform independent#making database independate#making language independent#none of the above', '2'),
(14, 14, 'orm#mvc#factory #singlton', '1'),
(15, 15, 'to configure your data source #to configure your table data#to configure data modeling#none of the above', '1'),
(16, 16, 'reducing complexity#used to fast up of searching#for retrieving data fast#none of the above', '2'),
(17, 17, 'trytry#ytrytr#tygfh#fhfg', '1'),
(18, 18, 'nbvnb#bnc#gh#vc', '2 3');

-- --------------------------------------------------------

--
-- Table structure for table `test_questions`
--

CREATE TABLE IF NOT EXISTS `test_questions` (
  `Test_Id` int(11) NOT NULL,
  `Question_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Test_Questions` text NOT NULL,
  `Section_No` int(11) NOT NULL,
  `Question_Type` varchar(100) NOT NULL,
  PRIMARY KEY (`Question_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `test_questions`
--

INSERT INTO `test_questions` (`Test_Id`, `Question_Id`, `Test_Questions`, `Section_No`, `Question_Type`) VALUES
(1, 2, 'j2ee are', 1, 'Single'),
(1, 3, 'Oops concept are', 2, 'Multiple'),
(1, 4, 'which one correct syntax', 2, 'Multiple'),
(1, 5, 'inheritance is ', 3, 'Single'),
(2, 6, 'Applet is used for', 1, 'Single'),
(2, 7, 'ArrayList are', 1, 'Multiple'),
(2, 8, 'why java is not used pointer.', 2, 'Single'),
(3, 9, 'Primary key is', 1, 'Single'),
(3, 10, 'Deleting of all from table use command', 2, 'Multiple'),
(3, 11, 'Types jdbc driver', 2, 'Single'),
(4, 12, 'Hibernate implementation  of ..... design pattern.', 1, 'Single'),
(4, 13, 'hibernate is used for ', 2, 'Single'),
(5, 14, 'Hibernate is implemenation of', 1, 'Single'),
(5, 15, 'configuration file is used for', 1, 'Single'),
(6, 16, 'Index is used for', 1, 'Single'),
(7, 17, 'gfdhgfh', 1, 'Single'),
(7, 18, 'trytry', 2, 'Multiple'),
(8, 19, 'fgbfh', 1, 'Multiple'),
(8, 20, 'fghf', 2, 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `Video_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Chapter_Id` int(11) NOT NULL,
  `Teacher_Id` int(11) NOT NULL,
  `Video_Name` varchar(50) NOT NULL,
  `Video_Description` varchar(100) NOT NULL,
  `File_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Video_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`Video_Id`, `Chapter_Id`, `Teacher_Id`, `Video_Name`, `Video_Description`, `File_Name`) VALUES
(4, 8, 13, 'nhgjgj', 'jghj', '4file.flv'),
(5, 8, 13, 'hhhhhhhh', 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', '5a.mp4'),
(6, 8, 13, 'qq', 'qqqqqqqqqqqqq', '6a.mp4');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
