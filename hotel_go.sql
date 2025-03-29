-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Mar 2025 pada 13.26
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_go`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `Kode_Fasilitas` int(11) NOT NULL,
  `Nama_Fasilitas` varchar(100) DEFAULT NULL,
  `Deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `Kode_Kamar` int(11) NOT NULL,
  `Nama_Kamar` varchar(100) DEFAULT NULL,
  `Tarif_Kamar` decimal(10,2) DEFAULT NULL,
  `Status` enum('Tersedia','Booked') DEFAULT NULL,
  `Fasilitas` text DEFAULT NULL,
  `Tipe_Kamar` enum('Standard','Deluxe','Suite') DEFAULT NULL,
  `No_Kamar` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar_fasilitas`
--

CREATE TABLE `kamar_fasilitas` (
  `Kode_Kamar` int(11) NOT NULL,
  `Kode_Fasilitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `Kode_Pembayaran` int(11) NOT NULL,
  `Kode_Reservasi` int(11) DEFAULT NULL,
  `Tanggal_Pembayaran` date DEFAULT NULL,
  `Jumlah_Pembayaran` decimal(10,2) DEFAULT NULL,
  `Metode_Pembayaran` varchar(50) DEFAULT NULL,
  `Status_Pembayaran` enum('Awaiting_Payment','Paid') DEFAULT NULL,
  `Total_Pembayaran` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `Kode_Reservasi` int(11) NOT NULL,
  `Kode_Tamu` int(11) DEFAULT NULL,
  `Kode_Kamar` int(11) DEFAULT NULL,
  `Cek_In` date DEFAULT NULL,
  `Cek_Out` date DEFAULT NULL,
  `Status_Reservasi` enum('Pending','Confirmed','Canceled') DEFAULT NULL,
  `Kode_Staff` int(11) DEFAULT NULL,
  `Kode_Admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `Kode_Staff` int(11) NOT NULL,
  `Nama_Staff` varchar(100) DEFAULT NULL,
  `Jabatan` varchar(50) DEFAULT NULL,
  `Telepon` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `Kode_Tamu` int(11) NOT NULL,
  `Nama_Tamu` varchar(100) DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `Telepon` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`Kode_Fasilitas`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`Kode_Kamar`);

--
-- Indeks untuk tabel `kamar_fasilitas`
--
ALTER TABLE `kamar_fasilitas`
  ADD PRIMARY KEY (`Kode_Kamar`,`Kode_Fasilitas`),
  ADD KEY `Kode_Fasilitas` (`Kode_Fasilitas`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`Kode_Pembayaran`),
  ADD KEY `Kode_Reservasi` (`Kode_Reservasi`);

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`Kode_Reservasi`),
  ADD KEY `Kode_Tamu` (`Kode_Tamu`),
  ADD KEY `Kode_Kamar` (`Kode_Kamar`),
  ADD KEY `Kode_Staff` (`Kode_Staff`),
  ADD KEY `Kode_Admin` (`Kode_Admin`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Kode_Staff`);

--
-- Indeks untuk tabel `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`Kode_Tamu`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kamar_fasilitas`
--
ALTER TABLE `kamar_fasilitas`
  ADD CONSTRAINT `kamar_fasilitas_ibfk_1` FOREIGN KEY (`Kode_Kamar`) REFERENCES `kamar` (`Kode_Kamar`),
  ADD CONSTRAINT `kamar_fasilitas_ibfk_2` FOREIGN KEY (`Kode_Fasilitas`) REFERENCES `fasilitas` (`Kode_Fasilitas`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`Kode_Reservasi`) REFERENCES `reservasi` (`Kode_Reservasi`);

--
-- Ketidakleluasaan untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `reservasi_ibfk_1` FOREIGN KEY (`Kode_Tamu`) REFERENCES `tamu` (`Kode_Tamu`),
  ADD CONSTRAINT `reservasi_ibfk_2` FOREIGN KEY (`Kode_Kamar`) REFERENCES `kamar` (`Kode_Kamar`),
  ADD CONSTRAINT `reservasi_ibfk_3` FOREIGN KEY (`Kode_Staff`) REFERENCES `staff` (`Kode_Staff`),
  ADD CONSTRAINT `reservasi_ibfk_4` FOREIGN KEY (`Kode_Admin`) REFERENCES `admin` (`Kode_Admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
