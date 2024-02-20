-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2024 pada 08.12
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_fajar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `kode_admin` varchar(12) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `role` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `password`, `kode_admin`, `no_tlp`, `role`) VALUES
(1, 'bambang subroto', '1234', 'admin1', '085749051409', 'admin'),
(2, 'esti sitanggang', '4321', 'admin2', '085870283409', 'petugas'),
(3, 'sultan', '12345', '123', '0878278912', ''),
(7, 'sultan', '54321', '54321', '083189731', 'petugas'),
(8, 'fajar ', '123', 'admin035', '0878278912', 'admin'),
(9, 'han', '123', '001', '123', 'admin'),
(10, 'ann', '123', '009', '88', 'admin'),
(14, 'iaa', '123', '096', '009765', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(255) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `buku_deskripsi` text NOT NULL,
  `isi_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `kategori`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_halaman`, `buku_deskripsi`, `isi_buku`) VALUES
('65d41b6447d60.jpeg', 'KB0001', 'bisnis', 'Ilmu Pendidikan', 'Dr. Rahmat Hidayah, MA', 'Lembaga Peduli Pengmbangan Pendidikan Indonesia (LPPPI)', '2019-09-20', 338, 'ILMU PENDIDIKAN konsep,teori dan aplikasinya', 'Buku Ilmu Pendidikan Rahmat Hidayat & Abdillah.pdf'),
('65d41d52df720.jpeg', 'KB0002', 'novel', 'Pengantar Ilmu Pendidikan', 'Dr, H, Mohammad Kosim, M,Ag', 'feni erfiana', '2021-01-12', 124, 'pengantar ilmu pendidikan', 'Pengantar Ilmu Pendidikan Mohammad Kosim.pdf'),
('65d41e56bc0d0.jpeg', 'KB0003', 'novel', 'PENGANTAR ILMU PENDIDIKAN', 'DR, TAUFIK ABDILLAH SYUKUR, MA', 'hanafie', '2022-01-31', 82, 'PENGANTAR ILMU PENDIDIKAN', 'pengantar ilmu pendidikan fix.pdf'),
('65d41f9798c4f.jpeg', 'KB0004', 'novel', 'PENDIDIKAN BERETIKA&amp;BERBUDAYA', 'Prof, Dr, Sugiyono, M.Pd.', 'badan penelitian dan pengembangan kementrian pendidikan dan kebudayaan tahun 2014', '2014-11-04', 143, 'PENDIDIKAN BERETIKA&amp;BERBUDAYA', 'buku-pendidikan-yang-beretika-dan-berbudaya-1.pdf'),
('65d420d95eb57.jpeg', 'KB0005', 'novel', 'ILMU PENDIDIKAN', 'Mukhlison Effendi', 'STAIN Po Press Jl. pramuka156 ponorogo telp(0382) 481277 e-Mail: stain_popress@yahoo.com', '2006-01-06', 74, 'ILMUPENDIDIKAN', 'Buku Ilmu Pendidikan-dikonversi.pdf'),
('65d421bcaf942.jpeg', 'KB0006', 'novel', 'LANDASAN PENDIDIKAN ', 'Nurhuda', 'ahlimedia press (anggota IKAPI:264/JTI/2020)', '2022-01-08', 254, 'LANDASAN PENDIDIKAN', 'Landasan Pendidikan.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_buku`
--

INSERT INTO `kategori_buku` (`kategori`) VALUES
('bisnis'),
('filsafat'),
('informatika'),
('novel'),
('sains');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `nisn` int(11) NOT NULL,
  `kode_member` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tgl_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`nisn`, `kode_member`, `nama`, `password`, `jenis_kelamin`, `kelas`, `jurusan`, `no_tlp`, `tgl_pendaftaran`) VALUES
(0, 'name09', 'hezka', '$2y$10$YRzJC/b1xJslnSaRUjvwuO8..D7kzgkuMkwKu3HRNCfEjWTyJU39W', 'Laki laki', 'XII', 'Teknik Otomotif', '76476587', '2024-02-12'),
(5678, 'name06', 'nadia', '$2y$10$VAS6sXKzP1iSGxvx1mzmie81vgdwA.d.k6IwIMQaQXOV.F9ECIjkq', 'Laki laki', 'XII', 'Desain Pemodelan Informasi Bangunan', '08917298', '2023-03-04'),
(212210033, '005', 'abi', '$2y$10$bjw5L4sFPe4R2laTsv0YJO1SusIIRDkTO1DYeK2yhg3dLDNk.KK26', 'Laki laki', 'XII', 'Rekayasa Perangkat Lunak', '082108080808', '2024-01-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `buku_kembali` date NOT NULL,
  `keterlambatan` enum('YA','TIDAK') NOT NULL,
  `denda` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_admin` (`kode_admin`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kategori`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `kode_member` (`kode_member`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_peminjaman` (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_buku` (`kategori`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
