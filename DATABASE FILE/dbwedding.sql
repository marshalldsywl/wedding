-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Bulan Mei 2024 pada 10.05
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbwedding`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `startdate` varchar(48) NOT NULL,
  `enddate` varchar(48) NOT NULL,
  `allDay` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `startdate`, `enddate`, `allDay`) VALUES
(2, 'New Event', '2018-02-25T00:00:00+2:00', '2018-02-25T00:00:00+2:00', 'false'),
(3, 'New Event', '2018-03-06T00:00:00+2:00', '2018-03-06T00:00:00+2:00', 'false'),
(4, 'New Event', '2018-03-02T00:00:00+2:00', '2018-03-02T00:00:00+2:00', 'false'),
(5, 'New Event', '2018-02-27T00:00:00+2:00', '2018-02-27T00:00:00+2:00', 'false'),
(6, 'New Event', '2018-03-06T00:00:00+2:00', '2018-03-06T00:00:00+2:00', 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `events`
--

INSERT INTO `events` (`id`, `booking_id`, `title`, `location`, `date_created`, `color`, `start`, `end`) VALUES
(1, 0, 'Cocktail hour', 'aclc', '2018-03-07 03:12:52', '#40E0D0', '2018-03-07 00:00:00', '2018-03-08 00:00:00'),
(2, 1, 'Guests seated at the reception', 'Malaybalay', '2018-03-07 03:13:59', '#40E0D0', '2018-03-08 00:00:00', '2018-03-09 00:00:00'),
(3, 2, 'The wedding party & the happy couple are introduced', 'valencia city ', '2018-03-07 18:06:30', '#FF0000', '2018-03-19 08:00:00', '2018-03-19 20:00:00'),
(4, 2, 'First dance', 'valencia city ', '2018-03-07 18:07:11', '#FF0000', '2018-03-09 07:30:00', '2018-03-09 21:00:00'),
(5, 2, 'Toast & speeches', 'asdasd', '2018-03-07 18:09:28', '#FFD700', '2018-03-07 00:00:00', '2018-03-08 00:00:00'),
(6, 2, 'Dinner', 'asdasd', '2018-03-07 18:10:10', '', '2018-03-07 00:00:00', '2018-03-08 00:00:00'),
(7, 2, 'Father/daughter dance', 'asdasd', '2018-03-07 18:14:36', '#FF8C00', '2018-03-09 00:00:00', '2018-03-10 00:00:00'),
(8, 1, 'Mother/son dance', 'asdasd', '2018-03-07 18:15:03', '#008000', '2018-03-07 06:00:00', '2018-03-07 10:00:00'),
(9, 1, 'Bouquet & garter toss', 'asdasd', '2018-03-07 18:15:53', '#008000', '2018-03-09 00:00:00', '2018-03-10 00:00:00'),
(10, 1, 'Dancing', 'asdasd', '2018-03-07 18:18:44', '#008000', '2018-03-09 00:00:00', '2018-03-10 00:00:00'),
(11, 0, 'Cake-cutting', 'ASDASD', '2018-03-07 18:21:58', '#008000', '2018-03-10 00:00:00', '2018-03-11 00:00:00'),
(12, 0, 'Last song', 'ASDASD', '2018-03-07 18:22:26', '#008000', '2018-03-10 00:00:00', '2018-03-11 00:00:00'),
(13, 0, 'End of reception/After-party', 'ASDASD', '2018-03-07 18:22:38', '', '2018-03-10 00:00:00', '2018-03-11 00:00:00'),
(14, 34, 'Demo Title', 'Demo Location', '2022-04-13 18:30:17', '#FF0000', '2022-04-13 00:00:00', '2022-04-14 00:00:00'),
(16, 31, 'Title One', 'Loc 1', '2022-04-13 18:32:25', '#000', '2022-04-28 00:00:00', '2022-04-29 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblaccounts`
--

CREATE TABLE `tblaccounts` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `access_level` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblaccounts`
--

INSERT INTO `tblaccounts` (`user_id`, `user_email`, `user_password`, `access_level`) VALUES
(1, 'jasonp@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(2, 'anniel@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(3, 'rosieing@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(4, 'marklw@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(5, 'deweyv@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(6, 'berrynich@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(7, 'vicrroyo@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(8, 'danielwbk@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(9, 'sharoncn@mail.com', '5278536a32d07ce18f876feaf18eae02', ''),
(10, 'michaelcomb@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(11, 'peggykhoury@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(12, 'paulproc@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(13, 'dekkersus@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(14, 'gingerlw@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(15, 'jameswf@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(16, 'lindagd@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(17, 'guemary@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(18, 'davidwls@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(19, 'donniehr@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(20, 'bettyvass@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(21, 'cherlylp@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(22, 'carolcass@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(23, 'angelocl@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(24, 'peggybkk@mail.com', '', ''),
(25, 'test@mail.com', '', ''),
(26, 'troybrl@mail.com', '', ''),
(27, 'uuu@mail.com', '', ''),
(28, 'qweqw@asdas.com', 'a8f5f167f44f4964e6c998dee827110c', ''),
(29, 'aaaa@aaa.com', '47bce5c74f589f4867dbd57e9ca9f808', ''),
(30, 'andrewc@mail.com', '1a1dc91c907325c69271ddf0c944bc72', ''),
(31, 'aaront@mail.com', '1a1dc91c907325c69271ddf0c944bc72', ''),
(32, 'bruce@mail.com', '', ''),
(33, 'amy@mail.co', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(34, 'ww@mail.com', '', ''),
(35, 'stevenn@mail.com', '', ''),
(36, 'apapun@gmail.com', '', ''),
(37, '123456@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblaccounts_detail`
--

CREATE TABLE `tblaccounts_detail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `datetime_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text NOT NULL,
  `location` text NOT NULL,
  `expectation_visitor` varchar(100) NOT NULL,
  `cash_advanced` decimal(10,2) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date_signed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblaccounts_detail`
--

INSERT INTO `tblaccounts_detail` (`id`, `user_id`, `firstname`, `lastname`, `phone`, `city`, `datetime_created`, `description`, `location`, `expectation_visitor`, `cash_advanced`, `status`, `date_signed`) VALUES
(3, 3, 'Rosie', 'Ingram', '0147852220', 'Olympia', '2018-03-08 14:03:03', 'none', '15 Honeysuckle Lane', '512', 1500.00, 'pending', '0000-00-00 00:00:00'),
(4, 4, 'Mark', 'Lew', '1478521456', 'Greenville', '2018-03-08 14:03:35', 'none', '521 Brown Avenue', '150', 1000.00, 'pending', '0000-00-00 00:00:00'),
(5, 5, 'Dewey', 'Vasquez', '3214589999', 'Scottsdale', '2018-03-08 14:03:36', 'none', '96 East Avenue', '210', 1100.00, 'pending', '0000-00-00 00:00:00'),
(6, 6, 'Nicholas', 'Berry', '1479996650', 'New York', '2018-03-08 14:03:40', 'none', '74 Godfrey Road', '300', 2500.00, 'pending', '0000-00-00 00:00:00'),
(7, 7, 'Victoria', 'Arroyo', '3256665870', 'Columbus', '2018-03-08 14:03:41', 'none', '98 Collins Avenue', '120', 1250.00, 'pending', '0000-00-00 00:00:00'),
(8, 8, 'Daniel', 'Wilbanks', '4580001450', 'Salina', '2018-03-08 14:03:42', 'none', '28 Sherman Street', '90', 1000.00, 'pending', '0000-00-00 00:00:00'),
(9, 9, 'Sharon', 'Cintron', '1456662210', 'Grand Rapids', '2018-03-08 14:03:44', 'none', '61 Bee Street', '300', 5000.00, 'pending', '0000-00-00 00:00:00'),
(10, 10, 'Michael', 'Halcomb', '4545554700', 'Portland', '2018-03-08 14:03:47', 'none', '101 Pratt Avenue', '300', 4500.00, 'pending', '0000-00-00 00:00:00'),
(36, 36, 'Cinta', 'Virginia', '085711211313', '', '2024-05-21 09:05:27', '', '', '', 0.00, 'pending', '0000-00-00 00:00:00'),
(37, 37, 'marshall', 'takaria', '08554855222', '', '2024-05-21 11:05:03', '', '', '', 0.00, 'pending', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(100) NOT NULL,
  `alternate_text` varchar(100) NOT NULL,
  `type` char(5) NOT NULL,
  `size` varchar(10) NOT NULL,
  `relate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblgallery`
--

INSERT INTO `tblgallery` (`id`, `booking_id`, `title`, `caption`, `description`, `filename`, `alternate_text`, `type`, `size`, `relate_id`) VALUES
(37, 0, '', '', '', 'daniel-suarez-photography-107973-unsplash.jpg', '', 'image', '2479437', 0),
(51, 0, '', '', '', 'zelle-duda-365988-unsplash.jpg', '', 'image', '872033', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblguest`
--

CREATE TABLE `tblguest` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `guestname` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` char(4) NOT NULL,
  `zipcode` char(10) NOT NULL,
  `priority` enum('A','B','C','D','E') NOT NULL,
  `out_of_town` enum('y','n') NOT NULL,
  `relationship` varchar(32) NOT NULL,
  `tracks_and_gifts` text NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblguest`
--

INSERT INTO `tblguest` (`id`, `booking_id`, `fullname`, `guestname`, `address`, `state`, `zipcode`, `priority`, `out_of_town`, `relationship`, `tracks_and_gifts`, `city`) VALUES
(1, 1, 'josh dragon', 'josh', 'valencia', 'ph', '9098', 'A', 'y', 'g', 'asdasdsad', 'valencia'),
(2, 1, 'jane gest', 'jane', 'address', 'ph', '9807', 'A', 'y', 'b', 'color thing', 'valencia city'),
(3, 2, 'jane gest', 'jane', 'address', 'ph', '9807', 'A', 'y', 'b', 'color thing', 'valencia city'),
(4, 1, 'joshua deasi', 'designa', 'san fernando', 'ph', '0982', 'A', 'y', 'g', 'asdasdasdasdasd', 'asdsad'),
(5, 30, 'Betty M. Barber', 'Betty M. Barber', '3 Olen Thomas Drive', 'TX', '73600', 'A', 'y', 'g', 'Demo Text Demo Text', 'Wichita Falls'),
(6, 34, 'Guest One', 'Guest Name', '11 Test Address', 'DS', '70001', 'B', 'y', 'g', 'Demo Demo Demo', 'Democity');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblorganizer`
--

CREATE TABLE `tblorganizer` (
  `organizer_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `datetime_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpostwedding`
--

CREATE TABLE `tblpostwedding` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `preview_image` text NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `wedding_date` varchar(100) NOT NULL,
  `wedding_type` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `date_published` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblpostwedding`
--

INSERT INTO `tblpostwedding` (`id`, `title`, `description`, `preview_image`, `location`, `status`, `wedding_date`, `wedding_type`, `date_created`, `date_published`) VALUES
(31, 'MR. &amp; MRS. Atwood', '92-acre Tuscan-inspired estate offering indoor and outdoor event spaces, as well as a Four Diamond inn and renowned restaurant.', 'wdbnt.jpg', 'Vintners Resort', '1', '03/24/2022', 'Elite', 'March 8, 2022, 11:23 am', 'April 13, 2022, 6:16 pm'),
(32, 'MR. &amp; MRS. Levy', 'Charming hilltop chapel with a rustic stone interior and graceful arched windows that offer unobstructed views of the Blue Ridge Mountains. Receptions are held at the nearby clubhouse where you can continue the celebration in the ballroom, or beneath a tent on the sprawling lawn.', '20160726_160113.jpg', 'The Cliffs at Glassy', '0', '04/01/2022', 'Premier', 'March 8, 2022, 11:29 am', ''),
(35, 'MR. MRS Redmond', 'Mountain beauty meets warm sophistication at this resort, which boasts a luxury lodge, chic hotel, two country clubs, and plenty of indoor and outdoor wedding venues from refined ballrooms to lush gardens to shabby-chic wood pavilions.', 'wdnf8.JPG', 'Crystal Springs Resort', '1', '03/16/2022', 'Elite', 'March 4, 2022, 11:44 am', 'April 13, 2022, 6:10 pm'),
(40, 'MR. &amp; MRS. Collins', 'Lush, tropical garden setting with an open-air chapel and stunning views of the Ko\'olau Mountains.', 'wdnf3.JPG', 'Haiku Gardens', '1', '02/20/2022', 'Elite', 'March 4, 2022, 11:44 am', 'April 13, 2022, 6:17 pm'),
(45, 'MR. MRS  Graham', 'Faithful replica of a classic medieval castle, complete with turrets, a drawbridge, a vast collection of Medieval and Renaissance artifacts, and a romantic garden overlooking the Atlantic.', 'wdnf7.JPG', 'Hammond Castle Museum', '1', '02/20/2022', 'Gold', 'March 4, 2022, 11:44 am', 'April 13, 2022, 6:09 pm'),
(50, 'MR. MRS. Yorke', 'Fairy-tale Tudor Revival mansion and lakeside chapel surrounded by 100 acres of formal gardens and 900 acres of natural woodlands.', 'wdnf9.JPG', 'The Skylands Manor', '1', '03/23/2022', 'Elite', 'March 4, 2022, 11:44 am', 'April 13, 2022, 6:13 pm'),
(52, 'MR. &amp; MRS. Pearson', 'Beautifully restored historic home with elegant indoor event spaces, a Parterre Garden, and a lovely courtyard strung with market lights that\'s perfect for intimate celebrations.', 'wdnf4.JPG', 'Beauregard-Keyes House', '1', '04/30/2018', 'Elite', 'March 8, 2022, 11:29 am', 'April 13, 2022, 6:17 pm'),
(55, 'MR. &amp; MRS. Raftery', 'Relaxed and refined private complex on 24 acres along the Carmel River where you can wed, dine, and stay.', 'wdnf.JPG', 'Gardener Ranch', '1', '02/20/2022', 'Elite', 'March 4, 2022, 11:44 am', 'April 13, 2022, 6:18 pm'),
(57, 'MR. &amp; MRS. Brower', 'Exchange vows in a natural woodland &ldquo;cathedral&rdquo; surrounded by towering pines, followed by cocktails served from a charming tipi and a delightful tented reception in the heart of the woods.', 'wdnf5.JPG', 'Blue Moon Rising', '1', '04/18/2022', 'Gold', 'March 8, 2022, 11:29 am', 'April 13, 2022, 6:17 pm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `access_level` enum('0','1','2') NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblusers`
--

INSERT INTO `tblusers` (`id`, `firstname`, `lastname`, `gender`, `username`, `password`, `email`, `designation`, `address`, `access_level`, `profile_picture`, `date_created`) VALUES
(5, 'Marshallda', 'Syawal', 'm', 'Marshall', 'D00F5D5217896FB7FD601412CB890830', 'Marshalldsywl@gmail.com', '0', 'Bogor', '', 'user-icn-p-min.png', 'March 6, 2021, 5:15 pm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblweddingbook`
--

CREATE TABLE `tblweddingbook` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bride` varchar(32) NOT NULL,
  `groom` varchar(32) NOT NULL,
  `wedding_type` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `wedding_date` varchar(100) NOT NULL,
  `organizer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblweddingbook`
--

INSERT INTO `tblweddingbook` (`booking_id`, `user_id`, `bride`, `groom`, `wedding_type`, `user_email`, `wedding_date`, `organizer_id`) VALUES
(30, 30, 'Stella', 'Andrew Copeland', 4, 'andrewc@mail.com', '05/01/2022', 1),
(31, 31, 'Eliza Williams', 'Aaron Turner', 4, 'aaront@mail.com', '05/09/2022', 1),
(32, 32, 'Christine Walmer', 'Bruce Wright', 5, 'bruce@mail.com', '04/26/2022', 1),
(33, 33, 'Test', 'Test', 1, 'amy@mail.co', '05/18/2022', 1),
(34, 35, 'Ellen Moore', 'Steven Grant', 5, 'stevenn@mail.com', '05/04/2022', 1),
(35, 36, '', '', 0, 'apapun@gmail.com', '05/31/2024', 0),
(36, 37, '', '', 0, '123456@gmail.com', '05/21/2024', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblweddingcategories`
--

CREATE TABLE `tblweddingcategories` (
  `id` int(11) NOT NULL,
  `wedding_type` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `preview_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblweddingcategories`
--

INSERT INTO `tblweddingcategories` (`id`, `wedding_type`, `price`, `preview_image`) VALUES
(1, 'Classic', 10000000.00, 'classic.jpg'),
(2, 'Elegant', 20000000.00, 'elegnant.jpg'),
(3, 'Premier', 30000000.00, 'premier.jpg'),
(4, 'Gold', 40000000.00, 'timeless gold.jpg'),
(5, 'Elite', 50000000.00, 'elite.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_features`
--

CREATE TABLE `tbl_features` (
  `feature_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_features`
--

INSERT INTO `tbl_features` (`feature_id`, `category_id`, `title`, `description`) VALUES
(2, 2, 'Hair and Make Up', 'none'),
(3, 2, 'Photographer', 'unlimited shot\r\nSoftCopy(CD/DVD)'),
(4, 5, 'Hair And Make Up', 'unlimited shot'),
(7, 5, 'Appetizers and Meal Service', 'Choice Six Hot/Cold, 3-Entr&eacute;e Buffet or Duet Plate'),
(8, 1, 'Hair And Make Up', 'Our own professional worker'),
(9, 5, 'Wedding Cake', 'Custom Wedding Cake'),
(10, 1, 'Appetizers', 'Vegetable &amp; Cheese Platters'),
(11, 1, 'DJ Services', 'DJ Services'),
(12, 5, 'Bar Service', 'Bar Service'),
(13, 5, 'Champagne &amp; Cider Toast', 'Champagne &amp; Cider Toast'),
(15, 4, 'Appetizers and Meal Service', 'Choice Six Hot/Cold, 3-Entr&eacute;e Buffet or Duet Plate'),
(16, 4, 'Hair And Make Up', 'hair cut that will change you life'),
(17, 5, 'Invitations &amp; Accessories', 'Invitations &amp; Accessories'),
(18, 5, 'DJ &amp; MC Services', 'DJ &amp; MC Services'),
(19, 4, 'Wedding Cake', 'Custom Wedding Cake'),
(20, 5, 'Chairs &amp; Linens', 'Chairs &amp; Linens'),
(21, 4, 'Photographer', 'unlimited shot'),
(22, 4, 'Bar Service', 'Beer, Wine'),
(23, 4, 'Reception Decor', 'Stage Decor'),
(24, 3, 'Hair And Make Up', 'unlimited shot'),
(25, 3, 'Appetizers and Meal Services', 'Choice Six Hot/Cold, 3-Entr&eacute;e Buffet or Duet Plate'),
(26, 3, 'Invitations &amp; Accessories', 'none'),
(27, 3, 'DJ &amp; MC Services', 'none'),
(28, 2, 'Appetizers', 'Vegetable &amp; Cheese Platters'),
(29, 2, 'Decorations', 'Stage Decorations'),
(30, 3, 'Wedding Cake', 'Custom Wedding Cake'),
(31, 4, 'DJ &amp; MC Services', 'none'),
(32, 4, 'Centerpieces', 'Standard'),
(33, 5, 'Centerpieces', 'Centerpieces'),
(34, 5, 'Photobooth', 'Photobooth'),
(35, 5, 'Grand Sparklers', 'Grand Sparklers'),
(36, 5, 'Specialty Lighting', 'Specialty Lighting');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_liquidation`
--

CREATE TABLE `tbl_liquidation` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `cash` decimal(10,2) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `date_issue` varchar(100) NOT NULL,
  `date_modified` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_liquidation`
--

INSERT INTO `tbl_liquidation` (`id`, `booking_id`, `user_id`, `event_id`, `payment`, `cash`, `credit`, `date_issue`, `date_modified`) VALUES
(1, 1, 1, 34, 10000.00, 10000.00, 0.00, 'March 10, 2018, 5:16 pm', 'March 9, 2018, 1:46 pm'),
(2, 1, 1, 30, 2022.00, 2022.00, 0.00, 'March 11, 2018, 1:16 pm', ''),
(3, 1, 1, 33, 4500.00, 2500.00, 20000.00, 'March 12, 2018, 8:16 am', ''),
(4, 1, 1, 8, 2000.00, 1000.00, 1000.00, 'June 10, 2018, 5:16 pm', ''),
(5, 2, 2, 8, 2000.00, 1000.00, 1000.00, 'June 10, 2018, 5:16 pm', ''),
(6, 30, 30, 5, 2500.00, 2500.00, 0.00, 'April 13, 2022, 2:04 am', ''),
(7, 30, 30, 6, 3950.00, 3950.00, 0.00, 'April 13, 2022, 2:21 am', ''),
(8, 25, 25, 1, 1660.00, 1660.00, 0.00, 'April 13, 2022, 2:23 am', ''),
(9, 30, 30, 11, 1500.00, 0.00, 1500.00, 'April 13, 2022, 6:55 pm', ''),
(10, 30, 30, 11, 1500.00, 1500.00, 0.00, 'April 13, 2022, 6:55 pm', ''),
(11, 34, 35, 5, 3500.00, 3500.00, 0.00, 'April 13, 2022, 8:42 pm', ''),
(12, 34, 35, 11, 1100.00, 1100.00, 0.00, 'April 13, 2022, 8:43 pm', ''),
(13, 34, 35, 10, 3000.00, 3000.00, 0.00, 'April 13, 2022, 8:43 pm', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblaccounts`
--
ALTER TABLE `tblaccounts`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `tblaccounts_detail`
--
ALTER TABLE `tblaccounts_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblguest`
--
ALTER TABLE `tblguest`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblorganizer`
--
ALTER TABLE `tblorganizer`
  ADD PRIMARY KEY (`organizer_id`);

--
-- Indeks untuk tabel `tblpostwedding`
--
ALTER TABLE `tblpostwedding`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblweddingbook`
--
ALTER TABLE `tblweddingbook`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indeks untuk tabel `tblweddingcategories`
--
ALTER TABLE `tblweddingcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indeks untuk tabel `tbl_liquidation`
--
ALTER TABLE `tbl_liquidation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tblaccounts_detail`
--
ALTER TABLE `tblaccounts_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `tblguest`
--
ALTER TABLE `tblguest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tblorganizer`
--
ALTER TABLE `tblorganizer`
  MODIFY `organizer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tblpostwedding`
--
ALTER TABLE `tblpostwedding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tblweddingbook`
--
ALTER TABLE `tblweddingbook`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tblweddingcategories`
--
ALTER TABLE `tblweddingcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `feature_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tbl_liquidation`
--
ALTER TABLE `tbl_liquidation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
