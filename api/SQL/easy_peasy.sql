-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 12:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easy_peasy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ad_id` int(11) NOT NULL,
  `ad_name` varchar(30) NOT NULL,
  `ad_gender` char(1) NOT NULL,
  `ad_data_of_birth` date NOT NULL,
  `ad_password` varchar(30) NOT NULL,
  `ad_email` varchar(30) NOT NULL,
  `te_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classification`
--

CREATE TABLE `classification` (
  `cla_number` int(11) NOT NULL,
  `cla_name` varchar(30) NOT NULL,
  `su_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classification`
--

INSERT INTO `classification` (`cla_number`, `cla_name`, `su_number`) VALUES
(1, 'mechanical engineering', 1),
(2, 'Electrical and electronic engi', 1),
(3, 'civil engineering', 1),
(4, 'Chemical Engineering', 1),
(5, 'Computer Engineering', 1),
(6, 'Fine Arts', 2),
(7, 'graphic design', 2),
(8, 'Fashion design', 2),
(9, 'photographer', 2),
(15, 'English', 3),
(16, 'Chinese', 3),
(17, 'Spanish', 3),
(18, 'Metaphysics', 4),
(19, 'Ethics', 4),
(20, 'Political philosophy', 4),
(21, 'Religious philosophy', 4),
(22, 'Analytical philosophy', 4),
(23, 'Scientific philosophy', 4),
(24, 'Mathematical Statistics', 5),
(25, 'Computational statistics', 5),
(26, 'Financial Mathematics', 5),
(27, 'Environmental statistics', 5),
(28, 'Differentials and integration', 5),
(29, 'Thermodynamics and fluids', 5),
(30, 'C++', 6),
(31, 'Html', 6),
(32, 'JavaScript', 6),
(33, 'Css', 6),
(34, 'PHP', 6),
(35, 'Flutter', 6),
(36, 'Dart', 6);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `cl_id` int(11) NOT NULL,
  `cl_name` varchar(30) NOT NULL,
  `cl_gender` char(1) NOT NULL,
  `cl_data_of_birth` date NOT NULL,
  `cl_password` varchar(30) NOT NULL,
  `cl_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`cl_id`, `cl_name`, `cl_gender`, `cl_data_of_birth`, `cl_password`, `cl_email`) VALUES
(1, 'jon', 'm', '2004-02-18', 'jon123', 'jon122@gmail.com'),
(2, 'Momen Salah', 'm', '2002-04-18', 'box122memo.com', 'momensalah1223@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `client_admin`
--

CREATE TABLE `client_admin` (
  `cl_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `co_number` int(11) NOT NULL,
  `co_name` varchar(60) NOT NULL,
  `cla_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`co_number`, `co_name`, `cla_number`) VALUES
(1, 'MIT 2.003SC Engineering Dynamics, Fall 2011', 1),
(2, 'Mechanical Engineering Classes', 1),
(7, 'Electrical engineering', 2),
(8, 'CEEN 101 - Introduction to Civil Engineering', 3),
(9, 'English Course - Beginner 1', 15),
(10, 'A comprehensive course to learn the English language from sc', 15),
(11, 'FREE English Course - Learn English', 15),
(12, 'English Course For Beginners - Level 1', 15);

-- --------------------------------------------------------

--
-- Table structure for table `course_client`
--

CREATE TABLE `course_client` (
  `co_number` int(11) NOT NULL,
  `cl_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_teacher`
--

CREATE TABLE `course_teacher` (
  `co_number` int(11) NOT NULL,
  `te_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_teacher`
--

INSERT INTO `course_teacher` (`co_number`, `te_id`) VALUES
(1, 1),
(2, 2),
(2, 3),
(8, 4),
(9, 6),
(10, 7),
(11, 12),
(12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `su_number` int(11) NOT NULL,
  `su_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`su_number`, `su_name`) VALUES
(1, 'Engineering and technology'),
(2, 'Arts and design'),
(3, 'Languages'),
(4, 'Philosophy'),
(5, 'Statistics and applied mathema'),
(6, 'programming languages');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `te_id` int(11) NOT NULL,
  `te_data_of_birth` date NOT NULL,
  `te_name` varchar(30) NOT NULL,
  `te_password` varchar(30) NOT NULL,
  `te_gender` char(1) NOT NULL,
  `te_email` varchar(30) NOT NULL,
  `su_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`te_id`, `te_data_of_birth`, `te_name`, `te_password`, `te_gender`, `te_email`, `su_number`) VALUES
(1, '2005-10-11', 'MIT OpenCourseWare', 'ocw-openmatters.org', 'm', 'ocw@mit.edu', 1),
(2, '2010-02-12', 'Engineering Institute of Techn', 'Number:51971', 'm', 'eit@eit.edu.au', 1),
(3, '2005-10-11', 'Magic Marks', 'subscription_center', 'm', 'mail2dipesh@gmail.com', 1),
(4, '2016-01-13', 'Office Hours', 'Dr.KevinFranke', 'm', 'officehours4028@gmail.com', 1),
(6, '2013-02-20', 'Shaw English Online', 'TESOLCertificate2001', 'f', 'shaweducation@gmail.com', 3),
(7, '2017-10-12', 'ZAmericanEnglish', '549070351', 'm', 'info@zamericanenglilsh.com', 3),
(12, '2011-05-10', 'Woodward English', 'TEs1997', 'm', 'WoodwardEnglish@gmail.com', 3),
(13, '2013-08-01', 'InEnglish', '7x064x913', 'f', 'mamhegazy1@gmail.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `vi_number` int(11) NOT NULL,
  `vi_code_youtube` varchar(30) NOT NULL,
  `vi_title` varchar(150) NOT NULL,
  `vi_data_of_birth` date NOT NULL,
  `co_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`vi_number`, `vi_code_youtube`, `vi_title`, `vi_data_of_birth`, `co_number`) VALUES
(1, 'GUvoVvXwoOQ', '1. History of Dynamics; Motion in Moving Reference Frames', '2014-04-01', 1),
(2, 'ZNVvYg1FOPk', '2. Newton\s Laws & Describing the Kinematics of Particles', '2014-04-02', 1),
(3, 'd00XI_UTKQo', '3. Motion of Center of Mass; Acceleration in Rotating Ref. F', '2014-04-03', 1),
(4, 'iMz0LiqjFmE', '4. Movement of a Particle in Circular Motion w/ Polar Coordi', '2014-04-04', 1),
(5, '7kcWV6zlcRU', 'R2. Velocity and Acceleration in Translating and Rotating Fr', '2014-04-05', 1),
(6, 'NHedXxUO-Bg', '5. Impulse, Torque, & Angular Momentum for a System of Parti', '2014-04-08', 1),
(7, 'jROTMB142T0', '6. Torque & the Time Rate of Change of Angular Momentum', '2014-04-09', 1),
(8, 'QYP-oC1kP_s', 'R3. Motion in Moving Reference Frames', '2014-04-10', 1),
(9, '63sIgMvBuEQ', '7. Degrees of Freedom, Free Body Diagrams, & Fictitious Forc', '2014-04-11', 1),
(10, 'zNCBDrnT05E', '8. Fictitious Forces & Rotating Mass', '2014-04-12', 1),
(11, 'cecD1w3-SD0', 'R4. Free Body ', '2014-04-14', 1),
(12, 'QHTJK0v404U', '9. Rotating Imbalance', '2014-04-15', 1),
(13, 'Fo-Y6kEMURk', '10. Equations of Motion, Torque, Angular Momentum of Rigid B', '2014-04-16', 1),
(14, 'PZ1zxBO1kO8', 'R5. Equations of Motion', '2014-04-18', 1),
(15, 'YZ9y4zcfCPs', '11. Mass Moment of Inertia of Rigid Bodies', '2014-04-19', 1),
(16, 'mB_rrEN_Ltc', '12. Problem Solving Methods for Rotating Rigid Bodies', '2014-04-20', 1),
(17, '6wPHoFjnYXI', 'R6. Angular Momentum and Torque', '2014-04-21', 1),
(18, 'wERH7LtoUuE', '13. Four Classes of Problems With Rotational Motion', '2014-04-23', 1),
(19, 'qrbCpv3Sv34', '14. More Complex Rotational Problems & Their Equations of Mo', '2014-04-25', 1),
(20, 'Ze5nqLIYUMc', 'R7. Cart and Pendulum, Direct Method', '2014-04-29', 1),
(21, 'ehi_hkLlutw', 'Fundamentals of Mechanical Engineering', '2015-07-01', 2),
(22, 'YbjmphKVVpA', 'Cam and Follower Mechanism in Engine | Theory of Machines', '2015-07-02', 2),
(23, 'ZCFKUqCFd_A', 'Terms Used in Cam and Follower | Theory of Machines', '2015-07-03', 2),
(24, '4Y8PgUlR0bQ', 'Working of Bicycle Chain Link | Theory of Machines', '2015-07-04', 2),
(25, 'x_24FBNa788', 'What is Friction? | Theory of Machines', '2015-07-05', 2),
(26, 'VzWi7LDX8JI', 'Concept of Belt Friction | Theory of Machines', '2015-07-08', 2),
(27, 'CoCmQnQOZ0k', 'How Brake Works? | Automobile Engineering', '2015-07-09', 2),
(28, 'EMazLuxpzxE', 'Working of Flywheel | Theory of Machines', '2015-07-10', 2),
(29, 'WH5JIEz7UQA', 'Turning Moment Diagram | Theory of Machines', '2015-07-11', 2),
(30, 'NvqscXfo_0M', 'Types of Engine Governor | Theory of Machines', '2015-07-12', 2),
(31, 'e_BdqkdyX5w', 'What is a Universal Joint | Theory of Machines', '2015-07-14', 2),
(32, 'c3CalfdYZYw', 'Basic Structure of an Automobile | Automobile Engineering', '2015-07-15', 2),
(33, 'qfkTVYJIx8Q', 'Chassis Frame Construction | Automobile Engineering', '2015-07-16', 2),
(34, 'PYje-4D76kc', 'Automobile Chassis and Suspension | Automobile Engineering', '2015-07-18', 2),
(35, 'FpycxewStsE', 'Automobile Chassis and Suspension | Automobile Engineering', '2015-07-19', 2),
(36, 'ZRLXDiiUv8Q', 'Current | Introduction to electrical engineering | Electrica', '2024-05-01', 7),
(37, 'k9SwNST1eW0', 'Voltage | Introduction to electrical engineering | Electrica', '2024-05-02', 7),
(38, '4frpZ4Q0q58', 'Current direction | Electrical engineering | Khan Academy', '2024-05-03', 7),
(39, '17EhKw2tsu4', 'Conventional current', '2024-05-04', 7),
(40, 'l-h72j2-X0o', 'Ideal circuit elements | Circuit analysis | Electrical engin', '2024-05-05', 7),
(41, 'CBlfcuUXzUY', 'Ideal sources | Circuit analysis | Electrical engineering | ', '2024-05-06', 7),
(42, 'cMUWA7ZSPCU', 'Circuit terminology | Circuit analysis | Electrical engineer', '2024-05-07', 7),
(43, '1Oopq5U0b08', 'Sign convention for passive components | Electrical engineer', '2024-05-08', 7),
(64, 'ecdIcKeufzU', 'CEEN 101 - Week 1 - Welcome to Civil Engineering (Part I)', '2021-03-01', 8),
(65, 'KrxVcFoCEpw', 'CEEN 101 - Week 2 - Welcome to Civil Engineering (Part 2)', '2021-03-07', 8),
(66, 'zPwhhJtim8M', 'CEEN 101 - Week 3 - Opportunities for Student Travel and Clu', '2021-03-14', 8),
(67, 'FpWXcgi5xAw', 'CEEN 101 - Week 4 - Introduction to Structural Engineering', '2021-03-21', 8),
(68, 'MpiFB50nyBY', 'CEEN 101 - Week 5 - Planning Your Civil Engineering Courses ', '2021-03-28', 8),
(69, 'Kit115hy2uI', 'CEEN 101 - Week 6 - Introduction to Geotechnical Engineering', '2021-04-05', 8),
(70, 'wKjJs53tRCs', 'CEEN 101 - Week 7 - Introduction to Transportation Engineeri', '2021-04-12', 8),
(71, 'ln_ee0rYpI0', 'CEEN 101 - Week 8 - Q/A Panel with Graduate Students from Ci', '2021-04-19', 8),
(72, 'ciuWsaLNRcg', 'CEEN 101 - Week 9 - Introduction to Water Engineering and Hy', '2021-04-26', 8),
(73, 'f3IYQStDPIs', 'CEEN 101 - Week 10 - Q/A Panel with REAL Civil Engineers!', '2021-05-02', 8),
(74, 'CbPy_CjJR90', 'The first level: Introduction', '2014-12-01', 9),
(75, 'exIcb2_PTVM', 'The first level: Introduction', '2014-12-02', 9),
(76, 'sX7eLnvedMo', 'The first level is used before the noun (a - an)', '2014-12-03', 9),
(77, 'Db4AC9iaj4c', 'First level: Noun (singular - plural)', '2014-12-04', 9),
(78, 'Q_7Uow5vXZM', 'First level (subject pronouns)', '2014-12-05', 9),
(79, 'TOixidGqEeY', 'English Grammar Subjective Pronouns + \'Be\' Verb', '2014-12-06', 9),
(80, '4SoEvIbzwh0', 'English Grammar: Subjective Pronouns + Be + Not', '2014-12-07', 9),
(81, 'HZ0CBUsI93E', 'English Grammar: Be Verb Pronoun Questions', '2014-12-08', 9),
(82, 'gA7vk0GVOHc', 'English Grammar: Review #1 - Subjective Pronouns', '2014-12-09', 9),
(83, 'tj6fCMTUbKM', 'Grammar Check Up #1', '2014-12-10', 9),
(84, 'F1P4bBy00vg', 'English Grammar: What + Be Verb Questions', '2014-12-11', 9),
(85, 'rWmd39oMZws', 'English Grammar: This / That', '2014-12-12', 9),
(86, 'IfsMvzf5yHA', 'English Grammar: These / Those', '2014-12-13', 9),
(87, 'eByGdzdn_rw', 'English Grammar: This / That / These / Those Practice', '2014-12-14', 9),
(88, 'oBYfoG5wBP8', 'English Grammar: Possessive Adjectives', '2014-12-15', 9),
(89, 'YzInQMQ7hWE', 'English Grammar: Possessive Pronouns', '2014-12-16', 9),
(90, 'F5WDeNw9_Ek', 'English Grammar: Grammar Check Up #2', '2014-12-17', 9),
(91, 'vNTiUh72lFo', 'English Grammar: Articles + Noun', '2014-12-18', 9),
(92, '3Lj0_D1FZ3g', 'English Grammar: Prepositions in / on / under', '2014-12-19', 9),
(93, 'BLJ9pFRy-No', 'English Grammar: Beginner Adjectives', '2014-12-20', 9),
(94, 'HuNnWNu7gw0', 'English Grammar: Grammar Check Up #3', '2014-12-21', 9),
(95, 'wuBE2I6Dn-Y', 'English Grammar: Have / Has', '2014-12-22', 9),
(96, '1CAKkdFeOK4', 'English Grammar: Don\'t / Doesn\'t Have Questions', '2014-12-23', 9),
(97, '-Qb99jxYPxg', 'English Grammar: Do / Does Have Questions', '2014-12-25', 9),
(98, 'agMpwm7VnvM', 'Grammar Check Up #4', '2014-12-26', 9),
(99, '77IK9T45kiU', 'Learn English from scratch for beginners in the best way from the largest channel in the world', '2020-01-01', 10),
(100, 'AZZCsweJaiw', 'A comprehensive course to learn the English language from scratch for beginners: Learning jobs in English: Episode 2', '2020-01-02', 10),
(101, 'S_deJPyvtfo', 'A comprehensive course to learn the English language from scratch for beginners. Words about family: Episode 3', '2020-01-03', 10),
(102, 'm8VUaW1b_z8', 'A comprehensive course for learning the English language from scratch for beginners: Home and Class Words: Episode 4', '2020-01-04', 10),
(103, 'gBhK2m_CdQc', 'A comprehensive course for learning the English language from scratch for beginners: a continuation of job words: Episode 5', '2020-01-05', 10),
(104, 'Th9S81mblxo', 'Learning English for Beginners: Lesson Six: Vocabulary about animals', '2020-01-06', 10),
(105, 'gZBAXCRrl_U', 'Learning opposite adjectives in the English language: A course on learning the English language for beginners from scratch: 7', '2020-01-07', 10),
(106, '63Riw1SEDPk', 'Learn English words about vegetables: A comprehensive course for learning English from scratch: 8', '2020-01-08', 10),
(107, 'pI3CrFMsduY', 'Learning English numbers: An English language course for beginners from scratch: 9', '2020-01-09', 10),
(108, 'q_bAo_n0pDU', 'English words about time: A course to learn the English language from scratch: 10', '2020-01-10', 10),
(109, 'HIz-rb0lMAY', 'Learn English words about history: An English language teaching course for beginners from scratch: 11', '2020-01-11', 10),
(110, 'QQ66VKPsAag', 'Learn English words about sports: A complete free English language learning course for beginners: 12', '2020-01-12', 10),
(111, 'LBdAxKWOz1c', 'Words about parts of the body in English: a free English language course for beginners: 13', '2020-01-13', 10),
(112, 'LBdAxKWOz1c', 'A comprehensive course to learn the English language from scratch for beginners. A complete course from beginning to professionalism: Episode 14', '2020-01-14', 10),
(113, 'vLUn6_FMw3w', 'A comprehensive course to learn the English language from scratch for beginners. A complete course from beginning to professionalism: Episode 15', '2020-01-15', 10),
(114, 'NDuK8lpN-mI', 'A comprehensive course to learn the English language from scratch for beginners. A complete course from beginning to professionalism: Episode 16', '2020-01-16', 10),
(115, 'qQAgJxSSnbw', 'A comprehensive course to learn the English language from scratch for beginners. A complete course from beginning to professionalism: Episode 17', '2020-01-17', 10),
(116, 'l51hYjeR-K8', 'A comprehensive course to learn the English language from scratch for beginners. A complete course from beginning to professionalism: Episode 18', '2020-01-18', 10),
(117, '80tPPnffuMM', 'A comprehensive course to learn the English language from scratch for beginners. A complete course from beginning to professionalism: Episode 19', '2020-01-19', 10),
(118, '86GViC7Hi44', 'A comprehensive course to learn the English language from scratch for beginners. A complete course from beginning to professionalism: Episode 20', '2020-01-20', 10),
(119, 'v4QDGr_18v4', 'A comprehensive course to learn the English language from scratch for beginners. A complete course from beginning to professionalism: Episode 21', '2020-01-21', 10),
(120, 'HwKM7TBWHe0', 'A comprehensive course to learn the English language from scratch for beginners. A complete course from beginning to professionalism: Episode 22', '2020-01-22', 10),
(121, 'HF1XhS5Tsok', 'A comprehensive course to learn the English language from scratch for beginners. A complete course from beginning to professionalism: Episode 23', '2020-01-23', 10),
(122, 'nRA4y5Xe-eY', 'A comprehensive course to learn the English language from scratch for beginners. A complete course from beginning to professionalism: Episode 24', '2020-01-24', 10),
(123, '5VQJOtRNiFU', 'A comprehensive course for learning the English language for beginners from scratch: Episode 25, audio and video review', '2020-01-25', 10),
(124, 'Fxj0qydni_E', 'Learn English 🟢 Level 1 Lesson 1 🟢 Woodward English Course for Beginners', '2023-03-20', 11),
(125, '0Q8eQnDcCL0', 'Learn English 🟠 Level 1 ACTIVITY 1 🟠 Woodward English Course', '2023-03-21', 11),
(126, 'p-XEh0EQ1Gc', 'Learn English 🟢 Level 1 Lesson 2 🟢 We speak (language) + IN + (country)', '2023-03-22', 11),
(127, 'AuFCbGJv1_4', 'Learn English 🟠 Level 1 ACTIVITY 2 🟠 We speak (language) + IN + (country)', '2023-03-23', 11),
(128, 'LwVXrYHEk7U', 'Learn English 🟢 Level 1 Lesson 3 🟢 They live in (country) and they speak (language)', '2023-03-24', 11),
(129, '1z1wco0Whbo', 'Learn English 🟢 Level 1 Lesson 4 🟢 Cities Countries Languages', '2023-03-25', 11),
(130, 'ihfUHRQ0Ojg', 'Learn English 🟢 Level 1 Lesson 5 🟢 HE / SHE / speaks / lives - LIVES IN pronunciation', '2023-03-26', 11),
(131, 'F29llN6QRlA', 'Learn English 🟢 Level 1 Lesson 6 🟢 I drink coffee - She drinks milk', '2023-03-27', 11),
(132, '859Qcx_XPyA', '1- Online English course - first level - pronunciation of English letters', '2024-03-26', 12),
(133, 'RZHb896dxQo', '2- Online English course - first level - sentence formation and pronouns', '2024-04-25', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `te_id` (`te_id`);

--
-- Indexes for table `classification`
--
ALTER TABLE `classification`
  ADD PRIMARY KEY (`cla_number`),
  ADD KEY `su_number` (`su_number`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cl_id`);

--
-- Indexes for table `client_admin`
--
ALTER TABLE `client_admin`
  ADD PRIMARY KEY (`cl_id`,`ad_id`),
  ADD KEY `ad_id` (`ad_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`co_number`),
  ADD KEY `cla_number` (`cla_number`);

--
-- Indexes for table `course_client`
--
ALTER TABLE `course_client`
  ADD PRIMARY KEY (`co_number`,`cl_id`),
  ADD KEY `cl_id` (`cl_id`);

--
-- Indexes for table `course_teacher`
--
ALTER TABLE `course_teacher`
  ADD PRIMARY KEY (`co_number`,`te_id`),
  ADD KEY `te_id` (`te_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`su_number`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`te_id`),
  ADD KEY `su_number` (`su_number`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`vi_number`),
  ADD KEY `co_number` (`co_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classification`
--
ALTER TABLE `classification`
  MODIFY `cla_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `cl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `co_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `su_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `te_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `vi_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`te_id`) REFERENCES `teacher` (`te_id`);

--
-- Constraints for table `classification`
--
ALTER TABLE `classification`
  ADD CONSTRAINT `classification_ibfk_2` FOREIGN KEY (`su_number`) REFERENCES `subject` (`su_number`);

--
-- Constraints for table `client_admin`
--
ALTER TABLE `client_admin`
  ADD CONSTRAINT `client_admin_ibfk_2` FOREIGN KEY (`cl_id`) REFERENCES `client` (`cl_id`),
  ADD CONSTRAINT `client_admin_ibfk_3` FOREIGN KEY (`ad_id`) REFERENCES `admin` (`ad_id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`cla_number`) REFERENCES `classification` (`cla_number`);

--
-- Constraints for table `course_client`
--
ALTER TABLE `course_client`
  ADD CONSTRAINT `course_client_ibfk_1` FOREIGN KEY (`cl_id`) REFERENCES `client` (`cl_id`),
  ADD CONSTRAINT `course_client_ibfk_2` FOREIGN KEY (`co_number`) REFERENCES `course` (`co_number`);

--
-- Constraints for table `course_teacher`
--
ALTER TABLE `course_teacher`
  ADD CONSTRAINT `course_teacher_ibfk_2` FOREIGN KEY (`co_number`) REFERENCES `course` (`co_number`),
  ADD CONSTRAINT `course_teacher_ibfk_3` FOREIGN KEY (`te_id`) REFERENCES `teacher` (`te_id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`su_number`) REFERENCES `subject` (`su_number`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`co_number`) REFERENCES `course` (`co_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
