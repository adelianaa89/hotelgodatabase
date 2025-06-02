-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 02, 2025 at 01:50 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u891680846_hotelgo`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `room_id`, `hotel_id`, `check_in`, `check_out`, `status`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 21, 3, 6, '2025-05-31', '2025-06-01', 'pending', 3000000.00, '2025-05-31 04:28:09', '2025-05-31 04:28:09'),
(2, 21, 3, 6, '2025-05-31', '2025-06-01', 'pending', 3000000.00, '2025-05-31 04:28:17', '2025-05-31 04:28:17'),
(3, 21, 3, 6, '2025-05-31', '2025-06-02', 'pending', 6000000.00, '2025-05-31 04:32:26', '2025-05-31 04:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `nama_hotel` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `fitur_hotel` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `nama_hotel`, `gambar`, `alamat`, `kota`, `description`, `fitur_hotel`, `created_at`, `updated_at`) VALUES
(7, 'COR Hotel', 'hotel_images/79BzRmU2VKZ7hi7PA4e0Bb668Ba3NOM66cIzdLHS.jpg', 'Jl. Jend. Sudirman No.508 - 511, Kauman Lama, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53141', 'Purwokerto', 'COR Hotel Purwokerto is a hotel in a good neighborhood, which is located at East Purwokerto. 24-hours front desk is available to serve you, from check-in to check-out, or any assistance you need. Should you desire more, do not hesitate to ask the front desk, we are always ready to accommodate you. WiFi is available within public areas of the property to help you to stay connected with family and friends.', 'AC,  Restaurant, 24-Hour Front Desk, Parking, Elevator, WiFi', '2025-05-31 16:36:31', '2025-05-31 16:36:31'),
(8, 'Aston Purwokerto Hotel & Convention Center', 'hotel_images/WIb9qZEoHA3KeoXXQ9zHqzRUUzLG4lklaQ2tU405.jpg', 'Jalan Overste Isdiman No.33, Purwokerto, Banyumas, Jawa Tengah, Indonesia, 53114', 'Purwokerto', 'Aston Purwokerto Hotel & Convention Center adalah hotel di lokasi yang baik, tepatnya berada di Purwokerto Utara. Resepsionis siap 24 jam untuk melayani proses check-in, check-out dan kebutuhan Anda yang lain. Jangan ragu untuk menghubungi resepsionis, kami siap melayani Anda. WiFi tersedia di seluruh area publik properti untuk membantu Anda tetap terhubung dengan keluarga dan teman.', 'AC, Restoran, Kolam renang, Wifi, Lift, Resepsionis 24 Jam, Parkir', '2025-05-31 17:16:53', '2025-05-31 17:16:53'),
(9, 'Hotel Besar', 'hotel_images/PkQ9n2FfpKPAdAG3IKLWFiftxRqPxj1NxIWJaNPl.jpg', 'Jl. Jend. Sudirman No.732, Kauman Lama, Purwokerto Lor, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53114', 'Purwokerto', 'Hotel Besar Purwokerto is highly recommended for backpackers who want to get an affordable stay yet comfortable at the same time. When staying at a hotel, the design and architecture are two important factors that can spoil your eyes. With its unique setting, Hotel Besar Purwokerto provides a pleasant accommodation for your stay.', 'AC, 24-Hour Front Desk, Parking, WiFi', '2025-05-31 22:51:02', '2025-05-31 22:51:02'),
(10, 'Luminor Hotel', 'hotel_images/hx47eYNQfSmkgcIAih53KeLuO1iEA6l7LDSGyW7I.jpg', 'Jalan Jenderal Sudirman No. 324, Purwokerto, Banyumas, Jawa Tengah, Indonesia, 53116', 'Purwokerto', 'Menginap di Luminor Hotel Purwokerto By WH adalah pilihan yang baik ketika Anda mengunjungi Purwokerto Timur. Resepsionis 24 jam tersedia untuk melayani Anda, dari check-in hingga check-out, atau bantuan apa pun yang Anda butuhkan. Jika Anda menginginkan lebih, jangan ragu untuk bertanya kepada resepsionis, kami selalu siap melayani Anda. Wi-Fi tersedia di area umum properti untuk membantu Anda tetap terhubung dengan keluarga dan teman.', 'AC, Wifi, Restoran, Lift, Parkir, Kolam renang', '2025-06-01 00:30:40', '2025-06-01 00:30:40'),
(11, 'Elsotel', 'hotel_images/lyMyduKhYlrRhRqfg9dL5pBiQiPRsDePEg7wMRtb.jpg', 'Jl. Prof Dr.  Soeharso No 43, RT 07/RW 02, Kel. Purwokerto Lor, Kec. Purwokerto Timur, Purwokerto, Banyumas, Jawa Tengah, Indonesia, 53114', 'Purwokerto', 'hotel ini sebelumnya bernama Elsotel Purwokerto by Daphna International Menginap di Elsotel Purwokerto by Daphna Management saat anda sedang berada di Purwokerto Timur adalah sebuah pilihan cerdas. Resepsionis siap 24 jam untuk melayani proses check-in, check-out dan kebutuhan Anda yang lain. Jangan ragu untuk menghubungi resepsionis, kami siap melayani Anda. WiFi tersedia di seluruh area publik properti untuk membantu Anda tetap terhubung dengan keluarga dan teman.', 'AC, Restoran, Wifi, Parkir, Lift, Responsionis 24 Jam', '2025-06-01 00:33:42', '2025-06-01 00:33:42'),
(12, 'Grand Karlita Hotel', 'hotel_images/gXWShpq9NqNa0KhkD2XDMeKGc4jvuk0GihSKy9SV.jpg', 'Jl. S.Parman No.296, Purwokerto, Banyumas, Jawa Tengah, Indonesia', 'Purwokerto', 'Grand Karlita Hotel Purwokerto adalah hotel bintang 4 yang terletak di Purwokerto, Indonesia. Dengan berbagai fasilitas dan layanan yang berkualitas, hotel ini menawarkan pengalaman menginap yang luar biasa bagi para tamu.', 'Wifi, Kolam Renang, Restoran, Parkir, Bar', '2025-06-01 00:47:48', '2025-06-01 00:49:12'),
(13, 'Java Heritage', 'hotel_images/12H57RHu9hmu1kksJfHDp5CrkqfrYKi8RsSvLE1Q.jpg', 'Jalan Doktor Angka no.71, Purwokerto, Banyumas, Jawa Tengah, Indonesia, 53115', 'Purwokerto', 'Java Heritage Hotel Purwokerto adalah hotel di lokasi yang baik, tepatnya berada di Purwokerto Utara. Resepsionis siap 24 jam untuk melayani proses check-in, check-out dan kebutuhan Anda yang lain.', 'AC, Wifi, Restoran, Kolam Renang', '2025-06-01 00:59:39', '2025-06-01 00:59:39'),
(14, 'Hayden Inn Purwokerto', 'hotel_images/RIrH5I0dcXsIh7jrsx90t8RsbtEMo2E63tN3ySQJ.jpg', 'Jl. Gelora Indah', 'Purwokerto', 'Hayden Inn Purwokerto is located in area / city East Purwokerto. 24-hours front desk is available to serve you, from check-in to check-out, or any assistance you need. Should you desire more, do not hesitate to ask the front desk, we are always ready to accommodate you. WiFi is available within public areas of the property to help you to stay connected with family and friends.', 'AC\r\n\r\nRestaurant, 24-Hour Front Desk, Parking, WiFi', '2025-06-02 08:05:36', '2025-06-02 08:05:36'),
(15, 'ARON Hotel Purwokerto', 'hotel_images/zgKOlzRBCXXTUYLOywmlauAlNq3WWOo8CUlTdMFP.jpg', 'Jl. Yos Sudarmo no. 32', 'Purwokerto', 'ARON Hotel Purwokerto is located in area / city West Purwokerto. 24-hours front desk is available to serve you, from check-in to check-out, or any assistance you need. Should you desire more, do not hesitate to ask the front desk, we are always ready to accommodate you.', 'AC, Restaurant, 24-Hour Front Desk, Parking, WiFi', '2025-06-02 08:13:32', '2025-06-02 08:13:32'),
(16, 'Dominic Hotel Purwokerto', 'hotel_images/3KV15EWqgfW56HktlHGZiGu5EaykSjvOHJArhgdP.jpg', 'Jl. Komisaris Bambang Suprapto No. 39-41, Purwokerto, Jawa Tengah.', 'Purwokerto', 'Berjarak 14 menit jalan kaki dari halte bus, hotel informal di area komersial ini berjarak 3 km dari warung makan di Alun-Alun Kota Purwokerto, setengah jam jalan kaki dari Taman Mas Kemambang, dan 7 menit jalan kaki dari Pasar Wage.\r\n\r\nKamar-kamar yang ramping dan ber-AC menyediakan Wi-Fi, TV layar datar, dan kamar mandi dalam. Beberapa kamar memiliki balkon dengan pemandangan kota. Kamar-kamar di kelas yang lebih tinggi memiliki ruang tamu dan ruang makan terpisah dan/atau kamar mandi dalam dengan bak mandi pusaran air.\r\n\r\nTerdapat kafe yang terang dan lapang yang menyajikan makanan lokal dan internasional. Fasilitas lainnya termasuk kolam renang luar ruangan dan tempat parkir.', 'Tempat parkir, Wifi, Layanan Resepsionis 24 jam, Room Service', '2025-06-02 08:20:07', '2025-06-02 08:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `nama_kamar` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `fitur_kamar` text DEFAULT NULL,
  `gambar_kamar` varchar(255) DEFAULT NULL,
  `harga` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id`, `id_hotel`, `nama_kamar`, `description`, `fitur_kamar`, `gambar_kamar`, `harga`, `created_at`, `updated_at`) VALUES
(1, 3, 'kamar 2', 'kamar bagus', 'baik, buruk, bagus', 'kamar_images/v2JFYCDLEipqMKTR7G7XJyxuZJnIK6SG1M7TcTDq.jpg', '1000000', '2025-05-30 16:07:47', '2025-05-30 16:52:20'),
(3, 6, 'kamar 1', 'bagus', 'bagus,bersih', 'kamar_images/YvczQd1PgpFRR0YNjvsvlyjBiF7SPNVIY04ObhEd.jpg', '3000000', '2025-05-30 16:49:20', '2025-05-30 16:52:10'),
(4, 7, 'Deluxe Double Bed', 'Nikmati kenyamanan dan kemewahan dalam kamar Deluxe Double Bed, dirancang untuk memberikan pengalaman menginap yang tenang dan menyenangkan. Kamar ini dilengkapi dengan tempat tidur double berukuran besar, interior modern, serta fasilitas lengkap yang akan membuat Anda merasa seperti di rumah.', 'Air conditioning, Blackout curtains, Complimentary bottled water, Coffee / tea maker, Refrigerator, Desk', 'kamar_images/LklhnoWouZbdVBVPQXRGhtNsLGEIX0xWXdPyMCnS.jpg', '450001', '2025-05-31 17:08:34', '2025-05-31 23:11:03'),
(5, 8, 'Deluxe', 'The Deluxe rooms are available with your choice of Queen or Twin Beds as well as smoking or non smoking options. An extra bed can be added for an additional charge.', 'Hot water, Private bathroom, Shower, Toiletries, Hair dryer', 'kamar_images/10YNzMHggmVNKi49vingE6Eu8a8Goz56GFxYtAww.jpg', '621218', '2025-05-31 23:06:54', '2025-05-31 23:06:54'),
(6, 11, 'Standard Double Or Twin', NULL, 'Shower, AC, Akses kursi roda,', 'kamar_images/Oh2CX9pMSDyiJv22JGhzuVywtzuFFuqDE9W5qOKH.jpg', '501909', '2025-06-01 00:37:46', '2025-06-01 00:37:46'),
(7, 12, 'Standard Twin', NULL, 'Shower, Kulkas, AC', 'kamar_images/B46GYr3xR10VHtdMTMEMEHjWqmuh6ybNbpw5hZuX.jpg', '385135', '2025-06-01 00:54:05', '2025-06-01 00:54:17'),
(8, 14, 'Fantastic', 'Fantastic Room for you enjoying your trip', 'Air conditioning, Complimentary bottled water, Coffee / tea maker, Television, Desk', 'kamar_images/9LcyXm3BhyhUL3A7rGm7XkCqHY00hU4BZQ7rToKn.jpg', '192000', '2025-06-02 08:08:27', '2025-06-02 08:08:27'),
(9, 13, 'Deluxe Cottage 2 Twin Beds Garden View', 'Java Heritage Hotel Purwokerto is a hotel in a good neighborhood, which is located at North Purwokerto. 24-hours front desk is available to serve you, from check-in to check-out, or any assistance you need.', 'Air conditioning, Complimentary bottled water, Electric kettle, Coffee / tea maker, Minibar, Television, Desk, Free newspaper, In-room safe, Soundproofed rooms, Ironing board (on request)', 'kamar_images/apSOrDnPsD2IknrhWrz84vLFE5egF5SrzJjW1J9c.jpg', '650000', '2025-06-02 08:11:03', '2025-06-02 08:11:03'),
(10, 14, 'Boombastic 2 Italian Meals', 'Boombastic 2 Italian Meals', 'Air conditioning, Complimentary bottled water, Coffee / tea maker, Television', 'kamar_images/jgQWlb5W1EHPphhHGVd7H37UMjkGNlQvJWqakjHK.jpg', '208000', '2025-06-02 08:15:38', '2025-06-02 08:15:38'),
(11, 13, 'Premium Deluxe Balcony', 'Assigned On Arrival', 'Air conditioning, Minibar, Complimentary bottled water, Coffee / tea maker, Refrigerator, Television', 'kamar_images/c93MeoXqLdGmqdp0pI0c4RUdLWzf0bO9c9puGRo6.jpg', '700000', '2025-06-02 08:17:13', '2025-06-02 08:17:13'),
(12, 15, 'Deluxe King Bed', 'ALL ROOM USED KING BED. SMOKING AREA AVAILABEL IN THE TERRACE', 'Air conditioning, Complimentary bottled water, Coffee / tea maker, Refrigerator, Television, Desk', 'kamar_images/hdCDjZgY4hrK0OSS7oaFsOdtd8tf7Qgd4HEMEWSk.jpg', '400000', '2025-06-02 08:18:48', '2025-06-02 08:18:48'),
(13, 16, 'Deluxe Room', 'Setiap kamar dilengkapi dengan fasilitas modern seperti AC, kamar mandi pribadi, dan Wi-Fi gratis.', 'King Bed, AC, Bathroom, Kitchen', 'kamar_images/FuL3Ghn0ffMQlDdDG1C4JMxelR4RY450dWOVd0cm.jpg', '350000', '2025-06-02 08:24:39', '2025-06-02 08:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `no_hp` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `role`, `no_hp`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(20, 'Admin', 'admin', 'admin@example.com', NULL, '$2y$10$sJsyIxg18afLZNEPlMgtMOK4mfryWLKA2o3/nxNaUeURs2PIxBuGG', 'admin', NULL, NULL, NULL, '2025-05-30 15:02:17', '2025-05-30 15:02:17'),
(21, 'Pembeli', 'pembeli', 'pembeli@example.com', NULL, '$2y$10$sJsyIxg18afLZNEPlMgtMOK4mfryWLKA2o3/nxNaUeURs2PIxBuGG', 'user', '089622981080', 'pontianak', NULL, '2025-05-30 15:02:17', '2025-05-30 15:02:17'),
(22, 'windi fikri', 'admin123', 'diwin321@gmail.com', NULL, '$2y$10$rST7.r5KVhYD3ZnpQmulPOd56mTFK5r.lv40wM27XsvlklnlTvWYm', 'user', NULL, NULL, NULL, '2025-05-31 03:04:03', '2025-05-31 03:04:03'),
(23, 'test', 'test', 'test@gmail.com', NULL, '$2y$10$8yQ9hI1hDLHvif0LwYGXNOypRGATNyoUf.wj1Vwy8xjhEJL5tfilq', 'user', '08972867676', 'test', NULL, '2025-05-31 03:06:28', '2025-05-31 03:06:28'),
(24, 'Lena Liana', 'Liaa', 'lenaliana88@gmail.com', NULL, '$2y$10$m/yT.uaHhUNCf0lR1pCkpO75EfhVGA6lIxH3P0qmzBiwZVgnF.Fru', 'user', '081228192998', 'Jl. Melati', NULL, '2025-05-31 16:07:18', '2025-05-31 16:07:18'),
(25, 'Adelia Eka Putriana', 'adel', 'adeliaeka88@gmail.com', NULL, '$2y$10$lWcQiDGwOvwDqsop4ebNu.0.xKSuH/VnSk/XbCkfyfheFbdXMKABG', 'user', '081228192998', 'Jl. Perum Saga Baru, Blok A1', NULL, '2025-05-31 17:17:58', '2025-05-31 17:17:58'),
(26, 'yessi', 'oliviasaripurba', '2311103120@ittelkom-pwt.ac.id', NULL, '$2y$10$QQDBiKV6xilB58KnLtEix.5LACZ1/HtO7eHB2pkIVaHgJqmm1478u', 'user', '0887773724795', 'JL.Sudagaran', NULL, '2025-05-31 17:28:48', '2025-05-31 17:28:48'),
(27, 'abc', 'abc123', 'khadeejatatbhista@gmail.com', NULL, '$2y$10$r6GN/.cqURAVlynVinuGFeLT6pYc67Vm5CsliuTRN4PZjZWKGAxDe', 'user', '088232593317', 'purwokerto', NULL, '2025-05-31 17:33:17', '2025-05-31 17:33:17'),
(28, 'Navaryn', 'varyn', 'navaryn@gmail.com', NULL, '$2y$10$2PV97KR6xLDUIBGVwKWUiO/RRsrfFYmHT40Ep2pWPKwn1oT3mSq9i', 'user', '08232935859', 'Jl. Mawar', NULL, '2025-05-31 22:24:15', '2025-05-31 22:24:15'),
(29, 'meio', 'meio', 'meio25@gmail', NULL, '$2y$10$g3Tu.A.GMvoYcDDFtHQmwuDSNKj6LXnIwku1dMZX0pj7RWzwPk39i', 'user', '08342154667', 'Telkom', NULL, '2025-05-31 22:56:36', '2025-05-31 22:56:36'),
(30, 'Anya Forger', 'anyaisme', 'kanggdaniell81@gmail.com', NULL, '$2y$10$sF/Zu2oP5srWYz2UvBEjiOT1TldF8ncSMZZfSm98MeRiKd5NRX4xi', 'user', '-', 'Jalan Weling Raya CtVIII, Sleman', NULL, '2025-05-31 23:15:23', '2025-05-31 23:15:23'),
(31, 'rido eido', 'ridodo', 'rido@gmail.com', NULL, '$2y$10$Kj8ZzNk/6I8S17A3SdMkzuOIdtt7C.PVjg4zdtXkU2lQUvqKKbQrm', 'user', '081455748967', 'purwokerto', NULL, '2025-06-01 00:15:35', '2025-06-01 00:15:35'),
(32, 'bbb', 'bbbb3459', 'bbbb3459@gmail.com', NULL, '$2y$10$Hcr039PIC3mbdHm8VkO8vefNcwlqo1q6YNQyphsT.8bzNdwteiZVq', 'user', '089937465334', 'amrik', NULL, '2025-06-01 09:34:26', '2025-06-01 09:34:26'),
(33, 'saturnus', 'saturnus20000', 'saturnus@gmail.com', NULL, '$2y$10$y2niqmIcEFbSbSSndOvqa.dsFWwyMyHISaPwUTXWfKnv2lMH6y.jC', 'user', '082136981230', 'tegal', NULL, '2025-06-01 09:35:29', '2025-06-01 09:35:29'),
(34, 'bulibalibol', 'bulibalibol121212', 'miaw@gmail.com', NULL, '$2y$10$L5/L2/stpAOrhaLvueDq7u/TA1EEJllBZEFSSZA9X0zTo1LZ/EToO', 'user', '082137213823', 'purwokerto', NULL, '2025-06-01 09:36:28', '2025-06-01 09:36:28'),
(35, 'bastiansteel', 'bastiancowokekar', 'bastian@gmail.com', NULL, '$2y$10$6N52p7TCS4NyTXeLE9BUzOvDyLvI7Qkw4lzMjxPJGGaF7guALYFsW', 'user', '081213237634', 'jakarta', NULL, '2025-06-01 09:37:17', '2025-06-01 09:37:17'),
(36, 'randi', 'princerandi', 'gatau@gmail.com', NULL, '$2y$10$7UELsW9riNkxOuMR5BPLpuWc2Hr7ZDNOeOKN19f23TwnC2SOrqTHq', 'user', '0812637527637', 'cilacap', NULL, '2025-06-01 09:38:11', '2025-06-01 09:38:11'),
(37, 'wahyu', 'whyu9813798163', 'wahyu@gmail.com', NULL, '$2y$10$DxRZleMwmZ7NzT7l1fScSeQpUGfGr24x6ztDtVE3aCGDu4z.JNdqO', 'user', '083129137974', 'bandung', NULL, '2025-06-01 09:39:39', '2025-06-01 09:39:39'),
(38, 'ECI', 'oliviasaripurba', 'yessiolivia010405@gmail.com', NULL, '$2y$10$7Qcn5IGMv./Cw8mEjwwuteBwnCP13igk077dJl4b4wComzGP.6WA2', 'user', '0887773724795', 'JL,SUDAGARAN', NULL, '2025-06-02 01:02:39', '2025-06-02 01:02:39'),
(39, 'dfg567', 'dfg5678910', 'dfg@Gmail.com', NULL, '$2y$10$icOm5y3bYrtU08U3p4PtzeKWitYp0eGtXmHo.4BXkI5n0FosC.aMi', 'user', '082367854912', 'malang', NULL, '2025-06-02 08:26:06', '2025-06-02 08:26:06'),
(40, 'qwueowi213810923', 'qwueowi', 'qwueowi@gmail.com', NULL, '$2y$10$H1eUzz0pMU6milDzD56Tvux1DqIGCOT4f.Ix/HQQ3v8JVU9X1KX0C', 'user', '08366248193213', 'surabaya', NULL, '2025-06-02 08:27:12', '2025-06-02 08:27:12'),
(41, 'rangga budi', 'ranggab102938', 'ranggab@gmail.com', NULL, '$2y$10$Zd0VddV.F3N9H.oJy.ci8en5qKTsPctmX8fop38YqnYwSK8vpSSX6', 'user', '089172635401', 'cirebon', NULL, '2025-06-02 08:29:15', '2025-06-02 08:29:15'),
(42, 'hongdaeguy', 'hongdaeguy0398012', 'hongdaemosthandsomeguy@gmail.com', NULL, '$2y$10$LoCRvT60mA1kp9Pw/ids7.1XdWK7a0hVpAZl36jC.zWK/G1PbUS8y', 'user', '0836164782356', 'jakarta', NULL, '2025-06-02 08:30:33', '2025-06-02 08:30:33'),
(43, 'jennie kim', 'jennie', 'jenniekim@gmail.com', NULL, '$2y$10$0tzwuD0QYe/go5uNT0eZWeKq1.NUf9QfxNS6oyObYl3F5PGuG9lza', 'user', '0831648237982', 'jakarta', NULL, '2025-06-02 08:31:52', '2025-06-02 08:31:52'),
(44, 'chucky', 'theworstdoll', 'chucky@gmail.com', NULL, '$2y$10$d5LsSfLH3TQ8Lk4NVXqSc.85TGbw.nHbwcuEbDydS6UHwLbPxvAGy', 'user', '082136813444', 'bandung', NULL, '2025-06-02 08:33:05', '2025-06-02 08:33:05'),
(45, 'cassel', 'cassel321', 'cassel@gmail.com', NULL, '$2y$10$AJTiPI6tFmd9KFkaUp2w4OB/e/CJeAFFvKl44JX4ddO1i6tRBGk9K', 'user', '0817625349221', 'bogor', NULL, '2025-06-02 08:35:55', '2025-06-02 08:35:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
