-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Mar 2025 pada 12.36
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotelgo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `Kode_Fasilitas` int(11) NOT NULL,
  `Nama_Fasilitas` varchar(100) NOT NULL,
  `Deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `Kode_Pembayaran` int(11) NOT NULL,
  `Kode_Reservasi` int(11) NOT NULL,
  `Tanggal_Pembayaran` date NOT NULL,
  `Jumlah_Pembayaran` decimal(10,2) NOT NULL,
  `Metode_Pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `Kode_Reservasi` int(11) NOT NULL,
  `Kode_Tamu` int(11) NOT NULL,
  `Cek_in` date NOT NULL,
  `Cek_out` date NOT NULL,
  `Status_Reservasi` enum('Pending, Confirmed, Canceled') NOT NULL,
  `Kode_Staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`Kode_Reservasi`, `Kode_Tamu`, `Cek_in`, `Cek_out`, `Status_Reservasi`, `Kode_Staff`) VALUES
(0, -3, '2025-07-16', '2025-07-18', '', -3),
(0, -2, '2025-05-19', '2025-05-22', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `Kode_Staff` int(11) NOT NULL,
  `Nama_Staff` varchar(100) NOT NULL,
  `Jabatan` varchar(50) NOT NULL,
  `Telepon` varchar(25) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `Kode_Tamu` int(11) NOT NULL,
  `Nama_Tamu` varchar(100) NOT NULL,
  `Alamat` text NOT NULL,
  `Telepon` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
