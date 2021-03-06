-- phpMyAdmin SQL Dump
-- version 4.2.9.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: 29 Apr 2015 pada 15.53
-- Versi Server: 5.5.40
-- PHP Version: 5.4.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rploot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
`id_bank` int(8) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('712e572c2e651bafbb7fb14647af81be', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36', 1430347571, 'a:4:{s:5:"email";s:9:"mahasiswa";s:6:"userid";s:1:"2";s:12:"is_logged_in";b:1;s:5:"level";s:9:"mahasiswa";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dorm_room`
--

CREATE TABLE IF NOT EXISTS `dorm_room` (
`roomid` int(8) NOT NULL,
  `nomor` int(3) NOT NULL,
  `fasilitas` varchar(32) NOT NULL,
  `status` varchar(20) NOT NULL,
  `kapasitas` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `dorm_room`
--

INSERT INTO `dorm_room` (`roomid`, `nomor`, `fasilitas`, `status`, `kapasitas`) VALUES
(31, 88, 'dijwi', 'awdawd', 1),
(32, 111, '1', 'asdasd', 1),
(33, 44, '44', 'vbhjck', 44);

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE IF NOT EXISTS `files` (
`id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `files`
--

INSERT INTO `files` (`id`, `filename`, `title`, `userid`, `url`) VALUES
(9, 'download_(1).jpg', '33', '2', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
`ticketid` int(5) NOT NULL,
  `jenis` varchar(13) NOT NULL,
  `userid` int(5) NOT NULL,
  `deskripsi` varchar(32) NOT NULL,
  `status` varchar(13) NOT NULL,
  `lampiran` varchar(100) NOT NULL,
  `file` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`userid` int(3) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(32) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `no. rek` int(13) NOT NULL,
  `kontak` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `email`, `password`, `level`, `nama`, `alamat`, `gender`, `no. rek`, `kontak`) VALUES
(1, 'admin', 'admin', 'admin', '', '', '', 0, ''),
(2, 'mahasiswa', 'mahasiswa', 'mahasiswa', '', '', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
 ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`session_id`), ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `dorm_room`
--
ALTER TABLE `dorm_room`
 ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
 ADD PRIMARY KEY (`ticketid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
MODIFY `id_bank` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dorm_room`
--
ALTER TABLE `dorm_room`
MODIFY `roomid` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
MODIFY `ticketid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `userid` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
