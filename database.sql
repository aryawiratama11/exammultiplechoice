-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql201.byetcluster.com
-- Generation Time: Aug 31, 2017 at 09:33 PM
-- Server version: 5.6.35-81.0
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epiz_20287524_exammultiplechoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE IF NOT EXISTS `soal` (
  `id` int(5) NOT NULL,
  `question` varchar(500) NOT NULL,
  `jwb_a` varchar(100) NOT NULL,
  `jwb_b` varchar(100) NOT NULL,
  `jwb_c` varchar(100) NOT NULL,
  `jwb_d` varchar(100) NOT NULL,
  `benar` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id`, `question`, `jwb_a`, `jwb_b`, `jwb_c`, `jwb_d`, `benar`) VALUES
(1, '1. After eating or drinking in the restaurant, you give the bill to the', 'Waiter', 'Cashier', 'Waitress', 'Manager', 'B'),
(2, '2. We often watch … in the evening', 'Newspaper  ', 'Radio ', 'Magazine', 'Television', 'D'),
(3, '3. I often listen some news from the …', 'Newspaper  ', 'Radio ', 'Magazine', 'Television', 'B'),
(4, '4. My mother usually slices some meat with a …', 'Stick', 'Fork', 'Knife', 'Spoon', 'C'),
(5, '5. To protect your head, you need …', ' Sandals', 'Clothes', 'Hat', 'Shoes', 'C'),
(6, '6. A man who plays guitar is called …', 'Vocalis', 'Pianist', 'Guitarist', 'Drummer', 'C'),
(7, '7. My mother usually slices some meat with a …', 'Stick', 'Fork', 'Knife', 'Spoon', 'C'),
(8, '8. A … makes some food', 'Teacher', 'Doctor', 'Chef', 'Lawyer', 'C'),
(9, '9. Coca cola, beer, tea and milk. They are called …', 'Vegetables', 'Food', 'Fruits', 'Drinks', 'D'),
(10, '10. Pizza, noodle, sandwich and burger. They are called …', 'Vegetables', 'Food', 'Fruits', 'Drinks', 'B'),
(11, '11. Apple, orange, melon, and mango. They are called …', 'Vegetables', 'Food', 'Fruits', 'Drinks', 'C'),
(12, '12. Onion, spinach, potato and tomato. They are called …', 'Vegetables', 'Food', 'Fruits', 'Drinks', 'A'),
(13, '13. We need … to send a letter.', 'Glue', 'Stamp', 'Coin', 'Pen', 'B'),
(14, '14. Students have to wear uniform to go to …', ' School', 'Mall', 'Bed', 'Party', 'A'),
(15, '15. What do you use to find a way …', 'Shoes', 'Car', 'Bicycle', 'Map', 'C'),
(16, '16. What do you wear to go to bed …', 'Dress', 'Jacket', 'Uniform', 'Pajamas', 'D'),
(17, '17. Mother needs meat, carrot, cabbage and potatoes. She will make …', 'Burge', 'Soup', 'Noodle', 'Fried rice', 'B'),
(18, '18. Where do people go to send the letter …', 'Beach', 'Post office', 'Zoo', 'Station', 'B'),
(19, '19. Mr. Dedi is a doctor. He works in …', 'Hotel', 'School', 'Hospital', 'Office', 'C'),
(20, '20. We are … at SD N 10 Jakarta', 'Students', 'Artist', 'Doctors', 'Farmers', 'A');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
