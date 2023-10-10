-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Okt 2023 pada 23.18
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bebas`
--

CREATE TABLE `bebas` (
  `bebas_id` int(11) NOT NULL,
  `student_student_id` int(11) DEFAULT NULL,
  `payment_payment_id` int(11) DEFAULT NULL,
  `bebas_bill` decimal(10,0) DEFAULT NULL,
  `bebas_total_pay` decimal(10,0) DEFAULT '0',
  `bebas_desc` text,
  `bebas_input_date` timestamp NULL DEFAULT NULL,
  `bebas_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bebas_pay`
--

CREATE TABLE `bebas_pay` (
  `bebas_pay_id` int(11) NOT NULL,
  `bebas_bebas_id` int(11) DEFAULT NULL,
  `bebas_pay_number` varchar(100) DEFAULT NULL,
  `bebas_pay_bill` decimal(10,0) DEFAULT NULL,
  `bebas_pay_desc` varchar(100) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `bebas_pay_input_date` date DEFAULT NULL,
  `bebas_pay_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bulan`
--

CREATE TABLE `bulan` (
  `bulan_id` int(11) NOT NULL,
  `student_student_id` int(11) DEFAULT NULL,
  `payment_payment_id` int(11) DEFAULT NULL,
  `month_month_id` int(11) DEFAULT NULL,
  `bulan_bill` decimal(10,0) DEFAULT NULL,
  `bulan_status` tinyint(1) DEFAULT '0',
  `bulan_pay_desc` text,
  `bulan_number_pay` varchar(100) DEFAULT NULL,
  `bulan_date_pay` date DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `bulan_input_date` timestamp NULL DEFAULT NULL,
  `bulan_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(1, 'X'),
(2, 'XI'),
(3, 'XII');

-- --------------------------------------------------------

--
-- Struktur dari tabel `debit`
--

CREATE TABLE `debit` (
  `debit_id` int(11) NOT NULL,
  `debit_date` date DEFAULT NULL,
  `debit_desc` varchar(100) DEFAULT NULL,
  `debit_value` decimal(10,0) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `debit_input_date` timestamp NULL DEFAULT NULL,
  `debit_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `information`
--

CREATE TABLE `information` (
  `information_id` int(11) NOT NULL,
  `information_title` varchar(100) DEFAULT NULL,
  `information_desc` text,
  `information_img` varchar(255) DEFAULT NULL,
  `information_publish` tinyint(1) DEFAULT '0',
  `user_user_id` int(11) DEFAULT NULL,
  `information_input_date` timestamp NULL DEFAULT NULL,
  `information_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kredit`
--

CREATE TABLE `kredit` (
  `kredit_id` int(11) NOT NULL,
  `kredit_date` date DEFAULT NULL,
  `kredit_desc` varchar(100) DEFAULT NULL,
  `kredit_value` decimal(10,0) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `kredit_input_date` timestamp NULL DEFAULT NULL,
  `kredit_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `letter`
--

CREATE TABLE `letter` (
  `letter_id` int(11) NOT NULL,
  `letter_number` varchar(100) DEFAULT NULL,
  `letter_month` int(11) DEFAULT NULL,
  `letter_year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `log_date` timestamp NULL DEFAULT NULL,
  `log_action` varchar(45) DEFAULT NULL,
  `log_module` varchar(45) DEFAULT NULL,
  `log_info` text,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `logs`
--

INSERT INTO `logs` (`log_id`, `log_date`, `log_action`, `log_module`, `log_info`, `user_id`) VALUES
(1, '2023-10-10 17:52:48', 'Hapus', 'user', 'ID:2;Title:Fauzi', 1),
(2, '2023-10-10 17:52:53', 'Hapus', 'user', 'ID:1;Title:AHMAD FAUZI', 1),
(3, '2023-10-10 18:02:13', 'Tambah', 'Tahun Ajaran', 'ID:null;Title:2023/2024', NULL),
(4, '2023-10-10 18:26:17', 'Tambah', 'Jenis Pembayaran', 'ID:null;Title:', NULL),
(5, '2023-10-10 18:26:26', 'Tambah', 'Jenis Pembayaran', 'ID:null;Title:', NULL),
(6, '2023-10-10 18:27:13', 'Hapus', 'user', 'ID:2;Title:Petugas', 1),
(7, '2023-10-10 18:27:15', 'Hapus', 'user', 'ID:3;Title:Bendahara', 1),
(8, '2023-10-10 19:09:53', 'Sunting', 'Student', 'ID:203;Name:AUREL PUTRI AUGUSTIN YULIANTO', 1),
(9, '2023-10-10 19:10:23', 'Sunting', 'Student', 'ID:203;Name:AUREL PUTRI AUGUSTIN YULIANTO', 1),
(10, '2023-10-10 20:03:11', 'Sunting', 'user', 'ID:1;Name:Administrator', 1),
(11, '2023-10-10 20:15:29', 'Sunting', 'Student', 'ID:1;Name:AHMAD HASAN PRASETYO', 1),
(12, '2023-10-10 20:16:46', 'Sunting', 'Student', 'ID:1;Name:AHMAD HASAN PRASETYO', 1),
(13, '2023-10-10 20:23:24', 'Sunting', 'Student', 'ID:1;Name:AHMAD HASAN PRASETYO', 1),
(14, '2023-10-10 20:26:06', 'Sunting', 'Student', 'ID:1;Name:AHMAD HASAN PRASETYO', 1),
(15, '2023-10-10 20:37:54', 'Sunting', 'Student', 'ID:1;Name:AHMAD HASAN PRASETYO', 1),
(16, '2023-10-10 20:59:54', 'Sunting', 'Student', 'ID:1;Name:AHMAD HASAN PRASETYO', 1),
(17, '2023-10-10 21:01:23', 'Sunting', 'Student', 'ID:1;Name:AHMAD HASAN PRASETYO', 1),
(18, '2023-10-10 21:03:45', 'Sunting', 'Student', 'ID:1;Name:AHMAD HASAN PRASETYO', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_trx`
--

CREATE TABLE `log_trx` (
  `log_trx_id` int(11) NOT NULL,
  `student_student_id` int(11) DEFAULT NULL,
  `bulan_bulan_id` int(11) DEFAULT NULL,
  `bebas_pay_bebas_pay_id` int(11) DEFAULT NULL,
  `log_trx_input_date` timestamp NULL DEFAULT NULL,
  `log_trx_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `majors`
--

CREATE TABLE `majors` (
  `majors_id` int(11) NOT NULL,
  `majors_name` varchar(100) DEFAULT NULL,
  `majors_short_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `majors`
--

INSERT INTO `majors` (`majors_id`, `majors_name`, `majors_short_name`) VALUES
(1, 'Teknik Kendaraan Ringan Otomotif 1', 'TKRO 1'),
(2, 'Teknik Kendaraan Ringan Otomotif 2', 'TKRO 2'),
(3, 'Teknik Kendaraan Ringan Otomotif 3', 'TKRO 3'),
(4, 'Teknik dan Bisnis Sepeda Motor 1', 'TBSM 1'),
(5, 'Teknik dan Bisnis Sepeda Motor 2', 'TBSM 2'),
(6, 'Teknik dan Bisnis Sepeda Motor 3', 'TBSM 3'),
(7, 'Akuntansi 1', 'AKL 1'),
(8, 'Akuntansi 2', 'AKL 2'),
(9, 'Perbankan Syari''ah', 'BANK'),
(10, 'Rekayasa Perangkat Lunak / Pengembangan Perangkat Lunak dan Gim 1', 'RPL / PPLG 1'),
(11, 'Rekayasa Perangkat Lunak / Pengembangan Perangkat Lunak dan Gim 2', 'RPL / PPLG 2'),
(12, 'Rekayasa Perangkat Lunak / Pengembangan Perangkat Lunak dan Gim 3', 'RPL / PPLG 3'),
(13, 'Teknik Elektronika Industri', 'TEI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `month`
--

CREATE TABLE `month` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` enum('BEBAS','BULAN') DEFAULT NULL,
  `period_period_id` int(11) DEFAULT NULL,
  `pos_pos_id` int(11) DEFAULT NULL,
  `payment_input_date` timestamp NULL DEFAULT NULL,
  `payment_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_type`, `period_period_id`, `pos_pos_id`, `payment_input_date`, `payment_last_update`) VALUES
(1, 'BULAN', 1, 1, '2023-10-10 18:26:17', '2023-10-10 18:26:17'),
(2, 'BEBAS', 1, 2, '2023-10-10 18:26:26', '2023-10-10 18:26:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `period`
--

CREATE TABLE `period` (
  `period_id` int(11) NOT NULL,
  `period_start` year(4) DEFAULT NULL,
  `period_end` year(4) DEFAULT NULL,
  `period_status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `period`
--

INSERT INTO `period` (`period_id`, `period_start`, `period_end`, `period_status`) VALUES
(1, 2023, 2024, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos`
--

CREATE TABLE `pos` (
  `pos_id` int(11) NOT NULL,
  `pos_name` varchar(100) DEFAULT NULL,
  `pos_description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pos`
--

INSERT INTO `pos` (`pos_id`, `pos_name`, `pos_description`) VALUES
(1, 'SPP', 'SPP'),
(2, 'PENDIDIKAN', 'BIAYA PENDIDIKAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(255) DEFAULT NULL,
  `setting_value` text,
  `setting_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`, `setting_last_update`) VALUES
(1, 'setting_school', 'SMK Muhammadiyah 04 Sukorejo', '2020-06-22 22:07:07'),
(2, 'setting_address', 'Jl. Terminal No. 2 Kebumen - Sukorejo', '2020-06-22 22:07:07'),
(3, 'setting_phone', '0', '2020-06-22 22:07:07'),
(4, 'setting_district', 'Sukorejo', '2020-06-22 22:07:07'),
(5, 'setting_city', 'Kendal', '2020-06-22 22:07:07'),
(6, 'setting_logo', 'SMK_Muhammadiyah_04_Sukorejo.png', '2020-06-22 22:07:07'),
(7, 'setting_level', 'senior', '2020-06-22 22:07:07'),
(8, 'setting_user_sms', '-', '2020-06-22 22:07:07'),
(9, 'setting_pass_sms', 'password', '2020-06-22 22:07:07'),
(10, 'setting_sms', 'N', '2020-06-22 22:07:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_nis` varchar(45) DEFAULT NULL,
  `student_nisn` varchar(45) DEFAULT NULL,
  `student_password` varchar(100) DEFAULT NULL,
  `student_full_name` varchar(255) DEFAULT NULL,
  `student_gender` enum('L','P') DEFAULT NULL,
  `student_born_place` varchar(45) DEFAULT NULL,
  `student_born_date` date DEFAULT NULL,
  `student_img` varchar(255) DEFAULT NULL,
  `student_phone` varchar(45) DEFAULT NULL,
  `student_hobby` varchar(100) DEFAULT NULL,
  `student_address` text,
  `student_name_of_mother` varchar(255) DEFAULT NULL,
  `student_name_of_father` varchar(255) DEFAULT NULL,
  `student_parent_phone` varchar(45) DEFAULT NULL,
  `class_class_id` int(11) DEFAULT NULL,
  `majors_majors_id` int(11) DEFAULT NULL,
  `student_status` tinyint(1) DEFAULT '1',
  `student_input_date` timestamp NULL DEFAULT NULL,
  `student_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `student`
--

INSERT INTO `student` (`student_id`, `student_nis`, `student_nisn`, `student_password`, `student_full_name`, `student_gender`, `student_born_place`, `student_born_date`, `student_img`, `student_phone`, `student_hobby`, `student_address`, `student_name_of_mother`, `student_name_of_father`, `student_parent_phone`, `class_class_id`, `majors_majors_id`, `student_status`, `student_input_date`, `student_last_update`) VALUES
(1, '5292', '0082093689', 'ff6320fb7cd5261ce1bce9d4febc4c1937a2b136', 'AHMAD HASAN PRASETYO', 'L', 'Kendal', '2008-04-17', NULL, '-', '-', '-', 'Supatmi', 'Imron', '-', 1, 1, 1, '2023-10-10 17:53:45', '2023-10-10 21:09:18'),
(2, '5293', '0087639737', 'a228e77a2ffb38b8dcb266fb2e330320fb2900c6', 'ALIF MAULANA SAFINZA', 'L', 'Meranti', '2008-04-03', NULL, '-', '-', '-', 'Siti Mutmainah', 'Endi Purwanto', '-', 1, 1, 1, '2023-10-10 17:53:46', '2023-10-10 17:53:46'),
(3, '5294', '0083888612', 'a4ceee1fd083bcd08910956d6c5346243a8a13a6', 'ANGGA DWI RISKIAWAN', 'L', 'Kendal', '2008-04-23', NULL, '-', '-', '-', 'Muanah', 'Suparno', '-', 1, 1, 1, '2023-10-10 17:53:46', '2023-10-10 17:53:46'),
(4, '5295', '0076306146', 'd644384fddd59ef032b475861fa335efb2b0fea2', 'ARKAN ZAKY', 'L', 'Kendal', '2007-02-28', NULL, '-', '-', '-', 'Sopiyatun', 'Sobirin', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(5, '5296', '2081232810', '9978eefc6deb00170b497f064144ace0bfafa218', 'ARYA FADHLAN ATTHARIQ', 'L', 'Kendal', '2008-03-13', NULL, '-', '-', '-', 'Heni Fauziah', 'Arif Satya Budi', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(6, '5297', '0076482262', '138b54a571263371133353d21041bd6e0fc6c777', 'AUREL RAMADHANI', 'L', 'Temanggung', '2007-10-10', NULL, '-', '-', '-', 'Ruswati', 'Hariyanto', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(7, '5298', '0087579539', '7573de255a9e4f80f45df016a5788ee9c4f85e02', 'DESTA DWI SAPUTRO', 'L', 'Kendal', '2008-12-01', NULL, '-', '-', '-', 'Hartini', 'Sumardi', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(8, '5299', '0093336556', '17a96cd4db4e1bc17cdbf50daabba74175d18388', 'FADLI AL FATHAN', 'L', 'Kendal', '2009-04-14', NULL, '-', '-', '-', 'Turkhamidah', 'Supriyono', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(9, '5300', '0064497569', '9026974958c80f0bfa4d919e2e518e13f4d48964', 'FAHRUL RESTU TEGAR SAPUTRA', 'L', 'Temanggung', '2006-03-22', NULL, '-', '-', '-', 'Wargiyah', 'Teguh Sumarwan', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(10, '5301', '0089493474', '635eefe3b35c98e8e14545a515e26c85b625c76b', 'FARDAN AKHMAD DAHLAN', 'L', 'Kendal', '2008-07-14', NULL, '-', '-', '-', 'Turipah', 'Suprapto', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(11, '5302', '0085904869', 'e1ac307a0899ad7e98da7f3ef1a437384a877592', 'FAREL YUWATHA SAPUTRA', 'L', 'Kendal', '2008-03-15', NULL, '-', '-', '-', 'Purwati', 'Nur Kholis', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(12, '5303', '0086020352', '077751e2620835918bcfc5ff0319488afc264015', 'ILFAN NAZHIR SUFYAN', 'L', 'Boyolali', '2008-02-03', NULL, '-', '-', '-', 'Istiqomah Amriyati', 'Ahmad Yahya', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(13, '5304', '0086477451', '4caa4e63656f279ef5c968f3c075696afb0f042c', 'MAHFUD RIDWAN', 'L', 'Temanggung', '2008-02-09', NULL, '-', '-', '-', 'Ika Nurhidayati', 'Hadi Siswoyo', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(14, '5305', '0078360785', '87d61f01d4fd8308471a0a89e3a1c2e5180fb0fa', 'MOHAMAD NOFA ASAEBAN', 'L', 'Temanggung', '2007-11-24', NULL, '-', '-', '-', 'Yahmi', 'Slamet', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(15, '5306', '0087397838', '277fecf8965b6c038ab843c7479b9d728979102d', 'MUHAMAD FAUYAN', 'L', 'Kendal', '2008-12-24', NULL, '-', '-', '-', 'Castinah', 'Budiman', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(16, '5307', '0074244999', '74c4cfcbf015f995593b05670b9d60f52ea303f7', 'MUHAMAD ROZAKI', 'L', 'Kendal', '2007-07-08', NULL, '-', '-', '-', 'Khustanginah Rohmah', 'Kaseri', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(17, '5308', '0081265320', 'd5344a6e75bcae4a9fbfffb8786edc1543a22e66', 'MUHAMAD SYAFRIZYA ANANDA', 'L', 'Kendal', '2008-05-28', NULL, '-', '-', '-', 'Susiyanti', 'M Nizar', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(18, '5309', '0083196584', '9250c285ab92eee5b04287effda255aba8b72b23', 'MUHAMMAD FADHIL', 'L', 'Kendal', '2008-05-08', NULL, '-', '-', '-', 'Ari Mujiati', 'Susanto', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(19, '5310', '0083338601', '9522c373a6ec52494bc790496a323aeb9abfe3a2', 'MUHAMMAD NURUL FADLI', 'L', 'Kendal', '2008-08-03', NULL, '-', '-', '-', 'Mistri', 'Rochmat', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(20, '5311', '0088520202', '8f9b0a6c7f12aae299856058ed14b07cb0932ff4', 'MUHAMMAD RIZAL ALIHASANY', 'L', 'Kendal', '2008-10-18', NULL, '-', '-', '-', 'Minah', 'Hendhi Rahardiyanto', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(21, '5312', '0097053161', '3301d10f364737b999b39e770e7251963546202a', 'RADHITYA SAPUTRA', 'L', 'Kendal', '2009-02-03', NULL, '-', '-', '-', 'Wuri Handayani', 'Mulyono', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(22, '5313', '0087806953', '99d1a3562e0e521b7e5d3528d43d8a175fad7f63', 'RADIT GALIEH SAPUTRA', 'L', 'Kendal', '2008-05-12', NULL, '-', '-', '-', 'Lisa Kristiyawati', 'Arief Romadhon', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(23, '5314', '0081711547', 'f7347974ef3c726c99c9a2b05c42c93e689da92f', 'RIZAL HAKIM', 'L', 'Kendal', '2008-07-31', NULL, '-', '-', '-', 'Nurochayati', 'Mafkurin', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(24, '5315', '0073519732', 'ae2657fd24d506c95b75abb6abb3ac485b0bf755', 'SAHRUL SETIAWAN', 'L', 'Kendal', '2007-09-30', NULL, '-', '-', '-', 'Siti Asiyah', 'Warnoto Al Sardi', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(25, '5316', '0078025609', '8c87114b6446671bf44ff238b6fb037bab68da46', 'SOLEH AJI PRASETYO', 'L', 'Kendal', '2007-06-05', NULL, '-', '-', '-', 'Waryumi', 'Mahroni', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(26, '5317', '0081697117', '849762e639b9f7b9ed46f2c13a2bcdb292777b1e', 'YULIYANTO', 'L', 'Kendal', '2008-07-02', NULL, '-', '-', '-', 'Turiyem', 'Slamet Suparman', '-', 1, 1, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(27, '5318', '0085157407', 'abac3de35e4fac69ef636300a0a88940d06b7055', 'AHMAD ADITIYA MAULA', 'L', 'Kendal', '2008-06-25', NULL, '-', '-', '-', 'Istikomah', 'Achmad Zaeni', '-', 1, 2, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(28, '5319', '0084892791', '4b5ccc26927ac13b4e61195fef667576183901af', 'AHMAD FATKHUR ROZAQ', 'L', 'Kendal', '2008-06-09', NULL, '-', '-', '-', 'Daryumi', 'Imron', '-', 1, 2, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(29, '5320', '3080977993', '6d46d553ae79e2c1ac29eae4940adcd7901c77a5', 'AHMAD NABIL ARILA', 'L', 'Kendal', '2008-01-07', NULL, '-', '-', '-', 'Siti Sholikhah', 'Muhammad Untung', '-', 1, 2, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(30, '5321', '0089505228', 'f5dae9d08936171de9f70a660b0a24571a5bfb21', 'AHMAD RIYAN', 'L', 'Kendal', '2008-04-11', NULL, '-', '-', '-', 'Turiyah', 'Makmuri', '-', 1, 2, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(31, '5322', '0088647464', 'fc8ff9e50e9b2773a11f98c2952fd75b5b46b0f4', 'AHMAD SAYFUDIN', 'L', 'Kendal', '2008-10-04', NULL, '-', '-', '-', 'Maryanti', 'Ngatman Senimin', '-', 1, 2, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(32, '5323', '0087835801', '3bdf6625dca7f54f7431cca2ebb6000d8ee6d0bb', 'AKHMAT RIZQI AKBAR', 'L', 'Kendal', '2008-08-19', NULL, '-', '-', '-', 'Karyati', 'Wartadi', '-', 1, 2, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(33, '5324', '0088009849', '6d46d553ae79e2c1ac29eae4940adcd7901c77a5', 'ALDI DANA WIBOWO', 'L', 'Kendal', '2008-01-07', NULL, '-', '-', '-', 'Wartini', 'Wardiman', '-', 1, 2, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(34, '5325', '0089190146', 'c7fc66baf9907a740f67b6a6c255c991eac07ae6', 'ALFINZA ALIFA AZHAR', 'L', 'Kendal', '2008-05-15', NULL, '-', '-', '-', 'Widyaningsih', 'Solikhin', '-', 1, 2, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(35, '5326', '0082452289', '14e347d62728ea5bf9a0cea2f4b53a3936943923', 'AZIS MAULANA', 'L', 'Kendal', '2009-01-25', NULL, '-', '-', '-', 'Winarni', 'Pakri', '-', 1, 2, 1, '2023-10-10 17:53:47', '2023-10-10 17:53:47'),
(36, '5327', '0077906998', '3499cca8a4123e3089577ae18bff479464d11975', 'BAGUS GALANG NUGROHO', 'L', 'Kendal', '2007-08-29', NULL, '-', '-', '-', 'Turipah', 'Suratno', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(37, '5328', '0073679150', 'b71ba30e6666c603339aac5293b39716088ab86c', 'BAGUS WIJAYANTO', 'L', 'Kendal', '2007-12-29', NULL, '-', '-', '-', 'Sri Mulyani', 'Sutarno', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(38, '5329', '0081879749', 'bafb67813299fd839ffca7e2fd87714b3361f8b5', 'DWI ANGGA APRIYANTO', 'L', 'Kendal', '2008-04-30', NULL, '-', '-', '-', 'Munandhiroh', 'Nuryanto', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(39, '5330', '0079779173', '31ff8cdb380e0efa332d9ecfd2c6c62be61beacb', 'FERDIAN FRISKI IRAWAN', 'L', 'Kendal', '2007-08-31', NULL, '-', '-', '-', 'Sri Ati', 'Kirwanto', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(40, '5331', '0089884975', '489056850569fe63db48c73ffa5072b9c19dd053', 'IQBAL DANIAL KAMAL', 'L', 'Kendal', '2008-09-08', NULL, '-', '-', '-', 'Misenah', 'Jumali', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(41, '5332', '0074409441', '868fc0dde5327377de44ffcd5146e780e8afcea8', 'KHOIRUL KHANIF FURQON', 'L', 'Temanggung', '2007-06-02', NULL, '-', '-', '-', 'Ain Mustofidah', 'Achmad Amirin', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(42, '5333', '3071151371', '720cb6bba5429a5d4ee14fcbd8a08b7fa2d7a22d', 'MUCHAMMAD DAFFA RAIHAN', 'L', 'Kendal', '2007-12-03', NULL, '-', '-', '-', 'Fitriyani', 'Fiyanto', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(43, '5334', '0075125599', 'f7a11e93f3cc5e49b65b730284fa3d54ea170ad1', 'MUHAMMAD ABDILLAH MUAZAM', 'L', 'Kendal', '2007-10-23', NULL, '-', '-', '-', 'Sri Kusmiatun', 'Prayitno', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(44, '5335', '0086107016', 'c4ec327f513b85124962a5bcde2ec78aec2874fa', 'MUHAMMAD ADAM ALY ZIKA', 'L', 'Kendal', '2008-05-07', NULL, '-', '-', '-', 'Suryanti', 'Masrohan', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(45, '5336', '0082912915', '60d44761df6375ade8a0c2e06c1dbd4b5e6cc957', 'MUHAMMAD FIQAR AFGAN SYAH', 'L', 'Kendal', '2008-02-27', NULL, '-', '-', '-', 'Siti Komariyah', 'Much Romdhlon', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(46, '5337', '0082074591', '7f8089f6af2191617c0a4dc1a9c6a38856db960f', 'MUHAMMAD MIFTAHUDIN', 'L', 'Kendal', '2008-05-18', NULL, '-', '-', '-', 'Naelaliyal Masudah', 'Solikhin', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(47, '5338', '0088456886', '897e9a2f043f0ce9391662bc05e0876d36827d23', 'PUTRA DWI ERLANGGA', 'L', 'Kendal', '2008-07-09', NULL, '-', '-', '-', 'Enik Kristanti', 'Supriyanto', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(48, '5339', '3072684109', 'dc37d813fe8bf789cab40d2939eef78bba2ca46b', 'RAIHAN NUR FATHONI', 'L', 'Temanggung', '2007-10-24', NULL, '-', '-', '-', 'Fatrullaela', 'Dwi Supomo', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(49, '5340', '0075374760', '0b3e8d20405b2410176de3321f228cf9c1183326', 'RENO ADITYA', 'L', 'Temanggung', '2007-01-23', NULL, '-', '-', '-', 'Evi Sunarti', 'Adi Krismianto', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(50, '5341', '0078254041', 'f125e307115e9a53553c1832e6a09fd250c9d818', 'TAUFIQ AGMA DHANI', 'L', 'Kendal', '2007-08-13', NULL, '-', '-', '-', 'Sumarni', 'Junadi', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(51, '5342', '0081217899', 'b8dc551494b7e90ebf82eea3e4e5770c37ccab6a', 'WISNU DHANU ARTA', 'L', 'Kendal', '2008-02-02', NULL, '-', '-', '-', 'Sutarsih', 'Wahyu Nugroho', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(52, '5343', '0086692581', 'b9719b1f34c90db9b37967ffcde668137c8b2231', 'YOGI HENDRAWAN', 'L', 'Kendal', '2008-02-24', NULL, '-', '-', '-', 'Mugiyati', 'Sulis Tiyo', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(53, '5344', '0066329421', 'd9214bdc99297cca5fc1cd608233ab6fcfc05e05', 'ZAENAL FEBIYANTO', 'L', 'Temanggung', '2006-02-15', NULL, '-', '-', '-', 'Erohmi', 'Rujiyat', '-', 1, 2, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(54, '5345', '0074329865', '6fe185c1a64c0b857b7491b66723c723f02ac9bc', 'ABYU MUCHAMAD RAFIEL', 'L', 'Semarang', '2007-05-08', NULL, '-', '-', '-', 'Tri Intarti', 'A. Nur Salim', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(55, '5346', '0074715424', '0915f614df96f43b00eac7c7cdd2df6d4b646bc2', 'ADI GUNO WIJOYO', 'L', 'Kendal', '2007-07-17', NULL, '-', '-', '-', 'Susanti', 'Abdulah', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(56, '5347', '0084717719', '67697698c2362d35f2416726a84b39d24184b509', 'AFIF CHOIRUL WAFA', 'L', 'Kendal', '2007-11-28', NULL, '-', '-', '-', 'Munawaroh', 'Muhsinun', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(57, '5348', '0072423835', '3c8dff24ff9eebe1dba3bf9379fbc32c30464e46', 'AKHMAD RAMADHAN', 'L', 'Kendal', '2006-09-26', NULL, '-', '-', '-', 'Rustiana', 'Paoyan', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(58, '5349', '0088200855', 'e0b5324f6adb81a7772d27e24459e49f4f639977', 'ANANDA SYEH FATURAHMAN', 'L', 'Kendal', '2008-04-07', NULL, '-', '-', '-', 'Sukiyah', 'Mugiyanto', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(59, '5350', '0086861591', '849762e639b9f7b9ed46f2c13a2bcdb292777b1e', 'BAGAS LUCKY HARYANTO', 'L', 'Kendal', '2008-07-02', NULL, '-', '-', '-', 'Ngartiyah', 'Haryanto', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(60, '5351', '0081441792', 'c0ea4fa81df3785a79d35a7af221316dedd1e6e7', 'BAGAS PRASETIA', 'L', 'Sri  Bandung', '2008-11-06', NULL, '-', '-', '-', 'Imrona', 'Suroso', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(61, '5352', '0088814235', '7420506b331d7dee04a8b83de55ff62b49131304', 'DIMAZ ADY PRATAMA', 'L', 'Kendal', '2008-03-26', NULL, '-', '-', '-', 'Ida Purwanti', 'Sulis Wanto', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(62, '5353', '0065553673', 'd7f40bb0bd1b301aea953a5d273484fd973adfb8', 'DZIKRI MUHAMMADI', 'L', 'Kendal', '2006-10-28', NULL, '-', '-', '-', 'Mis''Ati', 'Samsudin', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(63, '5354', '0054392132', 'b743c51470e7575784257b6f46f62cc20af77fb5', 'FAHRIAN SULISTIYO', 'L', 'Kendal', '2005-12-24', NULL, '-', '-', '-', 'Misti', 'Ngasim Al Hasim', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(64, '5355', '0086233359', '56b45441fb4ff5378c853bfc2138ecf1a7ba65b2', 'FERDIKA ARDIANSYAH', 'L', 'Kendal', '2008-10-13', NULL, '-', '-', '-', 'Ismi Rochmah', 'Suwoto', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(65, '5356', '0084874823', '708dab6f8e1175d8ef0bf2105a8bbce694811c88', 'FRATAMA VICKY MARCELLINO', 'L', 'Temanggung', '2008-03-30', NULL, '-', '-', '-', 'Zulaikhah', 'Zulaikhah', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(66, '5357', '0083104604', 'f2bb7264e025deef1b044c7a4b65df1217bbde57', 'HELMI AULIA RAHMAN', 'L', 'Kendal', '2008-01-10', NULL, '-', '-', '-', 'Hartini', 'Sukamdi', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(67, '5358', '0072648175', '124a73cf4df8c519bb112a8be17b3d541eb81e8b', 'IKHSAN MAULANA', 'L', 'Batang', '2007-02-12', NULL, '-', '-', '-', 'Baroyah', 'Dulwahid', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(68, '5359', '0064168169', 'd7bc454db88fd01b97b47c54868a96d268917426', 'KIKY APRILIAN PUTRA', 'L', 'Kendal', '2006-04-02', NULL, '-', '-', '-', 'Isa Rofiah', 'Ramestyo', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(69, '5360', '0054786499', '9f1287172188b6f5778670a19dba53ee055fba39', 'MUHAMAD SALASUN', 'L', 'Kendal', '2005-12-15', NULL, '-', '-', '-', 'Mugiarsih', 'Muchamad Rofii', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(70, '5361', '0084106217', '73f6a9851c95a305f74585137e1f6c133762e6e0', 'MUHAMMAD EZAR BAGUS RADIVA', 'L', 'Kendal', '2008-06-26', NULL, '-', '-', '-', 'Wahyuti', 'Sutamat', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(71, '5362', '0086363750', 'cddc7c68ea5303b03a7154fcef5e4b614c8c35b2', 'MUHAMMAD REFAN MAULANA', 'L', 'Kendal', '2008-09-13', NULL, '-', '-', '-', 'Susanti', 'Purhasim', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(72, '5363', '0089603142', 'd9833c16ca7facd52a22c576e15fde732322b79f', 'MUSTAFID', 'L', 'Kendal', '2008-12-10', NULL, '-', '-', '-', 'Mujiyah Pangestuti', 'Akhmad Hidayat', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(73, '5364', '0088044414', '572edcd092968df302340ea41ea5c97fb1bfebca', 'NAZILUL RIFKI ARDANI', 'L', 'Kendal', '2008-09-16', NULL, '-', '-', '-', 'Tri Anah', 'Sudarmin', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(74, '5365', '0089953749', '708dab6f8e1175d8ef0bf2105a8bbce694811c88', 'NOBI UBAIDIKA NAFHAN', 'L', 'Kendal', '2008-03-30', NULL, '-', '-', '-', 'Istianah', 'Abdi Salam', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(75, '5366', '0085881510', '8e1b124b9b5ae4e0821a24f27dfbbe6cc33fd754', 'REIVAN PERMANA PUTRA', 'L', 'Kendal', '2008-08-20', NULL, '-', '-', '-', 'Susanti', 'Idrizal', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(76, '5367', '0084001617', '9e328ab46d65d8941dcaaf73d32677c401670c96', 'RUDY ARI KUSWANTO', 'L', 'Temanggung', '2008-04-02', NULL, '-', '-', '-', 'Semini', 'Tukino', '-', 1, 3, 1, '2023-10-10 17:53:48', '2023-10-10 17:53:48'),
(77, '5368', '0075554647', '53b00fd3115a9be29202e9d283c6f5aa5e6fd158', 'SANDY PRASETYA MAULANA R.', 'L', 'Kendal', '2007-09-17', NULL, '-', '-', '-', 'Witriyah', 'Bonari', '-', 1, 3, 1, '2023-10-10 17:53:49', '2023-10-10 17:53:49'),
(78, '5369', '0087400073', '7420506b331d7dee04a8b83de55ff62b49131304', 'SRI BINTANG ARIF PAMBUDI', 'L', 'Kendal', '2008-03-26', NULL, '-', '-', '-', 'Umi Latifah', 'Sri Widoyoko', '-', 1, 3, 1, '2023-10-10 17:53:49', '2023-10-10 17:53:49'),
(79, '5370', '0086827032', '66ac06cba0af25f0d83367d4ae0a2150f6d18306', 'VELLIK AJI IRMAMSYAH', 'L', 'Kendal', '2008-05-04', NULL, '-', '-', '-', 'Kastini', 'Waryanto', '-', 1, 3, 1, '2023-10-10 17:53:49', '2023-10-10 17:53:49'),
(80, '5371', '0085529285', 'f446ddf567fa45d06b45b1da98afa37985d713d9', 'WAHYU AGUS PRASETYO', 'L', 'Kendal', '2006-08-10', NULL, '-', '-', '-', 'Tumini', 'Supriyanto', '-', 1, 3, 1, '2023-10-10 17:53:49', '2023-10-10 17:53:49'),
(81, '5372', '0079360018', '44075962c56f7327bac0a7a92ab57b9b127f0153', 'ADITYA LUTFI ARIFIANA', 'L', 'Kendal', '2007-07-15', NULL, '-', '-', '-', 'Ida Khasanah', 'Rochim', '-', 1, 4, 1, '2023-10-10 17:53:49', '2023-10-10 17:53:49'),
(82, '5373', '0085158792', '9522c373a6ec52494bc790496a323aeb9abfe3a2', 'AFIT NAUFAL', 'L', 'Kendal', '2008-08-03', NULL, '-', '-', '-', 'Solekhatun', 'Rohani', '-', 1, 4, 1, '2023-10-10 17:53:49', '2023-10-10 17:53:49'),
(83, '5374', '0084605316', '048cbede83671737c872179496e76827a65cb9fc', 'AKHMAD BAYU AURULA AKBAR', 'L', 'Kendal', '2008-09-23', NULL, '-', '-', '-', 'Jumiati', 'Miswandi', '-', 1, 4, 1, '2023-10-10 17:53:49', '2023-10-10 17:53:49'),
(84, '5375', '0076984673', 'eaf00544aba5ac3c3c5e86318f472437f5bea6c1', 'AKHMAD FAJAR', 'L', 'Kendal', '2007-02-21', NULL, '-', '-', '-', 'Kunariyah', 'Sirin', '-', 1, 4, 1, '2023-10-10 17:53:50', '2023-10-10 17:53:50'),
(85, '5376', '0077191901', '78fe9a16b9b6909b2bdd049406eebc5d29eb8ae9', 'ARBYAN BIMA CAHYO', 'L', 'Temanggung', '2007-06-20', NULL, '-', '-', '-', 'Ayuni', 'Aswadi', '-', 1, 4, 1, '2023-10-10 17:53:51', '2023-10-10 17:53:51'),
(86, '5377', '0075275704', 'd411a9d75c2a9839aacb59b0b8d857a184c7b6a1', 'ARES DWI ROMANDHON', 'L', 'Kendal', '2007-10-12', NULL, '-', '-', '-', 'Awang Tumiyati', 'Mulyadi', '-', 1, 4, 1, '2023-10-10 17:53:51', '2023-10-10 17:53:51'),
(87, '5378', '0083651127', '635eefe3b35c98e8e14545a515e26c85b625c76b', 'BINTANG TRISTAN PRATAMA', 'L', 'Kendal', '2008-07-14', NULL, '-', '-', '-', 'Adi Susanti', 'Ashadi', '-', 1, 4, 1, '2023-10-10 17:53:52', '2023-10-10 17:53:52'),
(88, '5379', '0076234658', '48d67013d6d1626977885002d948d7226bed539a', 'DAMAR RIMBA PRABOWO', 'L', 'Magelang', '2007-10-07', NULL, '-', '-', '-', 'Titin Nuryaningsih', 'Sugito', '-', 1, 4, 1, '2023-10-10 17:53:52', '2023-10-10 17:53:52'),
(89, '5380', '0083334168', '5d087c5979c8915d2e8e739485a0878c40c8dc8b', 'DHANY AGUS STYAWAN', 'L', 'Kendal', '2008-08-14', NULL, '-', '-', '-', 'Rohmiyati', 'Sulistiyo', '-', 1, 4, 1, '2023-10-10 17:53:53', '2023-10-10 17:53:53'),
(90, '5381', '0089539692', '288a4fb380e48fecc1dca9723859fee737451f50', 'DIMAS ADI KURNIAWAN', 'L', 'Kendal', '2008-02-23', NULL, '-', '-', '-', 'Sa''Anah', 'Setyawan', '-', 1, 4, 1, '2023-10-10 17:53:54', '2023-10-10 17:53:54'),
(91, '5382', '0082759825', '287746827ad7682211c8097701f2b142a543e86a', 'EKA TYO ANGGORO', 'L', 'Kendal', '2008-04-22', NULL, '-', '-', '-', 'Muntamah', 'Subiyanto', '-', 1, 4, 1, '2023-10-10 17:53:54', '2023-10-10 17:53:54'),
(92, '5383', '0065266157', 'b98392cf2726575fc80f777caca4d6b359e90208', 'FRIANTO', 'L', 'Kendal', '2006-10-20', NULL, '-', '-', '-', 'Musri''Ah', 'Tokhari (Alm)', '-', 1, 4, 1, '2023-10-10 17:53:54', '2023-10-10 17:53:54'),
(93, '5384', '0073587838', 'bf6ecfa11a648ea057898bd9b2895db5a2eb6432', 'HANIF DWI ANGGORO', 'L', 'Ulu Meraka', '2007-11-07', NULL, '-', '-', '-', 'Nanik Agustin', 'Setyo Gawang', '-', 1, 4, 1, '2023-10-10 17:53:55', '2023-10-10 17:53:55'),
(94, '5385', '0082325003', '76519ad8e487d36e9bdf5bde2c637269537d6bea', 'IMAM MARSAL ALFIANSYAH', 'L', 'Kendal', '2008-09-10', NULL, '-', '-', '-', 'Patonah', 'Sugiyanto', '-', 1, 4, 1, '2023-10-10 17:53:55', '2023-10-10 17:53:55'),
(95, '5386', '0085679301', '60d44761df6375ade8a0c2e06c1dbd4b5e6cc957', 'INDRA NUGROHO SETIAWAN', 'L', 'Kendal', '2008-02-27', NULL, '-', '-', '-', 'Eva Indriyani', 'Aris Setiawan', '-', 1, 4, 1, '2023-10-10 17:53:55', '2023-10-10 17:53:55'),
(96, '5387', '3087725666', 'c40b5fb5dc71754407bdb05aea166c8ab5272cb7', 'ISMAILANURI', 'P', 'Temanggung', '2008-05-03', NULL, '-', '-', '-', 'Siti Nurchasanah', 'Sutarmin', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(97, '5388', '0085231668', 'fb6904b1b9be7f212826de173c7aabe24a171238', 'LISA INDRIYANI', 'P', 'Kendal', '2008-07-04', NULL, '-', '-', '-', 'Sri Purwati', 'Nur Hasan', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(98, '5389', '3085553143', '50cafa1a5cf24a622a24be82240e804c60213135', 'MELISA JULIA FADLINA', 'P', 'Kendal', '2008-07-10', NULL, '-', '-', '-', 'Rofiah', 'Walhadi', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(99, '5390', '0089673363', '4ca5efe8768460c53c9d949d4a2c3d5f99aa656a', 'MUHAMAD HANAFI ABDILAH', 'L', 'Temanggung', '2008-04-19', NULL, '-', '-', '-', 'Siti Jamilatun', 'Saebani', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(100, '5391', '0076962249', 'a97b4d385e0d34973ba26edc84f6dff0a5463f38', 'MUHAMMAD AINNUR RAIHAN', 'L', 'Kendal', '2007-12-12', NULL, '-', '-', '-', 'Khasanah', 'Riyanto', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(101, '5392', '0084891982', '8b0071e3c568560779fa6f7056a75bb5454164d6', 'MUHAMMAD ARIEF ARDIANSYAH', 'L', 'Kendal', '2008-04-27', NULL, '-', '-', '-', 'Sri Lestari', 'Roni Paslah', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(102, '5393', '0087213633', 'e92a3b0a82b63f05ae7f25d11cdb70b5ab983016', 'MUHAMMAD BAIHAKI', 'L', 'Kendal', '2008-09-22', NULL, '-', '-', '-', 'Zuliana', 'Surip Nurkhamin', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(103, '5394', '0084414796', 'b51369cef6a6486fee09f6bfed40000abafb9821', 'MUHAMMAD DIMAS SAPUTRA', 'L', 'Kendal', '2008-02-19', NULL, '-', '-', '-', 'Sulim', 'Tamari', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(104, '5395', '0084493283', 'b67b0d81ee7008b0797fef5ca2f27dfa371f15e6', 'MUHAMMAD SYIFA ADITYA', 'L', 'Kendal', '2008-04-09', NULL, '-', '-', '-', 'Bibit Lestari', 'Muazis', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(105, '5396', '0086005241', '589e353f1571fee2fc77c1c6b62f624d1e9f0863', 'NUR MAN SYAH', 'L', 'Kendal', '2008-06-16', NULL, '-', '-', '-', 'Juwarti', 'Mangsuri', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(106, '5397', '0081057292', '288a4fb380e48fecc1dca9723859fee737451f50', 'OBI FAUZY KURNIAWAN', 'L', 'Temanggung', '2008-02-23', NULL, '-', '-', '-', 'Sutriyati', 'Ade Kurniawan', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(107, '5398', '0088985318', '286f6e725e4bf181b4651e4c637b1dc956004ac5', 'RAFI HIJRIYAN SYAH', 'L', 'Kendal', '2008-01-14', NULL, '-', '-', '-', 'Siti Khoeriyah', 'Sardi', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(108, '5399', '0073155807', '71ec2347dbfbba769d2c25d045b7fea887bcde28', 'RAGIL SAPUTRA', 'L', 'Kendal', '2007-11-20', NULL, '-', '-', '-', 'Miah', 'Pairi', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(109, '5400', '0086802237', '55e4abac284de9cd0046f90b52aa7204d6bbb8e8', 'RATNA DEWI LESTARI', 'P', 'Kendal', '2008-11-30', NULL, '-', '-', '-', 'Pujiwati', 'Ngesti Waluyo', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(110, '5401', '0074101663', '0b3e8d20405b2410176de3321f228cf9c1183326', 'SETO SATRIO', 'L', 'Kendal', '2007-01-23', NULL, '-', '-', '-', 'Murita', 'Mudiyanto', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(111, '5402', '0082805444', 'f7347974ef3c726c99c9a2b05c42c93e689da92f', 'SURYA DIGA ARIFIADI', 'L', 'Kendal', '2008-07-31', NULL, '-', '-', '-', 'Siti Mahmudah', 'Supriyadi', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(112, '5403', '0088403888', '3638e9201102c09dce69d27a485aaa2129fd09f3', 'WILSON HENDRA SAPUTRA', 'L', 'Kendal', '2008-08-08', NULL, '-', '-', '-', 'Kusmawati', 'Subekti Raharjo', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(113, '5404', '0087701188', '524418bd20774a41eba05f91bb2362246641a66e', 'ZAINA ALBA LEKHA', 'L', 'Kendal', '2008-09-06', NULL, '-', '-', '-', 'Umik', 'Sibyanto', '-', 1, 4, 1, '2023-10-10 17:53:56', '2023-10-10 17:53:56'),
(114, '5405', '0089481705', 'c194c870063f814dc3d2591071f5a1c3e5795a41', 'ADI SAPUTRA', 'L', 'Kendal', '2008-08-16', NULL, '-', '-', '-', 'Bariyah', 'Nur Sakirin', '-', 1, 5, 1, '2023-10-10 17:53:57', '2023-10-10 17:53:57'),
(115, '5406', '0082259924', 'a4ceee1fd083bcd08910956d6c5346243a8a13a6', 'AHMAD FAHRUL ROZI', 'L', 'Temanggung', '2008-04-23', NULL, '-', '-', '-', 'Rupiyanti', 'Rakhman', '-', 1, 5, 1, '2023-10-10 17:53:57', '2023-10-10 17:53:57'),
(116, '5407', '0073246015', 'c81221f867a2ce3d5cfe38e55496dc644bfa69f8', 'AHMAD KAFANA RIZQI', 'L', 'Kendal', '2007-10-16', NULL, '-', '-', '-', 'Sutariyem', 'Salim', '-', 1, 5, 1, '2023-10-10 17:53:57', '2023-10-10 17:53:57'),
(117, '5408', '0076285592', '8e1b124b9b5ae4e0821a24f27dfbbe6cc33fd754', 'AHMAD KURNIAWAN SAPUTRA', 'L', 'Temanggung', '2008-08-20', NULL, '-', '-', '-', 'Sulastri', 'Ali Busro', '-', 1, 5, 1, '2023-10-10 17:53:57', '2023-10-10 17:53:57'),
(118, '5409', '0081736986', 'f450d9d2d463acbe32f78203e9c349af87705033', 'ALIF CANDRA DARUSSALAM', 'L', 'Kendal', '2008-05-17', NULL, '-', '-', '-', 'Susanti', 'Nur Kholis', '-', 1, 5, 1, '2023-10-10 17:53:57', '2023-10-10 17:53:57'),
(119, '5410', '0085577249', 'e98f23994849f8392ab5d869592dca362c3c47d4', 'ALMAS DWI RIZKIATHA', 'L', 'Kendal', '2008-10-10', NULL, '-', '-', '-', 'Sukarmi', 'Sutriyono', '-', 1, 5, 1, '2023-10-10 17:53:57', '2023-10-10 17:53:57'),
(120, '5411', '0084167818', '1a65a92163de095ea131b91138b4bfe3f5537af5', 'AMRI KHOIRI', 'L', 'Kendal', '2008-01-13', NULL, '-', '-', '-', 'Sri Purwati', 'Syafauddin', '-', 1, 5, 1, '2023-10-10 17:53:57', '2023-10-10 17:53:57'),
(121, '5412', '0084746940', '849762e639b9f7b9ed46f2c13a2bcdb292777b1e', 'ANDHIKA WIDYAS MULYA', 'L', 'Kendal', '2008-07-02', NULL, '-', '-', '-', 'Sl Nahdliyah', 'Subandi', '-', 1, 5, 1, '2023-10-10 17:53:57', '2023-10-10 17:53:57'),
(122, '5413', '3088495170', '0130d3317741d32f413b21fdc51cd25cbde96d92', 'ANDIKA NURUL PRATAMA', 'L', 'Kendal', '2008-03-12', NULL, '-', '-', '-', 'Chomiyati', '', '-', 1, 5, 1, '2023-10-10 17:53:57', '2023-10-10 17:53:57'),
(123, '5414', '0084974855', '84ae884032cdbf07cb078fd031ad64dfe589a859', 'AZAR ARIF IRAWAN', 'L', 'Temanggung', '2008-05-02', NULL, '-', '-', '-', 'Umi Maryam', 'Unif Firawan', '-', 1, 5, 1, '2023-10-10 17:53:57', '2023-10-10 17:53:57'),
(124, '5415', '0087546959', 'de727df0bbc2583a5325913f2710538083ff0d88', 'CANDRA PUTRA PRATAMA', 'L', 'Kendal', '2008-09-11', NULL, '-', '-', '-', 'Ria Yulianti', 'Nuryadi', '-', 1, 5, 1, '2023-10-10 17:53:57', '2023-10-10 17:53:57'),
(125, '5416', '0075305720', 'bc2adbafb4b687ef5f0e659a3f867dbd34b22acf', 'DAFFA'' IZZUDDIN LUTHFI', 'L', 'Kendal', '2007-03-29', NULL, '-', '-', '-', 'Siti Khotimah', 'Isnadi', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(126, '5417', '0086804983', '8f9b0a6c7f12aae299856058ed14b07cb0932ff4', 'DANANG AJI SAPUTRA', 'L', 'Kendal', '2008-10-18', NULL, '-', '-', '-', 'Mu''Idah', 'Triyono', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(127, '5418', '0082217660', 'dad2b33b71c6297360bdc17a7d9d32bef2efa0e6', 'DANIS IKHSAN RAHMADANI', 'L', 'Ngawi', '2008-08-30', NULL, '-', '-', '-', 'Anis Salfiyah', 'Danang Hanafi', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(128, '5419', '0087240852', 'f10c833be2d53ece02b8f01759e2576f646526d8', 'DAVID RIDHO ALFAZRI', 'L', 'Kendal', '2008-01-04', NULL, '-', '-', '-', 'Supiyati', 'Suparman', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(129, '5420', '0082833174', '7b16a29072334377f3d8c5dde605befaa20d6547', 'DIAN NURUL IKHSAN', 'L', 'Kendal', '2008-01-26', NULL, '-', '-', '-', 'Tualiyah', 'Manidi', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(130, '5421', '0081384381', '99d1a3562e0e521b7e5d3528d43d8a175fad7f63', 'DION AKHIRUDIN RIZQON', 'L', 'Kendal', '2008-05-12', NULL, '-', '-', '-', 'Chafiah', 'Maksun', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(131, '5422', '0083568919', '0d52cb0c82a94aa45443831be27a752d14fd386b', 'DISKA FABIA PRIATMOJO', 'L', 'Kendal', '2008-05-23', NULL, '-', '-', '-', 'Fatimah', 'Bejo Prio Utomo', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(132, '5423', '0075806132', 'abc764fc50bf1bfb40eec70d3aa60debcc1b2095', 'FATHIR FIRMANSYAH', 'L', 'Kendal', '2007-07-22', NULL, '-', '-', '-', 'Tumini', 'Supriyanto', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(133, '5424', '0084474201', '19f557ed1e0d75c10459312dd57265521879d925', 'HANAFI SEHSAPUTRA', 'L', 'Kendal', '2008-04-18', NULL, '-', '-', '-', 'Sulistyowati', 'A. Sobirin', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(134, '5425', '0074397464', '3491c886c398a2cd1dc19cde33a75b1cd2e5de09', 'M. AKMAL MIFTAHU ROHMAN', 'L', 'Kendal', '2007-11-08', NULL, '-', '-', '-', 'Tukinah', 'Misadi', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(135, '5426', '0073874150', 'ecce3e533836921f7584d0a83e4ad32baf37e3b8', 'MUCHAMAD RIZA RAFLY AKBAR', 'L', 'Kendal', '2007-10-11', NULL, '-', '-', '-', 'Tri Rochati', 'Surochim', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(136, '5427', '0062507018', 'da50582b6dfc0cacc3b2421f84902f04de2ebbc0', 'MUHAMAD FATKHUL KHOIRUL UMAM', 'L', 'Temanggung', '2006-08-13', NULL, '-', '-', '-', 'Siti Naniyati', 'Muji', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(137, '5428', '0085879707', '13e34eb17d46ca8a27ec1d090f128b0540b3dddc', 'MUHAMMAD RIDHO SAPUTRA', 'L', 'Bekasi', '2008-06-24', NULL, '-', '-', '-', 'Sumini', 'Basirun', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(138, '5429', '0085861545', '65e7efd3272076158f65c462dcc55753dfe498b9', 'RADIT ARDIANSYAH', 'L', 'Kendal', '2008-07-07', NULL, '-', '-', '-', 'Musaroh', 'Wadiyan', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(139, '5430', '0086274102', 'b8dc551494b7e90ebf82eea3e4e5770c37ccab6a', 'RAIHAN', 'L', 'Kendal', '2008-02-02', NULL, '-', '-', '-', 'Marinah', 'Roni Sianturi', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(140, '5431', '0081228144', '585d7a878a3aa8b3355e521a4278d6ba4fcd74f7', 'RAKO SALSA PUTRA', 'L', 'Kendal', '2008-01-01', NULL, '-', '-', '-', 'Triyami', '', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(141, '5432', '0076270528', '9f04f19c11db794ca42e23f68c4f3a0a5e98c456', 'RANGGA SAPUTRA', 'L', 'Temanggung', '2007-12-26', NULL, '-', '-', '-', 'Tukiyem', 'Agus', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(142, '5433', '0088645156', '729a2c88892a199ee8981d2efa5e3e796a8f7653', 'REFFANGGA ARYA KUSUMA', 'L', 'Kendal', '2008-06-06', NULL, '-', '-', '-', 'Sofiyati', 'Maryono', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(143, '5434', '0088502524', '3bdf6625dca7f54f7431cca2ebb6000d8ee6d0bb', 'REYSAN ALDIANSYAH', 'L', 'Kendal', '2008-08-19', NULL, '-', '-', '-', 'Murjiati', 'Muslih', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(144, '5435', '0074271774', '0b80a40ff3be59f8db37940bbfccb026a4a5ebb4', 'TEGAR AL FAJAR', 'L', 'Kendal', '2007-10-19', NULL, '-', '-', '-', 'Mulhayati', 'Sucipto', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(145, '5436', '0087671667', 'c21367568211d6e38c8634d301c571c8ca552ada', 'WISNU INDRA KUSUMA', 'L', 'Kendal', '2009-04-22', NULL, '-', '-', '-', 'Srijanati', 'Arifin', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(146, '5437', '0082317417', '13e861b301a7c4f58cd005c4fcb2e720f2f576ee', 'ZAKI KHOIRUL KAFI YUDISTIA', 'L', 'Kendal', '2008-08-23', NULL, '-', '-', '-', 'Istiqomah', 'Wahyudi', '-', 1, 5, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(147, '5438', '0086686158', '55855a6e90ba3a96371e9421ddc9c4b303295c50', 'AFIFAH RASTIANA', 'P', 'Kendal', '2008-08-17', NULL, '-', '-', '-', 'Sujiyah', 'Wahyudi', '-', 1, 7, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(148, '5439', '0077452394', '65b365c47af0bb544c3bd91621587887b4f3d55b', 'AHMAD AZIZIL HAKIM', 'L', 'Batang', '2007-12-16', NULL, '-', '-', '-', 'Catur Sulistiyana', 'Harun Al Haris', '-', 1, 7, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(149, '5440', '0086102103', '99d1a3562e0e521b7e5d3528d43d8a175fad7f63', 'ALYA LARASATI', 'P', 'Kendal', '2008-05-12', NULL, '-', '-', '-', 'Khamidah', 'Suhartono', '-', 1, 7, 1, '2023-10-10 17:53:58', '2023-10-10 17:53:58'),
(150, '5441', '0073526938', '65b365c47af0bb544c3bd91621587887b4f3d55b', 'AMALINA MUFIDAH', 'P', 'Kendal', '2007-12-16', NULL, '-', '-', '-', 'Umiyati', 'Ngasmun', '-', 1, 7, 1, '2023-10-10 17:53:59', '2023-10-10 17:53:59'),
(151, '5442', '0068737700', '707d1820204047fcc600fe08a54ea8b4e60decd6', 'ARIEL SURYA RAHMADHAN', 'L', 'Temanggung', '2006-10-21', NULL, '-', '-', '-', 'Partiyem', 'Slamet Riyadi', '-', 1, 7, 1, '2023-10-10 17:53:59', '2023-10-10 17:53:59'),
(152, '5443', '0072066157', 'f9586ee1dc1d951487f7eaed6c5879e3a2d50f65', 'BADRA AULIA', 'P', 'Kotawaringin Barat', '2007-07-10', NULL, '-', '-', '-', 'Siti Muntamah', 'Rosid', '-', 1, 7, 1, '2023-10-10 17:53:59', '2023-10-10 17:53:59'),
(153, '5444', '0073784396', '8611a2869bc98ec046ac76ec2dc1e59961424f7c', 'DELLA NUR AVIVAH', 'P', 'Kendal', '2007-09-02', NULL, '-', '-', '-', 'Supriyati', 'Mujazim', '-', 1, 7, 1, '2023-10-10 17:53:59', '2023-10-10 17:53:59'),
(154, '5445', '0085376260', '82f815c4c405f9c69fe8de40ee34508454f56398', 'DEWI ELIYANTI', 'P', 'Kendal', '2008-01-09', NULL, '-', '-', '-', 'Mundiyanti', 'Juparman', '-', 1, 7, 1, '2023-10-10 17:53:59', '2023-10-10 17:53:59'),
(155, '5446', '0085267314', '091904f4d4458e05de429863d573886281d53567', 'FACHRI AKBAR', 'L', 'Kendal', '2008-08-01', NULL, '-', '-', '-', 'Surati', 'Rohani', '-', 1, 7, 1, '2023-10-10 17:53:59', '2023-10-10 17:53:59'),
(156, '5447', '0081981562', '9250c285ab92eee5b04287effda255aba8b72b23', 'HAVILAH HELGA SABILILLAH', 'P', 'Kendal', '2008-05-08', NULL, '-', '-', '-', 'Rina Juwitaningsih', 'Mafrur', '-', 1, 7, 1, '2023-10-10 17:54:00', '2023-10-10 17:54:00'),
(157, '5448', '0086755765', 'da8e608d340a6039f7bf5f897369fa7f76bf010d', 'KEYLA PUTRI AZZAHRA', 'P', 'Kendal', '2008-08-28', NULL, '-', '-', '-', 'Saminah', 'Jarwadi', '-', 1, 7, 1, '2023-10-10 17:54:00', '2023-10-10 17:54:00'),
(158, '5449', '0087108738', '468e276e54f0818d5dd24486c0d777df0674c660', 'LINY TRI HAPSARI', 'P', 'Temanggung', '2008-03-23', NULL, '-', '-', '-', 'Sri Haryuni', 'Fahrur Rozi', '-', 1, 7, 1, '2023-10-10 17:54:01', '2023-10-10 17:54:01'),
(159, '5450', '0086342798', '9555f3bc14c4ab662d6f9eab7bfa6bc512f26e62', 'LULU SOFI MAULIDAH', 'P', 'Kendal', '2008-05-01', NULL, '-', '-', '-', 'Supiatun', 'Sugiyanto', '-', 1, 7, 1, '2023-10-10 17:54:01', '2023-10-10 17:54:01'),
(160, '5451', '0089253640', '15be2b4bba260502522bbb09f4028a4bf1f4a765', 'NAFA SABIQOH DHIYA ULHAQ', 'P', 'Kendal', '2008-11-12', NULL, '-', '-', '-', 'Daryuti', 'Agam Eko Anggoro', '-', 1, 7, 1, '2023-10-10 17:54:02', '2023-10-10 17:54:02'),
(161, '5452', '0067450888', '708be591a49e0e5691d647e0e3d0ebe16e5ad53a', 'NAURA FEBRIANA', 'P', 'Temanggung', '2006-02-27', NULL, '-', '-', '-', 'Mursiti', 'Sukarman', '-', 1, 7, 1, '2023-10-10 17:54:02', '2023-10-10 17:54:02'),
(162, '5453', '0064745132', '708be591a49e0e5691d647e0e3d0ebe16e5ad53a', 'NAURA FEBRIANI', 'P', 'Temanggung', '2006-02-27', NULL, '-', '-', '-', 'Mursiti', 'Sukarman', '-', 1, 7, 1, '2023-10-10 17:54:03', '2023-10-10 17:54:03'),
(163, '5454', '0077622908', 'e88a315f0c55a808f9976066afb2692688c7eff7', 'NAYLA WARASTUTI KUSUMANINGTYAS', 'P', 'Kendal', '2007-02-02', NULL, '-', '-', '-', 'Suliyah', 'Ragil Sukahry Bayu Wicaksonp', '-', 1, 7, 1, '2023-10-10 17:54:03', '2023-10-10 17:54:03'),
(164, '5455', '0088911461', 'ef1d878ba2e1a38dc25cc53affb0a3c49a357160', 'NELI AGUSTIN', 'P', 'Kendal', '2008-08-05', NULL, '-', '-', '-', 'Rohmah', 'Ngarmin', '-', 1, 7, 1, '2023-10-10 17:54:03', '2023-10-10 17:54:03'),
(165, '5456', '0071635385', '29fe75db9bdfa8d71cd814d06f76b2b4845b3192', 'RIYAN AGUSTIN', 'L', 'Kendal', '2006-10-18', NULL, '-', '-', '-', 'Paikem', 'Nardi', '-', 1, 7, 1, '2023-10-10 17:54:03', '2023-10-10 17:54:03'),
(166, '5457', '0087904789', '55855a6e90ba3a96371e9421ddc9c4b303295c50', 'RIZQI YATUL AZKA', 'P', 'Kendal', '2008-08-17', NULL, '-', '-', '-', 'Sularti', 'Tugiman', '-', 1, 7, 1, '2023-10-10 17:54:03', '2023-10-10 17:54:03'),
(167, '5458', '0077077985', '67697698c2362d35f2416726a84b39d24184b509', 'SALWA QURROTA AINAYA', 'P', 'Kendal', '2007-11-28', NULL, '-', '-', '-', 'Titik Hartini', 'Suyanto', '-', 1, 7, 1, '2023-10-10 17:54:03', '2023-10-10 17:54:03'),
(168, '5459', '0084703590', 'e92a3b0a82b63f05ae7f25d11cdb70b5ab983016', 'SEPTI AGHNIA RAMADHANI', 'P', 'Kendal', '2008-09-22', NULL, '-', '-', '-', 'Bukhaerotun', 'Nur Solihin', '-', 1, 7, 1, '2023-10-10 17:54:03', '2023-10-10 17:54:03'),
(169, '5460', '0087905496', '1a65a92163de095ea131b91138b4bfe3f5537af5', 'SHAFILLA KUSUMANING ARUM', 'P', 'Kendal', '2008-01-13', NULL, '-', '-', '-', 'Suharti', 'Bakir', '-', 1, 7, 1, '2023-10-10 17:54:03', '2023-10-10 17:54:03'),
(170, '5461', '0087277419', 'f97457651947020dd6f7749447b5d90d4974237c', 'VANISA ANASTASYA', 'P', 'Kendal', '2008-06-15', NULL, '-', '-', '-', 'Khomsatun', 'Sukim', '-', 1, 7, 1, '2023-10-10 17:54:03', '2023-10-10 17:54:03'),
(171, '5462', '0086206190', '287746827ad7682211c8097701f2b142a543e86a', 'VINZA BUNGA AULIA', 'P', 'Banjarnegara', '2008-04-22', NULL, '-', '-', '-', 'Sarniyati', 'Romdhon', '-', 1, 7, 1, '2023-10-10 17:54:03', '2023-10-10 17:54:03'),
(172, '5463', '0085915835', '80f4f4adb4361257cb90d45bc540eec0a7646384', 'WAHYU SETIANINGSIH', 'P', 'Kendal', '2007-04-21', NULL, '-', '-', '-', 'Rismiati', 'Subowo', '-', 1, 7, 1, '2023-10-10 17:54:03', '2023-10-10 17:54:03'),
(173, '5464', '0076710997', 'f125e307115e9a53553c1832e6a09fd250c9d818', 'ALFI LAILATUN', 'P', 'Kendal', '2007-08-13', NULL, '-', '-', '-', 'Marwah', 'Achmad Burso', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(174, '5465', '0078841077', 'ff27cd38d796bf4b4730791b9698d016a45c2051', 'DEVITA AYU FANIATI', 'P', 'Temanggung', '2007-12-30', NULL, '-', '-', '-', 'Muryati', 'Juwarlan', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(175, '5466', '0087804736', '1ca09b7d10578af6dfcac624b4d3cdcb52beeb4a', 'DINA AULIYA', 'P', 'Kendal', '2008-03-07', NULL, '-', '-', '-', 'Susmiati', 'Said', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(176, '5467', '0068576612', '79b38936a861140f8d8bcbd7e3752d21bc66f4e6', 'DIRA WIRANTI', 'P', 'Temanggung', '2006-12-17', NULL, '-', '-', '-', 'Sumarmi', 'Wijiyanto', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(177, '5468', '0075823107', '231e38ea105f542c68aa372179a61b9f105055a4', 'DWI FITRI ARZAQIA', 'P', 'Kab. Semarang', '2007-10-15', NULL, '-', '-', '-', 'Hudiyarti', 'Supiyatno', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(178, '5469', '0073966743', 'd07a2209435df7af5635504560edb653ffe2e7a0', 'FIDIYAH CAHYA KURNIATI', 'P', 'Temanggung', '2007-12-15', NULL, '-', '-', '-', 'Sudaryati', 'Kariyo', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(179, '5470', '0089463897', 'c2f7297d3d4079305103012e654f8124b487e9e7', 'KHOLIMATUL CHASANAH', 'P', 'Kendal', '2008-06-29', NULL, '-', '-', '-', 'Miskinem', 'Susilo', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(180, '5471', '0074182789', 'dc2876d0661682074ac9f6f3a382ea44767a0718', 'LAILATUL KODRIYAH', 'P', 'Kendal', '2007-02-18', NULL, '-', '-', '-', 'Sriati', 'Kasyono', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(181, '5472', '0075224262', 'cab37788737eaf247687a41f2bf0ab677ea1dffd', 'LUTFIAH', 'P', 'Kendal', '2007-11-25', NULL, '-', '-', '-', 'Surati', 'Bunjari', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(182, '5473', '0085621516', '293f9a65f9f6f8a14e7b7def18a4c01b60e70afe', 'NABILA AISA PUTRI', 'P', 'Kendal', '2008-08-18', NULL, '-', '-', '-', 'Suciati', 'Wastiyo', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(183, '5474', '0087023811', '96d8faa6781921af1a501c0f592675c9f10d81ca', 'NUR AFIFAH', 'P', 'Kendal', '2008-11-10', NULL, '-', '-', '-', 'Nur Isnawati', 'Muhammad Sutrisno', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(184, '5475', '0083301645', '635eefe3b35c98e8e14545a515e26c85b625c76b', 'PIPIT SETYANINGSIH', 'P', 'Temanggung', '2008-07-14', NULL, '-', '-', '-', 'Sugiyati', 'Kasido', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(185, '5476', '0087774295', '35deaf72c73a6e546545769d84dd5f25485e71eb', 'PUPUT RETNASARI', 'P', 'Temanggung', '2008-03-31', NULL, '-', '-', '-', 'Ribut Jaryati', 'Sunyono', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(186, '5477', '0062166732', '0848df030599ffe85ef6625de7a239be1ec7938b', 'PUTRI ANGGRAENI', 'P', 'Kendal', '2006-11-28', NULL, '-', '-', '-', 'Misrimah', 'Daryo', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(187, '5478', '0081709302', '406b018fdc87036f4965c78c7fa0d290c9369bf7', 'SEPTYA RAHMA', 'P', 'Kendal', '2008-09-24', NULL, '-', '-', '-', 'Ana Styowati', 'Suparno', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(188, '5479', '0086136522', '8144a75e17cc1c87530956c24791b4ae39ead4ca', 'SHEILA NUR FEBIYANTI', 'P', 'Temanggung', '2008-02-04', NULL, '-', '-', '-', 'Tumilah', 'Sudardah', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(189, '5480', '0087364394', '78b0718df806db1cccfa1c6a3db1d3a4129176f1', 'SIFA RAHMA', 'P', 'Kendal', '2009-03-25', NULL, '-', '-', '-', 'Mujimah', 'Surahman', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(190, '5481', '0081832279', '3bdf6625dca7f54f7431cca2ebb6000d8ee6d0bb', 'SILVIA RIKA AGUSTIN', 'P', 'Kendal', '2008-08-19', NULL, '-', '-', '-', 'Nuryati', 'Dimas Ariyanto', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(191, '5482', '0098570776', '33291851c906280f60f9c070fde2a1bd85ddcca7', 'SISKA CINTYA DEWI', 'P', 'Kendal', '2009-01-31', NULL, '-', '-', '-', 'Sumiyati', 'Siswanto', '-', 1, 8, 1, '2023-10-10 17:54:04', '2023-10-10 17:54:04'),
(192, '5483', '0085977212', '58ef481ddfaacc95325c0259a55da834241d0cb0', 'SYAICA NABILA ZAYYAN RAMADHANI', 'P', 'Kendal', '2008-09-14', NULL, '-', '-', '-', 'Sri Mulyani', 'Waryadi', '-', 1, 8, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(193, '5484', '0091606159', '9e9f44aab940b607d8ba811562ff029706badb27', 'SYIFA NAZILLA', 'P', 'Kendal', '2009-06-26', NULL, '-', '-', '-', 'Khomsatun', 'Sis Sugiardi', '-', 1, 8, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(194, '5485', '0085944409', '2ba2189923be5034d40526236798525e4f2ddb6c', 'TUNZILUL LAILATIL AROFAH', 'P', 'Kendal', '2008-12-07', NULL, '-', '-', '-', 'Supiatun', 'Achmat Munadi', '-', 1, 8, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(195, '5486', '0064339870', '69f01e6d59c1d1a70193683a76842a36d7649108', 'TUTI WAHYU RUMIYATI', 'P', 'Temanggung', '2006-11-22', NULL, '-', '-', '-', 'Rina Seniati', 'Turadi', '-', 1, 8, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(196, '5487', '0089222202', 'f26b3a2deb3adc0879f98b393bc003aaedeb8c24', 'ABDIS LISDIANTO', 'L', 'Kendal', '2008-05-21', NULL, '-', '-', '-', 'Rohayati', 'Ahmad Khaeron', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(197, '5488', '0079102288', '2e971e3eaf3696943c9192be0dd24bd31fc28388', 'AHMAD AKBAR', 'L', 'Kendal', '2007-12-17', NULL, '-', '-', '-', 'Khomyati', 'Sukirno', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(198, '5489', '0082093040', 'd14d0f13a14c9a97e56adfa9ae9d902e1841d8a2', 'AHNAF HANUN AHMAD', 'L', 'Kendal', '2008-06-18', NULL, '-', '-', '-', 'Siti Robiah', 'Pendi Suyoto', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(199, '5490', '0074263085', '62dac099879eb821410a985f461f4956bd19299a', 'AKHMAD ALWIN', 'L', 'Kendal', '2007-08-24', NULL, '-', '-', '-', 'Tumiyati', 'Ali Arifin (Alm)', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(200, '5491', '0093668025', '07ae93a8a7dec47113438bdee3f3d75c51c8d6a0', 'ALDI NARISWARA SAPUTRA', 'L', 'Kendal', '2009-04-06', NULL, '-', '-', '-', 'Parini', 'Ngatiman', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(201, '5492', '0087536721', 'b275e223151fa325740629ec71dab2bd29400709', 'ALVIN ADI PURNOMO', 'L', 'Kendal', '2008-03-09', NULL, '-', '-', '-', 'Purwanti', 'Parwadiyanto', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(202, '5493', '0085900335', '708dab6f8e1175d8ef0bf2105a8bbce694811c88', 'ARJUNA IKHSAN MAULANA', 'L', 'Kendal', '2008-03-30', NULL, '-', '-', '-', 'Tukimah', 'Khaerun', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(203, '5494', '0085365329', '55855a6e90ba3a96371e9421ddc9c4b303295c50', 'AUREL PUTRI AUGUSTIN YULIANTO', 'P', 'Kendal', '2008-08-17', NULL, '-', '-', '-', 'Okki Murtini', 'Aris Yulianto', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 21:14:45'),
(204, '5495', '0073453020', 'ad72dfa2f8d6f01829e61c10e3a1316cfa535357', 'BRILLIYANT RAKA SAPUTRA', 'L', 'Kendal', '2007-12-14', NULL, '-', '-', '-', 'Suryanti', 'Yung Albert Sinaga', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(205, '5496', '0086460926', '4a7766255b57f6a8710c313b36717f5dcf46c87a', 'CAHYADEWI KHALISHA', 'P', 'Kendal', '2008-07-12', NULL, '-', '-', '-', 'Kurnia Novita', 'Subhi', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(206, '5497', '0083049650', '4a1a02d05530efdaafc6c43c06100d7bc72a164e', 'CITRA KHARLISTYA', 'P', 'Kendal', '2008-07-19', NULL, '-', '-', '-', 'Endang Widiastuti', 'Slamet Adi Restiawan', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(207, '5498', '0083607821', '288a4fb380e48fecc1dca9723859fee737451f50', 'DIMAS FERDI W.A', 'L', 'Kendal', '2008-02-23', NULL, '-', '-', '-', 'Kusriyah', 'Supri', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(208, '5499', '0075599644', '71ec2347dbfbba769d2c25d045b7fea887bcde28', 'DIPA RAYA', 'L', 'Kendal', '2007-11-20', NULL, '-', '-', '-', 'Susanti', 'Puji Utoyo', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(209, '5500', '0083413636', 'de0310aec20c583e9fd1b55cdfafac988dcbe3da', 'FINAYA HASTANING SAKTI', 'P', 'Kendal', '2008-07-16', NULL, '-', '-', '-', 'Rofi`Ah', 'Sugiyono', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(210, '5501', '0081419820', '9de96ebd694758565cbe8a78fb26c2922f65718c', 'GALIH IKHSAN SAPUTRA', 'L', 'Kendal', '2008-07-13', NULL, '-', '-', '-', 'Khusnul Khotimah', 'Nur ''Aini', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(211, '5502', '0084103449', 'a1b1271ee3bb35d95e7c6542d50fc8ba13d3695e', 'HAFIZH ALMA ADIKA', 'L', 'Kendal', '2008-01-15', NULL, '-', '-', '-', 'Warsiyah', 'Irawan', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(212, '5503', '0083542054', 'd16681f138200745a7a6b062ce32099514271430', 'KAYLA MUHABAH ZIVEN', 'P', 'Kendal', '2008-07-15', NULL, '-', '-', '-', 'Eni Mariya', 'Pandu Purnomo', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(213, '5504', '0073023620', '4748ff96f9e1d1cb6aa31a12d31641f30e016e93', 'MUHAMAD BAGAS ALIF ALFAJAR', 'L', 'Kendal', '2007-08-22', NULL, '-', '-', '-', 'Khoiriyah', 'Supriyanto', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(214, '5505', '0083655309', '4b5ccc26927ac13b4e61195fef667576183901af', 'MUHAMAD IMAM ARIF FAHRUDIN', 'L', 'Temanggung', '2008-06-09', NULL, '-', '-', '-', 'Kukuh Slamet Waliyati', 'Sugito', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(215, '5506', '0079175106', '87d61f01d4fd8308471a0a89e3a1c2e5180fb0fa', 'MUHAMMAD RIFQI', 'L', 'Kendal', '2007-11-24', NULL, '-', '-', '-', 'Sumartini', 'Makmum Ulya', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(216, '5507', '0074395764', '1515fc038630e34e5b0393c5a845b55c950b89e9', 'NURIYAN NATANAEL', 'L', 'Jawa Tengah', '2007-03-28', NULL, '-', '-', '-', 'Marita Mariyati', 'Nuryadi', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05');
INSERT INTO `student` (`student_id`, `student_nis`, `student_nisn`, `student_password`, `student_full_name`, `student_gender`, `student_born_place`, `student_born_date`, `student_img`, `student_phone`, `student_hobby`, `student_address`, `student_name_of_mother`, `student_name_of_father`, `student_parent_phone`, `class_class_id`, `majors_majors_id`, `student_status`, `student_input_date`, `student_last_update`) VALUES
(217, '5508', '0089100855', '9de96ebd694758565cbe8a78fb26c2922f65718c', 'NURUL HIDAYAH', 'P', 'Kendal', '2008-07-13', NULL, '-', '-', '-', 'Kistiyam', 'Bejo Tugiono', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(218, '5509', '0082205061', 'd8ce3b071c8bebbf90898134c99b0b28a20712d6', 'RENI LISA EFRINA', 'P', 'Kendal', '2008-12-03', NULL, '-', '-', '-', 'Tuwuh', 'Misrondi', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(219, '5510', '0086529713', 'be731868ef0dbd61da438b717456770a23a29c5a', 'SABIL KHASAN AL MUBAROK', 'L', 'Kendal', '2008-06-19', NULL, '-', '-', '-', 'Rustiyah', 'Saftin Mubarok', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(220, '5511', '0081415390', 'e37c7a91c69f579ea1f574e6683e7fa6f98776a2', 'SANTIKA YULIYANTI', 'P', 'Kendal', '2008-07-08', NULL, '-', '-', '-', 'Sumiati', 'Rokhimu', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(221, '5512', '0087816786', '7f8089f6af2191617c0a4dc1a9c6a38856db960f', 'SATRIA WINDRA MEYTAMA KRESTHA', 'L', 'Bekasi', '2008-05-18', NULL, '-', '-', '-', 'Witri Sumarni', 'Ishwara Indrakrestha', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(222, '5513', '0094012982', 'dd2a05e91327ac4f11ab173821fe7ff7e205310b', 'SITI FATMAWATI', 'P', 'Kendal', '2009-12-12', NULL, '-', '-', '-', 'Dumilah', 'Fasali', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(223, '5514', '0086211354', 'f7347974ef3c726c99c9a2b05c42c93e689da92f', 'SONY ISYRO'' ABDIE AL HOESNI', 'L', 'Kendal', '2008-07-31', NULL, '-', '-', '-', 'Sofiyatun', 'Muhammad Hoesnu Tamrin', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(224, '5515', '0089189636', '4051523a3e57b8d4eb66f8e079d3b058eb398973', 'SYAHDAN FERDI FAHDIAR', 'L', 'Tebing Tinggi', '2008-07-26', NULL, '-', '-', '-', 'Siti Khuswatun', 'Maskholi', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(225, '5516', '0088537194', 'c2f7297d3d4079305103012e654f8124b487e9e7', 'YUDA TANTO WIJAYA', 'L', 'Kendal', '2008-06-29', NULL, '-', '-', '-', 'Heniwati', 'Ismanto', '-', 1, 10, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(226, '5517', '0089138319', 'b4b7265bf070a00e44e39825492d63eac78a2f32', 'AGASTYA GIBRAN SADEWA', 'L', 'Temanggung', '2008-11-25', NULL, '-', '-', '-', 'Santi Kurniati', 'Latif Al Mansyur', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(227, '5518', '0082070431', '03c039b631256200b97611fead5457bff5400bf5', 'ALAIK SIDNA ADIB', 'L', 'Kendal', '2008-02-01', NULL, '-', '-', '-', 'Cholifatun', 'Maskun', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(228, '5519', '0086790034', 'd5e188d4b1a1de1f39e6c1a616cef498ec67a259', 'ALFIAN FEBRIANTO', 'L', 'Kendal', '2008-02-26', NULL, '-', '-', '-', 'Suharti', 'Sumadiyono', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(229, '5520', '0088210175', '719e691a42772f344535a7ace7fd399fb9dbc0bb', 'ALYSA AZAHRA', 'P', 'Kendal', '2008-04-04', NULL, '-', '-', '-', 'Kusyati', 'Dasudi', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(230, '5521', '0089956139', '983125586559959eaaba5da9c66723aabc9a434b', 'ANDRA PRASETIYA', 'L', 'Kendal', '2008-02-05', NULL, '-', '-', '-', 'Eli Sudariyah', 'Taryadi', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(231, '5522', '0081535640', '7c3f198efb731a26e197e566f8a0a9363d2e2092', 'ANIQ FAJRI ANDINI', 'P', 'Temanggung', '2008-05-14', NULL, '-', '-', '-', 'Parmini', 'Suparni', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(232, '5523', '0072983076', 'b5e4060b4b4f3322ace397717f39613d6e95e323', 'AWALIANA MAGHFIROH', 'P', 'Kendal', '2007-06-17', NULL, '-', '-', '-', 'Sri Hartatik', 'Mislani', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(233, '5524', '0072270649', '75aef709f4cbdbe3f49995315b05a77e2eaf1332', 'CAHYA DINI ARTIKA', 'P', 'Kendal', '2007-12-04', NULL, '-', '-', '-', 'Rumyati', 'Yogi Suyono', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(234, '5525', '0081371998', '9c1c2f04adec204b4689fbb2cd71584ad7568c20', 'DAVA RISQI KURNIAWAN', 'L', 'Kendal', '2008-05-19', NULL, '-', '-', '-', 'Muntamah', 'Slamet Ngahadi', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(235, '5526', '3083890785', '6b9f103bb2f3a50f3c5594d84b6634c911afb6f3', 'DEDEK ARDIANSAH SAPUTRA SETIYONO', 'L', 'Temanggung', '2008-12-27', NULL, '-', '-', '-', 'Setia Rini', 'Buyono', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(236, '5527', '0089000841', '076a7a814f9570c4c224064a1639ece15fba2cf2', 'DEFI PUJI SAPUTRI', 'P', 'Kendal', '2008-03-10', NULL, '-', '-', '-', 'Wahyuni', 'Rusnin', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(237, '5528', '0081138113', '284321a82a91343366bf246a6e750364feab2b4c', 'EDI PRASTYO', 'L', 'Kendal', '2008-11-19', NULL, '-', '-', '-', 'Imronah', 'Amin', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(238, '5529', '0085180880', '99d1a3562e0e521b7e5d3528d43d8a175fad7f63', 'EKA NUR HIDAYATI', 'P', 'Kendal', '2008-05-12', NULL, '-', '-', '-', 'Sri Mulyani', 'Rusmanto', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(239, '5530', '0084332156', '4299949800e61d78f28e882b818a18b2b0d425a1', 'ERICA FATMA AULIA', 'P', 'Kendal', '2008-06-13', NULL, '-', '-', '-', 'Sriasih', 'Sriasih', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(240, '5531', '0081032376', 'ff6320fb7cd5261ce1bce9d4febc4c1937a2b136', 'EVANDA SATRIA WIBOWO', 'L', 'Kendal', '2008-04-17', NULL, '-', '-', '-', 'Ambar Wati', 'Jiyarto', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(241, '5532', '0087355443', 'e04d4de7429ae787b3eac61aa5a8d4351757698c', 'FITRI SETIYANI', 'P', 'Temanggung', '2008-09-28', NULL, '-', '-', '-', 'Lasminah', 'Tuamin', '-', 1, 11, 1, '2023-10-10 17:54:05', '2023-10-10 17:54:05'),
(242, '5533', '0072592774', '2c6742e43c754818bd1e3e4ba8e2d0ce716aba20', 'FITRIA RIZKI WULANDARI', 'P', 'Jakarta', '2007-10-25', NULL, '-', '-', '-', 'Sunarti', 'Sudarno', '-', 1, 11, 1, '2023-10-10 17:54:06', '2023-10-10 17:54:06'),
(243, '5534', '0088801370', '2d7bd17a4727009c5d3d2152cbe6a1e5cbb670ab', 'HASAN BASRI', 'L', 'Temanggung', '2008-06-20', NULL, '-', '-', '-', 'Partinah', 'Sukarman', '-', 1, 11, 1, '2023-10-10 17:54:06', '2023-10-10 17:54:06'),
(244, '5535', '0084973104', '27b08ecb66460f04658e38fe09a03fdd074b5242', 'HERNANDIAS OKTAVIANO', 'L', 'Kendal', '2008-10-11', NULL, '-', '-', '-', 'Rojanah', 'Sulistiyono', '-', 1, 11, 1, '2023-10-10 17:54:06', '2023-10-10 17:54:06'),
(245, '5536', '0081566849', '64dbf37a805274fa46c1811b11f92913f436a894', 'ICHA HERAWATI', 'P', 'Kendal', '2008-04-08', NULL, '-', '-', '-', 'Suwariyem', 'Wijoyo', '-', 1, 11, 1, '2023-10-10 17:54:06', '2023-10-10 17:54:06'),
(246, '5537', '0075626408', '0027d13e8f235151df8d3438c21df24e815e3662', 'IRFANI HIDAYANTI', 'P', 'Kendal', '2007-09-23', NULL, '-', '-', '-', 'Suryati', 'Susaeni', '-', 1, 11, 1, '2023-10-10 17:54:06', '2023-10-10 17:54:06'),
(247, '5538', '0084224479', '9625af864aeb91d34814699b63b61c39ee10aa03', 'KHOLIS PUJIANTO', 'L', 'Kendal', '2008-08-02', NULL, '-', '-', '-', 'Suwartini', 'Parwadi', '-', 1, 11, 1, '2023-10-10 17:54:06', '2023-10-10 17:54:06'),
(248, '5539', '3068809951', '88268d2bff750d79da9dd16f97210593671803fc', 'M CHOERUL ADIB', 'L', 'Kendal', '2006-03-17', NULL, '-', '-', '-', 'Farida Wati', 'Wartono', '-', 1, 11, 1, '2023-10-10 17:54:06', '2023-10-10 17:54:06'),
(249, '5540', '0083576680', '468e276e54f0818d5dd24486c0d777df0674c660', 'MAOLLA DIYAH RAHMAWATI', 'P', 'Kendal', '2008-03-23', NULL, '-', '-', '-', 'Misriyah', 'Ruswadi', '-', 1, 11, 1, '2023-10-10 17:54:06', '2023-10-10 17:54:06'),
(250, '5541', '0088155758', '1cce0d4f6c05c257c73f9a39274805634f422bf4', 'MISKA FITRIYANI', 'P', 'Kendal', '2008-10-03', NULL, '-', '-', '-', 'Sriatun', 'Sumarno', '-', 1, 11, 1, '2023-10-10 17:54:06', '2023-10-10 17:54:06'),
(251, '5542', '0085103642', '7cfe80253732293c8c99c451ff0afb3239435329', 'MOHAMAD RAFLI ARDIYANTO', 'L', 'Kendal', '2008-10-17', NULL, '-', '-', '-', 'Solikhah', 'Waryanto', '-', 1, 11, 1, '2023-10-10 17:54:07', '2023-10-10 17:54:07'),
(252, '5543', '0084820322', 'ee5e79ba34217ba9c2ce8c660c1b3111fb5f7a9d', 'NATASYA FIRDASARI', 'P', 'Kendal', '2008-12-11', NULL, '-', '-', '-', 'Muslikhati', 'Supriyadi', '-', 1, 11, 1, '2023-10-10 17:54:07', '2023-10-10 17:54:07'),
(253, '5544', '0087077641', '2c51bab6bd225566189c8a746db67ed127674ade', 'NIMAS VIOLANDA PUTRI', 'P', 'Kendal', '2008-08-10', NULL, '-', '-', '-', 'Misriyatun', 'Sutrimo', '-', 1, 11, 1, '2023-10-10 17:54:08', '2023-10-10 17:54:08'),
(254, '5545', '0081562738', '3bdf6625dca7f54f7431cca2ebb6000d8ee6d0bb', 'NUR CEMPAKA AGUSTIN', 'P', 'Kendal', '2008-08-19', NULL, '-', '-', '-', 'Roswati', 'Irianto', '-', 1, 11, 1, '2023-10-10 17:54:08', '2023-10-10 17:54:08'),
(255, '5546', '0079429817', 'b71ba30e6666c603339aac5293b39716088ab86c', 'NUR LAILIA', 'P', 'Kendal', '2007-12-29', NULL, '-', '-', '-', 'Suparti', 'Sapani', '-', 1, 11, 1, '2023-10-10 17:54:09', '2023-10-10 17:54:09'),
(256, '5547', '0085258634', 'da8e608d340a6039f7bf5f897369fa7f76bf010d', 'NURUL HIDAYATUL HIKMAH', 'P', 'Kendal', '2008-08-28', NULL, '-', '-', '-', 'Musyaro''Ah', 'Ahmadi', '-', 1, 11, 1, '2023-10-10 17:54:09', '2023-10-10 17:54:09'),
(257, '5548', '0088550967', '0130d3317741d32f413b21fdc51cd25cbde96d92', 'PUTRI AISILA ARIFAH', 'P', 'Kendal', '2008-03-12', NULL, '-', '-', '-', 'Surati', 'Ahmad Nur Koyin', '-', 1, 11, 1, '2023-10-10 17:54:10', '2023-10-10 17:54:10'),
(258, '5549', '0084460762', '757e25b6f1c18b43239e871861e0846c74f0c201', 'RANGGA PRADITYA RIYADI', 'L', 'Depok', '2008-02-20', NULL, '-', '-', '-', 'Risma Amarisa', 'Adi Riyadi', '-', 1, 11, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(259, '5550', '0088413618', '316dceb8bd3ff1808b37f633b99540f004d543d5', 'RIAN DWI SAPUTRA', 'L', 'Kendal', '2008-11-04', NULL, '-', '-', '-', 'Riyanah', 'Wahari', '-', 1, 11, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(260, '5551', '0088802443', 'eab50c72dc4d5e6127e19b88ee7cd1884d4e03b9', 'RISMA ANI MAAGFIROH', 'P', 'Kendal', '2008-03-01', NULL, '-', '-', '-', 'Siti Wahyuningsih', 'Jaman Ragil Saputro', '-', 1, 11, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(261, '5552', '0083605288', '58ef481ddfaacc95325c0259a55da834241d0cb0', 'SAFFANA NURUN NISA', 'P', 'Kendal', '2008-09-14', NULL, '-', '-', '-', 'Dwi Rohayati', 'Sugito', '-', 1, 11, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(262, '5553', '0082222687', 'c42857bc3b2d29a412a66f58e1df3a2c22adc021', 'SYIFA AULIA ZAHRO', 'P', 'Kendal', '2008-03-27', NULL, '-', '-', '-', 'Kitriyah', 'Mustaqim', '-', 1, 11, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(263, '5554', '3077337497', 'd9f235c33b209d69e595a9d24ec5f42aa9699e9f', 'WINDA KHASANAH AULIA', 'P', 'Temanggung', '2007-11-19', NULL, '-', '-', '-', 'Anik Winarsih', 'Wakidi', '-', 1, 11, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(264, '5555', '0087529019', '3d2f6b9e0ec73b3c774f12b7650017039962f858', 'YOGA BAGUS RAMDANI', 'L', 'Kendal', '2008-09-19', NULL, '-', '-', '-', 'Iin Sulistiyowati', 'Jalno', '-', 1, 11, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(265, '5556', '0083259668', 'c7fc66baf9907a740f67b6a6c255c991eac07ae6', 'ADELIA GITA FERNANDA', 'P', 'Kendal', '2008-05-15', NULL, '-', '-', '-', 'Maesaroh', 'Sukinun', '-', 1, 12, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(266, '5557', '0088528133', '635eefe3b35c98e8e14545a515e26c85b625c76b', 'AFIATUN NISA', 'P', 'Kendal', '2008-07-14', NULL, '-', '-', '-', 'Mistriatun', 'Tukijo', '-', 1, 12, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(267, '5558', '0081800571', '9b7be07f307501d1940519f3a2990af7a29c29c5', 'AFTA SUCIA KHALISA', 'P', 'Kendal', '2008-09-26', NULL, '-', '-', '-', 'Sri Istianah', 'Turyono', '-', 1, 12, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(268, '5559', '3071162683', 'ed895dffa9253ec2a68c9fa7726fc888a2ae4851', 'ALIVIA CHOIRUNYSA', 'P', 'Jambi', '2007-11-27', NULL, '-', '-', '-', 'Suwanti', 'Ndang Taryana', '-', 1, 12, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(269, '5560', '0086954585', '7ee201806b16a3433df24457e6b68fad446c6d42', 'ARTANIA PUTRI CANTIKA', 'P', 'Kendal', '2008-09-15', NULL, '-', '-', '-', 'Caswanti', 'Kuswanto', '-', 1, 12, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(270, '5561', '0081381560', '7ee201806b16a3433df24457e6b68fad446c6d42', 'BERLIANA AR RAYYAN', 'P', 'Kendal', '2008-09-15', NULL, '-', '-', '-', 'Lilin Andiyani', 'Samsuri', '-', 1, 12, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(271, '5562', '0085538118', '30b2cbf8939e045609208125be2ff7930117817b', 'CARRISSA AURELLIA', 'P', 'Temanggung', '2008-01-12', NULL, '-', '-', '-', 'Sri Utami', 'Muhayat', '-', 1, 12, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(272, '5563', '0082399102', '284321a82a91343366bf246a6e750364feab2b4c', 'DANU SATRIO HAFID', 'L', 'Kendal', '2008-11-19', NULL, '-', '-', '-', 'Siti Aminah', 'Sutanto', '-', 1, 12, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(273, '5564', '0086884825', '9522c373a6ec52494bc790496a323aeb9abfe3a2', 'DIAN EKA SARI', 'P', 'Kendal', '2008-08-03', NULL, '-', '-', '-', 'Robiatun', 'Sardi', '-', 1, 12, 1, '2023-10-10 17:54:11', '2023-10-10 17:54:11'),
(274, '5565', '0084572953', '7ee201806b16a3433df24457e6b68fad446c6d42', 'EKA WAHYU WIJAYANTI', 'L', 'Kendal', '2008-09-15', NULL, '-', '-', '-', 'Siswati', 'Budi Santoso', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(275, '5566', '0086154933', '55e4abac284de9cd0046f90b52aa7204d6bbb8e8', 'ISMAWATUN ALIFFAH', 'P', 'Kendal', '2008-11-30', NULL, '-', '-', '-', 'Jumiyah', 'Bisri', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(276, '5567', '0089542735', '4a1a02d05530efdaafc6c43c06100d7bc72a164e', 'KEISYA DWIYULIANA', 'P', 'Kendal', '2008-07-19', NULL, '-', '-', '-', 'Komariyah', 'Tamyis', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(277, '5568', '0089636321', '0d52cb0c82a94aa45443831be27a752d14fd386b', 'MUHAMMAD DEWANDARU', 'L', 'Kendal', '2008-05-23', NULL, '-', '-', '-', 'Afidatun Nisa''', 'Muhammad Soleh', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(278, '5569', '0081848791', '9eb63c2687fd7af2da446504a8fc9584a0bec1b0', 'NANDIFA NURAFIFAH', 'P', 'Kendal', '2008-12-28', NULL, '-', '-', '-', 'Nasiatun', 'Budiyanto', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(279, '5570', '0073118815', '1ae1c4c7a47d5d45baf2ff7bea6ad03727a67fa7', 'NAYLA SA''ADAH', 'P', 'Kendal', '2007-01-06', NULL, '-', '-', '-', 'Masriah', 'Winadi Cahyudi', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(280, '5571', '0082277932', '2ba2189923be5034d40526236798525e4f2ddb6c', 'NIYALA ALTHAFUNNISA', 'P', 'Kendal', '2008-12-07', NULL, '-', '-', '-', 'Siti Barokah', 'Hartono', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(281, '5572', '0081962012', 'a5f5e3346b046350a2ded88ac7e6d7f147f59b7c', 'RAZITA SABRINA FILZAH', 'P', 'Kendal', '2008-03-06', NULL, '-', '-', '-', 'Rohati', 'Fahrudin', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(282, '5573', '0084573380', '3a279d6d0fac81d50c1abdf92d2f787565884ac2', 'RISKA RASTIYANI', 'P', 'Kendal', '2008-07-20', NULL, '-', '-', '-', 'Rianah', 'Mulyani', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(283, '5574', '0077709652', 'd81daf7ce2eaac842fbd283c5d1711c437935525', 'SEBASTIAN ANDIKA DAFFA SAPUTRA', 'L', 'Kendal', '2007-09-03', NULL, '-', '-', '-', 'Jariyah', 'Kusno', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(284, '5575', '0083228397', '7f8089f6af2191617c0a4dc1a9c6a38856db960f', 'TAUFIQ WAHYU BUDI SANTOSO', 'L', 'Kendal', '2008-05-18', NULL, '-', '-', '-', 'Umi Azkiyatul Maghfiroh', 'Kriswanto', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(285, '5576', '0089362295', 'e3f5cf4577e4f312e7fa99d43a45fd34441aa0d4', 'VARENCHA NANDA SAPUTRA', 'L', 'Kendal', '2008-08-07', NULL, '-', '-', '-', 'Anti Setyoningrum', 'Suswanto', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(286, '5577', '0085620413', 'e92a3b0a82b63f05ae7f25d11cdb70b5ab983016', 'WAHFIROTULAILA SEFTI RAMA DLANI', 'P', 'Kendal', '2008-09-22', NULL, '-', '-', '-', 'Nurjanah', 'Arifin', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(287, '5578', '0088837347', '50cafa1a5cf24a622a24be82240e804c60213135', 'WINDA ALIFIA SETIANI', 'P', 'Kendal', '2008-07-10', NULL, '-', '-', '-', 'Mugiyanti', 'Saniman', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(288, '5579', '0072146406', 'c421c9a5f31ccf4d01ff76ccd67bdf5a5474167e', 'YUNUS', 'L', 'Kendal', '2007-09-08', NULL, '-', '-', '-', 'Narti', 'Mahyun', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(289, '5580', '0079057785', 'c421c9a5f31ccf4d01ff76ccd67bdf5a5474167e', 'YUSUF', 'L', 'Kendal', '2007-09-08', NULL, '-', '-', '-', 'Narti', 'Mahyun', '-', 1, 12, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(290, '5581', '0073814171', '612fce4566e2298f24436c23f0f10d8cdc485fbb', 'AKHMAD FRIZKY APRILIAN', 'L', 'Kendal', '2007-04-02', NULL, '-', '-', '-', 'Tuhayati', 'Misropi', '-', 1, 13, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(291, '5582', '0086911991', 'b635750f4dc8b936dc110c1fcd12b8298adf831b', 'ALISA PRIHAP SARI', 'P', 'Kendal', '2008-10-23', NULL, '-', '-', '-', 'Miskini', 'Asruri', '-', 1, 13, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(292, '5583', '0089134938', '91d65517f3f34b6a4b3eca8ace41960cc3f89d99', 'FITRI SEPTIYA RAMADHANI', 'P', 'Kendal', '2008-09-29', NULL, '-', '-', '-', 'Siti Maesaroh', 'Akhmadi', '-', 1, 13, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(293, '5584', '0088970251', 'e3f5cf4577e4f312e7fa99d43a45fd34441aa0d4', 'IBNU AZZAM ZUHDI', 'L', 'Kendal', '2008-08-07', NULL, '-', '-', '-', 'Ratna Juwita Puspitasari', 'Tri Imanta', '-', 1, 13, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(294, '5585', '0082897068', '2a6e2319046b3d90353e7634544bec527428b672', 'KORI''ATUN', 'P', 'Kendal', '2008-05-27', NULL, '-', '-', '-', 'Rusmini', 'Misdi', '-', 1, 13, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(295, '5586', '0088207126', 'f450d9d2d463acbe32f78203e9c349af87705033', 'MAHENDRA BANGKIT SUJIWO', 'L', 'Kendal', '2008-05-17', NULL, '-', '-', '-', 'Mutobiah', 'Sudaryanto', '-', 1, 13, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(296, '5587', '0074081161', '6ebb9cc3b46515e3df505642aad356049d278e23', 'MUHAMAD WISNU NUR RIZKY', 'L', 'Kendal', '2007-11-06', NULL, '-', '-', '-', 'Khusniyah', 'Mustopo', '-', 1, 13, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(297, '5588', '0085495321', '6f3260049e2f7537e36d1096215358a10a938575', 'NURUL HIDAYAH', 'P', 'Kendal', '2008-10-21', NULL, '-', '-', '-', 'Mu''Asriyah', 'Rumadi', '-', 1, 13, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(298, '5589', '0087880925', 'c1622da0d3487c7599c6f9229e9dfb67c9b5d594', 'PUTRA NASOKHA', 'L', 'Kendal', '2008-04-25', NULL, '-', '-', '-', 'Wagiyah', 'Paimin', '-', 1, 13, 1, '2023-10-10 17:54:12', '2023-10-10 17:54:12'),
(299, '5590', '0074615762', '5b34b4102c60bbfd1d4edff98c015b24b4f9e4be', 'RADEN DAFI AZZAM HABIBURRAHMAN', 'L', 'Bogor', '2007-10-01', NULL, '-', '-', '-', 'Rita Hanani Listyaningrum', 'Prio Widi Nugroho', '-', 1, 13, 1, '2023-10-10 17:54:13', '2023-10-10 17:54:13'),
(300, '5591', '0082222033', 'c2f7297d3d4079305103012e654f8124b487e9e7', 'REVA ARLITA', 'P', 'Batang', '2008-06-29', NULL, '-', '-', '-', 'Hani Harlisatun', 'Kuswanto', '-', 1, 13, 1, '2023-10-10 17:54:13', '2023-10-10 17:54:13'),
(301, '5592', '0091562248', '7719601c88442f5a8c0c7aecc05a0dbf54fdeb5c', 'SADIPTA ADI PRATAMA', 'L', 'Kendal', '2009-01-01', NULL, '-', '-', '-', 'Sumyati', 'Su''Alman', '-', 1, 13, 1, '2023-10-10 17:54:13', '2023-10-10 17:54:13'),
(302, '5040', '0072699553', 'c2f7297d3d4079305103012e654f8124b487e9e7', 'AHMAD SANI SETIAWAN', 'L', 'Kendal', '2008-06-29', NULL, '-', '-', '-', 'Junarti', 'Purwadi', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(303, '5041', '0062607187', '4b5f0c267f639f6898bc8ac8caa7603e3aa7df88', 'ALEXANDER DWI ERLANGGA HAMAS', 'L', 'Kendal', '2006-11-04', NULL, '-', '-', '-', 'Hanik Susanti', 'Aeny Masturin', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(304, '5042', '0066549064', '9aa22c77a822eb3f293ad7ed9d5399133d13132f', 'DAVA AHMAD IQBAL', 'L', 'Temanggung', '2006-04-15', NULL, '-', '-', '-', 'Sawiyem', 'Purnomo', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(305, '5043', '0073714347', '666d9f18e3d3a0019c4b7b5a9205d7ca0558af36', 'DAVA BINTANG AR''RAFI', 'L', 'Temanggung', '2007-02-20', NULL, '-', '-', '-', 'Winarsih', 'Winarsih', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(306, '5045', '0074589723', '607f0dad0259aa88492b5da3893f7c3e3c7bf638', 'FAJAR AJI PANGESTU', 'L', 'Kendal', '2007-03-17', NULL, '-', '-', '-', 'Watiyah', 'Ribut Riyadi', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(307, '5046', '0079964787', 'ade49675f08a443cab8504db6c9eb2c0ca7daf37', 'FAJRI DWI ANDREAN', 'L', 'Kendal', '2007-05-06', NULL, '-', '-', '-', 'Nur Asiyah', 'Duryadi', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(308, '5047', '0055060131', '292738066cbb3530b9707c3bcb25e94c0dd673ec', 'ILHAM KRISBIYANTORO', 'L', 'Temanggung', '2005-01-07', NULL, '-', '-', '-', 'Kasuwi', 'Sutikno', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(309, '5048', '0078532165', 'dc2876d0661682074ac9f6f3a382ea44767a0718', 'KEVIN FEBRIANTO', 'L', 'Kendal', '2007-02-18', NULL, '-', '-', '-', 'Rumiatun', 'Sukamto', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(310, '5049', '0069061894', '360c44654468daa3cde480aefaace202cba7a7e7', 'KHABIB MUHAMAD ANHAR', 'L', 'Temanggung', '2006-09-19', NULL, '-', '-', '-', 'Harni', 'Sutarno', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(311, '5050', '0068055937', '49d847f5c9712392c820702dc9fded49ea37827a', 'MUHAMMAD AQIL ALWAN', 'L', 'Kendal', '2006-10-24', NULL, '-', '-', '-', 'Lilis Suwaebah', 'Mas Udi', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(312, '5051', '0061470557', '173f9d2e4a042f80d9b243c4cca376310aa8e29a', 'MUHAMMAD ARSYADA KHOIRIL ANAM', 'L', 'Kendal', '2006-11-06', NULL, '-', '-', '-', 'Mismawati', 'Shodiqin', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(313, '5052', '0074401447', '3e7c4572cdae0bbcc5dcf1e233bfeb6958a6e669', 'MUHAMMAD DAVI ULIL ALBAB', 'L', 'Kendal', '2007-05-04', NULL, '-', '-', '-', 'Tumanah', 'Saridi', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(314, '5053', '3066846071', '8f622bc07448065748c33a8f9b251c7ed4e5c00d', 'MUHAMMAD FATKHUN NAJA', 'L', 'Kendal', '2006-12-26', NULL, '-', '-', '-', 'Nur Khamiyah', 'Budi Supanggih', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(315, '5054', '0076532978', 'c756153f95bdefbf2e8613ff108ab45f02e7291f', 'MUHAMMAD NAFIS BAHRUL ULUM', 'L', 'Kendal', '2007-11-05', NULL, '-', '-', '-', 'Sokhiyatun', 'Sokhiyatun', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(316, '5055', '0072382726', '868fc0dde5327377de44ffcd5146e780e8afcea8', 'MUHAMMAD RAFI PRABOWO', 'L', 'Kendal', '2007-06-02', NULL, '-', '-', '-', 'Lasmini', 'Risab', '-', 2, 1, 1, '2023-10-10 17:56:35', '2023-10-10 17:56:35'),
(317, '5057', '0078012888', 'cacc1e21720bdd0d34bc8ebd960bd2d5c1621f57', 'NINDA ARDANIA PUTRI', 'P', 'Kendal', '2007-07-16', NULL, '-', '-', '-', 'Retno Kustiasih', 'Waldi', '-', 2, 1, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(318, '5146', '0072594506', '2bc06c016c88586fecfb87d45bc5aa19bb728905', 'NOVITA', 'P', 'Temanggung', '2007-03-04', NULL, '-', '-', '-', 'Sunarti', 'Sutarman', '-', 2, 1, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(319, '5058', '0076348616', 'bcc0b8d0c62856e5afb413d858325ffa06f49b9f', 'NURUL ZANDY RIYAWAN', 'L', 'Kendal', '2007-09-11', NULL, '-', '-', '-', 'Rini Agustin', 'Adiyanto', '-', 2, 1, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(320, '5059', '0072293480', '05920e663f22ce00bb18b206d7e5483a46edd849', 'RADITYA ARBY FARIZQI', 'L', 'Kendal', '2007-06-09', NULL, '-', '-', '-', 'Ratna Tinasari', 'Eko Priantono', '-', 2, 1, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(321, '5060', '0069103287', 'f446ddf567fa45d06b45b1da98afa37985d713d9', 'RAMA SAPUTRA', 'L', 'Temanggung', '2006-08-10', NULL, '-', '-', '-', 'Casmirah Wati', 'Tus Panji Utomo', '-', 2, 1, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(322, '5061', '0076483097', 'c7398f6a0c5dd03c6c768b1d3370a4855fc2c6e7', 'RANDIKA AGUS HARYANTO', 'L', 'Kendal', '2007-02-06', NULL, '-', '-', '-', 'Sulastri', 'Agus Heriyanto', '-', 2, 1, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(323, '5062', '0064724874', '4c0b7a03a7c173c616a947cb9d067fca920d72be', 'RANGGA IKHSANUL KHAQIM', 'L', 'Kendal', '2006-12-24', NULL, '-', '-', '-', 'Yuliyanti', 'Turah', '-', 2, 1, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(324, '5063', '0076125705', '52b76f5bdb9d4660a2677aebc2131e0d9aad0be5', 'RAYHAN HAMDAN ALYUSRON', 'L', 'Kendal', '2007-10-14', NULL, '-', '-', '-', 'Fariana', 'Kasturi', '-', 2, 1, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(325, '5064', '0077174236', '4388266b762c1330b40ed46c0d99c2d2245dd6ca', 'REHAN DWI RAMADHIKA', 'L', 'Kendal', '2007-01-02', NULL, '-', '-', '-', 'Sugiyati', 'Ropandi', '-', 2, 1, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(326, '5065', '0056163199', '7cce09ac2adf53d1d439f5056636a0e43aa260c6', 'RENDIK KURNIAWAN', 'L', 'Temanggung', '2005-01-25', NULL, '-', '-', '-', 'Kurmiyati', 'Parman', '-', 2, 1, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(327, '5066', '0075612693', '10825a32f02906ada4f8404451472763dedf4b22', 'RIZAL ARDI SAPUTRA', 'L', 'Kendal', '2007-10-08', NULL, '-', '-', '-', 'Sri Murni', 'Turhamun', '-', 2, 1, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(328, '5067', '0066791092', '85af44d8d6db1fbf9a69102de0398af392f182be', 'AHMAD FARIZ FAHRUROZI', 'L', 'Kendal', '2006-12-03', NULL, '-', '-', '-', 'Umi Faridah', 'Warsito', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(329, '5068', '0071731888', '6a7c2bd005ff68b9b5165eefa11df579fa4c0c50', 'AKMAL AFRIZAL', 'L', 'Kendal', '2007-07-25', NULL, '-', '-', '-', 'Nuryati', 'Henry Susanto', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(330, '5069', '0066764875', '817349096bf85f4090cf6aade1bb2270410b2ff8', 'ALFIN ASYHAR FADLI', 'L', 'Kendal', '2006-01-13', NULL, '-', '-', '-', 'Rokhimah', 'Sumar', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(331, '5070', '0077636872', '2294e00b2fedd55ee45a8b77df0b10e3055bafbb', 'ANDIKA SAPUTRA', 'L', 'Kendal', '2007-08-10', NULL, '-', '-', '-', 'Miswanti', 'Tardi', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(332, '5073', '0059299614', '1ffbea6273d6d681db87c7f41f474cb3a6e942d2', 'BAGUS RAFLIYANTO', 'L', 'Kendal', '2005-08-03', NULL, '-', '-', '-', 'Taryuti', 'Ahmad Nuryanto', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(333, '5074', '0069436987', 'e2988a359814504ec150a069b45796928acb83f0', 'BIMA SETIAWAN', 'L', 'Kendal', '2006-02-04', NULL, '-', '-', '-', 'Komariyah', 'Edi Kusnoto', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(334, '5075', '0074684434', '2689b2d5ea1470de69d5c63cde1d04daf61e5ebe', 'DHANI HASYIM RAMADHAN', 'L', 'Kendal', '2007-09-18', NULL, '-', '-', '-', 'Tri Wahyuni', 'Fuad Hasyim', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(335, '5076', '0067732259', 'cc1b4f0dc59a40a6dc436e57384ff923f6acd86d', 'DIDIK KURNIAWAN', 'L', 'Kendal', '2006-11-19', NULL, '-', '-', '-', 'Suharti', 'Muhlisin', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(336, '5077', '0065099768', '4746b25c875ad69487fb49588c8bc2778f569ab2', 'EKO WIDODO', 'L', 'Batang', '2006-05-23', NULL, '-', '-', '-', 'Asfiyatun', 'Suyitno', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(337, '5078', '0072117339', '0968d06ac6f1c2610edfe0fc8c3e352e3d79ded3', 'FAJRI MUHAMMAD RAFIQ', 'L', 'Kendal', '2007-06-25', NULL, '-', '-', '-', 'Siti Baroroh', 'Sunar', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(338, '5079', '0075280259', 'ae2657fd24d506c95b75abb6abb3ac485b0bf755', 'FARID NUR MINZAHABIN ARDHI', 'L', 'Kendal', '2007-09-30', NULL, '-', '-', '-', 'Nuryani', 'Nuryadi', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(339, '5080', '0075893974', '0b80a40ff3be59f8db37940bbfccb026a4a5ebb4', 'FIKRI ABDUL LATIF', 'L', 'Kendal', '2007-10-19', NULL, '-', '-', '-', 'Romyatun', 'Jumari', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(340, '5081', '0075493611', '69d480b29e086189e262de91747c896833eb050d', 'GERALD FARIZKY FATURROHMAN', 'L', 'Temanggung', '2007-03-20', NULL, '-', '-', '-', 'Tri Kurniati', 'Narimantoro', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(341, '5082', '0065196546', '20a16c609160cc222b039221f3046d0d479ea924', 'IKRAMA MASYARILA''LA', 'L', 'Kendal', '2006-12-28', NULL, '-', '-', '-', 'Mistiyah', 'Awaludin', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(342, '5083', '0066150089', '5907f0fb9676470603f2c834018ecfcef130f381', 'IRFANTO NUR KHOLIS', 'L', 'Kendal', '2005-05-19', NULL, '-', '-', '-', 'Suryati', 'Susaeni', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(343, '5084', '0068880800', '4272178f9807185b3c402cc83658d78f00802e3c', 'KEVIN FAJAR SAPUTRA', 'L', 'Temanggung', '2006-04-24', NULL, '-', '-', '-', 'Sartini', 'Pariyono', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(344, '5085', '0079643025', '9cafdfa4dcf486780f9cf1c3744014bf5041506b', 'KHOLID ASSAIKULLAH', 'L', 'Temanggung', '2007-07-27', NULL, '-', '-', '-', 'Murwati', 'Wagiman', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(345, '5086', '0077282143', '2f4e77b1626ffe449aa34d716e48eeba92c7983c', 'MUHAMAD DWI SUPRIYADI', 'L', 'Kendal', '2007-02-22', NULL, '-', '-', '-', 'Sumiyati', 'Sukirmadi', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(346, '5087', '3072456283', 'ff379aaecfd26fe83732426847118facbff38edd', 'MUHAMAD IKHSAN SURYA MAULANA', 'L', 'Kendal', '2007-11-29', NULL, '-', '-', '-', 'Ika Purnama Sari', 'Suryadi', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(347, '5088', '0074881729', '9fa5baf4caf0b585801cd2c7f3930f069ea0e3f9', 'MUHAMMAD HANAFI', 'L', 'Kendal', '2007-07-07', NULL, '-', '-', '-', 'Siti Rohayati', 'Muhsin', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(348, '5089', '0078674719', 'c38dccf282d119587eea861550008c0fdc56f4f6', 'MUHAMMAD SABILIL HUDA', 'L', 'Kendal', '2007-01-12', NULL, '-', '-', '-', 'Muzarohtun', 'Jumari', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(349, '5090', '0065683902', '83b2964d91e7dba8e662ba6bcad12896498c21ca', 'MUHAMMAD ZAHRON ARIFANA PUTRA', 'L', 'Kendal', '2006-12-07', NULL, '-', '-', '-', 'Arif Yuniari', 'Solikin', '-', 2, 2, 1, '2023-10-10 17:56:36', '2023-10-10 17:56:36'),
(350, '5091', '0072556265', '8789f4e4b90286e4707460658a30851db680ba7e', 'NAFA'' QORINA ISNAYA', 'P', 'Kendal', '2007-02-11', NULL, '-', '-', '-', 'Sopiyati', 'Kasirun', '-', 2, 2, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(351, '5092', '0073530637', '8789f4e4b90286e4707460658a30851db680ba7e', 'NAFI'' QORINA ISNAYA', 'P', 'Kendal', '2007-02-11', NULL, '-', '-', '-', 'Sopiyati', 'Kasirun', '-', 2, 2, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(352, '5093', '0078202971', '7e88f5a6aa394d0442f2bf333f9c7ed322c5beed', 'NOVAL ABI WAHYU SAPUTRA', 'L', 'Kendal', '2007-07-30', NULL, '-', '-', '-', 'Nur Mulazimah', 'Nur Mulazimah', '-', 2, 2, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(353, '5094', '0078691963', 'a63135a8157707514bdf44cd219a1bc516f302bb', 'NOVAL ARDIYANSAH', 'L', 'Kendal', '2007-05-09', NULL, '-', '-', '-', 'Biyarni', 'Suhono', '-', 2, 2, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(354, '5095', '0076508815', 'c9544c6011240f2ef4fff630b0bddcee91220bae', 'RASHYA ADITYA SOEFYAN', 'L', 'Kendal', '2007-07-14', NULL, '-', '-', '-', 'Yayuk Sri Rahayu', 'Amri Soefyan', '-', 2, 2, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(355, '5096', '0078472943', 'b58351f2dc45f78324f268469089c335c2eb9e6f', 'RAYHAN LUTFIANSYAH', 'L', 'Kendal', '2007-05-31', NULL, '-', '-', '-', 'Maemanah', 'Jumaeni Maemanah', '-', 2, 2, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(356, '5097', '0068651767', 'bd6021afa3b07706afb889dda382073e277fce8b', 'RAYRANA JOHN CAMERON BONNICK', 'L', 'Kendal', '2006-03-20', NULL, '-', '-', '-', 'Indah Sari', 'Kevin John Cameron B.', '-', 2, 2, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(357, '5098', '0074822818', '4409eb23c55f31ea7305690c3e7f9e83db439ec2', 'RISKI PUTRA ZAHRA', 'L', 'Kendal', '2007-04-07', NULL, '-', '-', '-', 'Rahayu Winarsih', 'Nur Yasin', '-', 2, 2, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(358, '5099', '0074150267', 'eaf00544aba5ac3c3c5e86318f472437f5bea6c1', 'ROSIKHAN KHAKIM', 'L', 'Kendal', '2007-02-21', NULL, '-', '-', '-', 'Budiyati', 'Kastolani', '-', 2, 2, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(359, '5100', '0065492657', '7c8bee4694c4383acbf1a628a2caffd8fcfa621c', 'WAHYU ALFIANSYAH', 'L', 'Kendal', '2006-11-03', NULL, '-', '-', '-', 'Trisminah', 'Abdul Rokhim', '-', 2, 2, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(360, '5287', '0073424319', '6021462ca987a282ecb32a1173a7ed27c4593a47', 'M THUBA AUFAN TAUFANY', 'L', 'Kendal', '2007-04-06', NULL, '-', '-', '-', 'Anis Safaatun', '', '-', 2, 2, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(361, '5101', '3124901286', '27c9a61d61f1140e949aee92f4a80dddf1a29880', 'ADI SETIAWAN', 'L', 'Kendal', '2012-12-20', NULL, '-', '-', '-', 'Manis', 'Samdani', '-', 2, 3, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(362, '5280', '0066921710', '75e42402efa5b31481e04cf129f1609112709529', 'ADIB ARHAM', 'L', 'Kendal', '2006-09-02', NULL, '-', '-', '-', 'Manis Suwarti', 'Sameri', '-', 2, 3, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(363, '5102', '0077619979', '8c87114b6446671bf44ff238b6fb037bab68da46', 'ADRIAN RIZKY FADILLAH', 'L', 'Kendal', '2007-06-05', NULL, '-', '-', '-', 'Siami', 'Edi Widodo', '-', 2, 3, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(364, '5103', '0074429156', '823237a17461d63b293963a2f373b714093b7bf3', 'AFLAH IRSYAD ARRAFI', 'L', 'Kendal', '2007-05-21', NULL, '-', '-', '-', 'Munawaroh', 'Sujoko', '-', 2, 3, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(365, '5104', '9018061361', '7b373a4ad843f5e2181bd4ddec0242655db3b7a1', 'AHMAD JALALUDIN', 'L', 'Kendal', '2006-11-24', NULL, '-', '-', '-', 'Siti Rokhmah', 'Komarul Huda', '-', 2, 3, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(366, '5105', '0062313783', '3171aa2ab8daac714d0760c89ebe018ff06f7636', 'ALFA RAMADANI', 'L', 'Kendal', '2006-10-19', NULL, '-', '-', '-', 'Khotimah', 'Slamet Cardi', '-', 2, 3, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(367, '5106', '0072173463', 'd7f5a5ee38e198e87c1fd8206b5a16e2011228f1', 'ANTONI FAIZAL RIFKI', 'L', 'Kendal', '2007-07-12', NULL, '-', '-', '-', 'Seniyawati', 'Joni S Siyam', '-', 2, 3, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(368, '5107', '0075103166', '55c2390c1bc4f5532d46dd2b29c154b6a42f0de5', 'DAFI DWI AFRIYANTO', 'L', 'Kendal', '2007-04-11', NULL, '-', '-', '-', 'Khusniyah', 'Masrokhan', '-', 2, 3, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(369, '5108', '0076866458', '2c753346a6d71fbde38c5743658e04cf5e5a0a49', 'EKO RIZKY JULIANTO', 'L', 'Kendal', '2007-07-31', NULL, '-', '-', '-', 'Muslikha', 'Hari Pramono', '-', 2, 3, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(370, '5111', '3068825931', 'e3ea20e529d57783c4b74ca00de36a6ce41cbef9', 'IKHSAN DWI SAPUTRA', 'L', 'Kendal', '2006-11-10', NULL, '-', '-', '-', 'Rupiyati', 'Slamet', '-', 2, 3, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(371, '5112', '0084084750', 'd3f7afcad579bf9b9ce4f99b2ed076935e5b15c5', 'IRSYAD KHANIFUDIN', 'L', 'Kendal', '2008-05-05', NULL, '-', '-', '-', 'Samini', 'Slamet Waryanto', '-', 2, 3, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(372, '5113', '0071268702', 'ad73a7bfc176325ea2c34e0c7d8a4d6d93cb8410', 'KIESHA ALVARO PUTRA', 'L', 'Kendal', '2007-05-27', NULL, '-', '-', '-', 'Susanti', 'Dedi Susanto', '-', 2, 3, 1, '2023-10-10 17:56:37', '2023-10-10 17:56:37'),
(373, '5114', '0077138312', '64ec92263e7c6aea3d9ef3c0595cbc2e8f3949e5', 'MAHESA PUTRA', 'L', 'Kendal', '2007-01-17', NULL, '-', '-', '-', 'Khotimah', 'Suhadi Trisno', '-', 2, 3, 1, '2023-10-10 17:56:38', '2023-10-10 17:56:38'),
(374, '5115', '0076881263', '78b06cbe196b8287db43001e512af8719f2aa0a8', 'MUH IKMAL HAZRI FIRDAUS', 'L', 'Kendal', '2007-02-15', NULL, '-', '-', '-', 'Bandriyah', 'Abdul Anjis', '-', 2, 3, 1, '2023-10-10 17:56:38', '2023-10-10 17:56:38'),
(375, '5116', '3065760843', '7b248dead717828262f945c51771abba54b6bc51', 'MUHAMAD YOGI ADHI SETIAWAN', 'L', 'Temanggung', '2006-05-09', NULL, '-', '-', '-', 'Sorwidayati', 'Sukari', '-', 2, 3, 1, '2023-10-10 17:56:38', '2023-10-10 17:56:38'),
(376, '5117', '0077625152', 'f1df524b084fa263593de0675ee295706952a904', 'MUHAMMAD CHILMI IHSANUL HIDAYAT', 'L', 'Kendal', '2007-10-29', NULL, '-', '-', '-', 'Miskiyah', 'Sholikhun', '-', 2, 3, 1, '2023-10-10 17:56:39', '2023-10-10 17:56:39'),
(377, '5118', '0057363368', '118c4ccbe1b65839b913bfc28b57c83605849106', 'MUHAMMAD DANI HIMAWAN', 'L', 'Kendal', '2005-07-31', NULL, '-', '-', '-', 'Yatini', 'Abdul Kodir', '-', 2, 3, 1, '2023-10-10 17:56:39', '2023-10-10 17:56:39'),
(378, '5119', '0068442601', 'fd1fa7ff63485484c80a91e53549b2e9d96f2e6a', 'MUHAMMAD DIMAS SAPUTRA', 'L', 'Kendal', '2006-05-02', NULL, '-', '-', '-', 'Muslikhah', 'Kamin Faeni', '-', 2, 3, 1, '2023-10-10 17:56:40', '2023-10-10 17:56:40'),
(379, '5122', '0077363669', 'da11391b256a37ad64db3ed21a11323ec9dcc518', 'MUHAMMAD IRSYAD RIZAL', 'L', 'Kendal', '2007-06-27', NULL, '-', '-', '-', 'Rasiyah', 'Nur Patikin', '-', 2, 3, 1, '2023-10-10 17:56:41', '2023-10-10 17:56:41'),
(380, '5123', '0062248727', '79b38936a861140f8d8bcbd7e3752d21bc66f4e6', 'MUKHAMAD CHOIRUL ANAM', 'L', 'Temanggung', '2006-12-17', NULL, '-', '-', '-', 'Ngatini', 'Ngatini', '-', 2, 3, 1, '2023-10-10 17:56:41', '2023-10-10 17:56:41'),
(381, '5126', '0073347132', 'ba69953d3749d613a81271d19926e68440bb377e', 'NOVA RIZA RAHERDIAN', 'L', 'Kendal', '2007-11-09', NULL, '-', '-', '-', 'Tutin Retnowati', 'Nasrohim', '-', 2, 3, 1, '2023-10-10 17:56:41', '2023-10-10 17:56:41'),
(382, '5127', '0064946157', 'fe09b61ed6c28eac0d718fd0f77fa3123a017714', 'OKTARO SIANTO DWI SAPUTRO', 'L', 'Batang', '2006-10-16', NULL, '-', '-', '-', 'Lutianah', 'Widiyanto', '-', 2, 3, 1, '2023-10-10 17:56:41', '2023-10-10 17:56:41'),
(383, '5128', '0068859575', 'f8d07cac03585d0a5ce9bd0765e2096864c9772a', 'RAFLI MAULANA', 'L', 'Temanggung', '2006-03-30', NULL, '-', '-', '-', 'Harini', 'Sugiyanto', '-', 2, 3, 1, '2023-10-10 17:56:42', '2023-10-10 17:56:42'),
(384, '5129', '0078547820', '8f4312b4940b60a2ec99848a26cb6816ecacd6c0', 'RAKA IBNU RAMANDA', 'L', 'Kendal', '2007-08-02', NULL, '-', '-', '-', 'Novia Sutanti', 'Romdhon', '-', 2, 3, 1, '2023-10-10 17:56:42', '2023-10-10 17:56:42'),
(385, '5130', '0065897321', '7390296fdb672eddaa7db85ea4a92ded2c44a81c', 'RISKI SETIAWAN', 'L', 'Kendal', '2006-08-05', NULL, '-', '-', '-', 'Atminah', 'Suroto', '-', 2, 3, 1, '2023-10-10 17:56:43', '2023-10-10 17:56:43'),
(386, '5131', '0052084585', 'e2a7a7540a99351bea260686e57be056b5905807', 'RIZKI PERMANA', 'L', 'Temanggung', '2005-10-28', NULL, '-', '-', '-', 'Esti Winarni', 'Palal', '-', 2, 3, 1, '2023-10-10 17:56:43', '2023-10-10 17:56:43'),
(387, '5132', '9014982102', '1c664e7768a08c7f42419c74444954e56a562435', 'TEGAR NURPRASETYO', 'L', 'Kendal', '2006-04-13', NULL, '-', '-', '-', 'Enayatun', 'Fufu Nur Roviq', '-', 2, 3, 1, '2023-10-10 17:56:43', '2023-10-10 17:56:43'),
(388, '5133', '0099269359', 'def4dc089bafbc4d0071806c7c3b35aaa639ceec', 'YEYEN AHMAD WINARTO', 'L', 'Kendal', '2009-01-29', NULL, '-', '-', '-', 'Rondiyah', 'Ridwan Winarto', '-', 2, 3, 1, '2023-10-10 17:56:43', '2023-10-10 17:56:43'),
(389, '5153', '0076390999', 'ee78b6b8b5b068da4869dad2c7da76c8973a9af0', 'ADELIA DWI APRIANI', 'P', 'Kendal', '2007-04-28', NULL, '-', '-', '-', 'Wiwit Sumiharti', 'Wiwit Sumiharti', '-', 2, 3, 1, '2023-10-10 17:56:44', '2023-10-10 17:56:44'),
(390, '5056', '0072076408', '5ccbce24178269968042eb95356a0c8e930bf232', 'MUHAMMAD RIZAL FADLI', 'L', 'Batang', '2007-07-11', NULL, '-', '-', '-', 'Alfiyah', 'Mastur', '-', 2, 3, 1, '2023-10-10 17:56:44', '2023-10-10 17:56:44'),
(391, '5134', '0073822197', '2c6742e43c754818bd1e3e4ba8e2d0ce716aba20', 'AHMAD FATHIR PRABOWO', 'L', 'Kendal', '2007-10-25', NULL, '-', '-', '-', 'Siti Munasiyah', 'Wakhidun', '-', 2, 4, 1, '2023-10-10 17:56:44', '2023-10-10 17:56:44'),
(392, '5135', '0077775615', 'be7ee597a31b208827585cfb97e426ff632159e5', 'BAGAS ANDRIYANSAH PRASETIYO', 'L', 'Kendal', '2007-02-17', NULL, '-', '-', '-', 'Tumini', 'Teguh Yulianto', '-', 2, 4, 1, '2023-10-10 17:56:44', '2023-10-10 17:56:44'),
(393, '5233', '0077476129', '689e3f4ea43d2a0feb73989eb72eb44320dd22d5', 'DIMAS REZA KURNIAWAN', 'L', 'Kendal', '2007-07-02', NULL, '-', '-', '-', 'Rusmiati', 'Surip Mulyanto', '-', 2, 4, 1, '2023-10-10 17:56:45', '2023-10-10 17:56:45'),
(394, '5136', '0054991708', '4e77ef5a5794f19841e27a95debfe1782a42a565', 'FANI ANDIKA', 'L', 'Kendal', '2005-04-27', NULL, '-', '-', '-', 'Misripah', 'Nurwan', '-', 2, 4, 1, '2023-10-10 17:56:45', '2023-10-10 17:56:45'),
(395, '5137', '0073657649', '6bb85b8f0ae64288f38b5a665b4e3df3a67fde45', 'HANIF ABDUL MUZAQI', 'L', 'Kendal', '2007-09-26', NULL, '-', '-', '-', 'Wiyati', 'Tamirin', '-', 2, 4, 1, '2023-10-10 17:56:45', '2023-10-10 17:56:45'),
(396, '5138', '0088506154', '788eba7ce6514956ec10f06385616c15641e38f0', 'INDRA PUTRA SETIAWAN', 'L', 'Kendal', '2008-01-27', NULL, '-', '-', '-', 'Chalimatul Wachidah', 'Budi Setiono', '-', 2, 4, 1, '2023-10-10 17:56:45', '2023-10-10 17:56:45'),
(397, '5139', '0072862684', '99fad0cd17a9fad98eafd9b18179f4e1719597b0', 'IRFAN HAQIM MAULANA', 'L', 'Kendal', '2007-03-31', NULL, '-', '-', '-', 'Fatmatul Mutmainah', 'Sulaiman', '-', 2, 4, 1, '2023-10-10 17:56:46', '2023-10-10 17:56:46'),
(398, '5140', '0074746014', '685b2cceb48251b1a3b0c7080836ac37e0e0db72', 'KHAIRIL PRASETYO', 'L', 'Kendal', '2007-06-24', NULL, '-', '-', '-', 'Slamet Surani', 'Nurian', '-', 2, 4, 1, '2023-10-10 17:56:46', '2023-10-10 17:56:46'),
(399, '5142', '0079205064', '0027d13e8f235151df8d3438c21df24e815e3662', 'MUFIT SAEFULIBAL', 'L', 'Kendal', '2007-09-23', NULL, '-', '-', '-', 'Rukimah', 'Supriyono', '-', 2, 4, 1, '2023-10-10 17:56:47', '2023-10-10 17:56:47'),
(400, '5143', '0088302429', '92503326746e20d8c781f53d7633f5d740416036', 'MUHAMMAD AFFAN SHOFAR', 'L', 'Wonosobo', '2008-03-08', NULL, '-', '-', '-', 'Tri Winarsih', 'Sahono', '-', 2, 4, 1, '2023-10-10 17:56:47', '2023-10-10 17:56:47'),
(401, '5144', '0071802922', '67dc5e1f4d8b4463ff65c9b0e41cd1d59ced9255', 'MUHAMMAD ISKANDAR ZUL KARNAIN', 'L', 'Kendal', '2007-01-16', NULL, '-', '-', '-', 'Tarwati', 'Sitam', '-', 2, 4, 1, '2023-10-10 17:56:47', '2023-10-10 17:56:47'),
(402, '5145', '0075711679', 'e178b6f2ede8dd0015f634acdc25c6a06a73bb57', 'NAUFAN NASRUL UMAM', 'L', 'Kendal', '2007-11-17', NULL, '-', '-', '-', 'Sri Wahyuni', 'Slamet', '-', 2, 4, 1, '2023-10-10 17:56:47', '2023-10-10 17:56:47'),
(403, '5147', '0062397159', '40e2483711b0b4832066ecbed42b839eb154faf8', 'REHAN SEPTIAN', 'L', 'Temanggung', '2006-09-14', NULL, '-', '-', '-', 'Winarsih', 'Mujiyono', '-', 2, 4, 1, '2023-10-10 17:56:47', '2023-10-10 17:56:47'),
(404, '5148', '0061299718', 'bcef2d1e1a525f80de1f57fbdada4181149f72ca', 'RENDI SAPUTRA', 'L', 'Kendal', '2006-09-30', NULL, '-', '-', '-', 'Munyanah', 'Gito', '-', 2, 4, 1, '2023-10-10 17:56:47', '2023-10-10 17:56:47'),
(405, '5150', '0055637143', '483a0ffb814589f2734408cd5e26d903d7c7f64c', 'SULISTYO', 'L', 'Kendal', '2005-01-24', NULL, '-', '-', '-', 'Rubini', 'Maliyadi', '-', 2, 4, 1, '2023-10-10 17:56:47', '2023-10-10 17:56:47'),
(406, '5151', '0075505520', '1ae1c4c7a47d5d45baf2ff7bea6ad03727a67fa7', 'ZANUWAR IRFANDI MAULANA SYAFI''', 'L', 'Kendal', '2007-01-06', NULL, '-', '-', '-', 'Marfiyani', 'Eka Nofianto', '-', 2, 4, 1, '2023-10-10 17:56:47', '2023-10-10 17:56:47'),
(407, '5152', '0076569594', 'f71a5d1b083baf131283caa5610d5d375f9cbbd2', 'ABDUL MALIK FATIR', 'L', 'Kendal', '2007-11-22', NULL, '-', '-', '-', 'Kriswati', 'Sayidin', '-', 2, 5, 1, '2023-10-10 17:56:47', '2023-10-10 17:56:47'),
(408, '5155', '0074911062', 'e88a315f0c55a808f9976066afb2692688c7eff7', 'AHMAD DWI FEBRIAN', 'L', 'Kendal', '2007-02-02', NULL, '-', '-', '-', 'Eka Lestari Yanti', 'Komarudin', '-', 2, 5, 1, '2023-10-10 17:56:47', '2023-10-10 17:56:47'),
(409, '5156', '0081687211', '9e328ab46d65d8941dcaaf73d32677c401670c96', 'AHMAD ITQON', 'L', 'Kendal', '2008-04-02', NULL, '-', '-', '-', 'Rofi''Ah', 'Marhadi', '-', 2, 5, 1, '2023-10-10 17:56:47', '2023-10-10 17:56:47'),
(410, '5157', '0077305717', '2e971e3eaf3696943c9192be0dd24bd31fc28388', 'AHMAD NUR SAID', 'L', 'Kendal', '2007-12-17', NULL, '-', '-', '-', 'Prijiyamah', 'Munadi', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(411, '5158', '0072115719', '3f8bc44014bf2b94c3807828a757963b255624cd', 'AHMAD ZAINUR RIFKI', 'L', 'Kendal', '2007-08-17', NULL, '-', '-', '-', 'Marfu''Ah', 'Muhalim', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(412, '5159', '0076259213', '7d7a3c2ff34e397125a17e0d7fa42e2c0c7a3242', 'ARDANI DZUL FADLI', 'L', 'Kendal', '2007-10-09', NULL, '-', '-', '-', 'Slamet Kurnasih', 'Ahmad Rofi''I', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(413, '5160', '0046371808', '1d1fdba8cc76a3facc58226cef01e636139e416b', 'ARI SIGIT', 'L', 'Kendal', '2004-12-10', NULL, '-', '-', '-', 'Mas''Udah', 'Toyib', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(414, '5161', '0071359503', 'f09613fa0fdd9b0ff0deba198fde3817b5d436c9', 'BAGUS RIFKI SETIYAWAN', 'L', 'Kendal', '2007-04-22', NULL, '-', '-', '-', 'Musodah', 'Purwanto', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(415, '5162', '0079236199', '6cb48bd073c5c0961b609ec11b4ee12df9eab456', 'DANU WAHYU SAPUTRO', 'L', 'Kendal', '2007-10-31', NULL, '-', '-', '-', 'Romyatun', 'Kisnadi', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(416, '5163', '0079762119', '3f8bc44014bf2b94c3807828a757963b255624cd', 'DEKA PRAYITNO', 'L', 'Temanggung', '2007-08-17', NULL, '-', '-', '-', 'Narti Pawit', 'Sukirno', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(417, '5165', '0064570758', '0e16264d5031d309b7cc86d94381abaf46661896', 'ILHAM NUR FADHOLI', 'L', 'Kendal', '2006-10-14', NULL, '-', '-', '-', 'Rohaniyah', 'Nur Khotip', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(418, '5166', '0075266557', 'ea76d65a30b3481804b8c1d86d39dbfcad6d867b', 'MUHAMAD HASANUDIN', 'L', 'Kendal', '2007-10-04', NULL, '-', '-', '-', 'Waliyah', 'Samino', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(419, '5167', '0066868417', 'a74858281f06146d8dba57aca685891460cefe64', 'MUHAMMAD LUKMAN ARIFIN', 'L', 'Klaten', '2006-07-17', NULL, '-', '-', '-', 'Tariyati', 'Rohimin', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(420, '5168', '0082734754', '0d52cb0c82a94aa45443831be27a752d14fd386b', 'MUHAMMAD WISNU FERDIAWAN', 'L', 'Kendal', '2008-05-23', NULL, '-', '-', '-', 'Wowik Sri Subekti', 'Darwandi', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(421, '5169', '0076708276', '8270870b384c2d8f3279b2e036a84ffd581e8e05', 'PANGGIH SHANDY SEPTIAN', 'L', 'Kendal', '2007-09-24', NULL, '-', '-', '-', 'Purwaningsih', 'Slamet Tumari', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(422, '5170', '0078132085', '67c2b4e4f09e38a5c45a0e23d39984fc7f119e72', 'RIFKI AHMAD DARMAWAN', 'L', 'Kendal', '2007-04-17', NULL, '-', '-', '-', 'Supriyati', 'Taryono', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(423, '5171', '0061592112', '7b373a4ad843f5e2181bd4ddec0242655db3b7a1', 'RIFQI MAULANA', 'L', 'Kendal', '2006-11-24', NULL, '-', '-', '-', 'Juminah', 'Ngardi', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(424, '5172', '0077363939', '26581d4d116c6255e592b3e41b18d3f56ec69ff8', 'RIZKIA AKBAR RAMADHANI', 'L', 'Kendal', '2007-09-28', NULL, '-', '-', '-', 'Herni Sulistiani', 'Aris Dwiyanto', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(425, '5173', '0059561630', 'eeaba8e5fddfabf10c4804c71d79c0c59702fac4', 'SABIL RUSSIYANTO', 'L', 'Kendal', '2005-02-11', NULL, '-', '-', '-', 'Rubiah', 'Susilo', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(426, '5174', '0061163526', '5aee34bb4c4e0fa4e83974d91ff628bc699786ad', 'SEPTIAN RIZKI SAPUTRA', 'L', 'Jakarta', '2006-09-03', NULL, '-', '-', '-', 'Sulastri', 'Poniran', '-', 2, 5, 1, '2023-10-10 17:56:48', '2023-10-10 17:56:48'),
(427, '5175', '0074318107', '607f0dad0259aa88492b5da3893f7c3e3c7bf638', 'SHOLEH SETIAWAN', 'L', 'Kendal', '2007-03-17', NULL, '-', '-', '-', 'Salmiyah', 'Muchayah', '-', 2, 5, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(428, '5176', '0071724289', '69d480b29e086189e262de91747c896833eb050d', 'SURYA ARDIANSAH', 'L', 'Kendal', '2007-03-20', NULL, '-', '-', '-', 'Kusrini', 'Budiono', '-', 2, 5, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(429, '5282', '0085611355', '468e276e54f0818d5dd24486c0d777df0674c660', 'MUHAMMAD IRWAN FATKHULLOH', 'L', 'Kendal', '2008-03-23', NULL, '-', '-', '-', 'Rukhami', '-', '-', 2, 5, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(430, '5593', '-', '25646d6f594b3b9a03c162f4de463925c8088409', 'RIFMAL VIRMANZA', 'L', '', '0000-00-00', NULL, '-', '-', '-', '-', '-', '-', 2, 5, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(431, '5178', '0065056437', 'f8d07cac03585d0a5ce9bd0765e2096864c9772a', 'AHMAD ALVIN MAULANA', 'L', 'Kendal', '2006-03-30', NULL, '-', '-', '-', 'Eryawati Yuanah', 'Sony Setiyono', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49');
INSERT INTO `student` (`student_id`, `student_nis`, `student_nisn`, `student_password`, `student_full_name`, `student_gender`, `student_born_place`, `student_born_date`, `student_img`, `student_phone`, `student_hobby`, `student_address`, `student_name_of_mother`, `student_name_of_father`, `student_parent_phone`, `class_class_id`, `majors_majors_id`, `student_status`, `student_input_date`, `student_last_update`) VALUES
(432, '5179', '0077955147', '4530bc7778bab1fa21e431caf87fc08e5150236c', 'ALIFIA MEYLIA AIFA RIZKI', 'P', 'Kendal', '2007-05-28', NULL, '-', '-', '-', 'Jumilah', 'Much Sodi', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(433, '5180', '0087906907', 'c7fb7cd1c6c9eb1b34cf540d3ea450167b9cb66a', 'AMANDA PURNAMA PUTRI', 'P', 'Kendal', '2008-01-24', NULL, '-', '-', '-', 'Titik Wahyuningsih', 'Misroni Kliwon', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(434, '5184', '0076028124', 'ae2657fd24d506c95b75abb6abb3ac485b0bf755', 'AYU WULAN HESTI RAMANDANI', 'P', 'Kendal', '2007-09-30', NULL, '-', '-', '-', 'Tumpuk Fakiroh', 'Wahono', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(435, '5187', '3073035592', '1b883ec7ae578296ff598bbd733b3f9530a11854', 'CLARA LINDY SUDRAJAT', 'P', 'Temanggung', '2007-03-10', NULL, '-', '-', '-', 'Dwi Wahyuni', 'Heru Agus Sudrajat', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(436, '5188', '0072752407', '2bc06c016c88586fecfb87d45bc5aa19bb728905', 'DENI KURNIAWAN', 'L', 'Kendal', '2007-03-04', NULL, '-', '-', '-', 'Titik Listiyani', 'Tumpuk Nurhadi', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(437, '5189', '0071290264', 'ff379aaecfd26fe83732426847118facbff38edd', 'DINI AMELIA NOVIYANTI', 'P', 'Kendal', '2007-11-29', NULL, '-', '-', '-', 'Suwartini', 'Ngadiyan', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(438, '5193', '0074400975', '7e88f5a6aa394d0442f2bf333f9c7ed322c5beed', 'ELYA SINTA', 'P', 'Kendal', '2007-07-30', NULL, '-', '-', '-', 'Tukinem', 'Maniso', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(439, '5195', '0083950458', '32a32ba94fe2e9e74949da914309620e986c12d4', 'FARA FEBRIANITA', 'P', 'Kendal', '2008-02-29', NULL, '-', '-', '-', 'Listiyowati', 'Agus Susanto', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(440, '5197', '0072198982', '6fe185c1a64c0b857b7491b66723c723f02ac9bc', 'ISTIFADATUN ASRI', 'P', 'Kendal', '2007-05-08', NULL, '-', '-', '-', 'Maesaroh', 'Mukhlis', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(441, '5199', '0072448761', 'fdd3717938b838f0d3ce996aa4bfb530216a34d3', 'LYRVA APRILIA SAPUTRI', 'P', 'Temanggung', '2007-01-30', NULL, '-', '-', '-', 'Temon Tursriwati', 'Sudaryanto', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(442, '5200', '0079281338', '0915f614df96f43b00eac7c7cdd2df6d4b646bc2', 'MUDRIKAH', 'P', 'Kendal', '2007-07-17', NULL, '-', '-', '-', 'Mariyah', 'Lusiono', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(443, '5201', '0071181733', '64683077077ac89eda0f1ce0e8bd05faa322e09b', 'MUHAMAD CHOERUL AQNAN', 'L', 'Kabupaten Semarang', '2007-08-28', NULL, '-', '-', '-', 'Alfiyah', 'Welas Asih', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(444, '5202', '0074743737', 'f98509a30def55ebee2042609dc8568721540d43', 'NEILIA FRIDA FAHRIZA', 'P', 'Kendal', '2007-09-14', NULL, '-', '-', '-', 'Irna Kustiana', 'Solihin', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(445, '5203', '0075798933', 'c71e409f5e6e8d3cd5a85968b65a28d93971c0cd', 'NITA CHELSIA AGUSTIN', 'P', 'Kendal', '2007-08-23', NULL, '-', '-', '-', 'Turiah', 'Lestono Mulyana', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(446, '5205', '0067602378', '1f469a1e5617c3e57b8b4d47be52f94be3097926', 'PUTRI SINDY BASKORO', 'P', 'Sidoarjo', '2006-06-10', NULL, '-', '-', '-', 'Heni Kustini', 'Muhammad Imam (Alm)', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(447, '5206', '0062901820', '9abfe9deed7e57466d4dff2dab7c60c38e13f49d', 'RATNA DAMA YANTI', 'P', 'Kendal', '2006-08-09', NULL, '-', '-', '-', 'Surani', 'Sumadi', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(448, '5207', '0072543753', 'c7398f6a0c5dd03c6c768b1d3370a4855fc2c6e7', 'RISDA AINUN MARDZIYAH', 'P', 'Kendal', '2007-02-06', NULL, '-', '-', '-', 'Slamet Rismiyani', 'Sanuri', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(449, '5208', '0134946270', '8272343c2b983dfbd8ad7837c29ca374520715ed', 'RISQIANA FADHILAH', 'P', 'Kendal', '2007-03-03', NULL, '-', '-', '-', 'Munfarida', 'Ahmad Kharirudin', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(450, '5210', '0079309265', 'ff05bf4f48549cb80e5cc00242e9372d249c6859', 'SEPTI GALIH NUR ALIFFAH', 'P', 'Kendal', '2007-09-05', NULL, '-', '-', '-', 'Surti Susilowati', 'Nurmanto', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(451, '5212', '0077740681', 'ae7a2c6cadcd367bddbd7d65544a29ff5f884af6', 'SYARIFATUL AENY', 'P', 'Kendal', '2007-12-25', NULL, '-', '-', '-', 'Wardiyah', 'Toto Raharjo', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(452, '5213', '0064407689', 'c682957acf3186f1cf12ccc9546d02d3bbf670ac', 'VINA NGALESTI RAMDANI', 'P', 'Kendal', '2006-10-08', NULL, '-', '-', '-', 'Dartiyah', 'Mustofa', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(453, '5214', '0109134557', '0ef916977214b219d66936163ad4dd7deb04b4fc', 'WIDHI PRATAMA', 'L', 'Kendal', '2007-10-03', NULL, '-', '-', '-', 'Dwi Nuryanti', 'Suwandi', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(454, '5215', '0079531612', '1839d82b346ef6f67b9f6b79b5296afad099a61b', 'WINA ANJANI', 'P', 'Kendal', '2007-03-01', NULL, '-', '-', '-', 'Siti Maimanah', 'Riyono', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(455, '5290', '0079874934', '5f6b5da8f40ec325a5537804da1fa8cbbacbdcc4', 'SITI ALIFAH', 'P', 'Kendal', '2007-04-24', NULL, '-', '-', '-', 'Yayuk Suranti', 'Agus Prawoto', '-', 2, 7, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(456, '5181', '0071789244', '1ca48fde60eae1ee22870c701a356b21324b6dff', 'ANGGRAINI PUSPITASARI', 'P', 'Kendal', '2007-01-14', NULL, '-', '-', '-', 'Tri Suryati', 'Wasis', '-', 2, 9, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(457, '5182', '0079945768', 'e80dca6076895a99b51b0f5b65f596be1b5ccc7d', 'ARIK NUGRAHENI', 'P', 'Temanggung', '2007-11-21', NULL, '-', '-', '-', 'Triyati', 'Triyati', '-', 2, 9, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(458, '5183', '0072640628', '5df2dd135cd185f0ccbcaf488fb17422feef68cb', 'ARINAFIKA ROTAL ULYA', 'P', 'Kendal', '2007-12-06', NULL, '-', '-', '-', 'Juyanah', 'Baryakhi', '-', 2, 9, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(459, '5185', '3070441824', 'd644384fddd59ef032b475861fa335efb2b0fea2', 'AZIZUN NISA', 'P', 'Boyolali', '2007-02-28', NULL, '-', '-', '-', 'Asiyah', 'Nuryanto', '-', 2, 9, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(460, '5186', '0064254524', '8920790b11b1260bb0ee0b591aa8e70be9581b71', 'BUNGA CAMELIA', 'P', 'Kendal', '2006-09-21', NULL, '-', '-', '-', 'Sri Rohayati', 'Gunadi', '-', 2, 9, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(461, '5190', '0133341693', '6171a5de1ef213aa5367f1672970b33e4662e4a8', 'DINNA AYU SETIOWATI', 'P', 'Kendal', '2007-08-09', NULL, '-', '-', '-', 'Ana Rochwati', 'Tugiyanto', '-', 2, 9, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(462, '5191', '0078304556', '7379bcdfde07b8d5a6c2d57cd1ae872c8d8be986', 'DWI CINDY CAHYANI', 'P', 'Kendal', '2007-12-23', NULL, '-', '-', '-', 'Kodriyah', 'Juwahir', '-', 2, 9, 1, '2023-10-10 17:56:49', '2023-10-10 17:56:49'),
(463, '5192', '0076523160', 'f125e307115e9a53553c1832e6a09fd250c9d818', 'ELIK SUSANTI', 'P', 'Kendal', '2007-08-13', NULL, '-', '-', '-', 'Istiqomatun', 'Mardiyono', '-', 2, 9, 1, '2023-10-10 17:56:50', '2023-10-10 17:56:50'),
(464, '5194', '0073776651', 'fa56c2c51ffafe53f48c7412f7432d0fb4bcf912', 'FAHRUNNISA', 'P', 'Kendal', '2007-08-04', NULL, '-', '-', '-', 'Mistiyah', 'Parichin', '-', 2, 9, 1, '2023-10-10 17:56:50', '2023-10-10 17:56:50'),
(465, '5196', '0071014909', '52b76f5bdb9d4660a2677aebc2131e0d9aad0be5', 'FITRI INAROTUL AIN', 'P', 'Kendal', '2007-10-14', NULL, '-', '-', '-', 'Sukini', 'Tugiri', '-', 2, 9, 1, '2023-10-10 17:56:50', '2023-10-10 17:56:50'),
(466, '5198', '0075374345', '4a9c7d2a19114c21a8bffed48f23d9907d1182f7', 'KHOTIBAH', 'P', 'Kendal', '2007-08-26', NULL, '-', '-', '-', 'Mistiyah', 'Sunarman (Alm)', '-', 2, 9, 1, '2023-10-10 17:56:50', '2023-10-10 17:56:50'),
(467, '5204', '0077472313', 'c2846b4ba803660f1c31840db0e2f0af2b7be340', 'NURIL SALMA', 'P', 'Kendal', '2007-05-03', NULL, '-', '-', '-', 'Sukinem', 'Nur Salim', '-', 2, 9, 1, '2023-10-10 17:56:50', '2023-10-10 17:56:50'),
(468, '5209', '0076981255', 'f4d1c86c08c6933c5b01ebd16bc35732750bba47', 'SAFRIDA ANANDA AMELIA', 'P', 'Kendal', '2007-05-19', NULL, '-', '-', '-', 'Wakhidah', 'Rokis', '-', 2, 9, 1, '2023-10-10 17:56:50', '2023-10-10 17:56:50'),
(469, '5211', '0076091107', '78b06cbe196b8287db43001e512af8719f2aa0a8', 'SUMIYATUN', 'P', 'Kendal', '2007-02-15', NULL, '-', '-', '-', 'Saimah', 'Suroso', '-', 2, 9, 1, '2023-10-10 17:56:50', '2023-10-10 17:56:50'),
(470, '5220', '0071862625', '00f7c1fc7bf9a1ba7361c6bd2eb7338a71442672', 'AHMAD KHOLIS', 'L', 'Kendal', '2007-07-01', NULL, '-', '-', '-', 'Suriyah', 'Sugito', '-', 2, 10, 1, '2023-10-10 17:56:50', '2023-10-10 17:56:50'),
(471, '5223', '0073143353', '68db395622fae7dfe4821c00006e9bdf91ff683e', 'AQEELA NIRMALA SHERA', 'P', 'Kendal', '2007-09-13', NULL, '-', '-', '-', 'Nazula Arifani', 'Iwan Mientarsa', '-', 2, 10, 1, '2023-10-10 17:56:50', '2023-10-10 17:56:50'),
(472, '5226', '0079852819', '685b2cceb48251b1a3b0c7080836ac37e0e0db72', 'AWALIA ZAHROTUL KHIKMAH', 'P', 'Kendal', '2007-06-24', NULL, '-', '-', '-', 'Suprihati', 'Moh Mujahidin', '-', 2, 10, 1, '2023-10-10 17:56:50', '2023-10-10 17:56:50'),
(473, '5228', '0065659315', '9abfe9deed7e57466d4dff2dab7c60c38e13f49d', 'CAGIVA NUR STELLA', 'P', 'Kendal', '2006-08-09', NULL, '-', '-', '-', 'Hidayah', 'Muhamad Riduwan', '-', 2, 10, 1, '2023-10-10 17:56:50', '2023-10-10 17:56:50'),
(474, '5231', '0073332116', 'b71ba30e6666c603339aac5293b39716088ab86c', 'DEVI AMELLIANA', 'P', 'Kendal', '2007-12-29', NULL, '-', '-', '-', 'Tujiyati', 'Tunaryono', '-', 2, 10, 1, '2023-10-10 17:56:50', '2023-10-10 17:56:50'),
(475, '5236', '0054584655', 'a4028b177c05d1d302335f4f48ad4e9ff37a42dd', 'ERA SUCI BAKTI LESTIYANI', 'P', 'Temanggung', '2005-10-08', NULL, '-', '-', '-', 'Tri Lestari', 'Riyanto', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(476, '5238', '0082392221', 'f2bb7264e025deef1b044c7a4b65df1217bbde57', 'GADIS ARIVIA', 'P', 'Tangerang', '2008-01-10', NULL, '-', '-', '-', 'Riyanti', 'Suratno', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(477, '5246', '0079662502', '858a77e9c961b1dce5cbfdb3765566c2b90e2d7b', 'JELITA OKTAVIANA', 'P', 'Kendal', '2007-10-27', NULL, '-', '-', '-', 'Isem', 'Yasri', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(478, '5251', '0069213828', 'f3dce51223df028c280fe7940420ff9bebacadd0', 'MUHAMMAD AYUAN ZAHRIL AFIFI', 'L', 'Kendal', '2006-12-20', NULL, '-', '-', '-', 'Muanah', 'Darwadi', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(479, '5252', '0052970147', 'da6869a6c1cd12970f8913422f77f1d29fd030cf', 'MUHAMMAD HAFIZH ABDURRAHMAN', 'L', 'Batam', '2005-09-11', NULL, '-', '-', '-', 'Eli Tresilia', 'Andhi Rahman', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(480, '5253', '0071135812', 'fb2b5fca38071c35fe039509382dfe34c4337671', 'MUHAMMAD HANIF RISQI MAULANA', 'L', 'Tangerang', '2007-10-30', NULL, '-', '-', '-', 'Ismawati', 'Ali Mahzum', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(481, '5254', '0064844135', '0848df030599ffe85ef6625de7a239be1ec7938b', 'MUHAMMAD NAJHAN NAZALA LUKMAN', 'L', 'Kendal', '2006-11-28', NULL, '-', '-', '-', 'Inayatus Solicha', 'Mujito', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(482, '5255', '0075912107', '87d547427521bc26021855eb400660009e9e31c1', 'MUHAMMAD ZAKI WARABRATA', 'L', 'Kendal', '2007-02-01', NULL, '-', '-', '-', 'Sri Pujiyati', 'Prastyo', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(483, '5256', '0062001467', 'f1d93ea1fe57ae7422ec2abe5d5f1b505da374f5', 'NADYA PUTRI AZZAHRA', 'P', 'Kendal', '2006-12-22', NULL, '-', '-', '-', 'Rupi''Ah', 'Damiri', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(484, '5259', '0054888510', 'de04661bff372021d604152db4fd68daafc54dcd', 'NUR FAIZAH', 'P', 'Kendal', '2005-03-18', NULL, '-', '-', '-', 'Lailatul Arofah', 'Nastain', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(485, '5260', '0075778449', '0b80a40ff3be59f8db37940bbfccb026a4a5ebb4', 'NUR IFFAH FITRIYANI', 'P', 'Kendal', '2007-10-19', NULL, '-', '-', '-', 'Rondiyah', 'Ngadimin', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(486, '5262', '0065522189', '49aed4206646e14fea94d9f6fa759e7c7b3aaab7', 'RATIH AULIA NINGRUM', 'P', 'Kendal', '2006-11-26', NULL, '-', '-', '-', 'Rukayah', 'Kirniawan', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(487, '5263', '0078863606', 'd644384fddd59ef032b475861fa335efb2b0fea2', 'RESTU ATIKA FEBRIANI', 'P', 'Kendal', '2007-02-28', NULL, '-', '-', '-', 'Hesti Oktafia', 'Toladi', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(488, '5242', '0072780029', 'eaf00544aba5ac3c3c5e86318f472437f5bea6c1', 'RISMA FEBRILIA IKHSANUL WALIDAIN', 'P', 'Kendal', '2007-02-21', NULL, '-', '-', '-', 'Jemi', 'Caswadi', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(489, '5266', '0064979499', '7be8ec5a7a3ef7d9cd8fd2b5475bafa5642f40f7', 'SHANIA AMALIA MIRZA', 'P', 'Kendal', '2006-12-21', NULL, '-', '-', '-', 'Rini Rochimin', 'Nuryadi', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(490, '5269', '0076002027', '47d098d8881ba58d1cbe3379c3000f5932f63d25', 'VIYA KHOERUL LIA', 'P', 'Kendal', '2008-01-28', NULL, '-', '-', '-', 'Casmiah', 'Wagimin', '-', 2, 10, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(491, '5216', '0051834308', '92fb5553382563c4aa0f9477ae39d0e411be0e6d', 'ADINA DAMAYANTI', 'P', 'Kendal', '2005-06-22', NULL, '-', '-', '-', 'Mukiyah', 'Mukiyah', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(492, '5217', '0065431942', '89479aaeb2a31ef4485f50d668183a7ae8898f31', 'ADNA SUPRASTYA IMANDA ALFASSALAM', 'P', 'Semarang', '2006-07-23', NULL, '-', '-', '-', 'Yuni Sulistyaningsih', 'Suprapto, S.H.', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(493, '5218', '0075716815', '335db72e802b60e9eb80db9610224a51b39c1536', 'AFIFAH HARYANTI', 'P', 'Kendal', '2007-02-13', NULL, '-', '-', '-', 'Kamisih', 'Slamet Parju', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(494, '5219', '0074833402', '34b8e892634c87d58b0510bd8d4a96e3ba32f8c5', 'AGTIAN FAURIZA ADIANSYAH', 'L', 'Kendal', '2007-08-25', NULL, '-', '-', '-', 'Tri Susmiyati', 'Slamet Saptiyono', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(495, '5221', '0066334739', '95e90fb4bb061597e2f01d9eb91f2b8b2aad7985', 'ANGGER RIDHO GUSTI MUBARAK', 'L', 'Kendal', '2006-11-02', NULL, '-', '-', '-', 'Subandiyah', 'Solichin', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(496, '5222', '0053386894', '0892eb15510001d3d762bb78512ca60c4441cfe7', 'ANGGI AIFITRA RAHMANDANU', 'L', 'Kendal', '2005-11-03', NULL, '-', '-', '-', 'Sri Atun', 'Ahmad Agus', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(497, '5224', '0077705047', '1380583c4791abee698e858a807c92158bca1362', 'ARIMA DWI PRIHATI', 'P', 'Kendal', '2007-06-07', NULL, '-', '-', '-', 'Siti Marwah', 'Juwari', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(498, '5225', '0064049306', '29fe75db9bdfa8d71cd814d06f76b2b4845b3192', 'ATHIF RIZKY FAUZY', 'L', 'Kendal', '2006-10-18', NULL, '-', '-', '-', 'Astuti Noviatun', 'Slamet Riyadi', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(499, '5227', '0076879282', '817002cb8fb837fb38ef333c74d12bdc013adb46', 'BELA INDAH PERMATASARI', 'P', 'Kendal', '2007-05-20', NULL, '-', '-', '-', 'Mutiroh', 'Abu Khaeri', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(500, '5229', '0076716524', '16fc1afe75d62251972553889e886aafb5e46da8', 'DANANG JOKO PRASETYO', 'L', 'Kendal', '2007-02-14', NULL, '-', '-', '-', 'Ngatini', 'Akrom', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(501, '5232', '0072088924', 'f09613fa0fdd9b0ff0deba198fde3817b5d436c9', 'DEWI KARTIKA MAULA', 'P', 'Kendal', '2007-04-22', NULL, '-', '-', '-', 'Fatmawati', 'Sarinofa', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(502, '5234', '0071471213', '8c656e9bee079a341a1e85ecd901dace8427613b', 'DIMAS YUSUF FERDIANSYAH', 'L', 'Kendal', '2007-06-06', NULL, '-', '-', '-', 'Nurhayati', 'Maniso', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(503, '5235', '0064146162', 'c9cedd9b6093b23745b6fd879055fb57d9e0fcc4', 'DITA ISTIAFANI', 'P', 'Kendal', '2006-12-18', NULL, '-', '-', '-', 'Rusmiasih', 'Susanto', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(504, '5243', '0064281838', '96eb545cd19c52f44a400f3fdba89bc85c07c7f8', 'EKAN CAHYA PRADIPA', 'L', 'Kendal', '2006-08-26', NULL, '-', '-', '-', 'Ani Arofah', 'Eko Cahyono', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(505, '5044', '0073926526', 'aec5f65482b7c8df130ceef71dc012059a5571fb', 'FABIANO RAFI EMERALD', 'L', 'Temanggung', '2007-01-03', NULL, '-', '-', '-', 'Novida Handayani', 'Wahyu Edi Budiono', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(506, '5237', '0079614855', '86ef7497a45eeb89d7a1dbaea7e1b6e81d8015cc', 'FARA ARDIANSYAH', 'L', 'Kendal', '2007-04-19', NULL, '-', '-', '-', 'Supiyati', 'Rochmadi', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(507, '5239', '0074581862', '8404ef024537e39acd847ad73518d58ab5d6fde5', 'HAFIZ ADITYA PUTRA', 'L', 'Temanggung', '2007-05-05', NULL, '-', '-', '-', 'Purmi', 'Siswanto', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(508, '5240', '0076253036', 'c7b250e59fd1e62e9b03198c3c95472b121033cc', 'IBRAHIM AL ARIF', 'L', 'Kendal', '2007-08-01', NULL, '-', '-', '-', 'Sri Wahyuni', 'Bustanul Arifin', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(509, '5244', '0087113447', '9eb63c2687fd7af2da446504a8fc9584a0bec1b0', 'ISABEL FAIRUZ ZERA ATHAILAH', 'P', 'Kendal', '2008-12-28', NULL, '-', '-', '-', 'Takhami', 'Nur Mopid', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(510, '5245', '0071392868', '72c263f5ad54cb1760d6126b86e706bcc2215e3a', 'ISMAYANTI', 'P', 'Kendal', '2008-11-18', NULL, '-', '-', '-', 'Manis', 'Samdani', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(511, '5247', '0075028514', '8d7507879499809f1bfc5444210f80fe7344111e', 'KHARISMA AYU KHOVIVAH', 'P', 'Kendal', '2007-12-18', NULL, '-', '-', '-', 'Murjiyah', 'Misno', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(512, '5248', '0075197491', 'c7398f6a0c5dd03c6c768b1d3370a4855fc2c6e7', 'LILISTIYANTI', 'P', 'Kendal', '2007-02-06', NULL, '-', '-', '-', 'Aswiyah', 'Matuwi', '-', 2, 11, 1, '2023-10-10 17:56:51', '2023-10-10 17:56:51'),
(513, '5249', '0079874723', '817002cb8fb837fb38ef333c74d12bdc013adb46', 'MEYLA DITA ANANDA', 'P', 'Kendal', '2007-05-20', NULL, '-', '-', '-', 'Sulati', 'Budi Harto', '-', 2, 11, 1, '2023-10-10 17:56:52', '2023-10-10 17:56:52'),
(514, '5250', '0075287685', '0e37a2a7772c7c71b7ed9a3d1382e4c6359b6787', 'MUHAMMAD ARFI SYAFIUDDIN', 'L', 'Kendal', '2007-07-23', NULL, '-', '-', '-', 'Sulastri', 'Mujianto (Alm)', '-', 2, 11, 1, '2023-10-10 17:56:52', '2023-10-10 17:56:52'),
(515, '5289', '0075309042', 'd1ff610f403067f843c7a4331564e27487d677c2', 'NABILA MUFLIHAT NUR R', 'P', 'Kendal', '2007-09-20', NULL, '-', '-', '-', 'Siti Utari', 'Muflikhun M. Nur', '-', 2, 11, 1, '2023-10-10 17:56:52', '2023-10-10 17:56:52'),
(516, '5257', '0078878080', '939b29b7bddae50ca53b0a4e00b6cf4c80130a3b', 'NANDHIFFAHRUDIN', 'L', 'Kendal', '2007-06-04', NULL, '-', '-', '-', 'Bawon Suryati', 'Jumaeni Alm.', '-', 2, 11, 1, '2023-10-10 17:56:52', '2023-10-10 17:56:52'),
(517, '5258', '0065294100', 'e178b6f2ede8dd0015f634acdc25c6a06a73bb57', 'NOFRYAN SAPTO ADI', 'L', 'Kendal', '2007-11-17', NULL, '-', '-', '-', 'Muslihati', 'Tri Dumadi', '-', 2, 11, 1, '2023-10-10 17:56:52', '2023-10-10 17:56:52'),
(518, '5261', '0088322337', 'c40b5fb5dc71754407bdb05aea166c8ab5272cb7', 'NURUL KHASANAH', 'P', 'Banyumas', '2008-05-03', NULL, '-', '-', '-', 'Sus Haryanti', 'Ugik Setyo Utomo', '-', 2, 11, 1, '2023-10-10 17:56:53', '2023-10-10 17:56:53'),
(519, '5264', '0071883072', '465fbc264cd79f88d256010a60d9a2bf1b94989c', 'REZA MAULANA ZIFANSAH', 'L', 'Purbalingga', '2007-03-22', NULL, '-', '-', '-', 'Mahrini', 'Bawon Wibowo', '-', 2, 11, 1, '2023-10-10 17:56:54', '2023-10-10 17:56:54'),
(520, '5241', '0071544730', '490ca3e45902d4bf092af333db168f0aff7d1ab1', 'RISKY MAULIDAN', 'L', 'Jakarta', '2007-03-24', NULL, '-', '-', '-', 'Murdiyanti', 'Sodikun', '-', 2, 11, 1, '2023-10-10 17:56:54', '2023-10-10 17:56:54'),
(521, '5283', '0068306390', 'de23922bf2c24ab51d8b67b4224534ab5c6c41e9', 'RIYAN', 'L', 'Kendal', '2006-07-29', NULL, '-', '-', '-', 'Sri As''Adah', 'Nur Pramono', '-', 2, 11, 1, '2023-10-10 17:56:55', '2023-10-10 17:56:55'),
(522, '5291', '-', '25646d6f594b3b9a03c162f4de463925c8088409', 'SAL SABIILARRASYAAD', 'L', '', '0000-00-00', NULL, '-', '-', '-', '-', '-', '-', 2, 11, 1, '2023-10-10 17:56:56', '2023-10-10 17:56:56'),
(523, '5265', '0079365219', '39f6450991475651784892271bbde5bfb6e5ac0e', 'SAUKI RINDO', 'L', 'Kendal', '2007-05-26', NULL, '-', '-', '-', 'Sutari', 'Suwanda', '-', 2, 11, 1, '2023-10-10 17:56:56', '2023-10-10 17:56:56'),
(524, '5288', '0079478112', 'bb2172000eb13c098f8d8e597851426e8374ef1c', 'SHABRINA KHAIRUNNISA', 'P', 'Kendal', '2007-08-03', NULL, '-', '-', '-', 'Eko Setyaningrum', 'Nanang Ernawan', '-', 2, 11, 1, '2023-10-10 17:56:56', '2023-10-10 17:56:56'),
(525, '5008', '0069934844', '02f9060c255ab9118bd8f547f04c83dab70fe1bc', 'SOFYAN', 'P', 'Kendal', '2006-10-09', NULL, '-', '-', '-', 'Ribut Mistriyah', 'Saman', '-', 2, 11, 1, '2023-10-10 17:56:57', '2023-10-10 17:56:57'),
(526, '5267', '0079420781', '1b320b867819bc6cb76ee4a433e6e29a4a508617', 'VELIA DAVINA ARSHINTA', 'P', 'Kendal', '2007-01-27', NULL, '-', '-', '-', 'Suryati', 'Sugeng Riyono', '-', 2, 11, 1, '2023-10-10 17:56:57', '2023-10-10 17:56:57'),
(527, '5268', '0074753335', '685874fa510bc9456644edf3155c28d9f5ad9e06', 'VISTA AULIA DEWI', 'P', 'Kendal', '2007-11-11', NULL, '-', '-', '-', 'Muji Rahayu', 'Madyo Heru Susilo', '-', 2, 11, 1, '2023-10-10 17:56:57', '2023-10-10 17:56:57'),
(528, '5270', '0075084581', '1c2d26a20bd90d63b4500b8fd8ef41dfbaf5b322', 'WISNU JULIANSYAH', 'L', 'Kendal', '2007-07-04', NULL, '-', '-', '-', 'Siti Lestari', 'Wagito', '-', 2, 11, 1, '2023-10-10 17:56:57', '2023-10-10 17:56:57'),
(529, '5285', '0072038483', 'e88a315f0c55a808f9976066afb2692688c7eff7', 'ZIDAN ALFALAH', 'L', 'Kendal', '2007-02-02', NULL, '-', '-', '-', 'Suratmi', 'Nur Rohman', '-', 2, 11, 1, '2023-10-10 17:56:57', '2023-10-10 17:56:57'),
(530, '5271', '0073966162', 'a97b4d385e0d34973ba26edc84f6dff0a5463f38', 'AHMAT PARWANTO', 'L', 'Kendal', '2007-12-12', NULL, '-', '-', '-', 'Kemisem', 'Giri', '-', 2, 13, 1, '2023-10-10 17:56:57', '2023-10-10 17:56:57'),
(531, '5272', '0063552278', '3bed969995a47c3bfc0326737200fa5e0db46882', 'AYUB ROMANDHON', 'L', 'Kendal', '2006-10-05', NULL, '-', '-', '-', 'Supatemi', 'Suladi', '-', 2, 13, 1, '2023-10-10 17:56:57', '2023-10-10 17:56:57'),
(532, '5273', '0064075729', 'a6de1e48c19b92d7c57b48d2a3db985a45126121', 'BAGAS ARDIYANSAH', 'L', 'Temanggung', '2006-03-18', NULL, '-', '-', '-', 'Erlina', 'Jamali', '-', 2, 13, 1, '2023-10-10 17:56:57', '2023-10-10 17:56:57'),
(533, '5230', '0137922239', '138b54a571263371133353d21041bd6e0fc6c777', 'DANIEL ANDREE SYAH SARJONO', 'L', 'Kendal', '2007-10-10', NULL, '-', '-', '-', 'Ati Eri', 'Bagus Sarjono', '-', 2, 13, 1, '2023-10-10 17:56:57', '2023-10-10 17:56:57'),
(534, '5274', '0078280186', '6fbb0279cee632e397b902531fe5f1c85780b224', 'DARIYAN ARYAN SATIYA', 'L', 'Kendal', '2007-03-30', NULL, '-', '-', '-', 'Kartini', 'Gurawan', '-', 2, 13, 1, '2023-10-10 17:56:57', '2023-10-10 17:56:57'),
(535, '5275', '0071144139', '4cd176d67031cefbcaa1aefe8c40e01246b1ed5f', 'DIMAS SETIAWAN', 'L', 'Kendal', '2007-06-01', NULL, '-', '-', '-', 'Mintarni', 'Mis''Ari Al Teguh', '-', 2, 13, 1, '2023-10-10 17:56:57', '2023-10-10 17:56:57'),
(536, '5277', '0077089280', '607f0dad0259aa88492b5da3893f7c3e3c7bf638', 'RADIA FIKA DANIS SAPUTRA', 'L', 'Kendal', '2007-03-17', NULL, '-', '-', '-', 'Tatik', 'Saudi', '-', 2, 13, 1, '2023-10-10 17:56:57', '2023-10-10 17:56:57'),
(537, '5121', '0073005684', '6cb48bd073c5c0961b609ec11b4ee12df9eab456', 'MUHAMMAD IRFAN AL''AFIN', 'L', 'Kendal', '2007-10-31', NULL, '-', '-', '-', 'Aridha Raheni', 'M. Barik Rakhman', '-', 2, 13, 1, '2023-10-10 17:56:58', '2023-10-10 17:56:58'),
(538, '5177', '0075528049', '71ec2347dbfbba769d2c25d045b7fea887bcde28', 'ZAHIDUN NAFIZ', 'L', 'Kendal', '2007-11-20', NULL, '-', '-', '-', 'Namiroh', 'Sodikin', '-', 2, 13, 1, '2023-10-10 17:56:58', '2023-10-10 17:56:58'),
(539, '4769', '0068650181', '2d28155e54e0ac548bfeb815f1a5efe683c27a4d', 'ADITYA DWI SAPUTRO', 'L', 'Kendal', '2006-04-08', NULL, '-', '-', '-', 'Prihati', 'Ngahadi', '-', 3, 1, 1, '2023-10-10 18:00:03', '2023-10-10 18:00:03'),
(540, '4770', '0066450283', '12fc5a6e8619a42f339f6dcfc774ef24c8c05961', 'AL AUFA', 'L', 'Kendal', '2006-02-06', NULL, '-', '-', '-', 'Ruati', 'Darmawan', '-', 3, 1, 1, '2023-10-10 18:00:03', '2023-10-10 18:00:03'),
(541, '4771', '0062302673', 'b9229f1ec6942ca45bd8d517ef2a027903535c2a', 'ANDRIYANTO', 'L', 'Kendal', '2006-01-14', NULL, '-', '-', '-', 'Sulistyowati', 'Susiyanto', '-', 3, 1, 1, '2023-10-10 18:00:03', '2023-10-10 18:00:03'),
(542, '4772', '0061272900', '7322dac79d6c2c29ef99298fc2d2df596969d119', 'ARDIAN NUR FAIDZIN', 'L', 'Temanggung', '2006-02-05', NULL, '-', '-', '-', 'Sri Yuniatun', 'Achmat Rochim', '-', 3, 1, 1, '2023-10-10 18:00:03', '2023-10-10 18:00:03'),
(543, '4773', '0062241676', '149edb99b8aa9f0492042fa38c54b8c158515d87', 'ARGA ARIA ADINATA', 'L', 'Kendal', '2006-07-25', NULL, '-', '-', '-', 'Siti Fatimah', 'Sukani', '-', 3, 1, 1, '2023-10-10 18:00:03', '2023-10-10 18:00:03'),
(544, '4775', '0066093782', '889cb91a1f45b1adb0c976d6ebb115986f6e2952', 'BAGUS SETIAWAN', 'L', 'Temanggung', '2006-10-23', NULL, '-', '-', '-', 'Rombiyana', 'Sobri', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(545, '4777', '0057462468', '085ca8b4eb684de773e275d0d9afd4fbb8b96386', 'DAFFA MAULANA SAPUTRA', 'L', 'Kendal', '2005-08-23', NULL, '-', '-', '-', 'Turinem', 'Tukino', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(546, '4778', '0065460044', '4d604aec84db4992c78be8159086f24041c01932', 'EGI SAIFUN NAJIB', 'L', 'Kendal', '2006-08-11', NULL, '-', '-', '-', 'Nur Millati Anisah', 'Arif Usman', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(547, '4779', '0067986338', '2c8920136b152365004ed8d1717535f494d21c7d', 'ERIK FEBRIAN EFENDI', 'L', 'Temanggung', '2005-10-13', NULL, '-', '-', '-', 'Suratikah', 'Suratikah', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(548, '4780', '0063497554', 'd9214bdc99297cca5fc1cd608233ab6fcfc05e05', 'FAJAR FEBRIANTO', 'L', 'Banyumas', '2006-02-15', NULL, '-', '-', '-', 'Maryati', 'Supriyadi', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(549, '4781', '0061536424', '524cb3395e700d43fdc425c3f1b01ee869c4d22b', 'FEBRI ADI KURNIAWAN', 'L', 'Kendal', '2006-02-01', NULL, '-', '-', '-', 'Ngatmi', 'Sukadam', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(550, '4782', '0056939871', '9764b87e855028f34c0d0d0536c43d3fa68497e2', 'FEBRI DWI SAPUTRA', 'L', 'Kendal', '2005-02-03', NULL, '-', '-', '-', 'Kuswati', 'Sucipto', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(551, '4783', '0068047465', 'dc9c1b74deb2860cc2fde047e3cf911ca24c80f5', 'FERDIAN DENNY WALUYO', 'L', 'Kendal', '2006-06-22', NULL, '-', '-', '-', 'Nafsiyah', 'Yatmin', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(552, '4784', '0066528393', '2a69e664359fd566df6eef0f9b64d66e40791ebc', 'HANS FERDINAND PURNOMO', 'L', 'Kendal', '2006-02-24', NULL, '-', '-', '-', 'Wahyu Winarsih', 'Joko Purnomo', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(553, '4785', '0065315284', '2d88406bb142c355b94bf89adaf570b97852e374', 'IKHDA NUR ROFIQOH', 'P', 'Kendal', '2006-04-30', NULL, '-', '-', '-', 'Istriyah', 'Rozikin', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(554, '4786', '0054200750', 'd3a1c3fd79ea69483156ba05e2726a75599ee3db', 'MASRUKHAN KHOIRUL ANAM', 'L', 'Kendal', '2005-03-27', NULL, '-', '-', '-', 'Siti Masruroh', 'Sumadi', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(555, '4787', '0056499170', '9636289fb311c85b301a47c1c921ccbc0fdf4463', 'MISBAHUL QOLBI', 'L', 'Kendal', '2005-12-23', NULL, '-', '-', '-', 'Nurosikhoh', 'Luqman Hakim', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(556, '4788', '0055292298', '00c502ac7fb2a02a0eb84561d45676e1562557d9', 'MUHAMMAD ABDUL ROCHIM', 'L', 'Kendal', '2005-05-11', NULL, '-', '-', '-', 'Nurul Hayati', 'Handiq', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(557, '4790', '3058044844', '46634d98725b10a89f824a2d570d3d257381865f', 'MUHAMMAD IKHTAJJUL IZZA', 'L', 'Kendal', '2005-03-03', NULL, '-', '-', '-', 'Khomsiyah', 'Junaedi', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(558, '4791', '0062183315', 'fc1e1ce1adb367487d8b237dbc3769a5023b371f', 'NAUFAL ZAKI ALFIAN', 'L', 'Kendal', '2006-11-30', NULL, '-', '-', '-', 'Munawaroh', 'Sopanudin', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(559, '4792', '0059502987', '4e07cdd86a6a49077b83f8374e6552b86a5052ca', 'NOVIA RATNA ANGELICHA', 'P', 'Kendal', '2005-10-18', NULL, '-', '-', '-', 'Yaroh', 'Siyono', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(560, '4793', '0059411212', '9d8e6ed1a968c7b0a5da45752db7e36f06909e6d', 'RARINDRA ULYA ISWAN', 'L', 'Kendal', '2005-01-03', NULL, '-', '-', '-', 'Muarni', 'Iswan', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(561, '4794', '0062021733', 'a74858281f06146d8dba57aca685891460cefe64', 'RASYA TIO DEWANTARA', 'L', 'Kendal', '2006-07-17', NULL, '-', '-', '-', 'Purwati', 'Ade Iwan', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(562, '4795', '0059275386', '5c0c1bab2c1caec681f1c3e6d0df9660e372835c', 'SAFRIAN DAVIQ FIRSAN KANA', 'L', 'Kendal', '2005-02-23', NULL, '-', '-', '-', 'Dwi Rahyuti', 'Rochmadi', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(563, '4796', '0065404085', '14b7191537541dc305697d6ea9fe09957c8fda94', 'SEPTA DWI CAHYA SAPUTRA', 'L', 'Kendal', '2006-09-01', NULL, '-', '-', '-', 'Istianah', 'Sahroji', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(564, '4797', '0062664031', 'e2988a359814504ec150a069b45796928acb83f0', 'SURYA ADY SAPUTRA', 'L', 'Kendal', '2006-02-04', NULL, '-', '-', '-', 'Sunarsih', 'Supadi', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(565, '4798', '0064824805', 'b99a2843d4b73ec031fd4d938feb6740463f12e7', 'TAUFIQ INSANI', 'L', 'Kendal', '2006-05-13', NULL, '-', '-', '-', 'Muayanah', 'Ahmad Samsul', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(566, '4799', '0053857441', '27db4b8f573454f5843e2d31711725e837aacc5f', 'YOGI ALI PRATAMA', 'L', 'Kendal', '2005-12-26', NULL, '-', '-', '-', 'Nur Asriyah', 'Nawawi', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(567, '4800', '0043912524', '29a708ae72fbaf37a79641736d5a705ef3ff5bc2', 'ZHAFRAN HAIDAR AZMI', 'L', 'Kendal', '2004-04-23', NULL, '-', '-', '-', 'Suwarni', 'Matnaim', '-', 3, 1, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(568, '4803', '0049529098', '2261eef5f622d3d93ee4a602e29186df227b1874', 'ADIP RAMADHANI', 'L', 'Kendal', '2004-10-30', NULL, '-', '-', '-', 'Jumilah', 'Juwandi', '-', 3, 2, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(569, '4804', '0067838955', 'fd725267f0fb490d24d50dc18ac1fc849ce066af', 'ADITYA FIRMANSYAH', 'L', 'Temanggung', '2006-04-12', NULL, '-', '-', '-', 'Nafirotun', 'Mukhoyin', '-', 3, 2, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(570, '4805', '0037572100', 'af9947884e0e52c647fa742df5b3c4488635001d', 'ADITYA RIZKY RAMADHANU', 'L', 'Kendal', '2003-11-06', NULL, '-', '-', '-', 'Krisdayanti', 'Iwin Setianto', '-', 3, 2, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(571, '4808', '0053875763', '4cbb67dd64674125860a069e5785d283a06019b2', 'AHMAD AINUR ROFIQ', 'L', 'Kendal', '2006-01-05', NULL, '-', '-', '-', 'Kemisem', 'Daryono (Alm)', '-', 3, 2, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(572, '4810', '0062283066', '57a0e845ee3d133bca65fce91ad4bc72237f8c20', 'AHMAD WAHYU SAPUTRA', 'L', 'Kendal', '2006-06-05', NULL, '-', '-', '-', 'Muji Welas', 'Suyanto', '-', 3, 2, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(573, '4811', '0069058196', '39a5ec4be87600c3da87b5beb8b146a314e8638b', 'AHMAT ARJUNNAJA AL MUJTABA', 'L', 'Kendal', '2006-10-12', NULL, '-', '-', '-', 'Tri Mulyanti', 'Fatkhur Rozak', '-', 3, 2, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(574, '4812', '0054574423', '157cb9a28cbd9fb5e0e744344f2a666c891a81da', 'AL DZAKI FADILAH IQBAL', 'L', 'Kendal', '2005-11-02', NULL, '-', '-', '-', 'Triningtiasih', 'M Arif Samsudin', '-', 3, 2, 1, '2023-10-10 18:00:04', '2023-10-10 18:00:04'),
(575, '4813', '0054800832', '33aab9334b255ef21a6fba60e197f4de376231ac', 'ARDY HERMANTO', 'L', 'Kendal', '2005-03-17', NULL, '-', '-', '-', 'Sumirah', 'Sucipto', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(576, '4814', '0059150025', 'aaf823be89487f1da8e86f3cd3b47cecac978744', 'ARIF MUSTAQIM', 'L', 'Kendal', '2005-12-04', NULL, '-', '-', '-', 'Muslihatun', 'Ngasman', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(577, '4815', '0064970382', '2e1ec5ae8924c34aa6f0c07f9bf6726384666098', 'BAGAS PRIAMBODO', 'L', 'Kendal', '2006-03-01', NULL, '-', '-', '-', 'Eko Murtiningsih', 'Kasminto', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(578, '4816', '0064295002', 'ed25df6031066f2022a68a545f494d9c71c5b1a0', 'BAGUS GALANG SATRIA', 'L', 'Temanggung', '2006-05-31', NULL, '-', '-', '-', 'Rusilah', 'Sulimin', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(579, '4818', '0055264338', 'cdebced973b1d84ef858ca06ae842415ffc42b16', 'DIMAS RAGIL SAPUTRA', 'L', 'Kendal', '2005-05-25', NULL, '-', '-', '-', 'Mulyati', 'As''Adi', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(580, '4819', '0056340105', 'bb3b0de43ebf94c186dd40f1d1c9ba192fc570d0', 'DWI HERMAWAN', 'L', 'Kendal', '2006-01-08', NULL, '-', '-', '-', 'Winarsih', 'Jumari', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(581, '4820', '0059161475', '7266d24b819ed5fc31627760da6bed9ad916681b', 'DZAKY DWI PRAMUDYA', 'L', 'Kendal', '2005-12-18', NULL, '-', '-', '-', 'Siti Baroroh', 'Eko Sugiyanto', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(582, '4822', '0059610109', '0be995c0b5569169e3e7ae406ffadfd8c5f078fa', 'FARKHAN BAINAKA AFIAN', 'L', 'Kendal', '2005-11-18', NULL, '-', '-', '-', 'Salimatun', 'Komari (Alm)', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(583, '4823', '0043441182', '125cddcbb449485301ce585b3cf2e9ebadb329b5', 'FATHURROHMAN', 'L', 'Kendal', '2004-06-20', NULL, '-', '-', '-', 'Jariyah', 'Susanto', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(584, '4824', '0055312910', 'a98b846344a15fdedda27e4c8fd2d04e7524481d', 'FERLY DWI KURNIAWAN', 'L', 'Kendal', '2005-12-05', NULL, '-', '-', '-', 'Martini', 'Narwanto', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(585, '4825', '0061922248', '3353cbe271603c88b7a56f305d8e43335e9f0d3f', 'GALANG ADI FIRMANSYAH', 'L', 'Kendal', '2006-04-11', NULL, '-', '-', '-', 'Siti Khoidah', 'Sumar', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(586, '4826', '0058506425', 'ba86d335391515e4bd876c2e7e2034cbb982adfb', 'GUN SAPUTRA RAGIL', 'L', 'Temanggung', '2005-10-16', NULL, '-', '-', '-', 'Darmi', 'Darlan', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(587, '4827', '0066654972', 'c4c05c670d41cf4dd38269a4c929ee9346741ca2', 'HEKMATHIYAR ABABIL', 'L', 'Kendal', '2006-04-26', NULL, '-', '-', '-', 'Rohana', 'Hendro Wiwanto', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(588, '4828', '0056811150', 'be9311009cecdd35dc253e560a12b262afcbb6fd', 'LIFKI FERDI ADITTIA', 'L', 'Temanggung', '2005-02-15', NULL, '-', '-', '-', 'Kuswati', 'Munadi', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(589, '4829', '0037619192', '64ef7831b24a2f2986db3ceb001adc95cbd6f276', 'LIVTENDI LUTFI AL FATAH', 'L', 'Kendal', '2003-11-30', NULL, '-', '-', '-', 'Aliyah', 'Yuli Murdiyanto', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(590, '5033', '0063108601', '9026974958c80f0bfa4d919e2e518e13f4d48964', 'AGIL BAGUS MAULANA', 'L', 'Kendal', '2006-03-22', NULL, '-', '-', '-', 'Asiah', 'Ragil Adi Hawan', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(591, '4776', '0056424677', 'a6b689b67bf3f1e803246ca7824e845f15aa83cc', 'BUDIYANTO', 'L', 'Kendal', '2005-09-14', NULL, '-', '-', '-', 'Muslikhah', 'Diyono', '-', 3, 2, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(592, '4831', '0053593017', 'b5a00bff70645d3038bbe564ba3211ffc27d0c83', 'MIFTAKHUL HASAN ARIFA''I', 'L', 'Kendal', '2005-12-22', NULL, '-', '-', '-', 'Intawati', 'Jupriyono', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(593, '4832', '0068650541', 'd075e5dbd9bbafa34aa02b30f61caa0a460c3280', 'MUHAMAD ADIT SAPUTRA', 'L', 'Kendal', '2006-07-31', NULL, '-', '-', '-', 'Muamalah', 'Sukiman', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(594, '4833', '0056987688', '8b0a49a461d9faf37e755515afc5d3337a9c2331', 'MUHAMMAD AFIFAN', 'L', 'Kendal', '2005-12-03', NULL, '-', '-', '-', 'Riyanti', 'Botok Arifin', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(595, '4789', '3057848055', '966ee1c37772d4c404244298be8e96043ef0011a', 'MUHAMMAD ARIL AGUSTIAN', 'L', 'Kendal', '2005-08-17', NULL, '-', '-', '-', 'Wowik Sri Subekti', 'Darwandi (Alm)', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(596, '4835', '0061005461', '6e7137fcabf053625db5d9fb7625fa858ebf54b9', 'MUHAMMAD FAHRI RAMANDA', 'L', 'Kendal', '2006-09-29', NULL, '-', '-', '-', 'Sri Erna Wati', 'Nari', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(597, '4836', '0061791176', '2b8c223980c246d90683e40157e70f24c9f1a302', 'MUHAMMAD SYAM MUGHARBI', 'L', 'Kendal', '2006-05-07', NULL, '-', '-', '-', 'Zakiyah Arofah', 'Agus Pariyanto', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(598, '4837', '0062113604', 'bc1de41cd358e951d7d577a640f00e5f57e5c957', 'NANDA AZIZUL HAKIM', 'L', 'Kendal', '2006-04-06', NULL, '-', '-', '-', 'Semi', 'Triwadi', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(599, '4838', '0056611617', 'b90e7d8adeada88f1c4135217331c7335b52df3d', 'NAUFALINO PRIMA MUAFA', 'L', 'Temanggung', '2005-08-12', NULL, '-', '-', '-', 'Aprilia Astarini', 'Ragil Budi Santoso', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(600, '4839', '0050517174', '40de8fbb5907816d8ce8fc7c70ab8a3e9a18b8c1', 'NICO DWI ADI KURNIAWAN', 'L', 'Kendal', '2006-01-18', NULL, '-', '-', '-', 'Muniroh', 'Priyanto', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(601, '4840', '3062275218', '5b2136e5963b22949672ccbecf1e577895f3efc6', 'NUR TRI ANDRI FEBRIYANTO', 'L', 'Kendal', '2006-02-26', NULL, '-', '-', '-', 'Seniyem', 'Parmin', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(602, '4841', '0063481285', '7a8da7efd7987ebfaa6b33a1d1f09281fcea21e1', 'PUTRA MIFTAHUL RISKI', 'L', 'Kendal', '2006-06-11', NULL, '-', '-', '-', 'Inayah', 'Turyono', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(603, '4842', '0057085603', 'd26b5803e1a6098600f857d0fc111978d8335b86', 'RAMADHANIKA ANUGRAH PRATAMA', 'L', 'Kendal', '2005-11-01', NULL, '-', '-', '-', 'Yaroh', 'Dwi Setiyawan', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(604, '4843', '0072553575', 'b0825b7137007f7d661ba85d5db66176762ffdfe', 'RIYAN ALFARIZKY', 'L', 'Kendal', '2007-02-24', NULL, '-', '-', '-', 'Purwanti', 'Giyono', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(605, '4844', '0055508610', 'd87fc6de5614a9bc2dcf64b62248bf24f4bb2940', 'RIZKY SETIAWAN', 'L', 'Kendal', '2005-09-25', NULL, '-', '-', '-', 'Musri', 'Setiyanto', '-', 3, 3, 1, '2023-10-10 18:00:05', '2023-10-10 18:00:05'),
(606, '4845', '0051977937', '3f1c54661fe1cee850edf941d99ef3f9676baf63', 'RIZQI APRI ANANTA', 'L', 'Temanggung', '2005-04-13', NULL, '-', '-', '-', 'Wigati', 'Tohari', '-', 3, 3, 1, '2023-10-10 18:00:06', '2023-10-10 18:00:06'),
(607, '4846', '0051686704', '463abb60eb6dba393288b6cfd8b35ccc181d7650', 'RIZQI KURNIAWAN', 'L', 'Kendal', '2005-12-30', NULL, '-', '-', '-', 'Sri Wahati', 'Juri', '-', 3, 3, 1, '2023-10-10 18:00:06', '2023-10-10 18:00:06'),
(608, '4847', '0068426381', 'b5c8c9bf017d79eab89cf06e519ea7bda82e2d9a', 'RYAN RISTANTO SAPUTRA', 'L', 'Kendal', '2006-06-29', NULL, '-', '-', '-', 'Sulalah', 'Sutanto', '-', 3, 3, 1, '2023-10-10 18:00:06', '2023-10-10 18:00:06'),
(609, '4848', '0069793301', 'fd1fa7ff63485484c80a91e53549b2e9d96f2e6a', 'SANIKA MAULIYAN', 'L', 'Batu Lintang', '2006-05-02', NULL, '-', '-', '-', 'Anita Kurniawati', 'Mah Toni', '-', 3, 3, 1, '2023-10-10 18:00:06', '2023-10-10 18:00:06'),
(610, '4849', '0055826157', 'e5ea5535031367837ce6afcba6e94a8e6922a128', 'SOLEH KHOERUDIN', 'L', 'Kendal', '2005-10-01', NULL, '-', '-', '-', 'Ponimah', 'Senadi', '-', 3, 3, 1, '2023-10-10 18:00:07', '2023-10-10 18:00:07'),
(611, '4850', '0064728369', '752ba10c0857f2ffbb787a78fdf62f7fa52cba3e', 'SYAHRUL HUDA PRATAMA', 'L', 'Kendal', '2006-10-30', NULL, '-', '-', '-', 'Wiati', 'Kuswandi', '-', 3, 3, 1, '2023-10-10 18:00:08', '2023-10-10 18:00:08'),
(612, '4851', '0063041809', '360c44654468daa3cde480aefaace202cba7a7e7', 'TEGAR SEPTIAN PERMANA', 'L', 'Temanggung', '2006-09-19', NULL, '-', '-', '-', 'Wahyu Slamet', 'Sumhadi', '-', 3, 3, 1, '2023-10-10 18:00:08', '2023-10-10 18:00:08'),
(613, '4852', '0066793125', 'c38ffc7da939060e3b42883e98608fca815f470b', 'ULUNG PRIMA WIDJAMUKTI', 'L', 'Kendal', '2006-06-18', NULL, '-', '-', '-', 'Unik Tarlia', 'Turwidi', '-', 3, 3, 1, '2023-10-10 18:00:09', '2023-10-10 18:00:09'),
(614, '4853', '0065056835', '5976bf034a6c6d1c88b25eb116ef481c6b467c90', 'VAREL RISQI SATRIAWAN', 'L', 'Kendal', '2006-03-12', NULL, '-', '-', '-', 'Malikhatun', 'Muh Mustaqim', '-', 3, 3, 1, '2023-10-10 18:00:09', '2023-10-10 18:00:09'),
(615, '4854', '0068866227', '54da0f936b786e94b18e88b2dc8733aa5cc3d8ff', 'WIDIYO UTOMO', 'L', 'Kendal', '2005-08-01', NULL, '-', '-', '-', 'Turiyah', 'Giman', '-', 3, 3, 1, '2023-10-10 18:00:09', '2023-10-10 18:00:09'),
(616, '4855', '0058381432', 'd405d4762629583b58d82968a789dcab39588f3d', 'YAHYA WIDAYAT', 'L', 'Kendal', '2005-12-16', NULL, '-', '-', '-', 'Sri Hartanti', 'Sudaryanto', '-', 3, 3, 1, '2023-10-10 18:00:10', '2023-10-10 18:00:10'),
(617, '4856', '0064139203', '49aed4206646e14fea94d9f6fa759e7c7b3aaab7', 'YOGA HIMAWAN', 'L', 'Kendal', '2006-11-26', NULL, '-', '-', '-', 'Marliana', 'Garum Santoso', '-', 3, 3, 1, '2023-10-10 18:00:10', '2023-10-10 18:00:10'),
(618, '5027', '0054097913', '2a63310f536e89d44df288cf329c50f1fef4c2a7', 'BAGAS CAHYA SAPUTRA', 'L', 'Kendal', '2005-09-01', NULL, '-', '-', '-', 'Rila Hirmawati', 'Achmad Famuji', '-', 3, 3, 1, '2023-10-10 18:00:10', '2023-10-10 18:00:10'),
(619, '4858', '0053420266', '1a95e4704c1fe2f661cfb6f2781a2f0d9a1a82da', 'ADY KURNIAWAN', 'L', 'Temanggung', '2005-05-20', NULL, '-', '-', '-', 'Suprapti', 'Zeni Ichsanudin', '-', 3, 4, 1, '2023-10-10 18:00:10', '2023-10-10 18:00:10'),
(620, '4859', '0054877599', 'e7dc8c983fa48a7eb20fed56537cf007daf9c7b9', 'ANDIKA MAULANA SAPUTRA', 'L', 'Kaltim', '2005-04-15', NULL, '-', '-', '-', 'Atikah', 'Sukito', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(621, '4860', '0069535331', '9026974958c80f0bfa4d919e2e518e13f4d48964', 'ANDREAN HABIB LUTFI', 'L', 'Kendal', '2006-03-22', NULL, '-', '-', '-', 'Sumiati', 'Mesran', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(622, '4861', '0062738408', 'd7bc454db88fd01b97b47c54868a96d268917426', 'ANWAR ANAS', 'L', 'Kendal', '2006-04-02', NULL, '-', '-', '-', 'Kotriyah', 'Waslah', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(623, '4862', '0056159834', 'd60b9380d41de88f721fd588b99648e6e85a7ac1', 'ARI ROFIQI', 'L', 'Temanggung', '2005-07-07', NULL, '-', '-', '-', 'Suyami', 'Slamet', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(624, '4864', '0058861769', 'fad74490ee9fef7c3207fb341251c160f5abac19', 'DWI REGA SAPUTRA', 'L', 'Kendal', '2005-09-13', NULL, '-', '-', '-', 'Kaswati', 'Sa''Ari', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(625, '4865', '0057903436', '92dcc75d5f3f350881f41b72d40d8c887df5dca2', 'EXA WAHYU RIZKY SAPUTRA', 'L', 'Temanggung', '2005-06-05', NULL, '-', '-', '-', 'Luh Narwati', 'Kristiyo', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(626, '4866', '0061983970', '6c769a94c3020fd818a481df4a842e4118770b24', 'FAHRIL RIBKHUL ZAIDAN AUFAA', 'L', 'Kendal', '2006-05-10', NULL, '-', '-', '-', 'Wiwid Hidayanti', 'Syaifurrahman', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(627, '4867', '0055384139', 'b5efdc6489761e30928af4e3d12e8b01eda68a39', 'FAHRURROZI', 'L', 'Kendal', '2005-04-24', NULL, '-', '-', '-', 'Mujiyati', 'Mugiyono', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(628, '4868', '0065491243', 'ddce18c711c27b1a08e8e65d9d1f2cd8b063ef7e', 'HENDRI WIJAYA', 'L', 'Kendal', '2006-02-02', NULL, '-', '-', '-', 'Suparmi', 'Parno', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(629, '4869', '0063574043', '75e42402efa5b31481e04cf129f1609112709529', 'HERU FERDIANTO', 'L', 'Kendal', '2006-09-02', NULL, '-', '-', '-', 'Tri Utami', 'Eko Setiawan', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(630, '4870', '0063843420', 'd11001e34ffce656d208d01a30ede147d9098248', 'IBNU CIENA SHEVA NUGISTYA', 'L', 'Kendal', '2006-06-15', NULL, '-', '-', '-', 'Istianah', 'Nugroho', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(631, '4871', '0068726585', '6918e60907c2f7344b6877dd79a6fdd7346c37c0', 'IGHO DAVI PRAKOSO', 'L', 'Kendal', '2006-06-09', NULL, '-', '-', '-', 'Tri Rahayu', 'Sori', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(632, '4872', '0069493170', '381398d88f8e60de2c5c4b14e203d88f10ee5e11', 'KAKA PUTRA PRATAMA GALIH FEBRIYANTORO', 'L', 'Temanggung', '2006-02-11', NULL, '-', '-', '-', 'Walmiyati', 'Kabul', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(633, '4873', '0069023918', '16bfd2511e94fa37f6be03cf60690e311c960847', 'KHABIB KHUSNI ARDIAN', 'L', 'Kendal', '2006-07-20', NULL, '-', '-', '-', 'Makripatun', 'Mustaridin', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(634, '4874', '0064890125', 'de23922bf2c24ab51d8b67b4224534ab5c6c41e9', 'M. ANGGA ADITAMA', 'L', 'Kendal', '2006-07-29', NULL, '-', '-', '-', 'Khumaidah', 'Sabar', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(635, '4875', '0059684023', 'f59de7c470cc1e047c7a18d8889d4acb5fb3c1d9', 'MUHAMAD SULTON', 'L', 'Kendal', '2005-08-27', NULL, '-', '-', '-', 'Nurhamidah', 'Nurroji (Alm)', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(636, '4876', '0075469253', '9cac7b01d0ce17e115dfa314d9a698b2d1b27705', 'MUHAMMAD ARIEF NURHIDAYAT', 'L', 'Temanggung', '2007-01-19', NULL, '-', '-', '-', 'Widarti', 'Romyudi', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(637, '4877', '0052104766', '863dfbfd38cd445fd315b274f229cbaf6413cbac', 'NOVAN ADITYA PRATAMA', 'L', 'Kendal', '2005-11-16', NULL, '-', '-', '-', 'Nur Hayati', 'Caswadi', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(638, '4878', '0074895434', '47e30d8f8eba5cf3519829c8db7cf2248e45176d', 'RIDHO SETIAWAN', 'L', 'Kendal', '2007-03-14', NULL, '-', '-', '-', 'Suwarti', 'Suroso', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(639, '4879', '0065633417', '27cc5c907ae1e91071bdc27b3cba7383348c284b', 'RIZKY SASENA', 'L', 'Kendal', '2006-12-12', NULL, '-', '-', '-', 'Puji Lestari', 'Muslimin', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(640, '4880', '0045958788', '78f64d86f77b7fcdf5a22b012c0bd04076a5a731', 'ROKHMAT ADI SAPUTRA', 'L', 'Temanggung', '2004-01-19', NULL, '-', '-', '-', 'Muhyati', 'Budiono', '-', 3, 4, 1, '2023-10-10 18:00:11', '2023-10-10 18:00:11'),
(641, '4881', '0067621756', 'bd6021afa3b07706afb889dda382073e277fce8b', 'SULTAN BAGUS AINUL YAQIN', 'L', 'Kendal', '2006-03-20', NULL, '-', '-', '-', 'Ngatimah', 'Ari Agus', '-', 3, 4, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(642, '4882', '0077361302', '9d06b252e8994167d04442df595d61c57fa41e1c', 'SYAIFULLAH GUNAWAN', 'L', 'Kendal', '2006-12-11', NULL, '-', '-', '-', 'Alimatun', 'Daroji', '-', 3, 4, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(643, '4891', '0044206648', 'c119510b6783b8d0abf46ae6eb737030636ea9c2', 'FIGO ANDRIYAN', 'L', 'Temanggung', '2004-11-19', NULL, '-', '-', '-', 'Peni Mirawati', 'Daryono', '-', 3, 4, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(644, '4883', '0059005907', '5e757dd8623141eab8b5650c3708106ff31f6c17', 'ADI PRASETYO', 'L', 'Temanggung', '2004-12-25', NULL, '-', '-', '-', 'Kami', 'Sarmin', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(645, '4885', '0061866266', '503da903b8e90c79666450a43a6cddf55c8ff3ae', 'ARIF FURQON', 'L', 'Kendal', '2006-04-25', NULL, '-', '-', '-', 'Sopiyah', 'Rukiman', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(646, '4886', '3063398046', '5d07fc372d11318020ab2bba4a698ff454c339db', 'BAGUS EKA SAPUTRA', 'L', 'Kendal', '2006-07-12', NULL, '-', '-', '-', 'Siti Khotimah', 'Kirman', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12');
INSERT INTO `student` (`student_id`, `student_nis`, `student_nisn`, `student_password`, `student_full_name`, `student_gender`, `student_born_place`, `student_born_date`, `student_img`, `student_phone`, `student_hobby`, `student_address`, `student_name_of_mother`, `student_name_of_father`, `student_parent_phone`, `class_class_id`, `majors_majors_id`, `student_status`, `student_input_date`, `student_last_update`) VALUES
(647, '4889', '0042910913', '4299560e6bd60342c34908cec19ce829930415cf', 'DIMAS OKI NGESTIANTO', 'L', 'Kendal', '2004-10-19', NULL, '-', '-', '-', 'Indrawati', 'Andriyanto', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(648, '4892', '0067503955', '7b487137a1cc9f6c7b1613f452829d39e44b64f9', 'IMAM HIDAYAT', 'L', 'Kendal', '2007-01-04', NULL, '-', '-', '-', 'Qori''Atun', 'Tukiman', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(649, '4893', '0065178153', 'a5379c9c0fb88a3ce4daa597f5a54a31a44d436c', 'IVAN WIJAYA PRATAMA', 'L', 'Kendal', '2005-06-03', NULL, '-', '-', '-', 'Robi''Ah', 'Budi Widiantoro', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(650, '4894', '0056237697', '1a54ea474533a19ed2c7d08eb187b7c84676b563', 'IVAN YOGA RAMANDANI', 'L', 'Kendal', '2005-08-08', NULL, '-', '-', '-', 'Sri Murdiningsih', 'Hasim', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(651, '4895', '0063993686', '85af44d8d6db1fbf9a69102de0398af392f182be', 'LIA INDRIANI', 'P', 'Kendal', '2006-12-03', NULL, '-', '-', '-', 'Nur Mukaromah', 'Subkhi', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(652, '4896', '0065149191', '2d88406bb142c355b94bf89adaf570b97852e374', 'M. SALSABIL PASYA PRADANA UTOMO', 'L', 'Kendal', '2006-04-30', NULL, '-', '-', '-', 'Sapta Yogasari D.A.N.A', 'Eri Cahyo Utomo', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(653, '4897', '0056682854', 'b1a35b421a2b9228ac562d392ed9985a57f18b7b', 'MASHUR RIDUANSAH', 'L', 'Kendal', '2005-03-01', NULL, '-', '-', '-', 'Suwarni', 'Herih Riduwansah', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(654, '4898', '0062878878', '4c84c13f04522fbac9625bcb81cb28adc8830c5c', 'MUHAMAD FAUZAN', 'L', 'Temanggung', '2005-08-29', NULL, '-', '-', '-', 'Ngamini', 'Ruwadi', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(655, '4899', '0067057923', 'cc1b4f0dc59a40a6dc436e57384ff923f6acd86d', 'MUHAMMAD FADLY', 'L', 'Kendal', '2006-11-19', NULL, '-', '-', '-', 'Kusrini', 'Sarwono', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(656, '4900', '0067797617', '6a9b867f1088e4a8b41b7c15c83dd5b6480d549e', 'MUHAMMAD IFAN SETIAWAN', 'L', 'Kendal', '2006-03-08', NULL, '-', '-', '-', 'Zaenah', 'Moh Sodik', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(657, '4901', '0053567356', '9ce94c6bdd4e83cc1532cc632b152536570ecf60', 'NIKO ANDREAN', 'L', 'Kendal', '2005-11-20', NULL, '-', '-', '-', 'Munamah', 'Rohimin', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(658, '4902', '0068150682', '9abfe9deed7e57466d4dff2dab7c60c38e13f49d', 'RIFKY DIENUL AKMAL', 'L', 'Kendal', '2006-08-09', NULL, '-', '-', '-', 'Sri Wahyuni', 'Arif Fahrudin', '-', 3, 5, 1, '2023-10-10 18:00:12', '2023-10-10 18:00:12'),
(659, '4903', '0051493839', 'cc6efd74b0214726c7877233aed00b4a17ca2d12', 'RIO ARYANTO', 'L', 'Kendal', '2005-06-23', NULL, '-', '-', '-', 'Darmiatun', 'Maryanto', '-', 3, 5, 1, '2023-10-10 18:00:13', '2023-10-10 18:00:13'),
(660, '4904', '0045209370', '8ada71792b6d6eb380c488ebbec30526982e0993', 'ROBI CATUR ARDIANSYAH', 'L', 'Temanggung', '2004-03-24', NULL, '-', '-', '-', 'Sumpeni', 'Sugiyono', '-', 3, 5, 1, '2023-10-10 18:00:13', '2023-10-10 18:00:13'),
(661, '4905', '0052759815', '6ba4fa2139561f7f2395fb97e5c19fb877064620', 'ROBY PUTRA PERDANA', 'L', 'Temanggung', '2005-07-23', NULL, '-', '-', '-', 'Murniyanti', 'Paryono', '-', 3, 5, 1, '2023-10-10 18:00:13', '2023-10-10 18:00:13'),
(662, '4906', '0065749272', '9aa22c77a822eb3f293ad7ed9d5399133d13132f', 'SITI JAMILATUN NISA', 'P', 'Kendal', '2006-04-15', NULL, '-', '-', '-', 'Wahmat Priyanti', 'Tumin', '-', 3, 5, 1, '2023-10-10 18:00:13', '2023-10-10 18:00:13'),
(663, '4908', '0062159833', '3df1e0e30ce121521b7a9c14ce98462c5e60fedd', 'WAHYU FAWAZULHAQ', 'L', 'Kendal', '2006-03-07', NULL, '-', '-', '-', 'Romdiyanah', 'Sumanto', '-', 3, 5, 1, '2023-10-10 18:00:13', '2023-10-10 18:00:13'),
(664, '4909', '0068147627', '6c769a94c3020fd818a481df4a842e4118770b24', 'YAHYA ARDANA DWI PUTRA', 'L', 'Kendal', '2006-05-10', NULL, '-', '-', '-', 'Sukaryati', 'Zaenal Marom', '-', 3, 5, 1, '2023-10-10 18:00:14', '2023-10-10 18:00:14'),
(665, '5030', '0064785696', 'dad42189984110526d1787e97991d51182786765', 'DIANA AYU PRAMESTI', 'P', 'Kendal', '2006-01-19', NULL, '-', '-', '-', 'Sri Wahyuni', '', '-', 3, 5, 1, '2023-10-10 18:00:14', '2023-10-10 18:00:14'),
(666, '4910', '0042077562', '517a0614a4ff29c593fa87677db634263cbfaa9a', 'AFFANA ZAHRO', 'P', 'Kendal', '2004-10-12', NULL, '-', '-', '-', 'Muslimatun', 'Rohadi', '-', 3, 7, 1, '2023-10-10 18:00:14', '2023-10-10 18:00:14'),
(667, '4911', '0051302111', '1a54ea474533a19ed2c7d08eb187b7c84676b563', 'AKTARINA RIZQI RAHMADANTI', 'P', 'Kendal', '2005-08-08', NULL, '-', '-', '-', 'Muntamah', 'Poniman', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(668, '4912', '0046835832', '72e9922c7075d7c774b6642ccdccf230d4d3c34f', 'ALIMATUL CHAQIYAH', 'P', 'Kendal', '2004-04-05', NULL, '-', '-', '-', 'Fitriyah', 'Sochifudin', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(669, '4913', '0069275101', 'cce7d9132c327320326a4733b7ad4f8cdbd09bdf', 'ANANTA PUJIASTUTI', 'P', 'Kendal', '2006-08-16', NULL, '-', '-', '-', 'Siti Rukayah', 'Agus Santoso', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(670, '4914', '0072928911', 'e27b3bf7679c6741de287c7d21bc518ada8c6bb3', 'APRILIA WAHYU NINGTYAS', 'P', 'Kendal', '2007-04-12', NULL, '-', '-', '-', 'Listiyani', 'Edy Sujarwo', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(671, '4915', '0063136300', '75786055c2fc4bd5419546c26835355a519f6b6d', 'BUDI STYANINGSIH', 'P', 'Kendal', '2006-02-25', NULL, '-', '-', '-', 'Sri Haryati', 'Suroso', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(672, '4916', '0066277340', 'fc3bc11a2cb534b5d9266f78a179963e10b3231d', 'DEA HANIF PRAMULIA', 'P', 'Bekasi', '2006-02-09', NULL, '-', '-', '-', 'Mustopiyah', 'Erhan Pramulia S', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(673, '4917', '0067862941', '52f54b64e4ad18ebc4c5aa0a3801429a02ec2001', 'DEWI NURLAELI', 'P', 'Kendal', '2006-04-17', NULL, '-', '-', '-', 'Istikomah', 'Kamaludin', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(674, '4918', '0065114756', 'b99a2843d4b73ec031fd4d938feb6740463f12e7', 'DIKA MELINA RAHMAWATI', 'P', 'Temanggung', '2006-05-13', NULL, '-', '-', '-', 'Sugini', 'Supardi', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(675, '4919', '0063808804', '9a5a6247001bc1b361c455a0d2e629b75a172c74', 'DINDA ADELIA PUTRI', 'P', 'Kendal', '2006-09-13', NULL, '-', '-', '-', 'Musriah', 'Subarno', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(676, '4920', '0065924684', '2cde0c556bf24ec26bab6b68aac32bc7a995d224', 'DINDA RAMADHAN DWI OKTAVIYANI', 'P', 'Kendal', '2006-10-07', NULL, '-', '-', '-', 'Munasih', 'Rosyid', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(677, '4921', '0064838513', 'f9b7c075bdf6af31b2c3522bbbe2985c2d844dc2', 'DWI FARA AULIA', 'P', 'Kendal', '2006-07-04', NULL, '-', '-', '-', 'Biatun', 'Bunawar', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(678, '4922', '0061234044', '524cb3395e700d43fdc425c3f1b01ee869c4d22b', 'ERNES PRAMUDHITA CHINTYA', 'P', 'Bogor', '2006-02-01', NULL, '-', '-', '-', 'Lutfiyani', 'Joko Suyono', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(679, '4923', '3074566799', 'bae79717986d298aab0d9fd5b3887afbd698f259', 'FELINA ZAHRANI', 'P', 'Jakarta', '2007-01-10', NULL, '-', '-', '-', 'Puji Astuti', 'Juwarno', '-', 3, 7, 1, '2023-10-10 18:00:15', '2023-10-10 18:00:15'),
(680, '4924', '0042269464', '1620f4870079a4800f310f3dd24a7b2ed0cca9b4', 'FITRIYANA', 'P', 'Temanggung', '2004-11-20', NULL, '-', '-', '-', 'Rahayu Subandel', 'Ruwadi', '-', 3, 7, 1, '2023-10-10 18:00:16', '2023-10-10 18:00:16'),
(681, '4925', '0069695218', '708be591a49e0e5691d647e0e3d0ebe16e5ad53a', 'HANIDA SETYA FEBRIYANI', 'P', 'Kendal', '2006-02-27', NULL, '-', '-', '-', 'Listiyani', 'Edi Sujarwo', '-', 3, 7, 1, '2023-10-10 18:00:16', '2023-10-10 18:00:16'),
(682, '4926', '0069321309', '67f6cfb852bf1a64a4a266ef21f7c482b500f930', 'LUTFIA AYUNINDYA ARIFINA', 'P', 'Kendal', '2006-05-18', NULL, '-', '-', '-', 'Riyanti', 'Mujiyanto', '-', 3, 7, 1, '2023-10-10 18:00:17', '2023-10-10 18:00:17'),
(683, '4927', '0061228178', '68f370335d54b8c2217679e54510e751f59b2768', 'MARSHALINA', 'P', 'Kendal', '2006-06-06', NULL, '-', '-', '-', 'Imbuh Ristiani', 'Marsudi', '-', 3, 7, 1, '2023-10-10 18:00:17', '2023-10-10 18:00:17'),
(684, '4928', '0053277088', '1a95e4704c1fe2f661cfb6f2781a2f0d9a1a82da', 'MELA ANANTA', 'P', 'Temanggung', '2005-05-20', NULL, '-', '-', '-', 'Esti Rohana', 'Saryono', '-', 3, 7, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(685, '4929', '0066212779', '2d28155e54e0ac548bfeb815f1a5efe683c27a4d', 'MIFTAKHUL JANNAH', 'P', 'Kendal', '2006-04-08', NULL, '-', '-', '-', 'Sa''Adah', 'Nasrudin', '-', 3, 7, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(686, '4930', '0061840618', '503da903b8e90c79666450a43a6cddf55c8ff3ae', 'NELLI ZACKIA', 'P', 'Kendal', '2006-04-25', NULL, '-', '-', '-', 'Rochiyah', 'Supriyadi', '-', 3, 7, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(687, '4931', '0063883902', '57a0e845ee3d133bca65fce91ad4bc72237f8c20', 'NIA VITA FAUZIAH', 'P', 'Kendal', '2006-06-05', NULL, '-', '-', '-', 'Musidah', 'Kusnadi', '-', 3, 7, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(688, '4932', '3055122353', '1beb379cae23bb45682cd8a6d108adbd13537d51', 'NINDHYKA SILVA ANDJANI', 'P', 'Temanggung', '2005-12-25', NULL, '-', '-', '-', 'Siti Nurchasanah', 'Sutarmin', '-', 3, 7, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(689, '4933', '0066875347', '2776cd4d7bb6e6bf65c900cf1b99379f27480559', 'NITA NINGRUM', 'P', 'Temanggung', '2006-06-17', NULL, '-', '-', '-', 'Rahayu Subandel', 'Ruwadi', '-', 3, 7, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(690, '4934', '0052367119', '7d741f857ce17ced148d29fe722f0771bb0b438d', 'NOVA RIZKY AMALIA', 'P', 'Kendal', '2005-11-14', NULL, '-', '-', '-', 'Kuswati', 'Komari', '-', 3, 7, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(691, '4935', '0062708641', 'da401def483d81a00aeafc77f92eec5add3c83e8', 'NURUL KHASANAH', 'P', 'Temanggung', '2006-07-01', NULL, '-', '-', '-', 'Norohmawati', 'Sunadi', '-', 3, 7, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(692, '4936', '0054908289', '8b636959b7a1979a18e1f7c802387e1da22784b2', 'PUJI HASTUTIK', 'P', 'Temanggung', '2005-12-20', NULL, '-', '-', '-', 'Walyati', 'Parno', '-', 3, 7, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(693, '4937', '0068768450', '6f3286f059a965cedd64b8480feaac68a1f735d6', 'RAHMANISA PANGASTUTI', 'P', 'Kendal', '2006-01-28', NULL, '-', '-', '-', 'Mulyati', 'Sutari', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(694, '4938', '0068529090', '6e7137fcabf053625db5d9fb7625fa858ebf54b9', 'REFA SILFIANA NINGRUM', 'P', 'Kendal', '2006-09-29', NULL, '-', '-', '-', 'Rianah', 'Kasiyanto', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(695, '4939', '0069949001', '9635ece6ea2fcbcb22c383fe4de62bbd3a90c676', 'REFITA HILDAYATRI', 'P', 'Kendal', '2006-03-19', NULL, '-', '-', '-', 'Karina', 'Misran', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(696, '4940', '0062698999', '6e7137fcabf053625db5d9fb7625fa858ebf54b9', 'SALSABIL JAUZA YUMNA', 'P', 'Kendal', '2006-09-29', NULL, '-', '-', '-', 'Triyati', 'Slamet Haryanto', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(697, '4941', '0077595362', '186339559b92c046734817f51cb208979f4c0719', 'SELVIA', 'P', 'Kendal', '2007-02-07', NULL, '-', '-', '-', 'Budiharti', 'Budiharti', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(698, '4942', '0061460048', '7be8ec5a7a3ef7d9cd8fd2b5475bafa5642f40f7', 'SHINTA ANGGUN PRASASTI', 'P', 'Kendal', '2006-12-21', NULL, '-', '-', '-', 'Nugraheni Prihatin', 'Muhtasin', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(699, '4943', '0057617338', '6a5c3c01ca3eb0b5d38ee057104505e46fedefe4', 'SUSI SULISTIAWATI', 'P', 'Kendal', '2005-06-10', NULL, '-', '-', '-', 'Karyati', 'Mat Rochim', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(700, '4944', '0067779022', 'fd725267f0fb490d24d50dc18ac1fc849ce066af', 'TITIK MAULIDATUN NISA', 'P', 'Kendal', '2006-04-12', NULL, '-', '-', '-', 'Wati', 'Rukadi', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(701, '4945', '0041140016', '18bbed1742b9bb3047bee21e8486ff022af8e3cd', 'TUTI HANDAYANI', 'P', 'Kendal', '2004-10-28', NULL, '-', '-', '-', 'Manis', 'Samdani', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(702, '4946', '0061391147', '70865b140d8e64421b8f0ac4819daf619c23c4b8', 'VINA AGNES MAULIDA', 'P', 'Temanggung', '2006-04-16', NULL, '-', '-', '-', 'Pujiati', 'Nur Choliq', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(703, '4947', '0069125024', '34e5dc2e0a6bffd6038a78d460e1abf0a99d12c1', 'WRIYAN EKA TEGUH LUKITO', 'L', 'Kendal', '2006-05-17', NULL, '-', '-', '-', 'Nur Cahyaningsih', 'Solikhin', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(704, '4949', '0061069827', 'c98e001285dc3dde3a049b125dec9bf208400c69', 'ZAENITA AULIA PUTRI', 'P', 'Kendal', '2006-04-05', NULL, '-', '-', '-', 'Rudjiyah', 'Slamet Sulistyo', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(705, '4950', '0066586713', '884fa0766941a22642f69c551b1f7a6ea6131d6b', 'ZAFIRA RACHMA AMANDA', 'P', 'Kendal', '2006-01-20', NULL, '-', '-', '-', 'Nur Asiyah', 'Sukiman', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(706, '4951', '0061357847', '908a9e87da7d1bb84362434c9d96b19c7591282b', 'ZANUAR ARIF BUDIMAN', 'L', 'Kendal', '2006-01-04', NULL, '-', '-', '-', 'Riyanti', 'Suratno', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(707, '4952', '0052501213', 'fe6b520c331bd011153aabbdad9c52583137b660', 'ZUSNITA NINGTYAS', 'P', 'Temanggung', '2005-06-30', NULL, '-', '-', '-', 'Watini', 'Puri', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(708, '5028', '0062055243', '9227323ecc8441f3f9169d152d1fd31178b03d3c', 'LAILA INAYATUL MAULIDA', 'P', 'Kendal', '2004-11-15', NULL, '-', '-', '-', 'Nur Halimah', '', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(709, '5029', '0062590947', '95c4fc9fc8659ffc620ed6ddac2251f0edad75af', 'LIA MARDIANA', 'P', 'Kendal', '2006-03-10', NULL, '-', '-', '-', 'Juwarti', 'Juwari', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(710, '5005', '0064189978', '7e44e5a6906b86a76b6323742400459a35b9f24f', 'SEPTIYANA SARI', 'P', 'Kendal', '2006-08-31', NULL, '-', '-', '-', 'Sugiyanti', 'Paniyo', '-', 3, 8, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(711, '4953', '0067348684', '227ab3f57fb71e8f65b3cba887d913e68fbe6cd4', 'DEVITA AYU PRATIWI', 'P', 'Kendal', '2006-12-23', NULL, '-', '-', '-', 'Nur Fitriyah', 'Abdoel Kolik', '-', 3, 9, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(712, '4955', '3064309935', '89c9d2a3083a3492a08d9e206eff1c2e99f9a6ca', 'ELI FITRIANA', 'P', 'Kendal', '2006-12-01', NULL, '-', '-', '-', 'Ruwaidah', 'Nasikin', '-', 3, 9, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(713, '4956', '0066171868', '0390b53385eed13fd5f7bb6c020fbfbdc98fe054', 'GALUH ALVIANI', 'P', 'Kendal', '2006-06-16', NULL, '-', '-', '-', 'Mustiati', 'Alikin', '-', 3, 9, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(714, '4958', '0063301461', 'f446ddf567fa45d06b45b1da98afa37985d713d9', 'LIRA WAHYU INTAN NINGSIH', 'P', 'Temanggung', '2006-08-10', NULL, '-', '-', '-', 'Sarti', 'Sutiman', '-', 3, 9, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(715, '4959', '0069152135', '149edb99b8aa9f0492042fa38c54b8c158515d87', 'LISA PRATIWI', 'P', 'Kendal', '2006-07-25', NULL, '-', '-', '-', 'Sumiati', 'Suprapto', '-', 3, 9, 1, '2023-10-10 18:00:18', '2023-10-10 18:00:18'),
(716, '4960', '0063712743', 'f25c4de8d19b3a6b75f025306361f7ead39342a6', 'MAYA ISTIKHOMAH', 'P', 'Kendal', '2006-05-25', NULL, '-', '-', '-', 'Suparmi', 'Sumono', '-', 3, 9, 1, '2023-10-10 18:00:19', '2023-10-10 18:00:19'),
(717, '4961', '0064636397', '9026974958c80f0bfa4d919e2e518e13f4d48964', 'MUTIARA JIWA SIFANA', 'P', 'Temanggung', '2006-03-22', NULL, '-', '-', '-', 'Kustiah', 'Triyono', '-', 3, 9, 1, '2023-10-10 18:00:19', '2023-10-10 18:00:19'),
(718, '4962', '0062342714', '7e44e5a6906b86a76b6323742400459a35b9f24f', 'SINDI RAHMAWATI', 'P', 'Temanggung', '2006-08-31', NULL, '-', '-', '-', 'Suryati', 'Surahman', '-', 3, 9, 1, '2023-10-10 18:00:19', '2023-10-10 18:00:19'),
(719, '5036', '0068834410', '49aed4206646e14fea94d9f6fa759e7c7b3aaab7', 'NOVA ARIN DITA UTAMI', 'P', 'Kendal', '2006-11-26', NULL, '-', '-', '-', 'Nuruniyah', '', '-', 3, 9, 1, '2023-10-10 18:00:19', '2023-10-10 18:00:19'),
(720, '4976', '3046461332', 'd9fdf1f0e091eef432eb5035f0b931f035d64ae7', 'DINA LAILATUL NAFIAH', 'P', 'Kendal', '2004-04-27', NULL, '-', '-', '-', 'Tutur Jaryanti', 'Suyanto', '-', 3, 9, 1, '2023-10-10 18:00:19', '2023-10-10 18:00:19'),
(721, '4965', '0065735794', 'b82d3acbc45f53c5540fb21e0f2290ae80ecea24', 'AHMAD ALBY RAHMADANI', 'L', 'Kendal', '2006-02-10', NULL, '-', '-', '-', 'Kustriyanah', 'Suwandi', '-', 3, 10, 1, '2023-10-10 18:00:19', '2023-10-10 18:00:19'),
(722, '4966', '0068566371', '813331369d8587e94e4775a0e07a947e17619837', 'AHMAD NARENDI MAULANA', 'L', 'Temanggung', '2006-03-03', NULL, '-', '-', '-', 'Siti Amanah', 'Surono', '-', 3, 10, 1, '2023-10-10 18:00:19', '2023-10-10 18:00:19'),
(723, '4969', '0061396153', 'bb3b0de43ebf94c186dd40f1d1c9ba192fc570d0', 'ANDAR IBRA ARGA DUTA SANJAYA', 'L', 'Temanggung', '2006-01-08', NULL, '-', '-', '-', 'Rubi Andini', 'Mislan', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(724, '4970', '0066032276', 'c5b722a33e4cb2063d9fd5a6b641ec42038b7029', 'ANMISROM', 'L', 'Kendal', '2006-09-28', NULL, '-', '-', '-', 'Siti Suwaibah', 'Sunariyo', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(725, '4973', '0072038578', 'd644384fddd59ef032b475861fa335efb2b0fea2', 'CITRA PURNAMA SARI', 'P', 'Kendal', '2007-02-28', NULL, '-', '-', '-', 'Turmujanah', 'Khumaedi', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(726, '4975', '0059687933', '0e1c86b080679208e1790269324e594630c1d3c9', 'DEWI ALIFIA ZAHRA', 'P', 'Kendal', '2005-12-02', NULL, '-', '-', '-', 'Rusyati', 'Rokhimin', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(727, '4982', '0063541639', '63e1d8859dd8eaeab57f81065cf3f4d98ea824bd', 'ITANG AL HARITS', 'L', 'Temanggung', '2006-02-08', NULL, '-', '-', '-', 'Nur Santi', 'Sudomo', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(728, '4983', '0064055780', 'f4eac07bb9229a5b8a4d07522fde62576b7e6ce3', 'JUNDINA FA''IZ NAFILATA', 'P', 'Kendal', '2006-05-26', NULL, '-', '-', '-', 'Sugiharti', 'Didik Yulianto', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(729, '4984', '0057029644', '83307eaa7df7e9d107f851535c7140af3a38a48f', 'LAELA NUR AZIZAH', 'P', 'Kendal', '2005-12-14', NULL, '-', '-', '-', 'Titik Rohayati', 'Nur Nugroho', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(730, '4990', '0064491842', '0e16264d5031d309b7cc86d94381abaf46661896', 'NAILA ATMA RAMADHANI', 'P', 'Kendal', '2006-10-14', NULL, '-', '-', '-', 'Slamet Ernawati', 'Basari', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(731, '4993', '0054951734', 'de45425771727d027df0df21d18ef988b7ba1b87', 'OKTAVIA HESKA MARINDA', 'P', 'Kendal', '2005-10-14', NULL, '-', '-', '-', 'Hesti Lianawati', 'Eko Sartono', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(732, '4994', '0067002554', '92f1c6329458a8e3716a897dff810770f2694d7f', 'PUTRA SIOFA AMANDA', 'L', 'Kendal', '2006-09-05', NULL, '-', '-', '-', 'Riyati', 'Mu''Adi', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(733, '4995', '0068468237', '0dd946dddd6a680d92763af3c7ec3d071d425b8a', 'RAFFA TINI FATIHAH', 'L', 'Kendal', '2006-07-30', NULL, '-', '-', '-', 'Mistriyanah', 'Acun', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(734, '5003', '0063952187', 'd0f37c007a9b8cbb3255be6fd931cec005e79425', 'SAMARA ZAHRA AFRILIA', 'P', 'Kendal', '2006-04-03', NULL, '-', '-', '-', 'Rameyati', 'Sutamzuri', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(735, '5004', '0056057057', '6655f50a4a8c7b5eb6ecce3ce97472f1e3a84dd8', 'SAUSAN SALMA NAZIHA', 'L', 'Kendal', '2005-12-08', NULL, '-', '-', '-', 'Slamet Priyatun', 'Ainur Rofiq', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(736, '5007', '0066874943', '2d865c2aabcb85d83266ba5d6b6f037ad85ff22e', 'SIDIQ PRAMONO JATI', 'L', 'Kendal', '2006-07-14', NULL, '-', '-', '-', 'Chotimah', 'Jasmani', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(737, '5009', '3069626785', '513f2d359b4d481b99522cb0d5889a0c7789c692', 'SYAHRUL KHUSNA', 'L', 'Temanggung', '2006-08-24', NULL, '-', '-', '-', 'Khasanah', 'Hamzah', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(738, '5010', '3065067265', '0dac949a183d86d17f5beed9cf34be64e5a9e37b', 'ZULFA NURRAHMAN', 'L', 'Kendal', '2006-07-03', NULL, '-', '-', '-', 'Salamah', 'Nur Chalim', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(739, '5032', '0058983490', '85a97670a2ef02061f055eda3151edbc61b0026c', 'SHOBIBATUR ROCHMAH', 'P', 'Kendal', '2005-11-12', NULL, '-', '-', '-', 'Siti Muchasanah', '', '-', 3, 10, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(740, '4964', '0064076391', '5db99cd14fec458e6e645b5f8dd4752087391e62', 'ADITYA NUR ISTIYANTO', 'L', 'Kendal', '2006-12-09', NULL, '-', '-', '-', 'Istikomah', 'Supriyanto', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(741, '4967', '0063700628', 'bea0556c8b5f854cbbe031812b1e71c7128af067', 'AIDA NADIFA NAJWA', 'P', 'Kendal', '2006-08-15', NULL, '-', '-', '-', 'Zahroh', 'Wakidi', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(742, '4968', '0065697214', 'e1d79bbcdfbb80075e9dec2a59478dd8258b9c52', 'ALFIDA SEPTI RAHMASARI', 'P', 'Kendal', '2006-09-10', NULL, '-', '-', '-', 'Yumariah', 'Sarjadi', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(743, '4971', '0067854216', '0df9a292fb2a58027ab6bf5295983b2e393a518b', 'ARJUNAJAH AGUS KRISNA', 'L', 'Kendal', '2006-08-17', NULL, '-', '-', '-', 'Siti Asrifah', 'Turohman', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(744, '4972', '0055514202', 'a4b5540ebf8b3d66ee50b9bc841f9b221a0a0f82', 'AUFA NANDA PRATAMA', 'P', 'Kendal', '2005-01-31', NULL, '-', '-', '-', 'Nurmawati', 'Islam Eriyanto', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(745, '4974', '0050551857', '8b0a49a461d9faf37e755515afc5d3337a9c2331', 'CLARISSA FIDELIA ANGGRAENI', 'P', 'Kendal', '2005-12-03', NULL, '-', '-', '-', 'Tri Wahyuningsih', 'Maskan', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(746, '4978', '0068107323', '8d53f9d3f30af2fedf2e25a72916d3753e4d9f24', 'DWI ENGGAL PANCA ARYA', 'L', 'Temanggung', '2006-10-27', NULL, '-', '-', '-', 'Nur Aini', 'Bawon', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(747, '4979', '0066139628', '95c4fc9fc8659ffc620ed6ddac2251f0edad75af', 'ELSA STEVANI', 'P', 'Kendal', '2006-03-10', NULL, '-', '-', '-', 'Elis Rusmawati', 'Hari Muswantoko', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(748, '4980', '0059064221', '83307eaa7df7e9d107f851535c7140af3a38a48f', 'GILANG TEGAR SAPUTRA', 'L', 'Depok', '2005-12-14', NULL, '-', '-', '-', 'Mustika Rini', 'Zunan Fahrudin', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(749, '4985', '0052303670', 'afdb281ff9a9fa4c74b2d368fe3893ecd2677913', 'MOHAMAD IKHLAS ADELINO', 'L', 'Kendal', '2005-03-24', NULL, '-', '-', '-', 'Puji Astuti', 'Manidi', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(750, '4986', '0064490878', '2d865c2aabcb85d83266ba5d6b6f037ad85ff22e', 'MUHAMMAD ARIF ALIYUDIN', 'L', 'Kendal', '2006-07-14', NULL, '-', '-', '-', 'Yuliati', 'Sajidin', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(751, '4987', '3048294357', 'ae69dea31af65643b3ebc7293badb693f6e4dcc5', 'MUHAMMAD HENRY NURZAKI', 'L', 'Tangerang', '2004-10-04', NULL, '-', '-', '-', 'Ruwatiningsih', 'Dwi Novianto (Alm)', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(752, '4988', '0037776389', '2a97ee1a2f60682fa9c021bac55fa21a911e1b03', 'MUHAMMAD NURUL ANWAR', 'L', 'Kendal', '2003-12-23', NULL, '-', '-', '-', 'Siti Maryam', 'Rosidin', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(753, '4989', '0066431566', '513f2d359b4d481b99522cb0d5889a0c7789c692', 'MUTIA NADIN AL KHOLIFI', 'P', 'Kendal', '2006-08-24', NULL, '-', '-', '-', 'Umi Isdiroh', 'Suryadi', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(754, '4991', '0067956486', '2a69e664359fd566df6eef0f9b64d66e40791ebc', 'NURHAYAH', 'P', 'Kendal', '2006-02-24', NULL, '-', '-', '-', 'Seneng', 'Puryono', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(755, '4992', '0064105456', '89a89695fbb22ba43f6ab40828e1c30dc4784667', 'NUZUL OKTAVIA RAMADHANI', 'P', 'Kendal', '2006-10-10', NULL, '-', '-', '-', 'Fita Mafiyani', 'Suwandi', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(756, '4996', '0061621962', '57a0e845ee3d133bca65fce91ad4bc72237f8c20', 'RENDIKA RESTU NELWAN FRIZZY', 'L', 'Kendal', '2006-06-05', NULL, '-', '-', '-', 'Nur Azizah', 'Sutikno', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(757, '4997', '3065572977', '813331369d8587e94e4775a0e07a947e17619837', 'RESTI WINANTI', 'P', 'Kendal', '2006-03-03', NULL, '-', '-', '-', 'Siti Khoyimah', 'Suharyono', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(758, '4998', '0066802999', 'd9b92954a9f6ae6a2f87ef2f9bd54a53fca5890a', 'RIA WAHYU SETIANA', 'P', 'Kendal', '2006-08-06', NULL, '-', '-', '-', 'Rukinem', 'Buthuk Haryanto', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(759, '4999', '3068710344', '1f029ae7fea6ab94fd4c73ed79e5cb1b149fc7e6', 'RIFQI FADHILA RAMADHAN', 'L', 'Kendal', '2006-10-01', NULL, '-', '-', '-', 'Sri Asih', 'Benny Aryanto', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(760, '5000', '0068478437', '8bd95b1e286ec6551c865452b56f7a31bbd1aefc', 'RISKA DWI ARYANTI', 'L', 'Kendal', '2006-06-07', NULL, '-', '-', '-', 'Haryati', 'Maryadi', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(761, '5006', '0067534619', 'cec2a41cefbe5274f283b545163f94d1de134666', 'SETYO BUDI', 'L', 'Temanggung', '2006-07-18', NULL, '-', '-', '-', 'Pujiyati', 'Pujiyanti', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(762, '5031', '0063409546', '3a4e435c6d8f9c1f004f36da114dade44b24ec78', 'EMI DARYANI', 'P', 'Kendal', '2006-05-04', NULL, '-', '-', '-', 'Tumarni', 'Darmuji', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(763, '5035', '0062973313', '0848df030599ffe85ef6625de7a239be1ec7938b', 'IRFAN ASRORI', 'L', 'Kendal', '2006-11-28', NULL, '-', '-', '-', 'Marinah', 'Rahmat', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(764, '5037', '0068529137', 'c4340966d43cc9bc571df8c8b11cddd4ae66c767', 'ANAN AFIAN ANAM', 'L', 'Kendal', '2006-03-15', NULL, '-', '-', '-', 'Juwariyah', 'Slamet', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(765, '5278', '0065665294', 'fd725267f0fb490d24d50dc18ac1fc849ce066af', 'M.ARYA APRIANDI', 'L', 'Kendal', '2006-04-12', NULL, '-', '-', '-', 'Ratih Rahayu Ningsih', '', '-', 3, 11, 1, '2023-10-10 18:00:20', '2023-10-10 18:00:20'),
(766, '5279', '0058269501', 'bb23933b10fe34f985972ef59f6305f94c153b00', 'WILDAN TAFRIHAN M', 'L', 'Temanggung', '2005-06-18', NULL, '-', '-', '-', 'Mulatsih', 'Rizki Alif Mukti', '-', 3, 11, 1, '2023-10-10 18:00:21', '2023-10-10 18:00:21'),
(767, '5281', '3065915763', 'f1f5b6612e6f328acec23b66afac419fd21fd99e', 'AMADEO ANNINDITO', 'L', 'Kendal', '2006-09-22', NULL, '-', '-', '-', 'Mualiyah', '', '-', 3, 11, 1, '2023-10-10 18:00:22', '2023-10-10 18:00:22'),
(768, '5002', '0063832017', '1380583c4791abee698e858a807c92158bca1362', 'SAKDIYATUN NISA', 'P', 'Kendal', '2007-06-07', NULL, '-', '-', '-', 'Suamah', 'Misron (Almarhum)', '-', 3, 11, 1, '2023-10-10 18:00:22', '2023-10-10 18:00:22'),
(769, '5011', '0066835270', '165d1a6cca450e84bff3121080483afa595ed941', 'ABIT JOKO SAPUTRO', 'L', 'Kendal', '2006-09-23', NULL, '-', '-', '-', 'Mustawiyati', 'Teguh Joko Pratikno', '-', 3, 13, 1, '2023-10-10 18:00:23', '2023-10-10 18:00:23'),
(770, '5012', '0038887465', '0f4a692ca2083d63db29f676a25917368a26f2a4', 'ADI SETIYO', 'L', 'Temanggung', '2003-12-10', NULL, '-', '-', '-', 'Istikomah', 'Solihin', '-', 3, 13, 1, '2023-10-10 18:00:24', '2023-10-10 18:00:24'),
(771, '5013', '0066914932', 'd6f55f6856176af00cb987828308a4bfafef6bf0', 'AGENG DWIJAYA', 'L', 'Tangerang', '2006-06-23', NULL, '-', '-', '-', 'Catur Nilam Sari', 'Rihadi Soses Paryono', '-', 3, 13, 1, '2023-10-10 18:00:25', '2023-10-10 18:00:25'),
(772, '5014', '0055974071', '4d228255993b9d09e670fe18486596e374138b8b', 'ALI NURROHMAN', 'L', 'Kendal', '2005-10-15', NULL, '-', '-', '-', 'Ngatimah', 'Muhadi', '-', 3, 13, 1, '2023-10-10 18:00:25', '2023-10-10 18:00:25'),
(773, '5015', '0042077695', '517a0614a4ff29c593fa87677db634263cbfaa9a', 'ALIF ALFIROZA', 'L', 'Kendal', '2004-10-12', NULL, '-', '-', '-', 'Muslimatun', 'Rohadi', '-', 3, 13, 1, '2023-10-10 18:00:25', '2023-10-10 18:00:25'),
(774, '5016', '0061891213', '752ba10c0857f2ffbb787a78fdf62f7fa52cba3e', 'DAFA SYALUM RADITTIA', 'L', 'Kendal', '2006-10-30', NULL, '-', '-', '-', 'Setiawati', 'Senadi', '-', 3, 13, 1, '2023-10-10 18:00:25', '2023-10-10 18:00:25'),
(775, '5017', '3052147168', '9764b87e855028f34c0d0d0536c43d3fa68497e2', 'HANAFI MURTANI', 'L', 'Kendal', '2005-02-03', NULL, '-', '-', '-', 'Watini', 'Misliyen', '-', 3, 13, 1, '2023-10-10 18:00:26', '2023-10-10 18:00:26'),
(776, '5018', '0056636932', '88c444d2e74e86ec3161310aaac9f05e94d2f795', 'KHULQI FATINUL MUFID', 'L', 'Kendal', '2005-08-10', NULL, '-', '-', '-', 'Rodliyah', 'Furqon', '-', 3, 13, 1, '2023-10-10 18:00:26', '2023-10-10 18:00:26'),
(777, '5019', '3069540425', '1f469a1e5617c3e57b8b4d47be52f94be3097926', 'MUHAMAD BAYU SYAHPUTRA', 'L', 'Kendal', '2006-06-10', NULL, '-', '-', '-', 'Jamik Isniawati', 'Sajidin', '-', 3, 13, 1, '2023-10-10 18:00:26', '2023-10-10 18:00:26'),
(778, '5020', '0064141986', '149edb99b8aa9f0492042fa38c54b8c158515d87', 'MUHAMMAD ALFIN AINU ZACKY', 'L', 'Ciamis', '2006-07-25', NULL, '-', '-', '-', 'Sunarni', 'Wahyu Hidayat', '-', 3, 13, 1, '2023-10-10 18:00:26', '2023-10-10 18:00:26'),
(779, '5021', '0057167552', 'a00a39158386aaa1ddef8d86a032666253904993', 'NUR ASIKIN', 'L', 'Temanggung', '2005-05-05', NULL, '-', '-', '-', 'Turyati', 'Sarman', '-', 3, 13, 1, '2023-10-10 18:00:26', '2023-10-10 18:00:26'),
(780, '5022', '0078603602', '952b30a517723ccca4bea9c2702e9e85ceda8270', 'RYAN HAFED', 'L', 'Kendal', '2007-01-05', NULL, '-', '-', '-', 'Turahmi', 'Rohadi Rohman', '-', 3, 13, 1, '2023-10-10 18:00:26', '2023-10-10 18:00:26'),
(781, '5023', '3051908479', '282deb0aac3ad32ab2355fce5ca24a62c1620e82', 'ZAENAL KHUSNI', 'L', 'Kendal', '2005-08-02', NULL, '-', '-', '-', 'Ngapiyah', 'Muhni (Alm)', '-', 3, 13, 1, '2023-10-10 18:00:26', '2023-10-10 18:00:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  `user_full_name` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_description` text,
  `user_role_role_id` int(11) DEFAULT NULL,
  `user_is_deleted` tinyint(1) DEFAULT '0',
  `user_input_date` timestamp NULL DEFAULT NULL,
  `user_last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_full_name`, `user_image`, `user_description`, `user_role_role_id`, `user_is_deleted`, `user_input_date`, `user_last_update`) VALUES
(1, 'admin@admin.com', 'd3942dce589a8baf879be01b717184712b119a72', 'Administrator', NULL, 'Administrator', 1, 0, '2018-01-15 20:19:33', '2023-10-10 20:03:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`) VALUES
(1, 'SUPERUSER'),
(2, 'PETUGAS'),
(3, 'BENDAHARA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bebas`
--
ALTER TABLE `bebas`
  ADD PRIMARY KEY (`bebas_id`),
  ADD KEY `fk_bebas_payment1_idx` (`payment_payment_id`),
  ADD KEY `fk_bebas_student1_idx` (`student_student_id`);

--
-- Indexes for table `bebas_pay`
--
ALTER TABLE `bebas_pay`
  ADD PRIMARY KEY (`bebas_pay_id`),
  ADD KEY `fk_bebas_pay_bebas1_idx` (`bebas_bebas_id`),
  ADD KEY `fk_bebas_pay_users1_idx` (`user_user_id`);

--
-- Indexes for table `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`bulan_id`),
  ADD KEY `fk_bulan_payment1_idx` (`payment_payment_id`),
  ADD KEY `fk_bulan_month1_idx` (`month_month_id`),
  ADD KEY `fk_bulan_student1_idx` (`student_student_id`),
  ADD KEY `fk_bulan_users1_idx` (`user_user_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `debit`
--
ALTER TABLE `debit`
  ADD PRIMARY KEY (`debit_id`),
  ADD KEY `fk_jurnal_debit_users1_idx` (`user_user_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`information_id`),
  ADD KEY `fk_information_users1_idx` (`user_user_id`);

--
-- Indexes for table `kredit`
--
ALTER TABLE `kredit`
  ADD PRIMARY KEY (`kredit_id`),
  ADD KEY `fk_jurnal_kredit_users1_idx` (`user_user_id`);

--
-- Indexes for table `letter`
--
ALTER TABLE `letter`
  ADD PRIMARY KEY (`letter_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `fk_g_activity_log_g_user1_idx` (`user_id`);

--
-- Indexes for table `log_trx`
--
ALTER TABLE `log_trx`
  ADD PRIMARY KEY (`log_trx_id`),
  ADD KEY `fk_log_trx_bebas_pay1_idx` (`bebas_pay_bebas_pay_id`),
  ADD KEY `fk_log_trx_bulan1_idx` (`bulan_bulan_id`),
  ADD KEY `fk_log_trx_student1_idx` (`student_student_id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`majors_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `fk_payment_pos1_idx` (`pos_pos_id`),
  ADD KEY `fk_payment_period1_idx` (`period_period_id`);

--
-- Indexes for table `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`period_id`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `fk_student_class1_idx` (`class_class_id`),
  ADD KEY `fk_student_majors1_idx` (`majors_majors_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_user_user_role1_idx` (`user_role_role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bebas`
--
ALTER TABLE `bebas`
  MODIFY `bebas_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bebas_pay`
--
ALTER TABLE `bebas_pay`
  MODIFY `bebas_pay_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bulan`
--
ALTER TABLE `bulan`
  MODIFY `bulan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `debit`
--
ALTER TABLE `debit`
  MODIFY `debit_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kredit`
--
ALTER TABLE `kredit`
  MODIFY `kredit_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `letter`
--
ALTER TABLE `letter`
  MODIFY `letter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `log_trx`
--
ALTER TABLE `log_trx`
  MODIFY `log_trx_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `majors_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `period`
--
ALTER TABLE `period`
  MODIFY `period_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=782;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bebas`
--
ALTER TABLE `bebas`
  ADD CONSTRAINT `fk_bebas_payment1` FOREIGN KEY (`payment_payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bebas_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `bebas_pay`
--
ALTER TABLE `bebas_pay`
  ADD CONSTRAINT `fk_bebas_pay_bebas1` FOREIGN KEY (`bebas_bebas_id`) REFERENCES `bebas` (`bebas_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bebas_pay_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `bulan`
--
ALTER TABLE `bulan`
  ADD CONSTRAINT `fk_bulan_month1` FOREIGN KEY (`month_month_id`) REFERENCES `month` (`month_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bulan_payment1` FOREIGN KEY (`payment_payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bulan_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bulan_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `debit`
--
ALTER TABLE `debit`
  ADD CONSTRAINT `fk_jurnal_debit_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `information`
--
ALTER TABLE `information`
  ADD CONSTRAINT `fk_information_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `kredit`
--
ALTER TABLE `kredit`
  ADD CONSTRAINT `fk_jurnal_kredit_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `fk_g_activity_log_g_user1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `log_trx`
--
ALTER TABLE `log_trx`
  ADD CONSTRAINT `fk_log_trx_bebas_pay1` FOREIGN KEY (`bebas_pay_bebas_pay_id`) REFERENCES `bebas_pay` (`bebas_pay_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_log_trx_bulan1` FOREIGN KEY (`bulan_bulan_id`) REFERENCES `bulan` (`bulan_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_log_trx_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_period1` FOREIGN KEY (`period_period_id`) REFERENCES `period` (`period_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_payment_pos1` FOREIGN KEY (`pos_pos_id`) REFERENCES `pos` (`pos_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_class1` FOREIGN KEY (`class_class_id`) REFERENCES `class` (`class_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_student_majors1` FOREIGN KEY (`majors_majors_id`) REFERENCES `majors` (`majors_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_user_role1` FOREIGN KEY (`user_role_role_id`) REFERENCES `user_roles` (`role_id`) ON DELETE SET NULL ON UPDATE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
