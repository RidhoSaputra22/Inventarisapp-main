-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2024 at 02:35 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris-main`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'admin', 'admin 1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id_anggota` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `dms` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `hp` varchar(255) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`id_anggota`, `nama`, `dms`, `alamat`, `hp`, `foto`) VALUES
(3, 'Rara', 'DMS.221', 'Kalimantan', '09090909021', '65e0330b85282.jpe'),
(4, '8', '8', '8', '8', '65e034b313d0e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int NOT NULL,
  `nm_barang` varchar(100) NOT NULL,
  `jenis` text NOT NULL,
  `list1` int DEFAULT NULL,
  `list2` int DEFAULT NULL,
  `list3` int DEFAULT NULL,
  `baik1` int DEFAULT NULL,
  `buruk1` int DEFAULT NULL,
  `baik2` int DEFAULT NULL,
  `buruk2` int DEFAULT NULL,
  `baik3` int DEFAULT NULL,
  `buruk3` int DEFAULT NULL,
  `foto` text NOT NULL,
  `tanggal1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `tanggal2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `tanggal3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nm_barang`, `jenis`, `list1`, `list2`, `list3`, `baik1`, `buruk1`, `baik2`, `buruk2`, `baik3`, `buruk3`, `foto`, `tanggal1`, `tanggal2`, `tanggal3`) VALUES
(72, 'Tera', 'asd', 77, 12, 12, 10, 10, 1, 1, 4, 3, '665f51295c580.png', '', '', ''),
(80, 'Sendok', '', 12, NULL, NULL, 6, 6, NULL, NULL, NULL, NULL, '665f511ca82fd.png', '2024-02-29', '', ''),
(81, 'KORA', 'baik', 12, NULL, NULL, 12, 12, NULL, NULL, NULL, NULL, '665f511598b89.png', '2024-06-04', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dipinjam`
--

CREATE TABLE `tb_dipinjam` (
  `id_dipinjam` int NOT NULL,
  `nm_dipinjam` varchar(255) NOT NULL,
  `jml_dipinjam` int NOT NULL,
  `surat_dipinjam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_dipinjam`
--

INSERT INTO `tb_dipinjam` (`id_dipinjam`, `nm_dipinjam`, `jml_dipinjam`, `surat_dipinjam`) VALUES
(4, 'sd', 22, '65830cdd9fba5.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_history`
--

CREATE TABLE `tb_history` (
  `id_histori` int NOT NULL,
  `nama` text NOT NULL,
  `barang` text NOT NULL,
  `tempat` text NOT NULL,
  `perubahan` text NOT NULL,
  `aksi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_history`
--

INSERT INTO `tb_history` (`id_histori`, `nama`, `barang`, `tempat`, `perubahan`, `aksi`) VALUES
(1, 'user', 'SAMPOERNA', 'inventaris->list-1', '12', 'ADD'),
(2, 'user', 'SUSU', 'inventaris->list-2', '12', 'ADD'),
(3, 'user', 'PANCI', 'Inventaris->list-1', '12', 'EDIT'),
(4, 'user', 'qss', 'Inventaris->list-1', '2', 'EDIT'),
(5, 'user', 'PANCI', 'Inventaris->list-', '12', 'EDIT'),
(6, 'user', 'qss', 'Inventaris->list-', '2', 'EDIT'),
(7, 'user', 'qss', 'Inventaris->list-1', '2', 'EDIT'),
(8, 'user', 'SAMPOERNA', 'Inventaris->list-1', '12', 'EDIT'),
(9, 'user', 'SUSU', 'Inventaris->list-2', '12', 'EDIT'),
(10, 'user', 'k3', 'inventaris->list-3', '1', 'ADD'),
(11, 'user', 'k3', 'Inventaris->list-3', '1', 'EDIT'),
(12, 'user', 'k', 'inventaris->list-3', '9', 'ADD'),
(13, 'user', 'ka', 'Inventaris->list-3', '1', 'EDIT'),
(14, 'user', 'k', 'Inventaris->list-3', 'Nama->k Jumlah->9', 'EDIT'),
(15, '', '', 'Inventaris->list-', '', 'DEL'),
(16, 'user', '', 'Inventaris->list-', '', 'DEL'),
(17, 'user', '', 'Inventaris->list-', '', 'DEL'),
(18, 'user', '', 'Inventaris->list-1', '', 'DEL'),
(19, 'user', 'a', 'Data-Pinjam', '2', 'ADD'),
(20, 'user', 'l', 'Inventaris->list-', 'Nama->l Jumlah->2 Surat->', 'EDIT'),
(21, 'user', 'PANCIS', 'Inventaris->list-1', 'Nama->PANCIS Jumlah->12', 'EDIT'),
(22, 'user', 'PANCIS', 'Inventaris->list-1', 'Nama->PANCISCA Jumlah->12', 'EDIT'),
(23, 'user', 'lsssss', 'Inventaris->list-', 'Nama->lsssss Jumlah->2 Surat->', 'EDIT'),
(24, 'user', 'TESTs4', 'Data-Pinjam', 'Nama->TESTs4ss Jumlah->1222 Surat->', 'EDIT'),
(25, 'user', 'TESTs4ss', 'Data-Pinjam', 'Nama->TESTs4ss Jumlah->1222 Surat->', 'EDIT'),
(26, 'user', 'k', 'Data-Pinjam', '2', 'ADD');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pinjam`
--

CREATE TABLE `tb_pinjam` (
  `id_pinjam` int NOT NULL,
  `nm_pinjam` varchar(100) NOT NULL,
  `jml_pinjam` int NOT NULL,
  `surat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foto` text NOT NULL,
  `tanggal_masuk` text NOT NULL,
  `tanggal_keluar` text NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_pinjam`
--

INSERT INTO `tb_pinjam` (`id_pinjam`, `nm_pinjam`, `jml_pinjam`, `surat`, `foto`, `tanggal_masuk`, `tanggal_keluar`, `jenis`, `status`) VALUES
(41, 'HT', 12, '65dd8db2684b8.docx', '', '2024-02-27', '2024-02-27', 'masuk', 'sudah'),
(42, 'Motor', 2, '65dd9158b4471.jpg', '', '2024-02-28', '2024-02-29', 'masuk', 'sudah'),
(43, 'Monitor', 1, '65dd91a245a47.jpg', '', '2024-02-28', '2024-02-29', 'keluar', 'sudah'),
(44, 'SPEAKER', 1, '65e0d20d3602d.docx', '', '2024-03-01', '2024-02-29', 'masuk', 'sudah'),
(45, 'Laptop', 12, '65e0d34caf371.png', '', '2024-02-28', '', 'masuk', 'belum');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  `hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` text NOT NULL,
  `is_verify` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `alamat`, `dms`, `email`, `hp`, `username`, `password`, `foto`, `code`, `is_verify`) VALUES
(1, 'Joko', 'BTP', 'DMS.XIV.111.211991', '', '092340932940', 'user', 'user', 'dracula', '', 1),
(2, 'Mark', 'Sudiang', 'DMS.XVI.999.211299', '', '08129040292', 'mark', '123', 'dracula', '', NULL),
(3, '5', '5', '5', '', '55', '5', '', '1718113575.jpg', '', NULL),
(4, '5', '5', '5', '', '55', '5', '', '1718113604.jpg', '05acfe17f1fd2d0d3cee1214d938684f', NULL),
(5, '5', '5', '5', '', '55', '5', '', '1718113623.jpg', '35f7f350782c142d47ca03844b746692', NULL),
(6, '5', '5', '5', '', '55', '5', '5', '1718113653.jpg', '35f7f350782c142d47ca03844b746692', NULL),
(7, '5', '5', '5', '', '55', '5', '5', '1718113682.jpg', '87cf161d26c52057da3fa99e165a881d', NULL),
(8, '6', '6', '66', '', '66', '6', '6', '1718114898.jpg', '8c423036b31209eedcb450ee7d1a65aa', NULL),
(9, '6', '6', '66', '', '66', '6', '6', '1718114946.jpg', '8fc8b9382f991bb2784a74ad7ab225a9', NULL),
(10, '6', '6', '66', '', '66', '6', '6', '1718115034.jpg', '7040d9f37edab90d666d42d24af02137', NULL),
(11, '6', '6', '66', '', '66', '6', '6', '1718115055.jpg', '7040d9f37edab90d666d42d24af02137', NULL),
(12, 'Ridho', 'BTP', 'DMS.614', 'saputra22022@gmail.com', '081231231', 'ridho', 'ridho', '1718115467.jpg', 'b41eeaa54fa75e3b566d007c142017eb', 1),
(13, 'Dimas', 'Gowa', 'Tidak Ada', 'saputra22022@gmail.com', '0823123123212', 'dimas', 'dimas', '1718116298.jpg', 'daad4772dd8454d31da98fea7ae9764d', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_dipinjam`
--
ALTER TABLE `tb_dipinjam`
  ADD PRIMARY KEY (`id_dipinjam`);

--
-- Indexes for table `tb_history`
--
ALTER TABLE `tb_history`
  ADD PRIMARY KEY (`id_histori`);

--
-- Indexes for table `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `id_anggota` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tb_dipinjam`
--
ALTER TABLE `tb_dipinjam`
  MODIFY `id_dipinjam` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_history`
--
ALTER TABLE `tb_history`
  MODIFY `id_histori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  MODIFY `id_pinjam` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
