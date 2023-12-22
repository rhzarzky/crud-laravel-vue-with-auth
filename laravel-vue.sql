-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2023 at 10:37 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_14_014657_create_siswas_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provinsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `nama`, `alamat`, `kota`, `provinsi`, `email`, `created_at`, `updated_at`) VALUES
(427, 'Kayun Saptono', 'Gg. Suryo No. 225', 'Tidore Kepulauan', 'Bengkulu', 'xwidiastuti@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(428, 'Rahmi Ghaliyati Utami', 'Jln. Bahagia No. 10', 'Kotamobagu', 'Jawa Tengah', 'ryuliarti@nasyiah.biz', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(429, 'Victoria Suartini M.Ak', 'Gg. Tambun No. 653', 'Tidore Kepulauan', 'Banten', 'purwa93@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(430, 'Radit Maryadi', 'Dk. Baranang No. 838', 'Pontianak', 'Bali', 'vzulaika@rahayu.desa.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(431, 'Iriana Mardhiyah', 'Psr. Abdul. Muis No. 109', 'Medan', 'Jawa Barat', 'eluh70@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(432, 'Prasetya Thamrin', 'Jr. Tambak No. 540', 'Padangpanjang', 'DI Yogyakarta', 'indah.mayasari@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(433, 'Jono Irawan', 'Ki. Sugiyopranoto No. 609', 'Makassar', 'Sulawesi Tengah', 'hilda51@hutagalung.sch.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(434, 'Nyana Utama', 'Kpg. Ters. Pasir Koja No. 241', 'Ternate', 'Kalimantan Tengah', 'iriana94@safitri.org', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(435, 'Samiah Laksmiwati S.E.', 'Jln. Pintu Besar Selatan No. 697', 'Bitung', 'Kalimantan Utara', 'simbolon.hasna@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(436, 'Yessi Gina Zulaika S.I.Kom', 'Jr. Rajiman No. 791', 'Binjai', 'Sulawesi Selatan', 'adiarja.novitasari@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(437, 'Ghaliyati Safitri', 'Jr. Abdul Rahmat No. 659', 'Pasuruan', 'Sumatera Selatan', 'paramita86@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(438, 'Raden Maheswara S.Pt', 'Ki. Bayam No. 613', 'Subulussalam', 'DKI Jakarta', 'phartati@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(439, 'Julia Oktaviani M.Ak', 'Jln. Bayam No. 925', 'Malang', 'Kalimantan Timur', 'slamet.rajasa@usamah.web.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(440, 'Cakrajiya Widodo', 'Dk. Basoka No. 546', 'Blitar', 'Banten', 'laras90@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(441, 'Ami Victoria Wahyuni S.Kom', 'Ds. Gotong Royong No. 669', 'Semarang', 'Sumatera Barat', 'latupono.ega@zulkarnain.net', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(442, 'Nova Vicky Purnawati S.Kom', 'Ki. Tambak No. 787', 'Malang', 'Kepulauan Riau', 'mahendra.yulia@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(443, 'Wadi Narpati', 'Jln. Karel S. Tubun No. 562', 'Dumai', 'Kalimantan Barat', 'okto.habibi@riyanti.name', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(444, 'Laila Mayasari M.M.', 'Gg. Cihampelas No. 224', 'Semarang', 'Kepulauan Bangka Belitung', 'uhalim@lailasari.asia', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(445, 'Galiono Banawi Wibowo S.Pt', 'Kpg. Abang No. 765', 'Banjarbaru', 'Sulawesi Barat', 'yolanda.arsipatra@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(446, 'Fitriani Padma Permata', 'Ki. Baja No. 685', 'Tegal', 'Jambi', 'setiawan.silvia@sinaga.tv', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(447, 'Calista Padmasari', 'Kpg. Bakaru No. 237', 'Bitung', 'Maluku Utara', 'bwidiastuti@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(448, 'Ifa Zulaikha Puspita S.T.', 'Psr. Samanhudi No. 347', 'Sabang', 'Jambi', 'widiastuti.zulfa@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(449, 'Jayadi Johan Sihombing M.Pd', 'Jln. Warga No. 332', 'Pekanbaru', 'Kepulauan Riau', 'tzulaika@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(450, 'Wardaya Sinaga', 'Dk. Aceh No. 48', 'Bandung', 'Jambi', 'hasanah.cemeti@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(451, 'Safina Astuti', 'Psr. Pahlawan No. 332', 'Cirebon', 'Sulawesi Tengah', 'mahmud.hasanah@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(452, 'Latika Paulin Haryanti', 'Kpg. Kiaracondong No. 259', 'Administrasi Jakarta Utara', 'Kepulauan Riau', 'laras34@siregar.info', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(453, 'Zulfa Mayasari', 'Ds. Padang No. 964', 'Cirebon', 'DI Yogyakarta', 'elma.hidayanto@napitupulu.or.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(454, 'Almira Salwa Riyanti S.H.', 'Kpg. Bah Jaya No. 42', 'Palembang', 'Sulawesi Selatan', 'ipuspasari@nasyiah.desa.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(455, 'Harsaya Kuswoyo', 'Kpg. Babah No. 162', 'Pariaman', 'Jawa Tengah', 'irawan.leo@nuraini.ac.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(456, 'Zahra Safitri S.E.I', 'Ds. Hang No. 664', 'Tanjung Pinang', 'Kalimantan Timur', 'kenes.mayasari@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(457, 'Padma Jane Namaga', 'Ds. Jend. A. Yani No. 129', 'Sorong', 'Kepulauan Riau', 'najam.purnawati@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(458, 'Hani Kamila Hassanah S.I.Kom', 'Jln. Jamika No. 296', 'Gunungsitoli', 'Gorontalo', 'talia.saefullah@permata.tv', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(459, 'Hadi Nasab Pratama', 'Jr. Nanas No. 539', 'Pekalongan', 'Kepulauan Bangka Belitung', 'ewibowo@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(460, 'Mulya Galur Hidayanto S.Pd', 'Jln. Babakan No. 919', 'Singkawang', 'Jawa Tengah', 'kiandra.tampubolon@hutagalung.org', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(461, 'Wasis Rajata M.Kom.', 'Kpg. Uluwatu No. 4', 'Banjar', 'Kalimantan Tengah', 'psinaga@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(462, 'Zelaya Usamah', 'Jln. Bakhita No. 11', 'Pematangsiantar', 'Aceh', 'emayasari@dongoran.my.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(463, 'Ana Vera Laksita', 'Psr. Jakarta No. 241', 'Tegal', 'Bali', 'rpranowo@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(464, 'Elma Laksmiwati', 'Ki. Padang No. 707', 'Langsa', 'Kalimantan Selatan', 'permata.faizah@padmasari.co', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(465, 'Nardi Kasiran Mahendra S.T.', 'Dk. Babakan No. 866', 'Mojokerto', 'Papua', 'permadi.dinda@sudiati.web.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(466, 'Narji Jinawi Pranowo S.H.', 'Ds. Gremet No. 102', 'Padang', 'Nusa Tenggara Barat', 'habibi.oni@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(467, 'Ajeng Unjani Aryani', 'Dk. Fajar No. 322', 'Semarang', 'Sulawesi Utara', 'hesti.novitasari@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(468, 'Najwa Sakura Hastuti', 'Kpg. Baing No. 123', 'Bandar Lampung', 'Jawa Tengah', 'wirda.mardhiyah@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(469, 'Siti Usada', 'Ki. Bata Putih No. 754', 'Kotamobagu', 'Gorontalo', 'farhunnisa.palastri@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(470, 'Nasrullah Waluyo Siregar S.Pt', 'Jr. Suprapto No. 666', 'Kediri', 'Kalimantan Selatan', 'ibrahim58@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(471, 'Alika Mayasari', 'Jr. Banceng Pondok No. 579', 'Probolinggo', 'Sulawesi Utara', 'wastuti.carla@prastuti.sch.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(472, 'Eli Mala Yolanda S.Pd', 'Gg. Juanda No. 834', 'Pekanbaru', 'DKI Jakarta', 'fastuti@zulkarnain.mil.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(473, 'Rudi Situmorang', 'Ki. Sugiono No. 908', 'Sabang', 'Kalimantan Utara', 'xsitumorang@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(474, 'Liman Prasasta', 'Jr. Ahmad Dahlan No. 997', 'Pekanbaru', 'Jambi', 'uwais.diana@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(475, 'Hani Laksmiwati S.Kom', 'Kpg. Abdul. Muis No. 681', 'Palopo', 'Maluku', 'kusuma99@namaga.name', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(476, 'Yono Sitompul S.E.', 'Psr. Suniaraja No. 538', 'Mataram', 'Kalimantan Utara', 'yuniar.catur@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(477, 'Agnes Janet Hartati', 'Jln. Sudiarto No. 380', 'Kediri', 'DKI Jakarta', 'ratih.nasyidah@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(478, 'Jagapati Kasiran Setiawan S.Ked', 'Psr. Urip Sumoharjo No. 454', 'Probolinggo', 'Papua', 'pwahyudin@wahyuni.or.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(479, 'Ulva Nadine Pertiwi S.Ked', 'Jr. Balikpapan No. 2', 'Kupang', 'Jawa Timur', 'patricia28@wahyuni.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(480, 'Agnes Pertiwi', 'Psr. Sentot Alibasa No. 776', 'Surakarta', 'Sulawesi Tenggara', 'damanik.yessi@wulandari.tv', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(481, 'Laila Kezia Hassanah', 'Jln. Ahmad Dahlan No. 603', 'Malang', 'Sumatera Selatan', 'mahesa.mulyani@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(482, 'Raisa Puji Handayani S.Ked', 'Kpg. Sumpah Pemuda No. 929', 'Prabumulih', 'Sulawesi Barat', 'icha.widodo@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(483, 'Anom Hidayat', 'Dk. Abdullah No. 503', 'Palopo', 'Sulawesi Tenggara', 'carla85@wibowo.sch.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(484, 'Anastasia Riyanti S.Ked', 'Kpg. Barat No. 134', 'Palopo', 'Banten', 'ehutapea@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(485, 'Viktor Mansur S.Sos', 'Ki. Raya Ujungberung No. 953', 'Sukabumi', 'Jawa Barat', 'rahmi.pratiwi@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(486, 'Belinda Yuni Kusmawati S.Pt', 'Jln. Industri No. 627', 'Banjar', 'Kepulauan Bangka Belitung', 'tarihoran.novi@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(487, 'Ina Hassanah', 'Jln. Bara No. 455', 'Administrasi Jakarta Utara', 'Jawa Tengah', 'jelita.puspita@waskita.tv', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(488, 'Opung Hidayat', 'Jr. Baing No. 807', 'Surakarta', 'DI Yogyakarta', 'qgunarto@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(489, 'Patricia Icha Nasyidah', 'Ki. Gotong Royong No. 172', 'Parepare', 'Riau', 'cayadi41@narpati.name', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(490, 'Luis Prakasa', 'Dk. Bappenas No. 723', 'Bau-Bau', 'DKI Jakarta', 'tiara91@gunarto.web.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(491, 'Mursita Prasetyo', 'Psr. Bank Dagang Negara No. 452', 'Langsa', 'Maluku Utara', 'suartini.mustika@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(492, 'Wirda Aryani', 'Kpg. Tentara Pelajar No. 935', 'Kendari', 'Sumatera Barat', 'cakrabuana.widodo@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(493, 'Mustika Santoso', 'Kpg. Yoga No. 228', 'Medan', 'Papua', 'wmaryadi@dabukke.org', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(494, 'Ida Wahyuni', 'Dk. Baiduri No. 555', 'Lhokseumawe', 'Jawa Timur', 'mzulaika@marbun.name', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(495, 'Drajat Dongoran', 'Ds. Bayam No. 597', 'Pekanbaru', 'DKI Jakarta', 'putra.pranata@putra.sch.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(496, 'Nurul Handayani', 'Gg. Sutoyo No. 789', 'Samarinda', 'Nusa Tenggara Timur', 'melinda26@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(497, 'Michelle Nadine Kuswandari', 'Ds. Sudirman No. 365', 'Tarakan', 'Sulawesi Barat', 'vmarpaung@hidayat.my.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(498, 'Elvina Utami S.Psi', 'Jr. Ters. Buah Batu No. 292', 'Tidore Kepulauan', 'Kalimantan Barat', 'jaiman.mangunsong@sirait.biz.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(499, 'Jayeng Nashiruddin', 'Kpg. Dr. Junjunan No. 211', 'Lhokseumawe', 'Maluku Utara', 'gandi.gunawan@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(500, 'Olivia Rahayu Usamah M.M.', 'Dk. Yogyakarta No. 486', 'Pematangsiantar', 'Sulawesi Barat', 'eandriani@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(501, 'Ratna Tari Rahimah', 'Gg. Bakau Griya Utama No. 452', 'Batam', 'Jawa Timur', 'sihombing.eja@gunawan.sch.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(502, 'Puspa Kuswandari', 'Dk. Antapani Lama No. 655', 'Ternate', 'Bali', 'panji.nuraini@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(503, 'Chelsea Wastuti', 'Psr. Bayan No. 727', 'Jambi', 'Riau', 'titi63@mandasari.co', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(504, 'Mulya Najmudin', 'Psr. Astana Anyar No. 87', 'Pematangsiantar', 'Aceh', 'ayu24@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(505, 'Elma Novitasari', 'Jr. Bakhita No. 394', 'Tangerang', 'Bali', 'mandasari.gamblang@pangestu.asia', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(506, 'Zalindra Maryati', 'Gg. K.H. Maskur No. 765', 'Magelang', 'Jawa Barat', 'tari04@yuniar.net', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(507, 'Winda Puspasari M.Ak', 'Ds. Babadan No. 203', 'Blitar', 'Aceh', 'tsaefullah@wijayanti.net', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(508, 'Olga Najmudin', 'Kpg. Yosodipuro No. 822', 'Pangkal Pinang', 'Jawa Barat', 'pertiwi.utama@latupono.or.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(509, 'Galih Kurniawan', 'Kpg. Wahidin No. 118', 'Pontianak', 'Jawa Timur', 'ade.hutasoit@anggraini.net', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(510, 'Lantar Gunawan', 'Psr. Basoka Raya No. 537', 'Padang', 'Sulawesi Selatan', 'cahya96@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(511, 'Putri Riyanti', 'Jln. R.M. Said No. 975', 'Pekalongan', 'Jawa Timur', 'ramadan.jasmin@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(512, 'Maman Maryadi', 'Psr. Jamika No. 117', 'Tangerang', 'Jambi', 'iriana.rahimah@wibowo.ac.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(513, 'Cemeti Dongoran', 'Jr. Banceng Pondok No. 455', 'Madiun', 'DI Yogyakarta', 'yulianti.laksana@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(514, 'Akarsana Wage Marpaung S.Sos', 'Ki. Baranangsiang No. 7', 'Tegal', 'Sulawesi Selatan', 'hamima.anggraini@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(515, 'Zaenab Laksita', 'Dk. Radio No. 887', 'Dumai', 'Lampung', 'nadia63@hassanah.mil.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(516, 'Darmana Muhammad Waskita S.Ked', 'Ds. Cikutra Timur No. 130', 'Administrasi Jakarta Pusat', 'Sulawesi Utara', 'fzulaika@haryanto.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(517, 'Raditya Karma Firmansyah S.IP', 'Gg. Padma No. 753', 'Tanjung Pinang', 'Lampung', 'icha80@anggriawan.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(518, 'Hani Agustina', 'Psr. Raya Setiabudhi No. 385', 'Yogyakarta', 'Jawa Barat', 'omahendra@latupono.or.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(519, 'Jumadi Saragih M.Farm', 'Jln. Pasir Koja No. 926', 'Bitung', 'Sulawesi Selatan', 'amaryati@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(520, 'Lalita Wijayanti', 'Gg. Hasanuddin No. 896', 'Pematangsiantar', 'Kalimantan Utara', 'putra.gangsa@hakim.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(521, 'Gantar Mujur Januar', 'Jr. Sutami No. 125', 'Cilegon', 'Kalimantan Utara', 'maryadi.ega@rahayu.web.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(522, 'Lili Latika Suryatmi S.E.I', 'Jln. Raya Ujungberung No. 931', 'Sibolga', 'Bengkulu', 'baktiadi.uyainah@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(523, 'Gilang Wibowo', 'Jln. Madrasah No. 415', 'Tanjung Pinang', 'Sumatera Barat', 'natalia61@oktaviani.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(524, 'Enteng Prakasa M.Kom.', 'Dk. Bata Putih No. 536', 'Salatiga', 'Banten', 'firawan@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(525, 'Timbul Saiful Budiman S.Gz', 'Dk. Moch. Ramdan No. 155', 'Bandung', 'Sulawesi Selatan', 'panca67@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(526, 'Almira Pudjiastuti', 'Kpg. Wahid No. 913', 'Payakumbuh', 'Nusa Tenggara Timur', 'saputra.jarwi@sihotang.name', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(527, 'Yono Pranowo', 'Ds. Peta No. 398', 'Padang', 'Aceh', 'endah.waskita@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(528, 'Putri Suci Hasanah S.Sos', 'Kpg. Reksoninten No. 207', 'Tegal', 'Papua', 'laksana.hartati@natsir.or.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(529, 'Hasna Hastuti', 'Jr. Honggowongso No. 656', 'Prabumulih', 'Kalimantan Selatan', 'jprasetya@napitupulu.co', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(530, 'Ina Fujiati', 'Ki. Moch. Ramdan No. 984', 'Bandung', 'Nusa Tenggara Barat', 'wibisono.hamzah@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(531, 'Wage Pranawa Prabowo', 'Kpg. Kebangkitan Nasional No. 987', 'Tangerang', 'Gorontalo', 'asmuni15@budiman.mil.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(532, 'Gina Kusmawati M.Farm', 'Psr. Nakula No. 129', 'Solok', 'Bengkulu', 'artawan43@widodo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(533, 'Ana Hasanah', 'Ki. Jayawijaya No. 690', 'Bontang', 'Kalimantan Utara', 'chelsea61@hartati.tv', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(534, 'Jane Usyi Hastuti', 'Psr. Tentara Pelajar No. 807', 'Palembang', 'Kalimantan Selatan', 'ysudiati@tarihoran.org', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(535, 'Talia Mulyani', 'Jr. Gajah Mada No. 805', 'Langsa', 'Sulawesi Utara', 'puspa51@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(536, 'Devi Laksmiwati', 'Dk. Dipenogoro No. 351', 'Surakarta', 'Jawa Barat', 'kuyainah@mardhiyah.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(537, 'Jane Nasyiah', 'Jln. Raden Saleh No. 387', 'Tual', 'Kepulauan Bangka Belitung', 'ibun41@winarsih.my.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(538, 'Siti Utami', 'Psr. Padma No. 169', 'Kotamobagu', 'Nusa Tenggara Timur', 'wani41@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(539, 'Diah Titi Melani', 'Gg. Sutami No. 192', 'Gorontalo', 'Sumatera Barat', 'laksita.humaira@saptono.name', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(540, 'Yuliana Pratiwi', 'Kpg. Cut Nyak Dien No. 372', 'Banjarbaru', 'Nusa Tenggara Barat', 'vanya.suwarno@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(541, 'Silvia Suartini', 'Ds. Abdul. Muis No. 992', 'Tual', 'Nusa Tenggara Barat', 'gada73@lailasari.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(542, 'Karsa Pradipta', 'Psr. Salam No. 727', 'Mojokerto', 'Sumatera Selatan', 'raisa39@nurdiyanti.net', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(543, 'Elma Mandasari S.E.I', 'Jr. Arifin No. 65', 'Palopo', 'DI Yogyakarta', 'maryadi.jefri@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(544, 'Yuliana Wulandari', 'Jln. Sutoyo No. 192', 'Batu', 'Papua Barat', 'hlaksmiwati@anggriawan.net', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(545, 'Pranawa Samosir', 'Ki. Moch. Toha No. 332', 'Bekasi', 'Bengkulu', 'kasiyah75@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(546, 'Jasmin Purwanti', 'Gg. Sadang Serang No. 964', 'Parepare', 'Kalimantan Selatan', 'pradana.galar@prabowo.net', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(547, 'Samsul Cakrajiya Sitorus S.Kom', 'Gg. Untung Suropati No. 149', 'Cilegon', 'Gorontalo', 'julia.mardhiyah@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(548, 'Gilda Padmasari', 'Jln. Abdul No. 106', 'Padangsidempuan', 'Papua Barat', 'adhiarja05@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(549, 'Uchita Tira Laksmiwati S.E.I', 'Jr. B.Agam 1 No. 660', 'Tual', 'Sulawesi Utara', 'elon.anggraini@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(550, 'Umi Puspasari', 'Ds. Asia Afrika No. 333', 'Tegal', 'Sumatera Selatan', 'rahmi.agustina@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(551, 'Ganep Narpati', 'Ki. Soekarno Hatta No. 936', 'Palembang', 'Nusa Tenggara Timur', 'kurniawan.endah@yuliarti.biz', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(552, 'Wawan Anggriawan', 'Psr. Baranang Siang Indah No. 369', 'Langsa', 'Kepulauan Riau', 'olivia.saputra@mayasari.tv', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(553, 'Caturangga Nababan', 'Kpg. Jayawijaya No. 442', 'Malang', 'Kalimantan Utara', 'natalia.haryanti@pratiwi.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(554, 'Rosman Caturangga Prayoga M.M.', 'Kpg. Sutarto No. 57', 'Pekalongan', 'Jambi', 'maryati.dwi@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(555, 'Praba Pradipta', 'Ki. Babah No. 252', 'Denpasar', 'Lampung', 'lembah35@hariyah.co', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(556, 'Tiara Uyainah', 'Dk. Bayam No. 585', 'Dumai', 'DI Yogyakarta', 'bakti.santoso@pratiwi.desa.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(557, 'Raisa Usamah', 'Jln. Raya Ujungberung No. 613', 'Manado', 'Aceh', 'azulkarnain@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(558, 'Tugiman Hutasoit', 'Ki. Jaksa No. 906', 'Tarakan', 'Jawa Timur', 'eva.prasetyo@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(559, 'Septi Kuswandari', 'Gg. Raya Ujungberung No. 880', 'Bogor', 'Sumatera Selatan', 'kanda74@ramadan.org', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(560, 'Elma Mardhiyah', 'Psr. Adisucipto No. 143', 'Kediri', 'Kalimantan Barat', 'qmegantara@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(561, 'Kacung Nyana Uwais', 'Jln. Baung No. 284', 'Banjar', 'Kalimantan Utara', 'ekuswandari@yuniar.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(562, 'Warsita Surya Hutapea S.Ked', 'Psr. Bagas Pati No. 541', 'Jambi', 'Bali', 'galuh.sitompul@siregar.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(563, 'Hani Utami', 'Gg. Banda No. 371', 'Ambon', 'Sumatera Barat', 'nurdiyanti.ana@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(564, 'Prima Hakim M.TI.', 'Ki. M.T. Haryono No. 111', 'Medan', 'Jawa Timur', 'hana.hidayat@kuswandari.my.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(565, 'Balamantri Sihombing', 'Dk. Jagakarsa No. 338', 'Bengkulu', 'DI Yogyakarta', 'gading.ramadan@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(566, 'Jarwi Caturangga Rajata M.Pd', 'Jln. Kalimalang No. 705', 'Metro', 'DKI Jakarta', 'birawan@salahudin.tv', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(567, 'Laswi Irawan', 'Jln. Katamso No. 519', 'Bogor', 'Banten', 'diah39@suryatmi.my.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(568, 'Purwa Hardiansyah', 'Dk. Adisucipto No. 704', 'Bima', 'Jawa Timur', 'napitupulu.lutfan@yolanda.net', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(569, 'Jumari Kayun Prakasa M.Ak', 'Jr. Jagakarsa No. 832', 'Yogyakarta', 'Jawa Timur', 'edabukke@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(570, 'Xanana Thamrin', 'Ki. Dipatiukur No. 589', 'Palangka Raya', 'Riau', 'ayu.winarsih@gmail.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(571, 'Ibrahim Mariadi Sirait', 'Jr. Cikutra Timur No. 606', 'Bontang', 'Sumatera Utara', 'ade.puspasari@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(572, 'Malik Hardiansyah', 'Ki. Kyai Gede No. 623', 'Batu', 'Bali', 'cager63@yahoo.co.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(573, 'Viman Reza Saragih', 'Kpg. Yogyakarta No. 254', 'Tebing Tinggi', 'Bali', 'suartini.jayeng@wahyuni.org', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(574, 'Amalia Hariyah', 'Kpg. Honggowongso No. 373', 'Langsa', 'Sulawesi Tengah', 'prakasa.cakrawala@gmail.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(575, 'Tina Andriani', 'Ki. Sampangan No. 688', 'Kendari', 'Papua Barat', 'lprakasa@yahoo.com', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(576, 'Hasna Mayasari S.Pd', 'Psr. Abdul Rahmat No. 424', 'Surabaya', 'Sulawesi Tengah', 'suryatmi.julia@mandala.biz.id', '2023-12-11 08:19:44', '2023-12-11 08:19:44'),
(581, 'aaateess', 'Padang', 'Padang', 'Sumatra Barat', 'aaates@gmail.com', '2023-12-11 20:34:39', '2023-12-11 20:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(6, 'rheza', 'rhezarizky11@gmail.com', NULL, '$2y$12$lpV1HtPHIgFOS0vbG1Ofm.RpspFXpghHZ3cSwq7Qttx54o8Jqa7YO', NULL, '2023-12-11 15:35:12', '2023-12-11 15:35:12', 'user'),
(7, 'admin', 'admin@gmail.com', NULL, '$2y$12$t88DZMwI2n9Vt7a0cKSawO6barTkwlXXWkpWqHBr61dOHYn28OpDa', NULL, '2023-12-11 16:28:14', '2023-12-11 16:28:14', 'admin'),
(10, 'register', 'register@gmail.com', NULL, '$2y$12$NQFLtcjv3lHZXsGPo5Xke.yS3elHKi1ppoACRoF8/FkpGBkwSOUoG', NULL, '2023-12-12 07:07:55', '2023-12-12 07:07:55', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=584;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
