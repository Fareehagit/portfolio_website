-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 27, 2024 at 04:56 PM
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
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `inst_name` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `stdy_field` varchar(255) NOT NULL,
  `gpa_grade` varchar(255) NOT NULL,
  `start_date` year(4) NOT NULL,
  `end_date` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `inst_name`, `degree`, `stdy_field`, `gpa_grade`, `start_date`, `end_date`) VALUES
(1, 'Virtual University of Pakistan', 'Bachelor of Science', 'Computer Science - Web Development Track', 'GPA: 3.24', '2020', '2024'),
(2, 'Aspire Group Of Colleges', 'Intermediate of Computer Sciences', 'Computer Since - Programming', 'Grade: A', '2016', '2018'),
(3, 'Lahore Board', 'Matriculation of Computer Sciences', 'Computer Sciences', 'Grade: A+', '2014', '2016');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` varchar(150) NOT NULL,
  `end_date` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `job_title`, `company_name`, `description`, `start_date`, `end_date`) VALUES
(1, 'Senior Web Developer', 'Intelitec Solutions', 'Bring to the table win-win survival strategies to ensure proactive domination. At the end of the\r\n                    day, going forward, a new normal that has evolved from generation X is on the runway heading towards\r\n                    a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for\r\n                    offshoring.', 'March 2013', 'Present'),
(2, 'Web Developer', 'Intelitec Solutions', 'Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override\r\n                    the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the\r\n                    information highway will close the loop on focusing solely on the bottom line.', 'December 2011', 'March 2013'),
(3, 'Junior Web Designer', 'Shout! Media Productions', 'Podcasting operational change management inside of workflows to establish a framework. Taking\r\n                    seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball\r\n                    while performing a deep dive on the start-up mentality to derive convergence on cross-platform\r\n                    integration.', 'July 2010', 'December 2011'),
(4, 'Web Design Intern', 'Shout! Media Productions', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically\r\n                    procrastinate B2C users after installed base benefits. Dramatically visualize customer directed\r\n                    convergence without revolutionary ROI.', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fyp`
--

CREATE TABLE `fyp` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `acheivements` text NOT NULL,
  `technologies` text NOT NULL,
  `key_title` varchar(255) NOT NULL,
  `achive_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fyp`
--

INSERT INTO `fyp` (`id`, `title`, `description`, `acheivements`, `technologies`, `key_title`, `achive_title`) VALUES
(4, 'Digital Portfolio Website Development Project', 'A dynamic digital portfolio website leveraging HTML,\r\n                  CSS, Flask Framework, MySQL, XAMP Server and\r\n                  Python. Designed to showcase professional\r\n                  achievements, skills, projects, publications,\r\n                  experiences, and educational background, the website\r\n                  features a user-friendly interface for seamless\r\n                  navigation and an intuitive admin panel for effortless\r\n                  content management.', 'Demonstrated strong problem-solving skills and\r\nattention to detail in identifying and resolving\r\ntechnical issues during development and testing\r\nphases.\r\nImplemented robust security measures, including\r\n                  secure authentication mechanisms and encryption\r\n                  protocols, to protect user data and ensure data\r\n                  integrity.', '\r\nHTML, CSS, Flask Framework,\r\n                  Python, MySQL.', 'Key Technologies:', 'Acheivements:');

-- --------------------------------------------------------

--
-- Table structure for table `personalinfo`
--

CREATE TABLE `personalinfo` (
  `name` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(25) NOT NULL,
  `contact_No` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personalinfo`
--

INSERT INTO `personalinfo` (`name`, `about`, `address`, `email`, `contact_No`) VALUES
('Fareeha Liaqat', 'Innovative, deadline-driven and self-motivated software engineer with expertise in Python and\r\n                  JavaScript with a strong ability to quickly master new languages', 'Harbans Pura Lahore', 'fareehaliaqat6@gmail.com', '(+92) 3326616708');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `description`, `icon`) VALUES
(1, 'User Registration and Login Application', 'Developed a user registration and login application\r\n              using HTML, CSS, Flask Framework, and Python, with\r\n              database storage implemented using MySQL and\r\n              XAMP Server.', 'bi bi-person-plus'),
(2, 'Spotify Clone', 'Developed a Spotify clone using HTML, CSS,\r\n              JavaScript, and Bootstrap, aimed at replicating the\r\n              core functionalities and user interface of the popular\r\n              music streaming platform.', 'bi bi-music-note'),
(3, 'Clutter Folder Organizer', 'Created an open source Python script for organizing cluttered folders and directories\r\n              on a computer, categorizing files based on file types.', 'bi bi-folder2-open'),
(4, 'PDF Merger', 'Designed and open-sourced a Python script for merging multiple PDF files into a\r\n              single document, enhancing file management efficiency.', 'bi bi-file-earmark-arrow-up'),
(5, 'Currency Converter', 'Developed and open-sourced a Python script for currency conversion, enabling users to\r\n              convert between different currencies based on real-time exchange rates.', 'bi bi-cash'),
(6, 'Water Reminder Notification', 'Developed an open source Python script for sending periodic water intake reminder\r\n              notifications to users, promoting hydration and healthy habits.', 'bi bi-droplet');

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `auth_profession` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `author`, `auth_profession`, `description`, `img`) VALUES
(1, 'Saul Goodman', 'Ceo & Founder', ' Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium\r\n                  quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.', 'static/assets/img/testimonials/testimonials-1.jpg'),
(2, 'Sara Wilsson', 'Designer', ' Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis\r\n                  quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.', 'static/assets/img/testimonials/testimonials-2.jpg'),
(3, 'Jena Karlis', 'Store Owner', ' Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim\r\n                  tempor labore quem eram duis noster aute amet eram fore quis sint minim.', 'static/assets/img/testimonials/testimonials-3.jpg'),
(4, 'Matt Brandon', 'Freelancer', 'Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit\r\n                  minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.', 'static/assets/img/testimonials/testimonials-4.jpg'),
(5, 'John Larson', 'Entrepreneur', ' Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa\r\n                  labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.', 'static/assets/img/testimonials/testimonials-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_No` varchar(25) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userName`, `firstName`, `lastName`, `email`, `contact_No`, `gender`) VALUES
(1, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(2, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(3, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(4, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(5, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(6, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(7, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(8, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(9, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(10, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(11, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(12, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(13, 'fariha liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(14, 'Fareeha Liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(15, 'Fareeha Liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(16, 'Fareeha Liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(17, 'Fareeha Liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(18, 'Fareeha Liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(19, 'Fareeha Liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(20, 'Fareeha Liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(21, 'Fareeha Liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(22, 'Aliya', 'Aliya', 'Ali', 'hjkliuytgfd6@gmail.com', '03153135352', 'Female'),
(23, 'Aliya', 'Aliya', 'Ali', 'hjkliuytgfd6@gmail.com', '03153135352', 'Female'),
(24, 'Aliya', 'Aliya', 'Ali', 'hjkliuytgfd6@gmail.com', '03153135352', 'Female'),
(25, 'Fareeha Liaqat', 'Fareeha', 'Liaqat', 'fareehaliaqat6@gmail.com', '03326616708', 'Female'),
(26, 'Aliya', 'Aliya', 'Ali', 'hjkliuytgfd6@gmail.com', '03153135352', 'Female'),
(27, 'Aliya', 'Aliya', 'Ali', 'hjkliuytgfd6@gmail.com', '03153135352', 'Female'),
(28, 'Aliya', 'Aliya', 'Ali', 'hjkliuytgfd6@gmail.com', '03153135352', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `res_education`
--

CREATE TABLE `res_education` (
  `id` int(11) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `inst_name` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `start_date` year(4) NOT NULL,
  `end_date` year(4) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `res_education`
--

INSERT INTO `res_education` (`id`, `degree`, `inst_name`, `about`, `start_date`, `end_date`, `title`) VALUES
(1, 'Bachelor of Science & Computer Science', 'Virtual University of Pakistan, Lahore, Pakistan', 'With cutting-edge technology and dynamic online platforms, virtual education revolutionizes the way we\r\n                learn, making quality education more accessible and inclusive than ever before.', '2020', '2024', ''),
(2, 'Intermediate in Computer Sciences', 'Aspire Group of Colleges, Sheikhupura, Pakistan', 'Discover excellence in education at Aspire College, where personalized learning meets academic\r\n                innovation.', '2016', '2018', ''),
(3, 'Matriculation in Computer Sciences', 'Lahore Board, Sheikhupura, Pakistan', 'Explore academic excellence with Lahore Board, a renowned institution dedicated to fostering learning\r\n                and facilitating educational growth.', '2014', '2016', '');

-- --------------------------------------------------------

--
-- Table structure for table `res_projects`
--

CREATE TABLE `res_projects` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `sub_title` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `res_projects`
--

INSERT INTO `res_projects` (`id`, `title`, `description`, `sub_title`) VALUES
(1, 'User Registration and Login Application', 'Developed a user registration and login application\r\n                  using HTML, CSS, Flask Framework, and Python, with\r\n                  database storage implemented using MySQL and\r\n                  XAMP Server.', 'Open Source Projects'),
(2, 'Spotify Clone', 'Developed a Spotify clone using HTML, CSS,\r\n                  JavaScript, and Bootstrap, aimed at replicating the\r\n                  core functionalities and user interface of the popular\r\n                  music streaming platform.', ''),
(3, 'Clutter Folder Organizer', 'Created a Python script to organize cluttered folders\r\n                  and directories on a computer by categorizing files.', '');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `proficiency` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `proficiency`) VALUES
(1, 'HTML', 100),
(2, 'CSS', 90),
(3, 'JavaScript', 75),
(4, 'Python', 80),
(5, 'Bootstrap 5 ', 90),
(6, 'Flask', 55),
(7, 'Sql Server', 75);

-- --------------------------------------------------------

--
-- Table structure for table `supervision`
--

CREATE TABLE `supervision` (
  `id` int(11) NOT NULL,
  `sup_title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supervision`
--

INSERT INTO `supervision` (`id`, `sup_title`, `description`) VALUES
(1, 'Research Supervisor', 'Guided graduate students through their research projects, providing mentorship on experimental\r\n                    design, data analysis, and manuscript preparation.'),
(2, 'Project Manager', 'Led interdisciplinary teams in executing complex projects, overseeing timelines, budgets, and\r\n                    deliverables to ensure successful completion and client satisfaction.'),
(3, 'Academic Advisor', 'Provided personalized guidance to students on course selection, academic planning, career\r\n                    development, and navigating university policies and resources.'),
(4, 'Clinical Supervisor', 'Supervised interns or junior clinicians in a healthcare setting, offering guidance on patient care,\r\n                    treatment planning, documentation, and adherence to ethical standards.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `twitter` text NOT NULL,
  `facebook` text NOT NULL,
  `instagram` text NOT NULL,
  `skype` text NOT NULL,
  `linkedin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `title`, `twitter`, `facebook`, `instagram`, `skype`, `linkedin`) VALUES
(1, 'Aliya', 'Aliya', 'hjkliuytgfd6@gmail.com', 'aliya.123', 'Graphic Designer Developer', '', '', '', '', ''),
(3, '', 'Fareeha Liaqat', '', 'faree.1234', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fyp`
--
ALTER TABLE `fyp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_education`
--
ALTER TABLE `res_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_projects`
--
ALTER TABLE `res_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervision`
--
ALTER TABLE `supervision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fyp`
--
ALTER TABLE `fyp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `res_education`
--
ALTER TABLE `res_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_projects`
--
ALTER TABLE `res_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `supervision`
--
ALTER TABLE `supervision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
