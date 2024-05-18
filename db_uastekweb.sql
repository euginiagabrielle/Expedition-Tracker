-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 09:48 AM
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
-- Database: `db_uastekweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_log_pengiriman`
--

CREATE TABLE `detail_log_pengiriman` (
  `id` int(8) NOT NULL,
  `no_resi` varchar(8) NOT NULL,
  `tanggal` date NOT NULL,
  `kota` varchar(20) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_log_pengiriman`
--

INSERT INTO `detail_log_pengiriman` (`id`, `no_resi`, `tanggal`, `kota`, `keterangan`) VALUES
(1, 'RS-001', '2023-12-05', 'Jakarta', 'Deposit pengiriman'),
(2, 'RS-001', '2023-12-06', 'Surabaya', 'Pengiriman diteruskan ke penerima'),
(3, 'RS-001', '2023-12-06', 'Surabaya', 'Pengiriman oleh kurir'),
(4, 'RS-002', '2023-12-06', 'Bandung', 'Deposit pengiriman'),
(7, 'RS-002', '2023-12-07', 'Tangerang', 'Pengiriman sampai di gudang sortir'),
(11, 'RS-002', '2023-12-08', 'Medan', 'Pengiriman diteruskan ke penerima'),
(12, 'RS-002', '2023-12-08', 'Medan', 'Pengiriman oleh kurir'),
(13, 'RS-002', '2023-12-08', 'Medan', 'Pengiriman telah diterima customer'),
(14, 'RS-003', '2023-12-08', 'Surabaya', 'Deposit pengiriman');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_resi_pengiriman`
--

CREATE TABLE `transaksi_resi_pengiriman` (
  `id_resi` int(5) NOT NULL,
  `no_resi` varchar(8) NOT NULL,
  `tgl_resi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_resi_pengiriman`
--

INSERT INTO `transaksi_resi_pengiriman` (`id_resi`, `no_resi`, `tgl_resi`) VALUES
(1, 'RS-001', '2023-12-05'),
(2, 'RS-002', '2023-12-05'),
(3, 'RS-003', '2023-12-07'),
(5, 'RS-004', '2023-12-07'),
(6, 'RS-005', '2023-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `status_aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`id`, `username`, `password`, `nama_admin`, `status_aktif`) VALUES
(1, 'euginiagb28', '12345', 'Euginia', 1),
(2, 'gabb2004', '$2y$10$fyCzRaq61hDyp', 'Gabrielle', 0),
(3, 'jinn11', '123456', 'Yujin', 1),
(4, 'lele2004', '$2y$10$0zXLnfYkXXK1/', 'Elle', 1),
(5, 'yaya50', '$2y$10$C5MpewP7a3t6G', 'Nia', 0),
(6, 'gaabb', '$2y$10$49Cdv5Vs5z57X', 'Gaby', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_log_pengiriman`
--
ALTER TABLE `detail_log_pengiriman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_resi_pengiriman`
--
ALTER TABLE `transaksi_resi_pengiriman`
  ADD PRIMARY KEY (`id_resi`);

--
-- Indexes for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_log_pengiriman`
--
ALTER TABLE `detail_log_pengiriman`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transaksi_resi_pengiriman`
--
ALTER TABLE `transaksi_resi_pengiriman`
  MODIFY `id_resi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
