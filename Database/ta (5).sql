-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2020 at 10:54 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulan`
--

CREATE TABLE `bulan` (
  `id_bulan` int(11) NOT NULL,
  `no_ternak` varchar(6) NOT NULL,
  `bulan_ke` int(2) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kondisi` varchar(40) NOT NULL,
  `nilai_awal` float NOT NULL,
  `nilai_target` float NOT NULL,
  `tgl_pencatatan` varchar(40) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulan`
--

INSERT INTO `bulan` (`id_bulan`, `no_ternak`, `bulan_ke`, `gambar`, `kondisi`, `nilai_awal`, `nilai_target`, `tgl_pencatatan`, `id_user`) VALUES
(46, 'A101', 11, 'kambing210.PNG', 'Sehat', 13.5, 16, '09-09-2019', 3),
(47, 'A102', 10, 'kambing411.PNG', '', 3.8, 0, '07-12-2019', 0),
(52, 'A107', 11, 'kambing81.PNG', 'tidak Sehat', 3.5, 16, '07-12-2019', 0),
(53, 'A101', 12, 'kambing210.PNG', 'Sehat', 14.1, 15, '27-10-2019', 3),
(55, 'A101', 13, 'kambing210.PNG', 'Sehat', 16.2, 17, '24-11-2019', 3),
(57, 'A101', 14, 'kambing210.PNG', 'Sehat', 18.2, 25.1, '29-12-2019', 3),
(58, 'A102', 11, 'kambing32.PNG', 'Betina Hamil', 21, 0, '19-12-2019', 0),
(59, 'A102', 11, 'kambing72.PNG', 'Betina Hamil', 24, 0, '19-12-2019', 3),
(60, 'A21', 0, '3.jpg', '', 22.22, 0, '19-12-2019', 0),
(61, 'A21', 0, 'azure.jpg', '', 21.1, 0, '19-12-2019', 0),
(62, 'A21', 0, '2221.png', '', 23.12, 0, '19-12-2019', 0),
(63, 'A101', 15, '31.jpg', 'Melebihi Berat Normal', 18, 20, '01-01-2020', 3),
(64, 'A412', 2, '221.png', 'Sehat', 3, 0, '01-01-2020', 3),
(65, 'A1032', 0, '223.png', '', 23.1, 0, '01-01-2020', 3),
(66, 'A1032', 0, '224.png', '', 12.1, 0, '01-01-2020', 3),
(67, 'A1032', 0, '225.png', '', 23.12, 0, '01-01-2020', 3),
(68, 'A1032', 0, 'kambing16.jpg', '', 23.1, 0, '01-01-2020', 3);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `nm` varchar(100) NOT NULL,
  `kunci` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `nm`, `kunci`) VALUES
(4, 'Gatal', 'G1'),
(5, 'Kulit menebal', 'G2'),
(6, 'Bulu rontok', 'G3'),
(7, 'Kulit kaku', 'G4'),
(8, 'Luka/darah ada belatungnya', 'G5'),
(9, 'Ambing meradang', 'G6'),
(10, 'Ambing membengkak', 'G7'),
(11, 'Ambing panas', 'G8'),
(12, 'Ambing sakit bila disentuh', 'G9'),
(13, 'Benjolan keropeng pada area mu', 'G10'),
(14, 'Pucat', 'G11'),
(15, 'Tubuh gemetar', 'G12'),
(16, 'Kepala mengarah kebelakang', 'G13'),
(17, 'Kaku', 'G14'),
(18, 'Kejang', 'G15'),
(19, 'Sering kencing', 'G16'),
(20, 'Luka pada daerah sekitar kuku', 'G17'),
(21, 'Bau busuk', 'G18'),
(22, 'Berjalan pincang', 'G19'),
(23, 'Mulut berbusa', 'G20'),
(24, 'Kotoran bercampur darah', 'G21'),
(25, 'Kambing Kurus', 'G22'),
(26, 'Bulu kusam', 'G23'),
(27, 'Nafsu makan berkurang', 'G24'),
(28, 'Kotoran lembek', 'G25'),
(29, 'Perut kembung', 'G27'),
(30, 'Sulit buang kotoran', 'G28'),
(31, 'Sulit berdiri', 'G29'),
(32, 'Mata berair', 'G30'),
(33, 'Mata kemerahan', 'G31'),
(34, 'Mata selalu menutup', 'G32'),
(35, 'Mata bengkak', 'G33'),
(36, 'Suhu tubuh meningkat', 'G34'),
(37, 'Cairan dari mulut meningkat', 'G35'),
(38, 'Demam ', 'G36'),
(39, 'Gangguan pernafasan', 'G37'),
(40, 'Badan penuh bisul', 'G38'),
(41, 'Lidah bengkak', 'G39'),
(42, 'Lidah menjulur keluar', 'G40'),
(43, 'Mulut menganga', 'G41'),
(44, 'Sulit tidur', 'G42'),
(45, 'Nadi berdenyut cepat', 'G43'),
(46, 'Peradangan kulit pada sekitar mulut atau kelopak mata atau alat genital', 'G46'),
(47, 'Mata bernanah', 'G47'),
(48, 'Hidung bernanah', 'G48'),
(49, 'Lidah berwarna biru', 'G49'),
(50, 'Kelumpuhan pada bagian otot kaki', 'G50'),
(51, 'Kambing berkedut', 'G51'),
(52, 'Gigi bergemetaran', 'G52'),
(53, 'Gelisah', 'G53'),
(54, 'Cempe usia 3-4 bulan', 'G54'),
(55, 'Pembengkakan pada pusar', 'G55'),
(56, 'Panas pada bekas tali pusar', 'G56'),
(57, 'Sekeliling pusar berwarna merah', 'G57'),
(58, 'Pusar sakit saat di pegang', 'G58'),
(59, 'Terdengar ngorok', 'G59'),
(60, 'Banyak Kutu berwarna Kemerahan', 'G60');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi_dokter`
--

CREATE TABLE `hubungi_dokter` (
  `id_hubungi_dokter` int(11) NOT NULL,
  `diagnosis` varchar(250) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hubungi_dokter`
--

INSERT INTO `hubungi_dokter` (`id_hubungi_dokter`, `diagnosis`, `catatan`) VALUES
(1, 'Diare\r\n', ''),
(2, 'batuk', ''),
(23, 'Diare', 'Minum Obat detox 3 kali sehari');

-- --------------------------------------------------------

--
-- Table structure for table `kambing`
--

CREATE TABLE `kambing` (
  `id_kambing` int(4) NOT NULL,
  `no_pejantan` varchar(50) NOT NULL,
  `no_induk` varchar(50) NOT NULL,
  `no_ternak` char(6) NOT NULL,
  `jenis_kelamin` char(2) NOT NULL,
  `tgl_lahir` varchar(14) NOT NULL,
  `telinga` varchar(8) NOT NULL,
  `pola_warna` varchar(30) NOT NULL,
  `gambar_kambing` varchar(200) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kambing`
--

INSERT INTO `kambing` (`id_kambing`, `no_pejantan`, `no_induk`, `no_ternak`, `jenis_kelamin`, `tgl_lahir`, `telinga`, `pola_warna`, `gambar_kambing`, `id_user`, `status`) VALUES
(43, '', '', 'A101', 'P', '12-01-2019', 'panjang', 'hitam putih ', 'kambing.PNG', 3, 0),
(44, 'K', 'K', 'A102', 'B', '12-01-2019', 'sedang', '  coklat', 'kambing.PNG', 3, 0),
(45, 'K', 'K', 'A103', 'P', '12-01-2019', 'sedang', 'hitam  coklat', 'kambing.PNG', 3, 0),
(46, 'K', 'K', 'A104', 'P', '12-01-2019', 'sedang', '  coklat', 'kambing.PNG', 3, 0),
(47, 'K', 'K', 'A105', 'P', '12-01-2019', 'kecil', 'hitam  coklat', 'kambing.PNG', 4, 0),
(48, 'K', 'K', 'A106', 'P', '12-01-2019', 'kecil', 'hitam  coklat', 'kambing.PNG\r\n', 4, 0),
(49, 'K', 'K', 'A107', 'P', '12-01-2019', 'sedang', ' putih ', 'kambing.PNG', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kesehatan`
--

CREATE TABLE `kesehatan` (
  `id_kesehatan` int(11) NOT NULL,
  `no_ternak` char(10) NOT NULL,
  `kesehatan` varchar(20) NOT NULL,
  `tgl_cek_kesehatan` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kesehatan`
--

INSERT INTO `kesehatan` (`id_kesehatan`, `no_ternak`, `kesehatan`, `tgl_cek_kesehatan`, `id_user`) VALUES
(13, 'A101', 'Sehat', '2019-10-27', 3),
(14, 'A101', 'Sehat', '2019-11-24', 3),
(15, 'A101', 'Tidak Sehat', '2019-12-29', 3),
(16, 'A107', 'Sehat', '2019-12-21', 3),
(17, 'A101', 'Sehat', '2019-12-09', 3),
(18, 'A101', 'Sehat', '2019-12-11', 3),
(22, 'A101', 'Sehat', '2020-01-01', 3);

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `nm_penyakit` varchar(100) NOT NULL,
  `kunci` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `nm_penyakit`, `kunci`) VALUES
(1, 'Kudis (Scabies)', 'P1'),
(2, 'Belatungan (Myasis)', 'P2'),
(3, 'Radang Susu (Mastitis)', 'P3'),
(4, 'Keropeng (Orf)', 'P4'),
(5, 'Demam Susu(Milk Fever)', 'P5'),
(6, 'Kejang Rumput (Grass Tetani)', 'P6'),
(7, 'Kuku Busuk (Foot Rot)', 'P7'),
(8, 'Keracunan Tanaman', 'P8'),
(9, 'Cacingan', 'P9'),
(10, 'Kutu', 'P10'),
(11, 'Diare', 'P11'),
(12, 'Perut Kembung (Bloating)', 'P12'),
(13, 'Sakit Mata', 'P13'),
(14, 'Penyakit mulut dan kuku (PMK)', 'P14'),
(15, 'Pink eye', 'P15'),
(16, 'Penyakit radang limbah (Antraks)', 'P16'),
(17, 'Ngorok (Septicaemia Epizootica)', 'P17'),
(18, 'Radang Paru-paru  (Pneumonia)', 'P18'),
(19, 'Dermatitis', 'P19'),
(20, 'Peste des Petites Ruminants (PPR)', 'P20'),
(21, 'Kelumpuhan', 'P21'),
(22, 'Enterotoxemia', 'P22'),
(23, 'Konstipasi/sembelit', 'P23'),
(24, 'Titani', 'P24'),
(25, 'Radang Pusar', 'P25'),
(26, 'Hubungi Dokter', 'P26'),
(27, '', 'P11'),
(28, '', 'P11'),
(29, '', 'P11');

-- --------------------------------------------------------

--
-- Table structure for table `rekam_penyakit`
--

CREATE TABLE `rekam_penyakit` (
  `no` int(11) NOT NULL,
  `id_kambing` char(5) NOT NULL,
  `id_penyakit` char(3) NOT NULL,
  `tgl_pencatatan` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL,
  `gejala` varchar(250) NOT NULL,
  `id_hubungi_dokter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekam_penyakit`
--

INSERT INTO `rekam_penyakit` (`no`, `id_kambing`, `id_penyakit`, `tgl_pencatatan`, `id_user`, `gejala`, `id_hubungi_dokter`) VALUES
(50, 'A101', 'P2', '2019-01-01', 3, '', 0),
(70, 'A101', 'P26', '2020-01-06', 3, '', 23),
(72, 'A101', 'P1', '2020-01-02', 3, '', 0),
(74, 'A101', 'P3', '2020-03-05', 3, '', 0),
(75, 'A101', 'P1', '2020-01-07', 3, '', 0),
(76, 'A101', 'P26', '2020-01-08', 3, '', 0),
(77, 'A101', 'P26', '2020-01-09', 3, '', 0),
(78, 'A101', 'P26', '2020-01-01', 3, '', 0),
(79, 'A103', 'P3', '2020-01-01', 3, '', 0),
(80, 'A103', 'P1', '2020-01-01', 3, '', 0),
(81, 'A103', 'P1', '2020-01-01', 3, '', 0),
(82, 'A412', 'P26', '2020-01-01', 3, '', 0),
(83, 'A101', 'P26', '2020-01-01', 3, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tgl`
--

CREATE TABLE `tgl` (
  `id` int(11) NOT NULL,
  `tgl` varchar(200) NOT NULL,
  `id_tgl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tgl`
--

INSERT INTO `tgl` (`id`, `tgl`, `id_tgl`) VALUES
(18, '01-01-2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_pemilik` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role_user` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_pemilik`, `email`, `password`, `role_user`) VALUES
(3, ' ari cahyono', 'cahyono.ari80@gmail.com', 'arisiteru49', '1'),
(5, 'Tukiman', 'cahyono.ari82@gmail.com', '12345678', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`id_bulan`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `hubungi_dokter`
--
ALTER TABLE `hubungi_dokter`
  ADD PRIMARY KEY (`id_hubungi_dokter`);

--
-- Indexes for table `kambing`
--
ALTER TABLE `kambing`
  ADD PRIMARY KEY (`id_kambing`);

--
-- Indexes for table `kesehatan`
--
ALTER TABLE `kesehatan`
  ADD PRIMARY KEY (`id_kesehatan`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `rekam_penyakit`
--
ALTER TABLE `rekam_penyakit`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tgl`
--
ALTER TABLE `tgl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulan`
--
ALTER TABLE `bulan`
  MODIFY `id_bulan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `hubungi_dokter`
--
ALTER TABLE `hubungi_dokter`
  MODIFY `id_hubungi_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kambing`
--
ALTER TABLE `kambing`
  MODIFY `id_kambing` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `kesehatan`
--
ALTER TABLE `kesehatan`
  MODIFY `id_kesehatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `rekam_penyakit`
--
ALTER TABLE `rekam_penyakit`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tgl`
--
ALTER TABLE `tgl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
