-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 07:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be16_cr11_animal_adoption_mohamad`
--
CREATE DATABASE IF NOT EXISTS `be16_cr11_animal_adoption_mohamad` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be16_cr11_animal_adoption_mohamad`;

-- --------------------------------------------------------

--
-- Table structure for table `adoption`
--

CREATE TABLE `adoption` (
  `id` int(11) NOT NULL,
  `date_adoption` date NOT NULL,
  `fk_animal_id` int(11) DEFAULT NULL,
  `fk_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adoption`
--

INSERT INTO `adoption` (`id`, `date_adoption`, `fk_animal_id`, `fk_user_id`) VALUES
(9, '2022-11-11', 3, 1),
(10, '0000-00-00', 11, 1),
(11, '2022-07-14', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `live` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `dis` varchar(255) NOT NULL,
  `size` enum('small','medium','big') NOT NULL,
  `age` int(3) NOT NULL,
  `vaccinated` enum('Yes','No') NOT NULL,
  `breed` varchar(50) NOT NULL,
  `status` enum('Adopted','Available') NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `name`, `picture`, `live`, `location`, `dis`, `size`, `age`, `vaccinated`, `breed`, `status`) VALUES
(1, 'Bottle-nose', 'pic1.png', 'Wonosari', '62 Washington Hill', 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst', 'small', 4, 'Yes', 'pigeon', 'Available'),
(2, 'White-throated', 'pic2.png', 'Cadiz', '86706 Old Gate Terrace', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', 'small', 2, 'Yes', 'dog', 'Available'),
(3, 'Vicuna', 'pic3.png', 'Sampués', '0299 Claremont Junction', 'congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', 'small', 8, 'Yes', 'cat', 'Available'),
(4, 'barasingha', 'pic4.png', 'Cadiz', '86706 Old Gate Terrace', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', 'small', 2, 'No', 'dog', 'Available'),
(5, 'brown', 'pic5.png', 'Sampués', '0299 Claremont Junction', 'congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', 'small', 8, 'Yes', ' rat', 'Available'),
(6, 'Hyena', 'pic6.png', 'Kalajoki', '7 Sage Hill', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', 'medium', 6, 'Yes', 'pigeon', 'Available'),
(7, 'Devil', 'pic7.png', 'Zaïo', '5417 Namekagon Parkway', 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan', 'small', 1, 'No', 'pigeon', 'Available'),
(8, 'Kinkajou', 'pic8.png', 'Kalajoki', '7 Sage Hill', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', 'big', 7, 'Yes', ' rat', 'Available'),
(9, 'Kudu', 'pic9.png', 'Zaïo', '5417 Namekagon Parkway', 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan', 'big', 9, 'Yes', 'dog', 'Available'),
(10, 'Capuchin', 'pic10.png', 'Qarāwul', '2691 Arizona Point', 'pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem', 'big', 9, 'Yes', 'pigeon', 'Available'),
(11, 'greater', 'pic11.png', 'Žemaičių Naumiestis', '522 Eggendart Terrace', 'sit amet eleifend pede libero quis orci nullam molestie nibh', 'small', 10, 'Yes', 'dog', 'Available'),
(13, 'max', 'picanimal.png', 'veinna', 'veinna', 'An ingenious code hidden in the works of Leonardo da Vinci. A desperate race through the cathedrals and castles of Europe. An astonishing truth concealed for centuries', 'medium', 12, 'No', 'dog', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `status` enum('user','adm') DEFAULT 'user',
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `password`, `date_of_birth`, `email`, `address`, `picture`, `status`, `phone_number`) VALUES
(1, 'john', 'Doe', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '0000-00-00', 'mohamad@gmail.com', '4762 Stratford Court', '62dacd3520d18.png', 'user', '56348648'),
(2, 'mohamad', 'helli', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '1244-04-12', 'mo@gmail.com', '2562 Gateway Avenue', 'picadmin.png', 'adm', '66178824'),
(3, 'marry', 'Doe', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '1983-03-12', 'Doe@gmail.com', 'vienna', 'pic23.png', 'user', '654984538'),
(4, 'Sara', 'Doe', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '1233-03-12', 'sara@gmail.com', 'vinna', 'pic22.png', 'user', '5482284585'),
(5, 'nour', 'Doe', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '2002-07-17', 'nour@gmail.com', 'vienna', 'pic21.png', 'user', '56489745');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoption`
--
ALTER TABLE `adoption`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_animal_id` (`fk_animal_id`),
  ADD KEY `fk_user_id` (`fk_user_id`);

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoption`
--
ALTER TABLE `adoption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adoption`
--
ALTER TABLE `adoption`
  ADD CONSTRAINT `adoption_ibfk_1` FOREIGN KEY (`fk_animal_id`) REFERENCES `animal` (`id`),
  ADD CONSTRAINT `adoption_ibfk_2` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
