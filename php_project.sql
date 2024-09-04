-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2024 at 07:44 AM
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
-- Database: `php_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `admin_email` text NOT NULL,
  `admin_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(3, 'admin', 'admin@email.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'nandhu', 'nandhu@gmail.com', 'c37bf859faf392800d739a41fe5af151');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_cost` decimal(6,2) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_cost`, `order_status`, `user_id`, `user_phone`, `user_city`, `user_address`, `order_date`) VALUES
(1, 155.00, 'paid', 1, 123456789, 'Chennai', 'senthil nagar', '2024-08-24 21:55:03'),
(3, 310.00, 'not paid', 1, 123456789, 'Chennai', 'senthil nagar', '2024-08-24 22:18:04'),
(4, 155.00, 'not paid', 1, 987654321, 'Coimbatore', 'Gandhipuram', '2024-08-25 12:46:12'),
(5, 155.00, 'delivered', 1, 123456789, 'Chennai', 'Senthil Nagar', '2024-08-25 17:34:15'),
(6, 155.00, 'not paid', 1, 125, 'Chennai', 'nandhi nagar', '2024-08-26 21:28:54'),
(7, 155.00, 'not paid', 1, 125, 'Chennai', 'nandhi nagar', '2024-08-26 21:28:54'),
(8, 190.00, 'not paid', 1, 987654321, 'bangalore', 'food street', '2024-09-03 05:52:57'),
(9, 190.00, 'not paid', 1, 987654321, 'bangalore', 'food street', '2024-09-03 05:52:57'),
(10, 165.00, 'not paid', 1, 111, 'US', 'England', '2024-09-03 20:02:17'),
(11, 165.00, 'not paid', 1, 111, 'US', 'England', '2024-09-03 20:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(225) NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `product_image` varchar(225) NOT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `user_id`, `order_date`) VALUES
(1, 2, '1', 'White Shoes', 'feature1.webp', 155.00, 1, 1, '2024-08-24 22:16:39'),
(2, 2, '3', 'blue bag', 'feature3.webp', 155.00, 1, 1, '2024-08-24 22:16:39'),
(3, 3, '1', 'White Shoes', 'feature1.webp', 155.00, 1, 1, '2024-08-24 22:18:04'),
(4, 3, '3', 'blue bag', 'feature3.webp', 155.00, 1, 1, '2024-08-24 22:18:04'),
(5, 4, '1', 'White Shoes', 'feature1.webp', 155.00, 1, 1, '2024-08-25 12:46:12'),
(6, 5, '1', 'White Shoes', 'feature1.webp', 155.00, 1, 1, '2024-08-25 17:34:15'),
(7, 6, '3', 'blue bag', 'feature3.webp', 155.00, 1, 1, '2024-08-26 21:28:54'),
(8, 7, '3', 'blue bag', 'feature3.webp', 155.00, 1, 1, '2024-08-26 21:28:54'),
(9, 8, '1', 'Orange Shoes', 'feature1.webp', 190.00, 1, 1, '2024-09-03 05:52:57'),
(10, 9, '1', 'Orange Shoes', 'feature1.webp', 190.00, 1, 1, '2024-09-03 05:52:57'),
(11, 10, '2', 'Orange bag', 'feature2.webp', 165.00, 1, 1, '2024-09-03 20:02:17'),
(12, 11, '2', 'Orange bag', 'feature2.webp', 165.00, 1, 1, '2024-09-03 20:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_description` varchar(225) NOT NULL,
  `product_image` varchar(225) NOT NULL,
  `product_image2` varchar(225) NOT NULL,
  `product_image3` varchar(225) NOT NULL,
  `product_image4` varchar(225) NOT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_special_offer` int(2) NOT NULL,
  `product_color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_description`, `product_image`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `product_special_offer`, `product_color`) VALUES
(1, 'Orange Shoes', 'bags', 'awesome white shoes', 'feature1.webp', 'feature2.webp', 'feature3.webp', 'feature4.jpg', 190.00, 0, 'white'),
(2, 'Orange bag', 'bags', 'awesome orange bag ', 'feature2.webp', 'feature3.webp', 'feature4.jpg', 'feature1.webp', 165.50, 0, 'orange'),
(3, 'blue bag', 'bag', 'awesome blue bag ', 'feature3.webp', 'feature4.jpg', 'feature1.webp', 'feature2.webp', 155.00, 0, 'orange'),
(4, 'black bag', 'bag', 'awesome black bag ', 'feature4.jpg', 'feature1.webp', 'feature3.webp', 'feature2.webp', 199.00, 2, 'black'),
(5, 'Blue coat', 'coats', 'Black coat for men', 'clothes1.jpg', 'clothes2.jpg', 'clothes3.jpg', 'clothes4.jpg', 150.00, 0, 'Blue'),
(6, 'Black coat', 'coats', 'blue coat', 'clothes2.jpg', 'clothes3.jpg', 'clothes4.jpg', 'clothes1.jpg', 200.00, 0, 'black'),
(7, 'Blue coat', 'coats', 'coats for men', 'clothes3.jpg', 'clothes4.jpg', 'clothes1.jpg', 'clothes2.jpg', 195.00, 0, 'blue'),
(8, 'Blue stripe coat', 'coats', 'coats for men', 'clothes4.jpg', 'clothes1.jpg', 'clothes2.jpg', 'clothes3.jpg', 200.00, 0, 'blue '),
(9, 'Blue shoe', 'shoes', 'Inspired By shoe', 'Blue shoe1.jpeg', 'Blue shoe2.jpeg', 'Blue shoe3.jpeg', 'Blue shoe4.jpeg', 200.00, 0, 'blue'),
(10, 'Grey shoe', 'shoes', 'Inspired By shoe', 'shoes2.jpg', 'shoes3.jpg', 'shoes4.jpg', 'shoes1.jpg', 220.00, 0, 'grey'),
(11, 'Black shoe', 'shoes', 'Crazy Comfortable Footwear', 'shoes3.jpg', 'shoes4.jpg', 'shoes1.jpg', 'shoes2.jpg', 210.00, 0, 'black'),
(13, 'Silver covered watch', 'watches', 'Quality time, Quality watches', 'watch1.jpg', 'watch2.jpg', 'watch3.jpg', 'watch4.jpg', 190.00, 0, 'silver'),
(14, 'Red with black watch', 'watches', 'Quality time, Quality watches', 'watch2.jpg', 'watch3.jpg', 'watch4.jpg', 'watch1.jpg', 280.00, 0, 'red'),
(15, 'Peach watch', 'watches', 'Quality time, Quality watches', 'watch3.jpg', 'watch4.jpg', 'watch1.jpg', 'watch2.jpg', 300.00, 0, 'peach'),
(16, 'Green with black watch', 'watches', 'Quality time, Quality watches', 'watch4.jpg', 'watch1.jpg', 'watch2.jpg', 'watch3.jpg', 280.00, 0, 'green'),
(17, 'Red shoes', 'shoes', 'Amazing Shoes', 'shoes4.jpg', 'shoes3.jpg', 'shoes1.jpg', 'shoes2.jpg', 190.50, 20, 'red');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'Mustafa', 'info@gmail.com', 'bac76b0feb747e3bde11269cf367c97b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
