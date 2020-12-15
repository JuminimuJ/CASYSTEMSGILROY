-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 05:52 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `casysgilroy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_color_theme`
--

CREATE TABLE `acc_color_theme` (
  `id` int(55) NOT NULL,
  `colorhex` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `acc_logo`
--

CREATE TABLE `acc_logo` (
  `id` int(15) NOT NULL,
  `logo_img` text NOT NULL,
  `last_updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_logo`
--

INSERT INTO `acc_logo` (`id`, `logo_img`, `last_updated`) VALUES
(1, 'casg_revised2.png', '2020-12-15 01:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `acc_pages`
--

CREATE TABLE `acc_pages` (
  `id` int(15) NOT NULL,
  `page_title` varchar(155) NOT NULL,
  `page_desc` varchar(155) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `acc_social`
--

CREATE TABLE `acc_social` (
  `id` int(55) NOT NULL,
  `social` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `acc_user`
--

CREATE TABLE `acc_user` (
  `id` int(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `hash_password` varchar(255) NOT NULL,
  `role` varchar(155) NOT NULL,
  `status` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_user`
--

INSERT INTO `acc_user` (`id`, `username`, `hash_password`, `role`, `status`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_about`
--

CREATE TABLE `page_about` (
  `id` int(15) NOT NULL,
  `about_content` text NOT NULL,
  `last_updated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page_about`
--

INSERT INTO `page_about` (`id`, `about_content`, `last_updated`, `status`) VALUES
(1, '<h2 style=\"font-style:italic\"><em><strong>For the everyday cook or a master chef looking for optimum versatility, our Master Set equips your kitchen with all the essentials you need to whip up delicious, healthy meals.</strong></em></h2>\r\n\r\n<p><strong>Experienced a meal cooked in Saladmaster. Ask us about our Hosting Program where you can earn Saladmaster products for referring your friends and family!</strong></p>\r\n\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</strong></p>\r\n\r\n<ul>\r\n	<li>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\r\n	<li>Duis aute irure dolor in reprehenderit in voluptate velit.</li>\r\n	<li>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>\r\n</ul>\r\n\r\n<p><strong>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</strong></p>\r\n', '2020-12-14 22:13:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_product`
--

CREATE TABLE `page_product` (
  `id` int(155) NOT NULL,
  `prod_title` varchar(255) NOT NULL,
  `prod_desc` varchar(255) NOT NULL,
  `prod_img` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page_product`
--

INSERT INTO `page_product` (`id`, `prod_title`, `prod_desc`, `prod_img`, `last_updated`, `status`) VALUES
(1, 'test', 'test', 'bubble-milk-tea_1607962785.png', '2020-12-15 00:19:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_services`
--

CREATE TABLE `page_services` (
  `id` int(55) NOT NULL,
  `tab_title` varchar(255) NOT NULL,
  `tab_content` text NOT NULL,
  `last_updated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page_services`
--

INSERT INTO `page_services` (`id`, `tab_title`, `tab_content`, `last_updated`, `status`) VALUES
(1, 'Modi sit est', '<h3><em><strong>Architecto ut aperiam autem id</strong></em></h3>\r\n\r\n<p><em>Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</em></p>\r\n\r\n<p>Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero</p>\r\n', '2020-12-15 00:48:31', 1),
(3, 'Unde praesentium sed', '<h3><em>Et blanditiis nemo veritatis excepturi</em></h3>\r\n\r\n<p><em>Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</em></p>\r\n\r\n<p>Ea ipsum voluptatem consequatur quis est. Illum error ullam omnis quia et reiciendis sunt sunt est. Non aliquid repellendus itaque accusamus eius et velit ipsa voluptates. Optio nesciunt eaque beatae accusamus lerode pakto madirna desera vafle de nideran pal</p>\r\n', '2020-12-15 00:53:48', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_color_theme`
--
ALTER TABLE `acc_color_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acc_logo`
--
ALTER TABLE `acc_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acc_pages`
--
ALTER TABLE `acc_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acc_social`
--
ALTER TABLE `acc_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acc_user`
--
ALTER TABLE `acc_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_about`
--
ALTER TABLE `page_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_product`
--
ALTER TABLE `page_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_services`
--
ALTER TABLE `page_services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_color_theme`
--
ALTER TABLE `acc_color_theme`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_pages`
--
ALTER TABLE `acc_pages`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_social`
--
ALTER TABLE `acc_social`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_user`
--
ALTER TABLE `acc_user`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_product`
--
ALTER TABLE `page_product`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_services`
--
ALTER TABLE `page_services`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
