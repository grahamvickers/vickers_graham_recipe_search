-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Nov 22, 2021 at 08:32 PM
-- Server version: 10.3.21-MariaDB-1:10.3.21+maria~bionic
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livesearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recipes`
--

CREATE TABLE `tbl_recipes` (
  `recipe_id` smallint(4) UNSIGNED NOT NULL,
  `recipe_type` varchar(30) NOT NULL,
  `recipe_name` varchar(300) NOT NULL,
  `recipe_bio` text NOT NULL,
  `recipe_time` varchar(30) NOT NULL,
  `recipe_cost` varchar(15) NOT NULL,
  `recipe_image` varchar(30) NOT NULL,
  `recipe_thumbnail` varchar(125) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_recipes`
--

INSERT INTO `tbl_recipes` (`recipe_id`, `recipe_type`, `recipe_name`, `recipe_bio`, `recipe_time`, `recipe_cost`, `recipe_image`, `recipe_thumbnail`) VALUES
(1, 'Chicken', 'Kansas City Spatchcock Chicken', 'A great dinner for a summer night BBQ with friends!', 'Prep time: 3.5 hours', 'Cost: $$', 'images/chicken.jpg', 'images/chicken.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_recipes`
--
ALTER TABLE `tbl_recipes`
  ADD PRIMARY KEY (`recipe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_recipes`
--
ALTER TABLE `tbl_recipes`
  MODIFY `recipe_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
