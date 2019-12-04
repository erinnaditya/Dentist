-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: Localhost
-- Generation Time: 26 Jan 2019 pada 07.09
-- Versi Server: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `kode` varchar(10) NOT NULL,
  `namabarang` varchar(20) NOT NULL,
  `foto` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode`, `namabarang`, `foto`, `harga`, `status`) VALUES
('FD0001', 'Fixed Pedestal', '1.jpg', 4200000, 'ada'),
('FD0001', 'Fixed Pedestal', '1.jpg', 1250000, 'ada'),
('MT0002', 'Mountaid', '', 4500000, 'ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master`
--

CREATE TABLE IF NOT EXISTS `master` (
  `nopol` varchar(15) NOT NULL,
  `namamotor` varchar(20) NOT NULL,
  `foto` varchar(20) NOT NULL,
  `hargasewa` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master`
--

INSERT INTO `master` (`nopol`, `namamotor`, `foto`, `hargasewa`, `status`) VALUES
('A2379W0', 'revo', 'a.png', '200000', 'ada'),
('A5343WI', 'vario', 'b.png', '250000', 'ada'),
('B3245FT', 'SUPRA', 'e.jpg', '400000', 'ada'),
('B4552RE', 'klx', 'd.png', '350000', 'ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `multiuser`
--

CREATE TABLE IF NOT EXISTS `multiuser` (
  `username` varchar(10) NOT NULL,
  `password` varchar(225) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `multiuser`
--

INSERT INTO `multiuser` (`username`, `password`, `level`) VALUES
('admin', 'admin', 'admin'),
('user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`nopol`);

--
-- Indexes for table `multiuser`
--
ALTER TABLE `multiuser`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
