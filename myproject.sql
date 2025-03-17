-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2025 at 09:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `cat_id` varchar(255) NOT NULL,
  `pro_price` varchar(255) NOT NULL,
  `pro_cost` varchar(255) NOT NULL,
  `pro_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `cat_id`, `pro_price`, `pro_cost`, `pro_img`) VALUES
(1, 'ซิลเวอร์', 'แร่1', '4000', '50000000', 'https://www.weinrichmineralsinc.com/userfiles/products/2/6/2631560.jpg'),
(2, 'คอปเปอร์', 'แร่5', '6000', '20000', 'https://static.wixstatic.com/media/5670ff_ed3b6615a6e04756a8f4bb7658d9061d~mv2.jpg/v1/fill/w_522,h_348,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/copper%20ore.jpg'),
(3, 'แพลตตินั่ม', 'แร่2', '200', '10000', 'https://png.pngtree.com/png-clipart/20240627/original/pngtree-platinum-ore-png-image_15418520.png'),
(4, 'ทอง', 'แร่3', '400', '3000000', 'https://5.imimg.com/data5/SELLER/Default/2024/6/425265296/OO/EP/RR/44341272/gold-ore-mineral.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `username` varchar(20) NOT NULL,
  `useremail` varchar(100) NOT NULL,
  `usermobile` varchar(10) NOT NULL,
  `loginpassword` varchar(255) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_type` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `fullname`, `username`, `useremail`, `usermobile`, `loginpassword`, `regdate`, `user_type`) VALUES
(3, 'Wichi', 'admin556', 'balll@gmail.com', '0910340709', 'a3f6e55a3bbff2896f5c9b1ced4e0808d9a524d67bf0c34fe47123c82ba3dd0a', '2025-03-17 06:00:55', 0),
(4, 'wwwczzz', 'user12', 'balllzz@gmail.com', '0910340709', 'a3f6e55a3bbff2896f5c9b1ced4e0808d9a524d67bf0c34fe47123c82ba3dd0a', '2025-03-17 06:02:52', 1),
(5, 'wwfadafaha', 'user13', 'balllzz3@gmail.com', '0910340709', 'a3f6e55a3bbff2896f5c9b1ced4e0808d9a524d67bf0c34fe47123c82ba3dd0a', '2025-03-17 06:03:02', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
