-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2019 at 02:06 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `nia` varchar(30) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`nia`, `nama_admin`, `alamat`, `email`) VALUES
('201', 'Hendry Sutoyo', 'Kerek', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(30) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_dosen`, `alamat`, `email`) VALUES
('3321', 'Kunto Wijoyo, M.Pd', 'Tuban', 'kuntowi@gmail.com'),
('3322', 'Samaun Gufron, ST. MT', 'Semanding', 'samaun@gmail.com'),
('3323', 'Sardi Joko, P.Hd', 'Rengel', 'sardijo@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `nama_matkul` varchar(50) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `nama_ruangan` varchar(50) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` varchar(20) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`nama_matkul`, `nama_dosen`, `nama_ruangan`, `nama_prodi`, `hari`, `jam`, `id_jadwal`, `email`) VALUES
('Bahasa Indonesia', 'Kunto Wijoyo, M.Pd', 'Ruang L.1', 'Pendidikan Bahasa Indonesia', 'Senin', '07.30 - 08.10', 4, 'kuntowi@gmail.com'),
('Bahasa Inggris', 'Kunto Wijoyo, M.Pd', 'Ruang M.1', 'Pendidikan Bahasa Inggris', 'Rabu', '09.30 - 10.10', 5, 'kuntowi@gmail.com'),
('Jaringan Komputer', 'Samaun Gufron, ST. MT', 'Lab Jarkom', 'Teknik Informatika', 'Jumat', '13.00 - 13.40 ', 6, 'samaun@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `kode_matkul` varchar(20) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `sks` decimal(10,0) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_krs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`kode_matkul`, `nama_matkul`, `sks`, `email`, `id_krs`) VALUES
('P002', 'Pemrograman C', '2', 'iqbal@gmail.com', 2),
('BI01', 'Bahasa Indonesia', '2', 'fijar@gmail.com', 6),
('BI02', 'Bahasa Inggris', '3', 'fijar@gmail.com', 7),
('SD01', 'Struktur Data', '3', 'iqbal@gmail.com', 8);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(30) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mahasiswa`, `tempat_lahir`, `tanggal_lahir`, `nama_prodi`, `alamat`, `email`) VALUES
('1412170024', 'Muhammad Iqbal', 'Tuban', '1999-03-22', 'Teknik Informatika', 'Rengel', 'iqbal@gmail.com'),
('1412170052', 'Ainfijar Rama', 'Lamongan', '2019-07-19', 'Ekonomi Manajemen', 'Lamongan', 'fijar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_matkul` varchar(20) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `sks` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_matkul`, `nama_matkul`, `sks`) VALUES
('BI01', 'Bahasa Indonesia', '2'),
('BI02', 'Bahasa Inggris', '3'),
('JK01', 'Jaringan Komputer', '3'),
('P001', 'Pemrograman Java', '2'),
('P002', 'Pemrograman C', '2'),
('SD01', 'Struktur Data', '3');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`email`, `password`, `level`) VALUES
('admin2@gmail.com', '123', 'admin'),
('admin@gmail.com', '123', 'admin'),
('fijar@gmail.com', '123', 'mahasiswa'),
('iqbal@gmail.com', '123', 'mahasiswa'),
('kuntowi@gmail.com', '123', 'dosen'),
('samaun@gmail.com', '123', 'dosen'),
('sardijo@gmail.com', '123', 'dosen');

-- --------------------------------------------------------

--
-- Table structure for table `programstudi`
--

CREATE TABLE `programstudi` (
  `kode_prodi` varchar(20) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programstudi`
--

INSERT INTO `programstudi` (`kode_prodi`, `nama_prodi`) VALUES
('EM01', 'Ekonomi Manajemen'),
('BS01', 'Pendidikan Bahasa Indonesia'),
('BS02', 'Pendidikan Bahasa Inggris'),
('TI02', 'Teknik Industri'),
('TI01', 'Teknik Informatika'),
('KI01', 'Teknik Kimia');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `kode_ruangan` varchar(20) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`kode_ruangan`, `nama_ruangan`) VALUES
('LAB02', 'Lab RPL'),
('L1', 'Ruang L.1'),
('L2', 'Ruang L.2'),
('M1', 'Ruang M.1'),
('M2', 'Ruang M.2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`nia`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD UNIQUE KEY `nama_ruangan` (`nama_ruangan`),
  ADD UNIQUE KEY `jam` (`jam`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD UNIQUE KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_matkul`),
  ADD UNIQUE KEY `nama_matkul` (`nama_matkul`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `programstudi`
--
ALTER TABLE `programstudi`
  ADD PRIMARY KEY (`kode_prodi`),
  ADD UNIQUE KEY `nama_prodi` (`nama_prodi`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`kode_ruangan`),
  ADD UNIQUE KEY `nama_ruangan` (`nama_ruangan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`email`) REFERENCES `pengguna` (`email`);

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`email`) REFERENCES `pengguna` (`email`);

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`email`) REFERENCES `pengguna` (`email`);

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`email`) REFERENCES `pengguna` (`email`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`email`) REFERENCES `pengguna` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
