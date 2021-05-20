-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 20 Bulan Mei 2021 pada 14.59
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `nama`, `email`, `password`) VALUES
(6, 'Ali Nur', 'alinur@gmail.com', '$2y$10$ATfbI5U3SuGL0hUFm.aQ0OIkrjR6s7mj.mRStlagf8pR/O2Cg4sz6'),
(7, 'Nur', 'nur@gmail.com', '$2y$10$FK.DyNIFVyvQFKLtVT6B.uDZwnwmH5rf65dAKKrb6av0oQkz19dA.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member_token`
--

CREATE TABLE `member_token` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member_token`
--

INSERT INTO `member_token` (`id`, `member_id`, `auth_key`) VALUES
(6, 6, 'nqsXrmXOghTHbbyMU7DXFsu3yQgBstueAndsX3hROV6To6dWE4URzyNl8TIdJga1jkRF4zJlZusdpzt8MU4LEm1o0BwRcYoFx0sa'),
(7, 6, 's0i7ofxysVysXyg8NrSWdYxZgsfTDp6jx7TRTW6FuoHMRo1Rsnd9qxaqOqOTHURbWVBIrdYGJCOfUX7YlLdd1h7s0DMAAhwELp6o'),
(8, 6, '7hXafNJd7jwuu7dwhQ9gQdKsVQ8rAxdlFW0L2ud6l2Bbt0GwssTVTuE93UUcerdTbcaej4vqcoO6PQME0smleudK4kTxTREWJUKa'),
(9, 7, 'Uq0nJFlO1Qp0hpdauUmTQ5OQXg8sWuLnOmkuVV5QdttW03NMjtQOZmL1pMIdVbnYJHirFt7tjHuxXHidfdsETlFjJRY6wWHDEsK0'),
(10, 7, 'HHPKiysWvrxSW8GebTcNuPtrdR5Q2ooMbEtbvIrXkZxAbsIdSivn3iQiX1MP0Z2IzKO7Td4QSjBaxABUA47nMu0fTsoHn0XmQNMg'),
(11, 6, 'h1enqlcLGmp3lkHZ9odbuvmdSmqd9fOUjMBd1Kn9sCRxX5HSSplpl3hVWNbt8d1vsoR49HdXsETrPzFEsi6UdOPLTkNdOQmLE1Uy'),
(12, 7, 'RE42sP0fIRupKyXmPpEZV7d3a6Pnq251fOf7vqd6hJqKWr3YXWvAutZCdFdMZ7kBsxdwRsLL1XHdHZWvWjU3Uw5kBjdDxw28WwN6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `harga`) VALUES
(3, 'A001', 'Kulkas Sharp', 2500000),
(4, 'A002', 'Kulkas Polytron', 2000000),
(5, 'A003', 'AC Panasonic', 3100000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `member_token`
--
ALTER TABLE `member_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `member_token`
--
ALTER TABLE `member_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `member_token`
--
ALTER TABLE `member_token`
  ADD CONSTRAINT `member_token_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
