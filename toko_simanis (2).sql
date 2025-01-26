-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2025 pada 13.34
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_simanis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(12345, 'admin01', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(10) NOT NULL,
  `no_telfon` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `username`, `password`, `no_telfon`) VALUES
(1, 'cobalagi1', 'cobacoba', '085184611526'),
(123456, 'kristina_angel', 'kristin00', '085184611526'),
(1234567, 'kadek_agus20', '202020', '089635011400'),
(1234568, 'arinda_sarfina', '121212', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_username` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `bukti_pembayaran` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `waktu_pesanan` date NOT NULL,
  `status_pesanan` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_pelanggan`, `waktu_pesanan`, `status_pesanan`, `alamat`, `id_produk`, `kuantitas`, `subtotal`) VALUES
(29, 1, '2025-01-16', 'Sedang Diproses', 'gatsu', 12, 2, 60000),
(30, 1, '2025-01-16', 'Sedang Diproses', 'gatsu', 13, 1, 40000),
(31, 1, '2025-01-16', 'Sedang Diproses', 'gatsu', 15, 1, 45000),
(32, 1, '2025-01-16', 'Sedang Diproses', 'gatsu', 12, 2, 60000),
(33, 1, '2025-01-16', 'Sedang Diproses', 'gatsu', 13, 1, 40000),
(34, 1, '2025-01-16', 'Sedang Diproses', 'batanta', 13, 1, 40000),
(35, 1, '2025-01-16', 'Sedang Diproses', 'batanta', 15, 1, 45000),
(37, 1, '2025-01-19', 'Sedang Diproses', 'jln. batanta no. 21x', 23, 1, 15000),
(38, 1, '2025-01-19', 'Sedang Diproses', 'jln. batanta no. 21x', 14, 1, 45000),
(39, 1234568, '2025-01-19', 'Sedang Diproses', 'jln. batanta no. 21x', 22, 1, 20000),
(40, 1234568, '2025-01-19', 'Sedang Diproses', 'jln. batanta no. 21x', 17, 1, 25000),
(41, 1, '2025-01-19', 'Sedang Diproses', 'jalan. batanta 17', 22, 2, 40000),
(42, 1, '2025-01-19', 'Sedang Diproses', 'jalan. batanta 17', 17, 1, 25000),
(43, 1, '2025-01-19', 'Sedang Diproses', 'jalan. batanta 17', 12, 1, 30000),
(44, 1, '2025-01-19', 'Sedang Diproses', 'jalan. batanta 17', 22, 2, 40000),
(45, 1, '2025-01-19', 'Sedang Diproses', 'jalan. batanta 17', 17, 1, 25000),
(46, 1, '2025-01-19', 'Sedang Diproses', 'jalan. batanta 17', 12, 1, 30000),
(47, 1, '2025-01-19', 'Sedang Diproses', 'jalan. batanta 17', 22, 2, 40000),
(48, 1, '2025-01-19', 'Sedang Diproses', 'jalan. batanta 17', 17, 1, 25000),
(49, 1, '2025-01-19', 'Sedang Diproses', 'jalan. batanta 17', 12, 1, 30000),
(50, 1, '2025-01-19', 'Sedang Diproses', 'jalan. batanta 17', 16, 1, 25000),
(51, 1, '2025-01-19', 'Sedang Diproses', 'jln. batanta no. 21x', 12, 1, 30000),
(52, 1, '2025-01-19', 'Sedang Diproses', 'jln. batanta no. 21x', 16, 1, 25000),
(53, 1, '2025-01-19', 'Sedang Diproses', 'jln. batanta no. 21x', 18, 1, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(120) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `harga` int(6) NOT NULL,
  `deskripsi_produk` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `foto`, `harga`, `deskripsi_produk`) VALUES
(12, 'carrot cake', 'EzHi8Nqc2QRLOJ2luBbC.jpeg', 30000, '                    Kue manis dengan rasa unik dengan campuran wortel.                '),
(13, 'Red Velvet', 'lRj96TYMKvzPTs64Ukdf.jpeg', 40000, '                                                           kue coklat kemerahan dengan paduan gurih dari cheese cream.  '),
(14, 'Basque Cheese Cake', 'Jg9TDOOc0owDB1ToaXaK.jpeg', 45000, 'Kue keju dengan hint smooky diluarnya. '),
(15, 'Oreo Cheese Cake', 'zeF9mvDSRX8IGcIgZgGZ.jpeg', 45000, 'Paduan gurihnya cheese cake dengan Oreo.'),
(16, 'Choco Marble Cake', 'nMGW7wINyIskwIRGDDmd.jpeg', 25000, '                    Kue dengan tampilan abstrak dengan rasa gurih dari butter.                '),
(17, 'Fudgy Brownies', 'OWmqmpPT6Pd79lXqtJBK.jpeg', 25000, ' jenis brownies yang memiliki tekstur lembut, lengket dan padat.'),
(18, 'Strawberry Mini Macaroon', 'gPp6w53Nc3GuTMgZXdcX.jpg', 50000, 'Makarun mini dengan tambahan buah stroberi'),
(19, 'Chocolate Bomboloni', '5XMtjaeBZp26ZmYU7Njp.jpg', 25000, 'Donat dengan filling coklat lumer'),
(20, 'Red Velvet Cookies', 'xCZ7skxr4jsYZzMlaizx.jpg', 15000, 'Kukis varian red velvet dengan paduan coklat putih.'),
(21, 'Double Choco Cookies', 'xAmOEWTKEEfnVouUpI4h.jpeg', 15000, '                    Kukis coklat dengan potongan tambahan potongan coklat.                '),
(22, 'Choco Muffin', 'yUODY1fMwo7Uw2otZjuk.jpg', 20000, 'Kue mufin coklat dengan isian choco cips.'),
(23, 'Red  Velvet Cup Cake', 'ellY7aJloDbpgu8mGcfy.jpg', 15000, 'Kue muffin red velvet dengan Cheese Cream.'),
(24, 'Matcha Strawberry Cake', 'GRaUqfzPeJT0Z4mq3vLx.jpg', 35000, 'Kue dengan paduan rasa matcha dan buah stoberi.'),
(25, 'Matcha Muffin', 'PenXZaAEGOtoZxxkbHOQ.jpg', 25000, 'Kue mufin dengan rasa matcha.'),
(26, 'Double Matcha Macaroon', 'Ueg90pRfZKpI8L3F0IUd.jpg', 55000, 'Paduan makarun matcha dengan cream matcha. '),
(27, 'Matcha Cookies', 'Jh8dIe2v7EDmq93CvsBJ.jpg', 20000, 'Kukis matcha dengan keju dan coklat putih.'),
(28, 'Blueberry Cheese Muffin', 'D58pUGJ7YtJUBQrAoEeC.jpg', 30000, 'Kue mufin vanila dengan campuran blueberry dan cheese cream.'),
(29, 'Blueberry Swirl Cheese Cake', 'z8gTqNXApLY1AT1q8Jow.jpg', 40000, 'Kue keju dengan tambahan buah Blueberry.'),
(30, 'Blueberry Chiffon Cake', 'obQe0I7X3cy9s4u0kCNM.jpg', 35000, 'Kue lembut dengan tambahan Blueberry Cream.'),
(31, 'Blueberry Cookies', 'pV5bXeGlZY6gIDZvaw4u.jpg', 25000, 'Kukis dengan paduan Blueberry dan Keju.'),
(36, 'Strawberry Panacotta', 'M25R1PV9gyFtz6dkXfVU.jpeg', 15000, 'Pudding segar nan lembut dengan paduan stroberi'),
(42, 'Mango Panacotta', 'LQh5OybdDELkghHM3Wff.jpeg', 15000, 'Pudding yang segar nan lembut dengan paduan mangga.'),
(43, 'Mango Panacotta', 'MHbzURJ62dBjFoi6VId5.jpeg', 15000, 'Pudding dengan texture lembut dan menyegarkan'),
(44, 'Strawberry Panacotta', 'HWGyzG7yJAQzHJcsCTX6.jpeg', 15000, 'Pudding manis dengan teksture lembut berpadu buah stroberi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `fk_id_pelanggan` (`id_pelanggan`),
  ADD KEY `fk_id_produk` (`id_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12346;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234569;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_id_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `fk_id_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
