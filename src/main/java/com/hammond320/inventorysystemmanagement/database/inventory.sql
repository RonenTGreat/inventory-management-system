-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Generation Time: Jul 18, 2023 at 12:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `.id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`.id`, `username`, `password`) VALUES
(1, 'ronen', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` double NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_receipt`
--

CREATE TABLE `customer_receipt` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `total` double NOT NULL,
  `amount` double NOT NULL,
  `balance` double NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_id` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_id`, `type`, `brand`, `productName`, `price`, `status`, `image`, `date`) VALUES
(13, 1, 'Beverages', 'Nestle', 'Coffee', 5, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\coffee.jpg', '2023-07-17'),
(14, 2, 'Beverages', 'Nestle', 'Tea', 10, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\tea.jpg', '2023-07-17'),
(15, 3, 'Beverages', 'Orange', 'Juice', 6, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\juice.jpg', '2023-07-17'),
(16, 4, 'Beverages', 'Coca Cola', 'Soda', 3, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\soda.jpg', '2023-07-17'),
(17, 5, 'Bread/Bakery', 'Homemade', 'Sandwich', 10, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\sandwich.jpg', '2023-07-17'),
(18, 6, 'Bread/Bakery', 'Homemade', 'Dinner rolls', 10, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\dinner roll.jpg', '2023-07-17'),
(19, 7, 'Bread/Bakery', 'Homemade', 'Tortillas', 11, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\tortillas.jpg', '2023-07-17'),
(20, 9, 'Bread/Bakery', 'Homemade', 'Bagels', 10, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\bagels.jpg', '2023-07-17'),
(21, 10, 'Canned/Jarred Goods', 'Caner', 'Vegetables', 2, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\vegetables.jpg', '2023-07-17'),
(22, 11, 'Canned/Jarred Goods', 'Caner', 'Spaghetti sauce', 10, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\spaghetti sauce.jpg', '2023-07-17'),
(23, 12, 'Canned/Jarred Goods', 'Caner', 'Ketchup', 3, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\ketchup.jpg', '2023-07-17'),
(24, 13, 'Dairy Products', 'Cow', 'Cheese', 3, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\cheeses.jpg', '2023-07-17'),
(25, 14, 'Dairy Products', 'Cow', 'Egg', 1, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\eggs.jpg', '2023-07-17'),
(26, 15, 'Dairy Products', 'Cow', 'Milk', 5, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\milk.jpg', '2023-07-17'),
(27, 16, 'Dairy Products', 'Cow', 'Yoghurt', 4, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\yoghurt.jpg', '2023-07-17'),
(28, 17, 'Dairy Products', 'Cow', 'Butter', 3, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\butter.jpg', '2023-07-17'),
(29, 18, 'Dry/Baking Goods', 'Sanndy', 'Cereals', 4, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\cereals.jpg', '2023-07-17'),
(30, 19, 'Dairy Products', 'Sanndy', 'Flour', 3, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\flour.jpg', '2023-07-17'),
(31, 20, 'Dry/Baking Goods', 'Sanndy', 'sugar', 2, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\sugar.jpg', '2023-07-17'),
(32, 21, 'Dry/Baking Goods', 'Sanndy', 'pasta', 5, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\pasta.jpg', '2023-07-17'),
(33, 22, 'Dry/Baking Goods', 'Sanndy', 'mixes', 3, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\mixes.jpg', '2023-07-17'),
(34, 23, 'Frozen Products', 'Snow', 'Waffles', 6, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\waffles.jpg', '2023-07-17'),
(35, 24, 'Frozen Products', 'Snow', 'vegetables', 3, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\vegetables.jpg', '2023-07-17'),
(36, 25, 'Frozen Products', 'Snow', 'Meals', 15, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\ndividual meals.jpg', '2023-07-17'),
(37, 26, 'Frozen Products', 'Snow', 'Ice cream', 4, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\ice cream.jpg', '2023-07-17'),
(38, 27, 'Meat', 'Wins', 'lunch meat', 20, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\lunch meat.jpg', '2023-07-17'),
(39, 28, 'Meat', 'Wins', 'poultry', 22, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\poultry.jpg', '2023-07-17'),
(40, 29, 'Meat', 'Wins', 'Beef', 25, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\beef.jpg', '2023-07-17'),
(41, 30, 'Meat', 'Wins', 'Beef', 38, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\pork.jpg', '2023-07-17'),
(42, 31, 'Farm Produce', 'House', 'Fruit', 26, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\fruits.jpg', '2023-07-17'),
(43, 32, 'Farm Produce', 'House', 'Vegetables', 20, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\vegetables.jpg', '2023-07-17'),
(44, 33, 'Home Cleaners', 'Cleansoft', 'Laundry detergent', 5, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\laundry detergent.jpg', '2023-07-17'),
(45, 34, 'Home Cleaners', 'Cleansoft', 'dishwashing', 3, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\dishwashing.jpg', '2023-07-17'),
(46, 35, 'Paper Goods', 'Goodmen', 'Paper towel', 6, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\paper towels.jpg', '2023-07-17'),
(47, 36, 'Paper Goods', 'Goodmen', 'Toilet paper', 3, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\toilet paper.jpg', '2023-07-17'),
(48, 37, 'Paper Goods', 'Goodmen', 'aluminium foil', 2, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\aluminium foil,.jpg', '2023-07-17'),
(49, 38, 'Home Care', 'Cleanhouse', 'shampoo', 15, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\shampoo.jpg', '2023-07-17'),
(50, 39, 'Home Care', 'Cleanhouse', 'soap', 3, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\soap.jpg', '2023-07-17'),
(51, 40, 'Home Care', 'Cleanhouse', 'shaving cream', 6, 'Available', 'C:\\\\Users\\\\Ronen Hammond\\\\Desktop\\\\GitHub_Repos\\\\inventory-system-management\\\\src\\\\main\\\\resources\\\\product-images\\\\shaving cream.jpg', '2023-07-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`.id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_receipt`
--
ALTER TABLE `customer_receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `.id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `customer_receipt`
--
ALTER TABLE `customer_receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
