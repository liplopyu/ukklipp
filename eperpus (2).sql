-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Mar 2024 pada 10.30
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eperpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(12) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahun_terbit` int(12) DEFAULT NULL,
  `sinopsis` longtext DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `sinopsis`, `cover`) VALUES
(13, 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', 2005, 'Laskar Pelangi merupakan novel yang terinspirasi dari kisah nyata kehidupan Andrea Hirata selaku penulis yang mana saat itu dirinya bertempat tinggal di Desa Gantung, Kabupaten Gantung, Belitung Timur. Berkenaan dengan hal tersebut, mudah bagi si penulis merepresentasikan berbagai unsur sosial dan budaya masyarakat Belitung ke dalam bentuk cerita di novel Laskar Pelangi ini secara apik.\r\n\"Bangunan itu nyaris rubuh. Dindingnya miring bersangga sebalok kayu. Atapnya bocor dimana-mana. Tetapi, berpasang-pasang mata mungil menatap penuh harap. Hendak kemana lagikah mereka harus bersekolah selain tempat itu? Tak peduli seberat apapun kondisi sekolah itu, sepuluh anak dari keluarga miskin itu tetap bergeming. Didada mereka, telah menggumpal tekad untuk maju.\"\r\nLaskar Pelangi, kisah perjuangan anak-anak untuk mendapatkan ilmu. Diceritakan dengan lucu dan menggelitik, novel ini menjadi novel terlaris di Indonesia. Inspiratif dan layak dimiliki siapa saja yang mencintai pendidikan dan keajaiban masa kanak-kanak.', 'laskar_pelangi_65e53bfba6ad3.jpg'),
(14, 'Atomic Habits', 'James Clear', 'Penguin Us', 2020, 'Perubahan Kecil, Hasil Luar Biasa!\r\nJika Anda kesulitan mengubah kebiasaan, masalahnya bukan Anda. Masalahnya adalah sistem Anda. Kebiasaan buruk berulang lagi dan lagi bukan karena Anda tidak ingin berubah, tetapi karena Anda memiliki sistem perubahan yang salah. Anda tidak naik ke tingkat tujuan Anda. Anda jatuh ke tingkat sistem Anda. Di sini, Anda akan mendapatkan sistem terbukti yang dapat membawa Anda ke tingkat yang lebih tinggi. Atomic Habits akan membentuk kembali cara Anda berpikir tentang kemajuan dan kesuksesan, dan memberi Anda alat dan strategi yang Anda butuhkan untuk mengubah kebiasaan Anda--apakah Anda adalah tim yang ingin memenangkan kejuaraan, organisasi yang berharap untuk mendefinisikan kembali industri, atau sekadar individu yang ingin berhenti merokok, menurunkan berat badan, mengurangi stres, atau mencapai tujuan lain.', 'atomic_habits_65e53f77e4b3d.jpg'),
(15, 'Mustika Zakar Celeng', ' ADIA PUJA', 'Gramedia Pustaka Utama', 2023, '“Tidak bisakah kau bertahan sedikit lebih lama, Kang? Setidaknya sekali dalam hidup, aku ingin merasa dipuaskan.” Pengakuan mencengangkan Nurlela ini membuat Tobor hancur. Pernikahan berusia sebelas tahun mereka berada di tubir perpisahan oleh perkara hubungan badan. Nurlela didera ragam penyesalan, sedangkan Tobor mencoba beragam cara agar urusan ranjang ini terselesaikan. Mulai dari yang medis, hingga mistis. Termasuk mencari sosok mitos Ratu Siluman Celeng dan meminta kesaktikan dari mustika berbentuk zakar. * “Mustika Zakar Celeng sepertinya hendak melakukan rekonsiliasi antara realitas sosial dengan mitos, komik dengan tragedi, realisme dengan surealisme. Isu seksual dikembangkan menjadi isu sosial, lalu menjadi isu politik yang menggambarkan kesia-siaan tokohnya yang mencari kekuasaan tapi berakhir pada ketidakberdayaan.”', 'mustika_zakar_celeng_65e54f5c12efe.jpg'),
(16, 'Bumi', 'Tere Liye', 'SABAKGRIP', 2022, 'Novel ini mengisahkan tentang petualangan 3 remaja yang berusia 15 tahun bernama Raib, Ali dan Seli. Namun mereka bukanlah remaja biasa, melainkan remaja yang memiliki kekuatan khusus seperti Raib yang bisa menghilang, Seli yang bisa mengeluarkan petir dan Ali seorang pelajar yang sangat jenius. Petualangan menjelajah dunia paralel mereka dimulai dari sini, dunia paralel yang pertama mereka jelajahi adalah Klan Bulan. \r\nTetapi mereka tidak hanya sekedar menjelajah saja, melainkan mereka harus bertarung untuk menyelamatkan dunia paralel dari orang-orang jahat. Orang-orang jahat tersebut yakni bernama Tamus. Tamus memiliki ambisi untuk menguasai dunia, oleh karena itu ia berusaha untuk membebaskan seorang pangeran yang sangat kuat dan memiliki ambisi yang sama. Pangeran tersebut sedang dipenjara yang disebut \"Penjara Bayangan dibawah Bayangan\". Pangeran tersebut bernama Si Tanpa Mahkota. ', 'bumi_65e550022190f.jpg'),
(17, 'Solo Leveling', 'Chu-gong', 'm&c!', 2022, 'Sung Jinwoo merupakan seorang Hunter yang ada pada rank paling bahwa yaitu, E-Rank. Jinwoo sering dianggap lemah dan dipandang sebelah mata oleh teman-teman satu profesinya sehingga ia lebih sering dijauhi. Namun, ketika terjebak dalam dungeon misterius yang tidak terdeteksi, Jinwoo mengalami kebangkitan dan dan mendapatkan kekuatan baru. Kebangkitan Jinwoo dipilih oleh program bernama System yang mengubahnya menjadi pemain. Lewat System tersebut memungkinkan Jinwoo bisa menaikkan levelnya sendirian dan menghancurkan tiap monster yang ia temui.\r\n\r\nMenjadi semakin kuat, Jinwoo mulai melakukan eksplorasi dan terlibat dalam berbagai misi untuk bertempur dengan monster serta makhluk supernatural lainnya. Kemampuan Jinwoo yang tidak biasa menarik perhatian para musuh yang lebih kuat yang ingin mengalahkannya. Jinwoo pun menyadari bahwa ada banyak rahasia dibalik kebangkitannya yang misterius dan kemampuan barunya yang sangat super lebih dari yang ia bayangkan.', 'solo_leveling_65e551102b2af.jpg'),
(20, 'Naruto', 'Masashi Kishimoto', 'Shueisha', 2002, 'Cerita manga Naruto ini dimulai ketika seekor monster rubah ekor sembilan atau disebut Kyuubi menyerang Konoha, sebuah desa shinobi yang terletak di negara Api. Kekacauan terjadi di desa Konoha dan korban banyak berjatuhan. Akhirnya ada seseorang yang berhasil melenyapkan Kyuubi dengan menyegel sebagian chakra Kyuubi itu ke tubuhnya sendiri dan sisanya disegel ke tubuh Naruto, orang yang berhasil menyegel monster rubah ekor sembilan itu dikenal sebagai Yondaime Hokage, Hokage ke-4 atau Minato Namikaze yang tidak lain adalah ayah dari Naruto. Penyegelan itu menggunakan jurus Dewa Kematian sehingga risikonya adalah kematian Hokage ke-4 sendiri.', 'naruto_65e5553bcba23.jpg'),
(21, 'The Girl who Fell Beneath the Sea', 'Axie Oh', 'Elex Media Komputindo', 2023, 'Badai mematikan telah merusak tanah kelahiran Mina selama beberapa generasi. Banjir menyapu seluruh desa, sementara perang berdarah dikobarkan untuk memperebutkan sumber daya yang tersisa. Masyarakat di desa Mina memercayai bahwa Dewa Laut mengutuk mereka dengan kematian dan keputusasaan. Dalam upaya untuk menenangkan Dewa Laut, setiap tahun seorang gadis cantik dibuang ke laut untuk menjadi pengantin Dewa Laut, dengan harapan suatu hari \"pengantin sejati\" akan dipilih dan mengakhiri penderitaan mereka. Shim Cheong adalah gadis tercantik di desa, sekaligus kekasih Joon. Banyak yang percaya dialah pengantin sejati Dewa Laut Tapi pada malam Cheong hendak dikorbankan, Joon mengikuti Cheong, meski tahu bahwa ikut campur akan dihadiahi hukuman mati. Untuk menyelamatkan kakaknya, Mina terjun ke air menggantikan Cheong. Kecantikan Mina memang tidak sebanding dengan para pengantin terdahulu. Tapi dia sudah tersapu ke Alam Roh. Kini Mina tak punya banyak waktu untuk menemukan Dewa Laut sebelum dirinya sendiri berubah menjadi arwah. Berbekal kemampuan mendongeng dan bantuan para arwah, Mina harus berhasil menemukan Dewa Laut.', 'the_girl_who_fell_beneath_the_sea_65e56fb46238e.jpg'),
(22, 'IOT', 'IOT', 'IOT', 2024, 'TES', 'iot_65e5918aa0962.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoribuku`
--

CREATE TABLE `kategoribuku` (
  `id` int(12) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategoribuku`
--

INSERT INTO `kategoribuku` (`id`, `nama_kategori`) VALUES
(41, 'Bebas'),
(39, 'Manga'),
(38, 'Manwha'),
(37, 'Novel'),
(36, 'Pengembangan Diri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoribuku_relasi`
--

CREATE TABLE `kategoribuku_relasi` (
  `id` int(12) NOT NULL,
  `buku_id` int(12) DEFAULT NULL,
  `kategori_id` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategoribuku_relasi`
--

INSERT INTO `kategoribuku_relasi` (`id`, `buku_id`, `kategori_id`) VALUES
(11, 13, 37),
(12, 14, 36),
(13, 15, 37),
(14, 16, 37),
(15, 17, 38),
(18, 20, 39),
(20, 22, 41);

-- --------------------------------------------------------

--
-- Struktur dari tabel `koleksi`
--

CREATE TABLE `koleksi` (
  `id` int(11) NOT NULL,
  `userid` int(12) DEFAULT NULL,
  `bukuid` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `koleksi`
--

INSERT INTO `koleksi` (`id`, `userid`, `bukuid`) VALUES
(15, 49, 13),
(19, 49, 16),
(20, 49, 21),
(21, 53, 15),
(22, 53, 20),
(23, 53, 17),
(24, 53, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `userid` int(12) DEFAULT NULL,
  `bukuid` int(12) DEFAULT NULL,
  `tanggal_peminjaman` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `status` enum('sudah dikembalikan','belum dikembalikan') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `userid`, `bukuid`, `tanggal_peminjaman`, `tanggal_pengembalian`, `status`) VALUES
(55, 49, 13, '2024-03-04', '2024-03-04', 'sudah dikembalikan'),
(56, 49, 14, '2024-03-04', '2024-03-04', 'sudah dikembalikan'),
(57, 50, 14, '2024-03-04', '2024-03-04', 'sudah dikembalikan'),
(58, 53, 15, '2024-03-04', '2024-03-07', 'sudah dikembalikan'),
(59, 53, 13, '2024-03-04', '2024-03-04', 'belum dikembalikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasan`
--

CREATE TABLE `ulasan` (
  `id` int(12) NOT NULL,
  `userid` int(12) DEFAULT NULL,
  `bukuid` int(12) DEFAULT NULL,
  `ulasan` longtext DEFAULT NULL,
  `rating` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ulasan`
--

INSERT INTO `ulasan` (`id`, `userid`, `bukuid`, `ulasan`, `rating`) VALUES
(13, 49, 13, 'alur  nya bagus ga bosan', 5),
(14, 49, 14, 'biasa aja', 3),
(15, 50, 14, 'seruuu', 5),
(16, 53, 15, 'seru', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `role` enum('admin','petugas','peminjam') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `fullname`, `alamat`, `role`) VALUES
(48, 'admin', '$2y$10$YEERiLqbB7nrII.PlHL9O.q.cQdbitruMTQrZo5nZOAAkWZ68POCK', 'admin@mail.com', 'admin', 'medan', 'admin'),
(49, 'tes', '$2y$10$cUKI2hGaZL6N/zzBQ3pk9uNeyNkUkxuCkln3msVCfcVYtVkOnyp2K', 'user@mail.comaaas', 'user', 'medan', 'peminjam'),
(50, 'alip', '$2y$10$pBTVUUovpztdFDDEFWopKOiekrEOURcj65gSCBxb9/7cZDk2Jejwq', 'alip@gmail.com', 'alip', 'medan', 'peminjam'),
(52, 'petugas', '$2y$10$Kh5pWhguvzq2J/4PR1QB6unBn1b2UbqdxVi1Rfvn26dx21EXAN1iu', 'petugas@mail.com', 'petugas', 'medan', 'peminjam'),
(53, 'asrull', '$2y$10$4Q.Ty8/AWHKI605Jj1wYyeKCV5HkGH64yiDiXXW.CfP2rOzApMxMu', 'asrul@mail.com', 'asrul', 'medan', 'peminjam'),
(54, 'petugas2', '$2y$10$fj3/B3KcqVxv3B5ksnaqAu4OohEq6LfBi7WP3yct8whGEG./U63Ai', 'petugas2@mail.com', 'petugas2', 'medan', 'petugas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoribuku`
--
ALTER TABLE `kategoribuku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_kategori` (`nama_kategori`);

--
-- Indeks untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buku_id` (`buku_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `koleksi`
--
ALTER TABLE `koleksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `bukuid` (`bukuid`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `bukuid` (`bukuid`);

--
-- Indeks untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `bukuid` (`bukuid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `kategoribuku`
--
ALTER TABLE `kategoribuku`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `koleksi`
--
ALTER TABLE `koleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_1` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`),
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_2` FOREIGN KEY (`kategori_id`) REFERENCES `kategoribuku` (`id`);

--
-- Ketidakleluasaan untuk tabel `koleksi`
--
ALTER TABLE `koleksi`
  ADD CONSTRAINT `koleksi_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `koleksi_ibfk_2` FOREIGN KEY (`bukuid`) REFERENCES `buku` (`id`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`bukuid`) REFERENCES `buku` (`id`);

--
-- Ketidakleluasaan untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `ulasan_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `ulasan_ibfk_2` FOREIGN KEY (`bukuid`) REFERENCES `buku` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
