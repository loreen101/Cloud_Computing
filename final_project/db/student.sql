-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: May 06, 2024 at 08:34 PM
-- Server version: 8.4.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `Student` (
  `id` bigint NOT NULL,
  `name` varchar(50) NOT NULL,
  `CGPA` float NOT NULL,
  `age` int NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `email` text NOT NULL,
  `favorite_color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `CGPA`, `age`, `phone_number`, `email`, `favorite_color`) VALUES
(2022565968, 'Amany Fathy Mohamed Yaseen', 3.8126, 22, '01115382189', 'amany.f.yaseen01@gmail.com\r\n', 'blue'),
(20221310699, 'Hagar Tarek Abdelfatah Mohamed Shaheen', 3.8, 20, '01014254354', 'ahagarshaheen2004@gmail.com\r\n', 'yellow'),
(20221377256, 'Loreen Mohamed Saeed Mohamed', 3.8, 21, '01005624734', 'loreensaeed@gmail.com', 'red'),
(20221377458, 'Nada Mohamed Mahfouz Zakaria Henedy', 3.8, 20, '01227713733', 'nada_henedy@yahoo.com', 'kashmir'),
(20221377562, 'Sama Ahmed Mohamed Barakat', 3.811, 21, '01062224193', 'sama.ab64@gamail.com', 'lavander');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
