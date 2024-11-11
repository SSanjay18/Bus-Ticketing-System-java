

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `ticketing_system`
--
CREATE DATABASE IF NOT EXISTS `ticketing_system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ticketing_system`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(100) NOT NULL,
  `destination_id` int(50) NOT NULL,
  `booking_date` varchar(30) NOT NULL,
  `journey_date` varchar(30) NOT NULL,
  `train_id` int(30) NOT NULL,
  `seat_numbers` varchar(150) NOT NULL,
  `passenger_id` int(50) NOT NULL,
  `number_of_seat` int(5) NOT NULL,
  `payment_status` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `note` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `destination_id`, `booking_date`, `journey_date`, `train_id`, `seat_numbers`, `passenger_id`, `number_of_seat`, `payment_status`, `status`, `note`) VALUES
(1, 11, '06-10-2023', '06-10-2023', 7, '1,2', 12, 2, 'pending', 'success', 'note');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(100) NOT NULL,
  `station_from` int(20) NOT NULL,
  `station_to` int(20) NOT NULL,
  `train_id` int(20) NOT NULL,
  `time` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `fare` varchar(5) NOT NULL,
  `last_activity` datetime NOT NULL,
  `last_modify_by` int(30) NOT NULL,
  `total_seat` int(5) NOT NULL,
  `seat_range` varchar(10) NOT NULL,
  `type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `station_from`, `station_to`, `train_id`, `time`, `status`, `fare`, `last_activity`, `last_modify_by`, `total_seat`, `seat_range`, `type`) VALUES (30, 7, 1, 8, '6AM', 'active', '480', '2018-09-05 00:00:00', 0, 2, '9-10', 'up');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `id` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(70) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `name`, `address`, `contact`) VALUES
(1, 'Bangalore', 'Bangalore, E city', '58856548545'),
(2, 'Hydrabad express', 'Hyderabad', '584');

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `id` int(10) NOT NULL,
  `code` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `total_seat` int(5) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'intercity'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`id`, `code`, `name`, `total_seat`, `type`) VALUES
(2, 'B207', 'Bromoputra', 560, 'intercity'),
(3, 'j152', 'Jomuna', 650, 'intercity');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(150) NOT NULL,
  `rule` varchar(10) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_activity` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `rule`, `reg_date`, `last_activity`) VALUES
(6, 'Md Rukon Shekh', 'sanjay@gmail.com', '253', 'dfsdsf', '123', 'admin', '2023-09-17 15:53:29', '2023-09-17 15:53:29'),
(7, 'Md Rukon', 'sanjay@gmail.com', '0184272596763', '', '', 'passenger', '2023-09-17 16:07:40', '2023-09-17 16:07:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trains`
--
ALTER TABLE `trains`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
