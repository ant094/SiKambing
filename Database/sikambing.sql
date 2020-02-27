-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2020 at 01:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sikambing`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulan`
--

CREATE TABLE `bulan` (
  `id_bulan` int(11) NOT NULL,
  `no_ternak` varchar(6) NOT NULL,
  `bulan_ke` int(2) NOT NULL,
  `kondisi` varchar(40) NOT NULL,
  `nilai_awal` float NOT NULL,
  `nilai_target` float NOT NULL,
  `tgl_pencatatan` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulan`
--

INSERT INTO `bulan` (`id_bulan`, `no_ternak`, `bulan_ke`, `kondisi`, `nilai_awal`, `nilai_target`, `tgl_pencatatan`, `id_user`) VALUES
(69, 'A101', 0, '', 2.5, 0, '2017-03-26', 3),
(70, 'A102', 0, '', 2.4, 0, '2017-03-22', 3),
(71, 'A103', 0, '', 2.5, 0, '2017-03-24', 3),
(72, 'A104', 0, '', 2.4, 0, '2017-03-29', 3),
(76, 'A101', 1, 'Sehat', 3.1, 0, '2017-04-30', 3),
(77, 'A102', 1, 'Sehat', 2.94, 0, '2017-04-30', 3),
(78, 'A103', 1, 'Sehat', 2.72, 0, '2017-04-30', 3),
(79, 'A104', 1, 'Sehat', 3, 0, '2017-04-30', 3),
(80, 'A101', 2, 'Sehat', 4.6, 0, '2017-05-28', 3),
(81, 'A102', 2, 'Sehat', 4.44, 0, '2017-05-28', 3),
(82, 'A104', 2, 'Sehat', 4.5, 0, '2017-05-28', 3),
(83, 'A103', 2, 'Sehat', 4.22, 0, '2017-05-28', 3),
(84, 'A101', 3, 'Sehat', 5.6, 0, '2017-06-26', 3),
(85, 'A102', 3, 'Sehat', 5.44, 0, '2017-06-26', 3),
(86, 'A103', 3, 'Sehat', 5.22, 0, '2017-06-26', 3),
(87, 'A104', 3, 'Sehat', 5.5, 0, '2017-06-26', 3),
(88, 'A101', 4, 'Sehat', 6.8, 0, '2017-07-30', 3),
(89, 'A102', 4, 'Sehat', 6.64, 0, '2017-07-30', 3),
(90, 'A103', 4, 'Sehat', 6.42, 0, '2017-07-30', 3),
(91, 'A104', 4, 'Sehat', 6.7, 0, '2017-07-30', 3),
(92, 'A101', 5, 'Sehat', 7, 0, '2017-08-27', 3),
(93, 'A102', 5, 'Sehat', 6.84, 0, '2017-08-27', 3),
(94, 'A103', 5, 'Sehat', 6.62, 0, '2017-08-27', 3),
(95, 'A104', 5, 'Sehat', 7.9, 0, '2017-08-27', 3),
(96, 'A101', 6, 'Sehat', 9.2, 0, '2017-09-24', 3),
(97, 'A102', 6, 'Sehat', 9.04, 0, '2017-09-24', 3),
(98, 'A103', 6, 'Sehat', 8.82, 0, '2017-09-24', 3),
(99, 'A104', 6, 'Sehat', 9.1, 0, '2017-09-24', 3),
(100, 'A104', 7, 'tidak Sehat', 10.5, 0, '2017-10-29', 3),
(101, 'A101', 7, 'Sehat', 11.6, 0, '2017-10-29', 3),
(102, 'A102', 7, 'Sehat', 11.44, 0, '2017-10-29', 3),
(103, 'A103', 7, 'tidak Sehat', 11.22, 0, '2017-10-29', 3),
(104, 'A101', 8, 'Sehat', 13, 0, '2017-11-26', 3),
(105, 'A102', 8, 'Sehat', 12.84, 0, '2017-11-26', 3),
(106, 'A103', 8, 'Sehat', 12.62, 0, '2017-11-26', 3),
(107, 'A104', 8, 'Sehat', 12.9, 0, '2017-11-26', 3),
(108, 'A101', 9, 'Sehat', 12.6, 0, '2017-12-31', 3),
(109, 'A102', 9, 'Sehat', 14.24, 0, '2017-12-31', 3),
(110, 'A103', 9, 'Sehat', 14.02, 0, '2017-12-31', 3),
(111, 'A104', 9, 'Sehat', 14.3, 0, '2017-12-31', 3),
(112, 'A101', 10, 'Sehat', 13.6, 0, '2018-01-28', 3),
(113, 'A102', 10, 'Sehat', 15.24, 0, '2018-01-28', 3),
(114, 'A103', 10, 'Sehat', 15.02, 0, '2018-01-28', 3),
(115, 'A104', 10, 'Sehat', 15.3, 0, '2018-01-28', 3),
(116, 'A101', 11, 'Sehat', 14.6, 0, '2018-02-25', 3),
(117, 'A102', 11, 'Sehat', 16.24, 0, '2018-02-25', 3),
(118, 'A103', 11, 'Sehat', 16.02, 0, '2018-02-25', 3),
(119, 'A104', 11, 'Betina Hamil', 16.8, 0, '2018-02-25', 3),
(120, 'A102', 12, 'Sehat', 16.52, 30, '2018-03-25', 3),
(121, 'A101', 12, 'Sehat', 14.88, 30, '2018-03-25', 3),
(122, 'A103', 12, 'Sehat', 16.3, 30, '2018-03-25', 3),
(123, 'A104', 12, 'Betina Hamil', 17.58, 0, '2018-03-25', 3),
(124, 'A101', 13, 'Sehat', 17.88, 30, '2018-04-29', 3),
(125, 'A102', 13, 'Sehat', 19.52, 30, '2018-04-29', 3),
(126, 'A103', 13, 'Sehat', 19.3, 30, '2018-04-29', 3),
(127, 'A104', 13, 'Betina Hamil', 19.38, 0, '2018-04-29', 3),
(128, 'A104', 14, 'Betina Hamil', 21.18, 0, '2018-05-27', 3),
(129, 'A103', 14, 'Sehat', 22.3, 30, '2018-05-27', 3),
(130, 'A102', 14, 'Sehat', 22.52, 30, '2018-05-27', 3),
(131, 'A101', 14, 'Sehat', 20.88, 30, '2018-05-27', 3),
(132, 'A101', 15, 'Sehat', 23.88, 30, '2018-06-24', 3),
(133, 'A102', 15, 'Sehat', 25.52, 30, '2018-06-24', 3),
(134, 'A103', 15, 'Sehat', 25.3, 30, '2018-06-24', 3),
(135, 'A104', 15, 'Betina Hamil', 22.98, 0, '2018-06-24', 3),
(136, 'A104', 16, 'Betina Menyusui', 23.28, 0, '2018-07-29', 3),
(137, 'A103', 16, 'Sehat', 28.3, 30, '2018-07-29', 3),
(138, 'A102', 16, 'Sehat', 28.52, 30, '2018-07-29', 3),
(139, 'A101', 16, 'Sehat', 26.88, 30, '2018-07-29', 3),
(140, 'A101', 17, 'Sehat', 29.88, 30, '2018-08-26', 3),
(141, 'A102', 17, 'Sehat', 30.52, 30, '2018-08-26', 3),
(142, 'A103', 17, 'Sehat', 30.3, 30, '2018-08-26', 3),
(143, 'A104', 17, 'Betina Menyusui', 24.28, 30, '2018-08-26', 3),
(144, 'A105', 0, '', 2.6, 0, '2018-07-30', 3),
(145, 'A106', 0, 'Sehat', 2.5, 0, '2018-07-30', 3),
(146, 'A107', 0, '', 2.4, 0, '2018-08-24', 3),
(147, 'A108', 0, '', 2.6, 0, '2018-08-26', 3),
(148, 'A109', 0, 'Sehat', 2.5, 0, '2018-11-21', 3),
(149, 'A110', 0, 'Sehat', 2.5, 0, '2018-11-21', 3),
(150, 'A111', 0, 'Sehat', 2.5, 0, '2019-08-27', 3),
(151, 'A112', 0, '', 2.6, 0, '2019-08-27', 3),
(152, 'A113', 0, 'Sehat', 2.5, 0, '2020-11-27', 3),
(153, 'A105', 1, 'Sehat', 2.91, 0, '2018-08-27', 3),
(154, 'A106', 1, 'Sehat', 2.83, 0, '2018-08-27', 3),
(155, 'A105', 2, 'Sehat', 4.41, 0, '2018-09-30', 3),
(156, 'A106', 2, 'Sehat', 4.33, 0, '2018-09-30', 3),
(157, 'A107', 1, 'Sehat', 2.73, 0, '2018-09-30', 3),
(158, 'A108', 1, 'Sehat', 2.68, 0, '2018-09-30', 3),
(159, 'A105', 3, 'Sehat', 5.41, 0, '2018-10-28', 3),
(160, 'A106', 3, 'Sehat', 5.33, 0, '2018-10-28', 3),
(161, 'A107', 2, 'Sehat', 4.23, 0, '2018-10-28', 3),
(162, 'A108', 2, 'Sehat', 4.18, 0, '2018-10-28', 3),
(163, 'A105', 4, 'Sehat', 6.61, 0, '2018-11-29', 3),
(164, 'A106', 4, 'Sehat', 6.53, 0, '2018-11-29', 3),
(165, 'A107', 3, 'Sehat', 5.23, 0, '2018-11-29', 3),
(166, 'A108', 3, 'Sehat', 5.18, 0, '2018-11-29', 3),
(167, 'A105', 5, 'Sehat', 6.81, 0, '2018-12-30', 3),
(168, 'A106', 5, 'Sehat', 6.73, 0, '2018-12-30', 3),
(169, 'A107', 4, 'Sehat', 6.43, 0, '2018-12-30', 3),
(170, 'A108', 4, 'Sehat', 6.38, 0, '2018-12-30', 3),
(171, 'A109', 1, 'Sehat', 2.84, 0, '2018-12-30', 3),
(172, 'A110', 1, 'Sehat', 2.78, 0, '2018-12-30', 3),
(173, 'A110', 2, 'Sehat', 4.28, 0, '2019-01-27', 3),
(174, 'A109', 2, 'Sehat', 4.34, 0, '2019-01-27', 3),
(175, 'A108', 5, 'Sehat', 6.58, 0, '2019-01-27', 3),
(176, 'A107', 5, 'Sehat', 6.63, 0, '2019-01-27', 3),
(177, 'A106', 6, 'Sehat', 8.93, 0, '2019-01-27', 3),
(178, 'A105', 6, 'Sehat', 9.01, 0, '2019-01-27', 3),
(179, 'A105', 7, 'tidak Sehat', 10.41, 0, '2019-02-24', 3),
(180, 'A106', 7, 'tidak Sehat', 10.33, 0, '2019-02-24', 3),
(181, 'A107', 6, 'Sehat', 8.83, 0, '2019-02-24', 3),
(182, 'A108', 6, 'Sehat', 8.78, 0, '2019-02-24', 3),
(183, 'A109', 3, 'Sehat', 5.34, 0, '2019-02-24', 3),
(184, 'A110', 3, 'Sehat', 5.28, 0, '2019-02-24', 3),
(185, 'A105', 8, 'Sehat', 11.81, 0, '2019-03-31', 3),
(186, 'A106', 8, 'Sehat', 11.73, 0, '2019-03-31', 3),
(187, 'A107', 7, 'tidak Sehat', 10.23, 0, '2019-03-31', 3),
(188, 'A108', 7, 'tidak Sehat', 10.18, 0, '2019-03-31', 3),
(189, 'A109', 4, 'Sehat', 6.54, 0, '2019-03-31', 3),
(190, 'A110', 4, 'Sehat', 6.48, 0, '2019-03-31', 3),
(191, 'A105', 9, 'Sehat', 13.21, 0, '2019-04-28', 3),
(192, 'A106', 9, 'Sehat', 13.13, 0, '2019-04-28', 3),
(193, 'A107', 8, 'Sehat', 11.63, 0, '2019-04-28', 3),
(194, 'A108', 8, 'Sehat', 11.58, 0, '2019-04-28', 3),
(195, 'A109', 5, 'Sehat', 7.74, 0, '2019-04-28', 3),
(196, 'A110', 5, 'Sehat', 7.68, 0, '2019-04-28', 3),
(197, 'A105', 10, 'Sehat', 14.21, 0, '2019-05-26', 3),
(198, 'A106', 10, 'Sehat', 14.13, 0, '2019-05-26', 3),
(199, 'A107', 9, 'Sehat', 13.03, 0, '2019-05-26', 3),
(200, 'A108', 9, 'Sehat', 11.98, 0, '2019-05-26', 3),
(201, 'A109', 6, 'Sehat', 8.94, 0, '2019-05-26', 3),
(202, 'A110', 6, 'Sehat', 8.88, 0, '2019-05-26', 3),
(203, 'A110', 7, 'tidak Sehat', 9.28, 0, '2019-06-30', 3),
(204, 'A109', 7, 'tidak Sehat', 9.34, 0, '2019-06-30', 3),
(205, 'A108', 10, 'Sehat', 13.98, 0, '2019-06-30', 3),
(206, 'A107', 10, 'Betina Hamil', 14.53, 0, '2019-06-30', 3),
(207, 'A106', 11, 'Sehat', 15.13, 0, '2019-06-30', 3),
(208, 'A105', 11, 'Sehat', 15.21, 0, '2019-06-30', 3),
(209, 'A105', 12, 'Sehat', 15.49, 30, '2019-07-27', 3),
(210, 'A106', 12, 'Sehat', 15.41, 30, '2019-07-27', 3),
(211, 'A107', 11, 'Betina Hamil', 16.03, 0, '2019-07-27', 3),
(212, 'A108', 11, 'Sehat', 14.98, 0, '2019-07-27', 3),
(213, 'A110', 8, 'Sehat', 11.68, 0, '2019-07-27', 3),
(214, 'A109', 8, 'Sehat', 11.74, 0, '2019-07-27', 3),
(215, 'A105', 13, 'Sehat', 18.49, 30, '2019-08-25', 3),
(216, 'A106', 13, 'Sehat', 18.41, 30, '2019-08-25', 3),
(217, 'A107', 12, 'Betina Hamil', 16.81, 0, '2019-08-25', 3),
(218, 'A108', 12, 'Sehat', 15.26, 30, '2019-08-25', 3),
(219, 'A109', 9, 'Sehat', 13.14, 0, '2019-08-25', 3),
(220, 'A110', 9, 'Sehat', 13.08, 0, '2019-08-25', 3),
(221, 'A110', 10, 'Betina Hamil', 13.58, 0, '2019-09-29', 3),
(222, 'A109', 10, 'Sehat', 14.14, 0, '2019-09-29', 3),
(223, 'A108', 13, 'Sehat', 18.26, 30, '2019-09-29', 3),
(224, 'A107', 13, 'Betina Hamil', 19.81, 0, '2019-09-29', 3),
(225, 'A106', 14, 'Sehat', 21.41, 30, '2019-09-29', 3),
(226, 'A105', 14, 'Sehat', 21.49, 30, '2019-09-29', 3),
(227, 'A111', 1, 'Sehat', 2.92, 0, '2019-09-29', 3),
(228, 'A112', 1, 'Sehat', 2.87, 0, '2019-09-29', 3),
(229, 'A112', 2, 'Sehat', 4.37, 0, '2019-10-27', 3),
(230, 'A111', 2, 'Sehat', 4.42, 0, '2019-10-27', 3),
(231, 'A110', 11, 'Betina Hamil', 16.08, 0, '2019-10-27', 3),
(232, 'A109', 11, 'Sehat', 15.14, 0, '2019-10-27', 3),
(233, 'A108', 14, 'Sehat', 21.26, 30, '2019-10-27', 3),
(234, 'A107', 14, 'Betina Hamil', 20.91, 0, '2019-10-27', 3),
(235, 'A106', 15, 'Sehat', 24.41, 30, '2019-10-27', 3),
(236, 'A105', 15, 'Sehat', 24.49, 30, '2019-10-27', 3),
(237, 'A105', 16, 'Sehat', 27.49, 30, '2019-11-24', 3),
(238, 'A106', 16, 'Sehat', 27.41, 30, '2019-11-24', 3),
(240, 'A107', 15, 'Betina Menyusui', 20.71, 0, '2019-11-24', 3),
(241, 'A108', 15, 'Sehat', 24.26, 30, '2019-11-24', 3),
(242, 'A109', 12, 'Sehat', 15.92, 30, '2019-11-24', 3),
(243, 'A110', 12, 'Betina Hamil', 16.86, 0, '2019-11-24', 3),
(244, 'A112', 3, 'Sehat', 4.37, 0, '2019-11-24', 3),
(245, 'A111', 3, 'Sehat', 5.42, 0, '2019-11-24', 3),
(246, 'A113', 1, 'Sehat', 2.8, 0, '2019-12-29', 3),
(247, 'A112', 4, 'Sehat', 6.57, 0, '2019-12-29', 3),
(248, 'A111', 4, 'Sehat', 6.62, 0, '2019-12-29', 3),
(249, 'A110', 13, 'Betina Hamil', 18.86, 0, '2019-12-29', 3),
(250, 'A109', 13, 'Sehat', 18.52, 30, '2019-12-29', 3),
(251, 'A108', 16, 'Sehat', 28.76, 30, '2019-12-29', 3),
(252, 'A107', 16, 'Betina Menyusui', 23.21, 0, '2019-12-29', 3),
(253, 'A106', 17, 'Sehat', 30.11, 30, '2019-12-29', 3),
(254, 'A105', 17, 'Sehat', 30.19, 30, '2019-12-29', 3),
(260, 'A10322', 4, 'tidak Sehat', 2.5, 0, '0000-00-00', 3);

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
(13, 'Benjolan keropeng pada area mulut', 'G10'),
(14, 'Pucat', 'G11'),
(15, 'Tubuh gemetar', 'G12'),
(16, 'Kepala mengarah kebelakang', 'G13'),
(17, 'Tubuh Kaku', 'G14'),
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
(60, 'Banyak Kutu berwarna Kemerahan', 'G60'),
(61, 'Ada Benda Asing Dimata', 'G61'),
(62, 'Kotoran Keras', 'G62'),
(63, 'Kulit Berdarah', 'G63');

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
(3, 'Sakit mata, diare', '');

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
  `status` int(11) NOT NULL,
  `ket` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kambing`
--

INSERT INTO `kambing` (`id_kambing`, `no_pejantan`, `no_induk`, `no_ternak`, `jenis_kelamin`, `tgl_lahir`, `telinga`, `pola_warna`, `gambar_kambing`, `id_user`, `status`, `ket`) VALUES
(50, '', '', 'A101', 'P', '26-03-2017', 'sedang', 'hitam putih ', 'kambing2.PNG', 3, 1, 'Harga: 3.100.000'),
(51, '', '', 'A102', 'P', '22-03-2017', 'panjang', 'hitam putih ', 'kambing21.PNG', 3, 1, 'Harga: 2.900.000'),
(52, '', '', 'A103', 'P', '24-03-2017', 'panjang', 'hitam putih ', 'kambing22.PNG', 3, 1, 'Harga: 3.100.000'),
(53, '', '', 'A104', 'B', '29-03-2017', 'sedang', 'hitam putih ', 'kambing4.PNG', 3, 1, 'Harga: 3.000.000'),
(54, 'A101', 'A104', 'A105', 'P', '30-07-2018', 'sedang', 'hitam putih ', 'kambing23.PNG', 3, 0, ''),
(55, 'A101', 'A104', 'A106', 'P', '30-07-2018', 'panjang', 'hitam putih ', 'kambing24.PNG', 3, 0, ''),
(56, 'A102', '', 'A107', 'B', '24-08-2018', 'sedang', '  coklat', 'kambing41.PNG', 3, 0, ''),
(57, 'A103', '', 'A108', 'P', '26-08-2018', 'panjang', 'hitam putih ', 'kambing25.PNG', 3, 0, ''),
(58, '', '', 'A109', 'P', '21-11-2018', 'panjang', 'hitam putih ', 'kambing26.PNG', 3, 0, ''),
(59, '', '', 'A110', 'B', '21-11-2018', 'sedang', '  coklat', 'kambing42.PNG', 3, 0, ''),
(60, '', '', 'A111', 'P', '27-08-2019', 'sedang', 'hitam  coklat', 'kambing6.PNG', 3, 0, ''),
(61, '', '', 'A112', 'B', '27-08-2019', 'sedang', '  coklat', 'kambing43.PNG', 3, 0, ''),
(62, '', '', 'A113', 'B', '27-11-2019', 'sedang', ' putih ', 'kambing8.PNG', 3, 0, ''),
(63, '', '', 'A114', 'P', '21-09-2019', 'panjang', 'hitam putih ', 'kambing81.PNG', 3, 2, 'dsasda');

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
(12, 'Perut Kembung (Bloating)', 'P12'),
(13, 'Sakit Mata', 'P13'),
(14, 'Penyakit mulut dan kuku (PMK)', 'P14'),
(15, 'Pink eye', 'P15'),
(16, 'Penyakit radang limbah (Antraks)', 'P16'),
(17, 'Ngorok (Septicaemia Epizootica)', 'P17'),
(18, 'Radang Paru paru (Pneumonia)', 'P18'),
(19, 'Dermatitis', 'P19'),
(20, 'Peste des Petites Ruminants (PPR)', 'P20'),
(21, 'Kelumpuhan', 'P21'),
(22, 'Enterotoxemia', 'P22'),
(23, 'Sembelit', 'P23'),
(24, 'Titani', 'P24'),
(25, 'Radang Pusar', 'P25'),
(26, 'Hubungi Dokter', 'P26'),
(30, 'Diare', 'P11');

-- --------------------------------------------------------

--
-- Table structure for table `rekam_penyakit`
--

CREATE TABLE `rekam_penyakit` (
  `no` int(11) NOT NULL,
  `id_kambing` char(5) NOT NULL,
  `id_penyakit` char(3) NOT NULL,
  `tgl_pencatatan` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `gejala` varchar(250) NOT NULL,
  `id_hubungi_dokter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekam_penyakit`
--

INSERT INTO `rekam_penyakit` (`no`, `id_kambing`, `id_penyakit`, `tgl_pencatatan`, `id_user`, `gejala`, `id_hubungi_dokter`) VALUES
(102, 'A101', 'P11', '2017-08-27', 3, '', 0),
(103, 'A101', 'P11', '2017-12-31', 3, '', 0),
(104, 'A102', 'P11', '2017-08-27', 3, '', 0),
(105, 'A102', 'P11', '2017-12-31', 3, '', 0),
(106, 'A103', 'P11', '2017-08-27', 3, '', 0),
(107, 'A103', 'P9', '2018-04-29', 3, '', 0),
(109, 'A104', 'P12', '2017-10-29', 3, '', 0),
(111, 'A105', 'P9', '2018-12-30', 3, '', 0),
(112, 'A106', 'P9', '2018-12-30', 3, '', 0),
(113, 'A107', 'P11', '2019-01-27', 3, '', 0),
(114, 'A108', 'P11', '2019-01-27', 3, '', 0),
(115, 'A108', 'P12', '2019-05-26', 3, '', 0),
(116, 'A109', 'P11', '2019-06-30', 3, '', 0),
(117, 'A110', 'P1', '2019-06-30', 3, '', 0),
(118, 'A110', 'P1', '2019-07-27', 3, '', 0),
(119, 'A106', 'P15', '2019-09-29', 3, '', 0),
(120, 'A112', 'P11', '2019-11-24', 3, '', 0),
(130, 'A1032', 'P26', '2020-01-26', 3, '', 0),
(132, 'A106', 'P23', '2020-01-26', 3, '', 0),
(133, 'A106', 'P26', '2020-01-26', 3, '', 3),
(138, 'A105', 'P3', '2020-01-26', 3, '', 0);

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
(18, '26-01-2020\r\n', 1);

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
(3, ' ari cahyono', 'user@sikambing.com', '12345678', '1');

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
  MODIFY `id_bulan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `hubungi_dokter`
--
ALTER TABLE `hubungi_dokter`
  MODIFY `id_hubungi_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kambing`
--
ALTER TABLE `kambing`
  MODIFY `id_kambing` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `kesehatan`
--
ALTER TABLE `kesehatan`
  MODIFY `id_kesehatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rekam_penyakit`
--
ALTER TABLE `rekam_penyakit`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `tgl`
--
ALTER TABLE `tgl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
