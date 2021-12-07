-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2021 pada 13.43
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rfidui`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_daftarrfid`
--

CREATE TABLE `tb_daftarrfid` (
  `id` int(100) NOT NULL,
  `rfid` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `saldo` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_daftarrfid`
--

INSERT INTO `tb_daftarrfid` (`id`, `rfid`, `nama`, `alamat`, `telepon`, `saldo`) VALUES
(1, 'ASDF123', 'admin', 'indonesia', '1234', 39000),
(2, 'ASDF124', 'Dezan', 'Bogor', '12352637', 43000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_monitoring`
--

CREATE TABLE `tb_monitoring` (
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rfid` varchar(100) NOT NULL,
  `bayar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_monitoring`
--

INSERT INTO `tb_monitoring` (`tanggal`, `rfid`, `bayar`) VALUES
('2021-12-06 18:22:42', 'ASDF123', '1000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_simpan`
--

CREATE TABLE `tb_simpan` (
  `no` int(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rfid` varchar(100) NOT NULL,
  `saldo_awal` int(255) NOT NULL,
  `bayar` int(255) NOT NULL,
  `saldo_akhir` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_simpan`
--

INSERT INTO `tb_simpan` (`no`, `tanggal`, `rfid`, `saldo_awal`, `bayar`, `saldo_akhir`) VALUES
(73, '2021-12-07 04:58:24', 'ASDF123', 100000, 1000, 99000),
(74, '2021-12-07 04:59:51', 'ASDF124', 99000, 2000, 97000),
(75, '2021-12-07 05:40:09', 'ASDF123', 99000, 1000, 98000),
(76, '2021-12-06 18:03:36', 'ASDF123', 98000, 9000, 89000),
(77, '2021-12-06 18:04:23', 'ASDF123', 89000, 9000, 80000),
(78, '2021-12-06 18:04:58', 'ASDF123', 80000, 9000, 71000),
(79, '2021-12-06 18:07:02', 'ASDF123', 71000, 9000, 62000),
(80, '2021-12-06 18:07:17', 'ASDF123', 62000, 9000, 53000),
(81, '2021-12-06 18:08:09', 'ASDF123', 53000, 9000, 44000),
(82, '2021-12-06 18:08:46', 'ASDF124', 44000, 9000, 35000),
(83, '2021-12-06 18:17:58', 'ASDF124', 44000, 1000, 43000),
(84, '2021-12-06 18:19:27', 'ASDF123', 44000, 1000, 43000),
(85, '2021-12-06 18:20:20', 'ASDF123', 43000, 1000, 42000),
(86, '2021-12-06 18:21:25', 'ASDF123', 42000, 2000, 40000),
(87, '2021-12-06 18:22:42', 'ASDF123', 40000, 1000, 39000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'user1', 'user1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_daftarrfid`
--
ALTER TABLE `tb_daftarrfid`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_simpan`
--
ALTER TABLE `tb_simpan`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_daftarrfid`
--
ALTER TABLE `tb_daftarrfid`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_simpan`
--
ALTER TABLE `tb_simpan`
  MODIFY `no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
