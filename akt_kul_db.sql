-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2024 at 11:35 PM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisuke_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_suket`
--

CREATE TABLE `jenis_suket` (
  `id_jenis` int NOT NULL,
  `jenis` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jenis_suket`
--

INSERT INTO `jenis_suket` (`id_jenis`, `jenis`) VALUES
(1, 'Surat Keterangan Aktif Kuliah'),
(2, 'Surat Keterangan Kartu Tanda Mahasiswa (KTM) Sementara'),
(3, 'Surat Rekomendasi Beasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` char(100) NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `nama`, `username`, `password`, `level`, `active`) VALUES
(1, 'Frendly Titaley', 'admin', '1397bafdbeffbd343e81fb01867d3ada', '100', 'Y'),
(2, 'Виктор Эрик', 'victor', '5d794a5fc92ef67d9707c1f5cbe88a8f', '100', 'Y'),
(3, 'Lexy Matatula', 'lexy', 'dd50a4e46abe538d3b37b847ef4efec1', '100', 'Y'),
(4, 'J. M. Tupan, ST., MT.', 'JTupan', '77a4fd97d776fa47090c44bbd00d4ec2', '100', 'Y'),
(5, 'Dekan Fakultas Teknik', 'Dekan', '4870d9a014d8a320c1d4b0a694d2bcd6', '100', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `pejabat`
--

CREATE TABLE `pejabat` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttd` varchar(10) NOT NULL,
  `cap` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int NOT NULL,
  `prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `prodi`) VALUES
(1, 'Teknik Perkapalan'),
(2, 'Teknik Mesin'),
(3, 'Teknik Sistem Perkapalan'),
(4, 'Teknik Industri'),
(5, 'Teknik Sipil'),
(6, 'Perencanaan Wilayah dan Kota'),
(7, 'Teknik Perminyakan'),
(8, 'Teknik Geologi'),
(9, 'Teknik Geofisika'),
(10, 'Teknik Kimia'),
(11, 'Teknik Transportasi Laut');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `nim` varchar(10) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `tmplahir` varchar(50) NOT NULL,
  `tglahir` date NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` int DEFAULT '101',
  `active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`nim`, `pass`, `nama`, `jk`, `tmplahir`, `tglahir`, `prodi`, `hp`, `email`, `level`, `active`) VALUES
('003', 'e88a49bccde359f0cabb40db83ba6080', 'Joko widodo', 'Laki-Laki', 'Ambon', '1994-02-03', '2', '08234', 'joko@gmail.com', 101, 'Y'),
('123123', '4297f44b13955235245b2497399d7a93', 'Akun Tes', 'Laki-Laki', 'Ambon', '1982-09-29', '1', '081343199719', 'victor@gmail.com', 101, 'Y'),
('201572042', 'b1e24875fa7e30d0bdf234947b4023a4', 'Harjito Papalia', 'Laki-Laki', 'LANGGUR', '2024-01-24', '4', '085243109718', 'Fatekkemahasiswaan@gmail.com', 101, 'Y'),
('201672055', '5144375c981e4de37e652a3d2ba39728', 'CHRISYE LETWUAR', 'Perempuan', 'AMBON', '1992-12-12', '4', '081248727832', 'christy@gmail.com', 101, 'Y'),
('201673102', 'f54b035043726f40c0993982c82bbbfe', 'jogas', 'Laki-Laki', 'tual', '2024-01-17', '7', '85243256216', 'jogas@gmail.com', 101, 'Y'),
('201674012', '827ccb0eea8a706c4c34a16891f84e7b', 'Joko', 'Laki-Laki', 'Ambon', '2000-02-06', '7', '085243257262', 'frendendy23@gmail.com', 101, 'Y'),
('201769004', '06a0a75647bc7747e31c4e3c878be20b', 'ANGGI PRANATA ', 'Laki-Laki', 'KAMPIRI', '1998-08-25', '1', '082239201633', 'anggipranata2508@gmail.com', 101, 'Y'),
('201771011', '183ddfb4864ee02bbe83bfbbd789fd9f', 'La daeng kadir', 'Laki-Laki', 'Tulehu', '1999-12-18', '2', '082399110577', 'ladaengkadir011dk@gmail.com', 101, 'Y'),
('201771047', 'b1d3e58a12fa43fc941d77d65cf05d1c', 'Ichlasul Amal Tihurua', 'Laki-Laki', 'Masohi', '2000-03-20', '2', '085353496422', 'ikmaltihurua200@gmail.com', 101, 'Y'),
('201773029', '3440e6a87b2407b48a3599da3fb902a6', 'Rivaldi.Alanmiguel.Kristo.Alfons', 'Laki-Laki', 'Ambon', '2000-01-27', '5', '081344318512', 'rivaldyalfons27@gmail.com', 101, 'Y'),
('201773046', 'cd90815acf09839158fbef2e00238d89', 'zulfikar hasan masahelupikal', 'Laki-Laki', 'masohi', '1999-10-24', '5', '081247361616', 'zmasahelupikal@gmail.com', 101, 'N'),
('201774044', 'd777ac2dce19df4d2335021b319a5c63', 'Sifa Chairunisa Tamher', 'Perempuan', 'Jakarta', '2000-05-11', '6', '082210931820', 'sifachtamher11@gmail.com', 101, 'Y'),
('201774100', '103c5495b3c12bb2623ca5b35f1bfb4d', 'Fadil Gibran', 'Laki-Laki', 'Ambon', '2000-10-18', '6', '082197626670', 'gibranfadil11@gmail.com', 101, 'Y'),
('201774103', '759a2ad7098421053c2a06ca5399dae3', 'Alfian Sillia', 'Laki-Laki', 'Mangoli ', '2000-08-17', '6', '081397836961', 'silliaalfian836@gmail.com', 101, 'Y'),
('201775063', 'ea3b2b8e078163d012f9d6984848b426', 'muhammad ian soamole', 'Laki-Laki', 'ambon', '1999-01-08', '2', '081382919592', 'soamoleian@gmail.com', 101, 'Y'),
('201869023', '7b75e39e8ea6c1738f3cb4fb1e0863f7', 'Asmita Masoa', 'Perempuan', 'Ambon', '2001-03-17', '1', '081354132021', 'masoaasmita@gmail.com', 101, 'Y'),
('201871025', 'f1cbcd6ca18d2d99610f268b981dfbcb', 'Zulrizal mulyadi ', 'Laki-Laki', 'Waenetat', '2001-01-26', '2', '081343868295', 'zulrizalmulyadi@gmail.com', 101, 'Y'),
('201872022', 'a0d53df5f0739b15d027c4cc3f61bdc0', 'AMRIN SILAWANE', 'Laki-Laki', 'wakal', '1998-06-07', '4', '082239814640', 'amrinsilawane8@gmail.com', 101, 'Y'),
('201873023', 'c55a5b6c5d00bef0dc2bfa8a60e9f64c', 'Joyvaldo Arderio Saptenno ', 'Laki-Laki', 'Ambln', '2001-04-07', '5', '082248956688', 'joysaptenno76@gmail.com', 101, 'Y'),
('201873108', '423b525d1236a446c24cf1e586f96a45', 'Reinhard Sapulette', 'Laki-Laki', 'Ambon', '1998-09-22', '5', '085344152431', 'sapulettereinhard@gmail.com', 101, 'Y'),
('201873116', 'f1a840804607aeb442ca6a4aab4c23ae', 'Fadly Hatala', 'Laki-Laki', 'Ambon', '2001-04-16', '5', '082248480096', 'fadlyando16@gmail.com', 101, 'Y'),
('201873404', '350f2dbd8bbd5cb13f95b8ef388b2cf8', 'SEMUEL LUCAS PRAWIRA LEIMENA', 'Laki-Laki', 'Ambon', '2000-08-23', '5', '0816265547', 'lucky.leimena@gmail.com', 101, 'Y'),
('201874045', '49e85668082c5e20f1967a00aaed81af', 'Restat Lessy', 'Laki-Laki', 'Ambon', '2001-09-26', '6', '082198672547', 'restatlessy@gmail.com', 101, 'Y'),
('201874046', '95778c3dc0b8866bb530623870b735fb', 'Agus loupatty ', 'Laki-Laki', 'Ambon ', '2001-03-02', '6', '081240224611', 'agusloupatty02@gmail.com', 101, 'Y'),
('201874082', '26c0fb21dfea0dd13694054154537b9d', 'A Riman Sihab Laitupa', 'Laki-Laki', 'Ureng', '2000-04-03', '6', '082238714129', 'a.rimansihablaitupa03@gmail.com', 101, 'Y'),
('201874097', 'd5db9682fca3f05b07d486585bafb5e2', 'Febrian.Joly.Lanal.Rijoly', 'Laki-Laki', 'Ambon ', '2001-02-05', '6', '085254083005', 'febrianjolyrijoly@gmail.com', 101, 'Y'),
('201874131', '1b9a367ffeb3cd02cd37f3cd209e805b', 'Mariyam Yustika Henaulu', 'Perempuan', 'Assilulu', '2000-04-21', '6', '085243173244', 'henaulumariyam@gmail.com', 101, 'Y'),
('201899014', '9c29801f836af16a0fe2c7f38aa40034', 'GILBERDO FERDINANDUS', 'Laki-Laki', 'Ambon', '2001-03-30', '8', '081240191991', 'gilberdoferdinandus3003@gamil.com', 101, 'Y'),
('201971010', '79c942087afe2af470c126a0d1552054', 'Denis Louis Luhukay', 'Laki-Laki', 'Sorong', '2002-01-05', '2', '082198842682', 'denisluhukay050102@gmail.com', 101, 'Y'),
('201971046', '64001d006ab50be23f8c6a5e698b2a28', 'Ummi Dalila Temarwut', 'Perempuan', 'Tehoru', '2002-04-29', '2', '082198429980', 'ummidelilatemawut@gmail.com', 101, 'Y'),
('201971049', '35f784155b7f48eaae60238453ebf0cf', 'Stevanus Milofa Huwae', 'Laki-Laki', 'Ambon', '2001-06-26', '2', '082198581949', 'st3venhuwae@gmail.com', 101, 'Y'),
('201971074', '3bd1fe825eb86f0f468bcae33f2fd317', 'Kiftir wicaksono syiauta', 'Laki-Laki', 'Waiheru', '2001-01-24', '2', '082235430127', 'kiftirsyiauta459@gmail.com', 101, 'Y'),
('201972023', '0f3abfd67959c079e7b3759440e7415c', 'Boy Soumokil', 'Laki-Laki', 'Hative Besar', '2001-05-14', '4', '085244868741', 'boykesoumokil@gmail.com', 101, 'Y'),
('201972025', '9b16b835ed0e83de25dcfa4107705353', 'Puteri Zahwa Marasabessy', 'Perempuan', 'Benjina ', '2002-09-07', '4', '081248132501', 'putrymarssy02@gmail.com', 101, 'Y'),
('201972040', '02189c25c3fdd55c7c4694a514b88ea1', 'Mahudin Akbar Latupono', 'Laki-Laki', 'Assilulu', '2001-03-31', '4', '081343040906', 'mahudinakbarlatupono@gmail.com', 101, 'Y'),
('201972057', 'f990e4c9859eb66734f79158882dd39f', 'RIZKY DWI PUTRA MALAN', 'Laki-Laki', 'TENGAH-TENGAH', '1997-12-01', '4', '081248027992', 'rizkymalan97@gmail.com', 101, 'Y'),
('201972060', 'b748d26de1b1ac46d5d2890a0a3b953e', 'Achmad Regha Syahputra Syarifudin ', 'Laki-Laki', 'Dobo', '2001-01-17', '4', '082197716180', 'reghasyarief17@gmail.com', 101, 'Y'),
('201972074', '921aec2801ace56a11fa9ffc9d39f714', 'Mohammad Syarif Banyal', 'Laki-Laki', 'Tehoru ', '2002-02-28', '4', '081288206294', 'mohammadsyarif730@gmail.com', 101, 'Y'),
('201973006', '2fbe03cbc1a999b792291dc45e060a70', 'Vaninda I Hetharie ', 'Perempuan', 'Liang', '2001-11-25', '5', '081343114639', 'hetharievih@gmail.com', 101, 'Y'),
('201973023', 'c86b428c6cd7cffd8dc86f1a3dabda17', 'Feliks Noija', 'Laki-Laki', 'Ambon', '2002-04-02', '5', '082251560787', 'noijafeliks02@gmail.com', 101, 'Y'),
('201973030', '0bb1448ab5733b973449beefdb37d37e', 'NUR FILA', 'Perempuan', 'Gu', '2000-10-15', '5', '081247446506', 'nurfila1510@gmail.com', 101, 'Y'),
('201973056', 'fdb2d210a779b077aad123c33c20a387', 'diva stelma risti tuarita', 'Perempuan', 'makassar', '2001-09-28', '5', '082238516660', 'divastelmaristituarita@gmail.con', 101, 'Y'),
('201973057', 'd01b4d5202d4648651bb9d3288a2c0b9', 'AL AZHARI', 'Laki-Laki', 'Raha', '2000-06-05', '5', '085337533839', 'alfajar470@gmail.com', 101, 'Y'),
('201973068', 'e31569dc5cb0ebea1f89608c1acdd052', 'Anggun Pratami Nukuhehe', 'Perempuan', 'Halong ', '2002-02-28', '5', '085254762734', 'anggunpratami02@gmail.com', 101, 'Y'),
('201973074', 'e90dfc1cfe3a955c0839f09c8330104b', 'Nur safitri ubleeuw', 'Perempuan', 'Ambon', '2000-05-16', '5', '081344709339', 'safitrinur179@gmail.com', 101, 'Y'),
('201973083', 'a0070c7af7efbf3441b805322c35d13c', 'Rizky Afrizal Pune', 'Laki-Laki', 'Ambon', '2001-12-20', '5', '082199124406', 'ikypune@gmail.com', 101, 'Y'),
('201973140', '46604eb3d8e10106739d5162ab1b5caf', 'Abdul Jailani Toumahu', 'Laki-Laki', 'Namlea ', '2000-02-29', '5', '082257947072', 'alantoumahu02@gmail.com', 101, 'Y'),
('201974023', 'b415962378210a8dfbebbaeb8fb304b5', 'Gloria Djonler', 'Perempuan', 'Piru', '2001-02-18', '6', '082198788780', 'gloriadjonler@gmail.com', 101, 'Y'),
('201974038', 'c3f0cbe0734efbb7cc03036e9b3e87c1', 'Naila usfa umaternate ', 'Perempuan', 'Sanana ', '2003-09-24', '6', '081247493314', 'nalyausfa@gmail.com', 101, 'Y'),
('201974070', '69eab199d59ba90a0b53e6212e66897c', 'Jesika adlea adriaan', 'Perempuan', 'Larat', '2001-11-22', '6', '082246024030', 'jessikaadleaadriaan@gmail.com', 101, 'Y'),
('201974073', '603c9c8a7a132e8a2d96d695bf8fb182', 'JUWITA DEWI BUAMONABOT', 'Perempuan', 'Masohi', '2001-07-16', '6', '082145628429', 'juwitabuamonabot@gmail.com', 101, 'Y'),
('202046001', '704373558c9d8b3f4ae411012f818ed7', 'Viktorina Adonia de FRETES', 'Perempuan', 'Emplawas', '2001-04-05', '10', '085243895417', 'rini052001@gmail.com', 101, 'Y'),
('202046009', '8a468cc0b77f23cccec6ee11884167a0', 'Rikalda Lieando', 'Perempuan', 'Ambon ', '2001-09-21', '10', '081283854413', 'lieandorikalda@gmail.com', 101, 'Y'),
('202070001', '040ca769c0a72e217a5a7a8753aa04ee', 'Gracia Judica Risakotta', 'Perempuan', 'Ndao', '2002-06-14', '3', '085254154231', 'graciajudica1406@gmail.com', 101, 'Y'),
('202071008', '0945cceb4c0459ffe9bc1ef64d368e49', 'Marleiv Handri Sabandar', 'Laki-Laki', 'Ambon', '2003-02-05', '2', '081343229538', 'julius.sabandar@gmail.com', 101, 'Y'),
('202071016', 'aef12c24768657ee87dce02aec0ffd51', 'QILAP TAMBIPESSY', 'Laki-Laki', 'BUANO UTARA', '2003-11-22', '2', '081240282748', 'qlaptambipessy@gmail.com', 101, 'Y'),
('202071055', 'c70caa21832f353f6779a8fb55fb6435', 'Rifqi Afriansyah awan ', 'Laki-Laki', 'Ambon ', '2002-04-18', '2', '082188754019', 'awan180402@gmail.com', 101, 'Y'),
('202072001', 'd624186be4b71e37dac91a7dd5e1da2a', 'Khadijah Dwi Cahyani', 'Perempuan', 'Ambon', '2002-02-12', '4', '085313782684', 'dwiiicahyaniii1231@gmail.com', 101, 'Y'),
('202072002', 'eb0c9433ee9bb7189fa06bba96f4e143', 'Fahrin Sukma Jaya', 'Perempuan', 'wadawa', '2002-02-03', '4', '081221608842', 'fahrinjaya2002@gmail.com', 101, 'Y'),
('202072003', 'd81f1409edc3927829500529e811adf5', 'Jessyca Anatasya Mancino', 'Perempuan', 'AMBON', '2003-07-05', '4', '082199052600', 'jessycamancino05@gmail.com', 101, 'Y'),
('202072004', '259d7a00b8816a1beb1e8411ac1bd36c', 'Like Gloria Pattikawa', 'Perempuan', 'Ambon', '2004-12-08', '4', '085334675439', 'likegloria845@gmail.com', 101, 'Y'),
('202072005', '336b7955908d103876586694d83d748a', 'Fira Juniarni Husein', 'Perempuan', 'Masohi', '2002-06-26', '4', '082210252256', 'firahusein28@gmail.com', 101, 'Y'),
('202072007', 'e1d9867cec364bc0d035e12112b67c61', 'Debiyanti de Fretes ', 'Perempuan', 'Ambon', '2002-12-31', '4', '081240237456', 'ebydefretes@gmail.com', 101, 'Y'),
('202072008', '9c4551cfdd63ae5cfbfa4009b438b05c', 'PUTRI ANUGRAH RUMAKAT', 'Perempuan', 'Namlea', '2003-06-17', '4', '082248841431', 'triangrh20@gmail.com', 101, 'Y'),
('202072009', '9dffd7d8a7384330483ed57bfd11f988', 'Reza Ayu Lestari ', 'Perempuan', 'Laganda ', '2002-02-12', '4', '081248571609', 'rezaayulestari72@gmail.com', 101, 'Y'),
('202072010', 'ef93b7dea94298e5c67a611f356756e8', 'Oscar David Bungaa ', 'Laki-Laki', 'Semarang', '2000-05-30', '4', '081329174705', 'oscann3@gmail.com', 101, 'Y'),
('202072011', '1034a692a2ce0258c567a60f8fee6410', 'Angeline Risky Solukh ', 'Perempuan', 'Ambon', '2003-03-19', '4', '085244869152', 'angelinerisky@gmail.com', 101, 'Y'),
('202072014', 'cc46b1ff686b4ecd1b866e6e478ba11b', 'Lasria Hotnauli Sitompul', 'Perempuan', 'Parsaoran ', '2000-12-30', '4', '082362025914', 'lasriasitompul@gmail.com', 101, 'Y'),
('202072017', '4aedaeb5b4699ac1520459c029a700fc', 'Yuliana', 'Perempuan', ' Baadia', '2002-07-09', '4', '085756910128', 'yulianayuli249700@gmail.com', 101, 'Y'),
('202072018', 'aa0a53a6595bf12d10c7811153c8eb07', 'Juninda Rahliani. j', 'Perempuan', 'Batam', '2002-06-05', '4', '082262315510', 'junindarahlianij@gmail.com', 101, 'Y'),
('202072019', 'bc53807537cc54222b380acca3681ce2', 'Fellisya Belinda de Fretes ', 'Perempuan', 'Ambon', '2003-01-10', '4', '085254169995', 'felisyadefretes@gmail.com', 101, 'Y'),
('202072021', 'd39eaa5305c13f7044787c9cc6827d06', 'Amelia Rahmadhani', 'Perempuan', 'Ambon', '2002-11-07', '4', '081293895901', 'ameliarhmdh@gmail.com', 101, 'Y'),
('202072023', 'ec788e49f6d62a84c3aea6906fd4e016', 'Sinta Asmawati Paseang', 'Perempuan', 'Waisarisa', '2003-04-20', '4', '0852427510', 'sintapaseang@gmail.com', 101, 'Y'),
('202072025', '94ac2dbf4d0236283dccf2a3b9c8a5a0', 'Joya Saddani Makaneneng', 'Laki-Laki', 'Ambon', '2002-08-11', '4', '085254084844', 'joyasaddani@gmail.com', 101, 'Y'),
('202072027', '91747a8e2a3bc7f3e046690ebe56ddc4', 'Salsabilla Aurelia', 'Perempuan', 'Sidoarjo', '2002-06-28', '4', '082151029895', 'salsa280602@gmail.com', 101, 'Y'),
('202072028', '6c3b83b0f53e419f448bc7dd12846e35', 'VIRA FLORENSIA IMANUELA RIRIHENA', 'Perempuan', 'AMBON', '2003-06-30', '4', '085243030832', 'viraflorensia@gmail.com', 101, 'Y'),
('202072031', '804e508876bc9f7ee4dd66201bb6fa59', 'Riqqah Thaliah Tueka', 'Perempuan', 'Ambon', '2003-06-10', '4', '082274897871', 'tuekariqqah10@gmail.com', 101, 'Y'),
('202072036', 'e91c019717bf8b97fcb9bde64fcb31fb', 'Achmad Sidik Salatin', 'Laki-Laki', 'Wahai', '2001-08-29', '4', '081248135303', 'salatinsidik02@gmaill.com', 101, 'Y'),
('202072038', '7950bc9c21d99d101b791c2785e96801', 'Nurul Cantika Prameswari Habir', 'Perempuan', 'Ambon', '2002-01-15', '4', '082266247179', 'nurulhabir123@gmail.com', 101, 'Y'),
('202072039', '198746e13afb1e003ea0b2bad0f59817', 'Radil Rafli Aimar Trenggano', 'Laki-Laki', 'Jayapura', '2003-08-17', '4', '08224851616', 'trenggano17@gmail.com', 101, 'Y'),
('202072041', '888109238a25c3d6af639539654bbba1', 'Sangkulana Hitimala ', 'Laki-Laki', 'Buano Utara', '2000-09-19', '4', '082121270877', 'sangkakalahitimala@gmail.com', 101, 'Y'),
('202072042', 'd16498c7caf0136a2770cea09041d4ef', 'Krisvando latumeten', 'Laki-Laki', 'Bandung', '2002-12-23', '4', '081248903936', 'krisvandolarumeten@gmail.com', 101, 'Y'),
('202072049', 'c886b5ed59c22ad6ac0027f50eb2431a', 'PUTRI WULANDARI', 'Perempuan', 'Ambon ', '2002-06-18', '4', '085244782925', 'wulandaryyputrii18@gmail.com', 101, 'Y'),
('202072051', '273cfe0dafedb8a032e7a0186079d448', 'Andi Dahliya Natsir', 'Perempuan', 'Ambon', '2002-01-31', '4', '081284580283', 'natsirandi3@gmail.com', 101, 'Y'),
('202072055', 'd2fbb17089c969e2ff122eb4633d5ed7', 'Puteri Thivan Shalsabila', 'Perempuan', 'Makassar', '2001-06-17', '4', '081296925729', 'thivaniashalsabila1706@gmail.com', 101, 'Y'),
('202072057', 'c77db4f088ad3e909b882b9949204cdb', 'FEBRIANTI INUHAN', 'Perempuan', 'AMBON', '2003-02-28', '4', '082248846921', 'Febriantiinuhan@gmail.com', 101, 'Y'),
('202072069', '4e862e1bd0af38bd5bc7c9e23de0c0cd', 'Jundira Yosefin Alsye Sesa', 'Perempuan', 'Sorong', '2003-06-23', '4', '082123606367', 'diralsyes@gmail.com', 101, 'Y'),
('202072072', 'b94cf19d66501d056905e4edba6c0dd5', 'Wa Sari ', 'Perempuan', 'Kawa', '2000-02-05', '4', '081248810092', 'wasarieca@gmail.com', 101, 'Y'),
('202072073', '98539afbada578b8fab2329f64668d03', 'Jeki Felix Taressy ', 'Laki-Laki', 'Oirata Timur ', '2001-01-10', '4', '085217792231', 'woiratamotdo@gmail.com', 101, 'Y'),
('202072079', 'e3cef2cee4290d14e7aefd608cf47fe7', 'Fikri sanaky', 'Laki-Laki', 'Ambon', '1998-06-04', '4', '082211801542', 'fikrisanaky4698@gmail.com', 101, 'Y'),
('202072083', '37d94312b9659ca866d699093e73b848', 'Adi Rangga Suiran', 'Laki-Laki', 'Ambon', '2003-08-17', '4', '081240262851', 'adiranggasuiran2003@gmail.com', 101, 'Y'),
('202073002', '126705be2314a119d5683082df68f765', 'Agus Dura', 'Laki-Laki', 'matanauwe, kab. buton, Sulawesi Tenggara', '2002-08-19', '5', '085395584416', 'agusdura57@gmail.com', 101, 'Y'),
('202073003', '53ba11498920d853f5eb0acb8760dbd0', 'Sita Silvani Hatuwe ', 'Perempuan', 'Kaitetu ', '2003-08-04', '5', '081248306920', 'sitasilvanihatuwe@gmail.com', 101, 'Y'),
('202073011', 'd805bd766d09b8f1aa820d3aa3e9568f', 'Yudhistira Dio Parawansyah', 'Laki-Laki', 'Ambon', '2003-02-25', '5', '081343425371', 'ydsparawansyah@gmail.com', 101, 'Y'),
('202073019', '435b8396a71ece3e6a60f7fed1bfd87d', 'ANGGRINA LEONDRI SAYUTI LAIMBO', 'Perempuan', 'AMBON', '2002-08-11', '5', '082238940328', 'anggrinaleondri689@gmail.com', 101, 'Y'),
('202073021', '14c41150029c1083fbb0e630b44d96de', 'Nurul hidayah adam', 'Perempuan', 'Masohi', '2002-07-31', '5', '082248834390', 'nurulhidayh31@gmail.com', 101, 'Y'),
('202073029', 'c0ba7cdf685042377e71ee82f22c1dff', 'Agung Setiawan ', 'Laki-Laki', 'Ambon', '2002-03-08', '5', '082239252106', 'agungstwn101002@gmail.com', 101, 'Y'),
('202073046', 'b0841990a0645b6e55809105a9113eae', 'Chelsia Rangkoratat ', 'Perempuan', 'Latdalam ', '2002-07-06', '5', '082291956135', 'chelsiarangkoratat6@gmail.com', 101, 'Y'),
('202073052', '50b46f85fb722abc636bc1030181ccb2', 'Siti Soraya Kastella', 'Perempuan', 'Taruy', '2002-09-10', '5', '085814700662', 'kastellasitisorya@gmail.com', 101, 'Y'),
('202073076', '6637aeaf5e8a7802efb61a491cf7ec0b', 'Nurtaiba Mardia suwakul', 'Perempuan', 'Rumeon', '2003-03-19', '5', '082188493197', 'nrtmardias@gmail.com', 101, 'Y'),
('202073079', 'ad7decf2cccec8f468d7ea4df2255147', 'Jeniffer Jill Dwi Putri', 'Perempuan', 'Ambon', '2003-06-15', '5', '082199146521', 'jenifferputri5@gmail.com', 101, 'Y'),
('202073086', 'e03cdc107a25096f628fde4799f8d0ce', 'AFIF AFRIZAL RAKIB SOAMOLE', 'Laki-Laki', 'AMBON', '2002-08-18', '5', '085254518366', 'afifsoamole965@gmail.com', 101, 'Y'),
('202073087', '5870db041cb51b485d37af3de2d37b28', 'Karmi sangaji', 'Perempuan', 'Ambon', '2002-11-23', '5', '085244755059', 'karmisangaji17@gmail.com', 101, 'Y'),
('202073133', '17d2751e70572db9f7cc186234fe4f42', 'Valentino Yoredt Selanno ', 'Laki-Laki', 'Lilibooi ', '2001-02-14', '5', '082238598648', 'valentinoselannoo@gmail.com', 101, 'Y'),
('202073140', 'eb39ccb93b603b623df75be7a0b240d9', 'M.FARABI KABALMAY', 'Laki-Laki', 'Ambon', '2003-09-13', '5', '081342524523', 'mfarabikabalmay@gmail.com', 101, 'Y'),
('202073150', 'fe86be9f76ad2f69ff617e7f6a058c5f', 'Sanita Arif Bugis', 'Perempuan', 'Haya', '2002-07-07', '5', '202073150', 'sanitaarifb@gmail.com', 101, 'Y'),
('202074010', '661a6e616c46b186ba3606675dc1dcf8', 'Indayanni Namakule', 'Perempuan', 'Masohi', '2003-01-15', '6', '082114432941', 'indahnamakule15@gmail.com', 101, 'Y'),
('202074066', '7138b68298e20d58976660b3d73524d6', 'Daniel Angelberth Sesa', 'Laki-Laki', 'Ambon', '2002-11-08', '6', '081343368610', 'danielangelberthsesa@gmail.com', 101, 'Y'),
('202074068', '125229e7ec703747bacff7ce5325c6d8', 'Ekaristy Giantri Rupilu', 'Perempuan', 'Wonreli', '2003-05-08', '6', '081385505231', 'risty03giantry@gmail.com', 101, 'Y'),
('202098001', 'de496a106002d86a26f59346f9eec949', 'Yosualdus Doman Kristo Sabonu', 'Laki-Laki', 'Tual', '2002-04-15', '7', '082189804180', 'yosuasabono15@gmail.com', 101, 'Y'),
('202098020', 'f39935371f825c2e51f262cbc7466fa8', 'Giovanni Adventi Christy Oratmangun', 'Laki-Laki', 'Ambon', '2001-12-22', '7', '082220890554', 'giomengan22@gmail.com', 101, 'Y'),
('202169008', '0535ce1d2af22edff4e3a1b5c2fd6c32', 'Yance Edgard Pical', 'Laki-Laki', 'Ambon', '2003-10-15', '1', '082198416725', 'yancepical2003@gmail.com', 101, 'Y'),
('202169027', '4eee7e86fbd0512938227a0289610d99', 'Juan H Rimbael ', 'Laki-Laki', 'Latea ', '2003-07-26', '1', '081316724478', 'juanhendrico905@gmail.com', 101, 'Y'),
('202169028', 'ef68a45ae6bcdf2b57303dfa052c1777', 'Elmirellia Tristania Lumamuly', 'Perempuan', 'Ambon', '2003-11-23', '1', '081248711772', 'tristania2311@gmail.com', 101, 'Y'),
('202172006', 'f4ddfcd0a0ff8a4adaa1ede737cd7d2a', 'GOSYEN YEHESKIEL PAAIS ', 'Laki-Laki', 'Kupang', '2002-11-07', '4', '081240771008', 'gosyen07nov@gmail.com', 101, 'Y'),
('202172008', '07102d7e3e8e48ee11b63cd129c54547', 'Anatasya Mery Loiwatu', 'Perempuan', 'Ambon', '2005-03-29', '4', '081247646473', 'anastasya05loiwatu@gmail.com', 101, 'Y'),
('202172011', 'c01572bf99c2a514b8c19a7b35ee036c', 'Aulia Patris Tomu ', 'Perempuan', 'Masohi ', '2003-10-23', '4', '082239281049', 'auliapatristomu@gmail.com', 101, 'Y'),
('202172023', '2d8856db687e374a82e80f3b5a335075', 'Zirah Mayun Ufie', 'Perempuan', 'Bandung ', '2003-09-14', '4', '082310506088', 'zirahufie14@gmail.com', 101, 'Y'),
('202172030', 'ea54d015738de5c2b1de4d2db7b5fb72', 'Pentaria Sianipar', 'Perempuan', 'Ampera', '2003-02-14', '4', '082131969421', 'riaanipar140203@gmail.com', 101, 'Y'),
('202172032', 'c56b225dd444102f37857116a8242587', 'Eka Rahmasari Damar Darwis', 'Perempuan', 'Ambon', '2003-12-09', '4', '081248162115', 'ekarahmasari09@gmail.com', 101, 'Y'),
('202172033', '5d363acf5ab6882f8a850d540dbf3a4b', 'Nurmiati Suriadi', 'Perempuan', 'Wahai', '2003-02-05', '4', '082239455420', 'suriadynurmiati02@gmail.com', 101, 'Y'),
('202172039', '66dbe5507d84480964ad82eb3900a4d1', 'Zulfahira Syarif ', 'Perempuan', 'Sorong', '2003-02-21', '4', '082122198843', 'zulfahirasy@gmail.com', 101, 'Y'),
('202172045', 'bb023ac1b5831bc8194ccc23611e559a', 'Findri Yani ', 'Perempuan', 'Lesane ', '2003-11-28', '4', '081240255173', 'fndry28@gmail.com', 101, 'Y'),
('202172046', 'e4d6ad6cc893102db4aaabd501ce6eaf', 'Balgis Qadiriyyah Arsyad', 'Perempuan', 'Ambon', '2004-03-12', '4', '085244632148', 'balgisarsyad@gmail.com', 101, 'Y'),
('202172061', '9c308a71f9a3d60af47de735e29c9ab1', 'Novince sopamena', 'Perempuan', 'sofan', '2002-11-19', '4', '081245662604', 'novincesopamenasumy@gmail.com', 101, 'Y'),
('202172069', '5f3794e453728ebd57c89f34722ced89', 'Tobias Loiwi Beay', 'Laki-Laki', 'Uiwily', '2000-07-20', '4', '081240224377', 'tobibeay4@gmail.com', 101, 'Y'),
('202172080', '614913bc360cdfd1c56758cb87eb9e8f', 'Aulia Latulumamina', 'Perempuan', 'Kasieh', '2002-04-24', '4', '082130290006', 'lzanjabila@gmail.com', 101, 'Y'),
('202172082', '2c770884381f971002a640137a976970', 'Rizki Alkafli Sanaky', 'Laki-Laki', 'Ambon', '2003-06-04', '4', '085297490457', 'rizkialflisanaky04@gmail.com', 101, 'N'),
('202172088', '5fd2cc3a6fe553696295e76c18737738', 'M Fahmi Haupea', 'Laki-Laki', 'Seith 02 juni 2003', '2024-06-02', '4', '081286304923', 'fahmihaupea28@gmail.com', 101, 'Y'),
('202172095', '5e8667a439c68f5145dd2fcbecf02209', 'Sari Gentry Habayasya Kilian ', 'Perempuan', 'Namlea ', '2003-09-10', '4', '082399602564', 'kilianentri@gmail.com', 101, 'Y'),
('202172096', 'fb7dd67e4631e28b50cc8fb6c88bfc45', 'Taufik Ilham B Adam', 'Laki-Laki', 'Tilamuta', '2003-03-27', '4', '081346239662', 'taufikiihambudimanadam@gmail.com', 101, 'Y'),
('202173006', '8cd632c2b3a3f70ebbe4c293bf6e49ea', 'Efata Tammy Tuhuteru', 'Perempuan', 'Ambon', '2004-03-01', '5', '082198799819', 'efatatammytuhuteru@gmail.com', 101, 'Y'),
('202173014', 'a5895ea2b058baa4acf39b099ab677a1', 'Umi Kalsum Latukau', 'Perempuan', 'Bekasi', '2004-05-15', '5', '081247919062', 'umikalsumlatukau1@gmail.com', 101, 'Y'),
('202173023', 'ca260b2f0e2d9648ff8481450ad1ef0e', 'MUHAMMAD HASBUL JALIL OHORELLA', 'Laki-Laki', 'TULEHU', '2002-10-01', '5', '085243230457', 'mametohorella07@gmail.com', 101, 'Y'),
('202173028', '23793040fab60ebb297e91ad0d89b0da', 'Rahmadini Lukman', 'Perempuan', 'Ambon', '2003-12-21', '5', '081343623451', 'lukmanrahmadini@gmail.com', 101, 'Y'),
('202173033', '9cfd4113b163dbb8182b4471b1bae434', 'Sakinah Aulia Uryaan', 'Perempuan', 'Ambon', '2003-07-24', '5', '082198422546', 'sakinahuryaan@gmail.com', 101, 'Y'),
('202173037', 'b539eb7a0864d11662ff28e23f8800d9', 'Ansar Latuconsina', 'Laki-Laki', 'Pelauw', '2003-10-08', '5', '081318297374', 'ansarlatuconsina@gmail.com', 101, 'Y'),
('202173044', '749a798f8160cd890ec3bde26abfaccd', 'Dinda yulita', 'Perempuan', 'Bukittinggi', '2003-11-30', '5', '081248521605', 'dindayltaaa@gmail.com', 101, 'N'),
('202173048', 'fd69a79ee858bbec6ccd5ece921bb1cc', 'Alfiyanti Putri Rajsita Nio', 'Perempuan', 'Ambon', '2004-04-26', '5', '081240239191', 'alfhyyantinio@gmail.com', 101, 'N'),
('202173070', '37ec83de68d80bd6d07aa7142719726b', 'Januar Saddam Tanassy', 'Laki-Laki', 'Ambon', '2003-01-28', '5', '081343046176', 'januartanassy@gmail.com', 101, 'Y'),
('202173072', '769e47101bb51ce9d341301e44a709c9', 'FARHAN MAULANA LATARISSA', 'Laki-Laki', 'MASOHI', '2004-03-05', '5', '082197892613', 'Farhanmaulanalatarissa04@gmail.com', 101, 'Y'),
('202173101', '1a55b3791775cccd32c32b318eb9206a', 'Mariyami Angkotasan', 'Perempuan', 'Bekasi', '2003-07-22', '5', '082399032807', 'mimi.angkotasan101@gmail.com', 101, 'Y'),
('202173120', 'e009afbc2e1465e6f42e0a9863909b8b', 'Ririn Adryanti', 'Perempuan', 'Namlea', '2003-10-20', '5', '082199703318', 'ririnadrianty3@gmail.com', 101, 'Y'),
('202173121', 'a457e939b184f4becc86cc796a49c4c9', 'muhammad agly zhalfin sangaji', 'Laki-Laki', 'ambon', '2002-08-08', '5', '081243639485', 'zhalfinmuhammad@gmail.com', 101, 'Y'),
('202173126', '9777bb6c569d3aff85b5fded4c630d9a', 'Mahdi Munir Rahayaan', 'Laki-Laki', 'Tual', '2003-04-11', '5', '085325558653', 'mahdimunirrahayaan@gmail.com', 101, 'Y'),
('202173127', 'b2a2f0725c23f6e58558f8a9d5041429', 'Adji Pangestu', 'Laki-Laki', 'UPT T BULA', '2001-06-28', '5', '082238506127', 'adjipangestupangestu6@gmail.com', 101, 'Y'),
('202173128', '0a1f7106101561a2bb2c2ade1541d21b', 'M nur Reza Sahartira', 'Laki-Laki', 'Kailolo', '2003-01-07', '5', '082258259487', 'rezasahartira07@gmail.com', 101, 'Y'),
('202173131', 'fe79546db9f0693ac23936c1748074a0', 'IMANUEL STEVEN LARATMASE', 'Laki-Laki', 'SAUMLAKI', '2003-02-19', '5', '081342236819', 'stevenlaratmase26@gmail.com', 101, 'Y'),
('202173140', 'f30e0af09f3265dba1a25e4bb9b68736', 'Annugrah Aharuddin ', 'Laki-Laki', 'Makassar', '2002-04-29', '5', '082248275143', 'aharuddinanugrah@gmail.com', 101, 'Y'),
('202173142', 'ac7b25a4371c2e753ac01a8bd919ba0c', 'Jurfan kalidupa', 'Laki-Laki', 'waprea', '2003-06-22', '5', '085159969749', 'jurfankalidupa0@gmail.com', 101, 'Y'),
('202173148', 'd03915acfbfb2299d40f5f5b0669cdd2', 'Muhammad Karaeng Al Gibran Rusli', 'Laki-Laki', 'ambon ', '2004-03-12', '5', '081213111203', 'gibranrusli3@gmail.com', 101, 'Y'),
('202174001', 'f06d05041bc0e147609eabdb70a68e37', 'Brooklyn Ale Chrisvino Toysuta', 'Laki-Laki', 'Ambon', '2003-06-19', '6', '085254270449', 'brooklyntoysuta@gmail.com', 101, 'Y'),
('202174012', '664c6fe3cfe822489b9b4148ac01fe22', 'Desnita Fitri Atalya Pane', 'Perempuan', 'Ambon', '2003-12-13', '6', '081344207898', 'desnitapane13@gmail.com', 101, 'Y'),
('202174026', 'e8eaa49eab02dcbe1ecb2a21f3950bd4', 'Farisi Muhammad Rijali Tuhelelu', 'Laki-Laki', 'Tulehu', '2003-05-09', '6', '081240100036', 'fmrt123@gmail.com', 101, 'Y'),
('202174043', 'f049ea3845c616487a7c62596b698271', 'WIDYAWATI', 'Perempuan', 'BAU-BAU', '2003-02-17', '6', '082123535211', 'DYAURIK@GMAIL.COM', 101, 'Y'),
('202174055', 'c1135bb9d2314588d9a65490b624112c', 'Syamalun Marasabessy', 'Laki-Laki', 'Kailolo', '2003-11-25', '6', '0822983525295', 'marssysam02@gmail.com', 101, 'Y'),
('202174083', '8a5075274372e46e0d9b82d5ed48a009', 'Ahmad Taufik Rabul', 'Laki-Laki', 'Ambon', '2001-06-25', '6', '081240825135', 'opiklorgi123@gmail.com', 101, 'Y'),
('202176005', '1fd0ef3b2ed1a51bca16d7d40a9d3253', 'Vensca Tuhumury', 'Perempuan', 'Uraur', '2003-11-01', '5', '085254326034', 'tuhumuryvensca81@gmail.com', 101, 'N'),
('202199015', '7e9776b6043189c5c94f7b0373b7ac87', 'Yasmin Marhawiah Usemahu', 'Perempuan', 'Bandung', '2003-06-18', '8', '082197630518', 'yasminusemahu1803@gmail.com', 101, 'Y'),
('202213032', 'f7e09712f32eaa89dcc2c7a552d5171e', 'Salsabila Hamja', 'Perempuan', 'Seram Bagian Barat', '2005-06-13', '5', '082216824021', 'salsahhamjah@gmail.com', 101, 'Y'),
('202246001', 'e6236cbea913c3cdaeb2e0f73b3590c7', 'Melvia Natalia Aponno', 'Perempuan', 'Tual', '2004-12-10', '10', '085254372980', 'meviaponno10@gmail.com', 101, 'Y'),
('202269029', 'b7ff2b191e325dc7df0b5c7529b98164', 'Meilan Silvi Rumahketty', 'Perempuan', 'Tual', '2005-08-20', '1', '081248866397', 'silvirumahjara@gmail.com', 101, 'Y'),
('202271001', '23dda1033b794bcc5a9d8fa9ea3a3256', 'Dewi Yana Sahetapy ', 'Perempuan', 'Liang', '2004-11-11', '2', '081247312290', 'dewysahetapy0@gmail.com', 101, 'Y'),
('202272041', 'a0b9943085e7242472750bd56072bb61', 'Nana Suryana', 'Laki-Laki', 'Pandeglang', '2003-04-06', '4', '081354014108', 'ns7283886@gmail.com', 101, 'Y'),
('202272103', '658d7a8d149768a1943201963144cdc6', 'Rendy Ardhana Ulath', 'Laki-Laki', 'Ambon', '2004-05-03', '4', '085254437799', 'rendyardhana03004@gmail.com', 101, 'Y'),
('202273001', 'a0f265f9a467ed5a1369881fd11e3e0f', 'Miftahul Jannah Rumadan', 'Perempuan', 'Nanmlea', '2004-11-10', '5', '081223896127', 'miftahrumadan10@gmail.com', 101, 'Y'),
('202273002', '519535162cb48a6b74d66371a11e0398', 'ATIKA TUAHENA ', 'Perempuan', 'Pelauw', '2004-02-25', '5', '081259984161', 'tuahenatika@gmail.com', 101, 'Y'),
('202273004', '875fda1bed10449d1ae25c713e8ecbe8', 'ULFIYAH NISA LUMAELA', 'Perempuan', 'Ambon', '2004-02-13', '5', '082199447089', 'ulfyhnisaa@gmail.com', 101, 'Y'),
('202273005', '827ccb0eea8a706c4c34a16891f84e7b', 'Alice Johana Tuhalauruw ', 'Perempuan', 'Ambon', '2005-07-21', '5', '082398994765', 'alicetuhalauruw21@gmail.com', 101, 'Y'),
('202273012', '85758590dcd56f1d170e55f224f36e54', 'Unarya attamimi', 'Perempuan', 'Ambon', '2004-11-02', '5', '081344419344', 'unarya@gmail.com', 101, 'Y'),
('202273019', '32550bc5feb95458691d0ada89a8cfce', 'Putri Sakinah Marafa ', 'Perempuan', 'Ambon ', '2004-05-16', '5', '081340914781', 'putrisakinah802@gmail.com', 101, 'Y'),
('202273023', '427118e889a89a842d5ed7f3cbc50a96', 'Fitriyanti muhammad ali', 'Perempuan', 'Masohi', '2004-05-27', '5', '081343064045', 'fitriyantimuhammadali357@gmail.com', 101, 'Y'),
('202273024', 'ba7686d8acb11085d4b97a432d16e4a5', 'Marsya Umagap', 'Perempuan', 'Sanana', '2005-10-05', '5', '085256463714', 'marsyaumagap05@gmail.com', 101, 'Y'),
('202273027', 'bc3d97a0b1e2b22f1c13b11357d2bb7b', 'Marsela Latuputty', 'Perempuan', 'Piru', '2004-03-06', '5', '082214221118', 'pattimukayela@gmail.com', 101, 'Y'),
('202273029', '59d6dbd2d93bdf7dd358aabab4a638f7', 'Elma Kirani Pelu', 'Perempuan', 'Ambon', '2005-05-25', '5', '085281485437', 'elmakiranip@gmail.com', 101, 'Y'),
('202273032', 'f7e09712f32eaa89dcc2c7a552d5171e', 'Salsabila Hamja', 'Perempuan', 'Seram Bagian Barat', '2005-06-13', '5', '082216824021', 'salsahhamjah@gmail.com', 101, 'Y'),
('202273040', '63ce8a127360cfe36e5c449ac0c4439f', 'uswatun khasanah', 'Perempuan', 'maluku tengah', '2004-04-14', '5', '082397051446', 'uswatunkhsnnh@gmail.com', 101, 'Y'),
('202273047', '755abec633852af7f6c134022e0f4401', 'Nazyla Tuarita', 'Perempuan', 'Tial, kec. Salahutu', '2004-01-24', '5', '081344418448', 'nazylatuarita@gmail.com', 101, 'Y'),
('202273048', '26069e6b1810ff1d46aaea2d973451d4', 'Riyan Muhaimin Ode', 'Laki-Laki', 'Seram bagian barat', '2004-12-05', '5', '081248266019', 'riyannode01@gmail.com', 101, 'Y'),
('202273064', 'd1ce468d9ad5739674bc07a1f07ce393', 'Yenita Solissa', 'Perempuan', 'Mngeswaen', '2005-06-29', '5', '081288730190', 'yenitasolissa@gmail.com', 101, 'Y'),
('202273065', 'f0a259fc89d7f2a02d3967b55a2bc4c8', 'Setia Juliantri', 'Laki-Laki', 'Palu', '2003-07-30', '5', '082398702856', 'setiajulianti3@gmail.com', 101, 'Y'),
('202273067', 'd6efbdd59c31a6eeae10943ffbba1482', 'Verga Putri Rahayu', 'Perempuan', 'Ambon', '2005-04-21', '5', '082259476982', 'vergaputrirahayu@icloud.com', 101, 'Y'),
('202273072', '0a8d3320e59d7bab49c93b9e62e9424a', 'Sutila kilwouw', 'Perempuan', 'Namlea', '2003-05-17', '5', '081346738448', 'tilakilwouw058@gmail.com', 101, 'Y'),
('202273076', '6d45454a3e37691ce2095e72097fffae', 'JOSUA FERDINAN NAINGGOLAN', 'Laki-Laki', 'PASO', '2003-06-16', '5', '081566632639', 'josuanainggolan1922@gmail.com', 101, 'Y'),
('202273081', '220abd6898987a7ef5a7cbe2614cb5c7', 'Nanda Aprilia Rumra', 'Perempuan', 'Solo', '2004-04-20', '5', '085254807148', 'rumrananda@gmail.com', 101, 'Y'),
('202273083', 'ead79216ec593ae26ea34815407c241f', 'Hardianti Daeng Bustam ', 'Perempuan', 'Taruy ', '2004-05-04', '5', '081248669117', 'hardiantidaengbustam@gmail.com', 101, 'Y'),
('202273086', '34bc1c72a7e29bcbeae99b17956fb2e5', 'Esy Abeth Luanmase', 'Perempuan', 'Ambon', '2004-08-13', '5', '082248225962', 'esyluanmase138@gmail.com', 101, 'Y'),
('202273089', '463758124eb0dbd4c800ef131654f6a3', 'Khansa Aliya Azhar', 'Perempuan', 'Tual', '2006-01-10', '5', '081248191193', 'khansazhar06@gmail.com', 101, 'Y'),
('202273093', '827ccb0eea8a706c4c34a16891f84e7b', 'ALFIRA ABAS', 'Perempuan', 'Waenetat', '2004-09-13', '5', '081344112349', 'abasalfira@gmail.com', 101, 'Y'),
('202273096', '64b7fbb9d6f3f1156d6a695c91259e91', 'Sangsela Hitimala ', 'Perempuan', 'Buano Utara ', '2003-07-12', '5', '081259973639', 'sangselahtmla@gmail.com', 101, 'Y'),
('202273097', 'e1d9ff4425354454796fb6581f38cf95', 'Vachi Adinda Daniela', 'Perempuan', 'Watampone', '2004-07-06', '5', '085270362564', 'danielavachi@gmail.com', 101, 'Y'),
('202273099', 'ec206c6a61a39dfacf835131c2f87c64', 'Nur khalija s sopalatu', 'Perempuan', 'Sepa', '2003-09-04', '5', '085254287283', 'septianty003@gmail.com', 101, 'Y'),
('202273122', '1a20224b13634855a272c913c91da3ad', 'SITI ZAHRA RENIURYAAN', 'Perempuan', 'LANGGUR', '2004-09-18', '5', '081343214833', 'ichyreniuryaan@gmail.com', 101, 'Y'),
('202273127', '7d3a9d65fad50032b785b12337b94a12', 'Rahma Wulandari Marasabessy ', 'Perempuan', 'Kailolo', '2004-08-02', '5', '082198012535', 'rahmawulandarimarssy@gmail.com', 101, 'Y'),
('202273128', '39e0714e58eb7b65dd448ac185245b68', 'SITI ALYA DWIKAHAPSARY MAGFIROH', 'Perempuan', 'Ambon', '2004-08-14', '5', '082238938945', 'alyamagfirohalya@gmail.com', 101, 'Y'),
('202273130', '614ed783e66193791a408cfac7804118', 'La taufik', 'Laki-Laki', 'Bau bau ', '2001-09-05', '5', '081210707276', 'lataufikla@gmail.com', 101, 'Y'),
('202273146', 'c5d7790b7bd682f9b2aef12aa94eb8bb', 'fita wahid', 'Perempuan', 'seram bagian barat', '2004-04-04', '5', '082398133358', 'fitawahid4@gmail.com', 101, 'Y'),
('202273147', '12116af2028d69ba2ba2041c6db6d47c', 'Sri Retno Apriliani', 'Perempuan', 'Pasahari', '2002-04-15', '5', '081247454348', 'aprilianikkapri@gmail.com', 101, 'Y'),
('202273150', '5859c1cd3633ef0dd53d15e9988386ba', 'Justino Joshua Adriaansz', 'Laki-Laki', 'Ambon', '2003-12-21', '5', '081293556453', 'jhosuajustino@gmail.com', 101, 'Y'),
('202273157', '7d7c411718210dde2166cb1b4effb994', 'Rahman muzadah pelu', 'Laki-Laki', 'Hitu lama', '2005-05-18', '5', '082248401662', 'rahmanpelu75@gmail.com', 101, 'Y'),
('202273180', 'df0e1fe48478047023bbcb19cf7324b1', 'JEMMI HERDIANTO ', 'Laki-Laki', 'Tihu', '2002-03-12', '5', '082125441720', 'jemioslan@gmail.com', 101, 'Y'),
('202273186', '57bc39c220d209efee2fcea6aec99b69', 'JHENEDIA CHALISTA JOVANDA LESSY ', 'Perempuan', 'Ambon ', '2004-06-30', '5', '082238527282', 'jhenadiachalista@gmail.com', 101, 'Y'),
('202274002', '9ddaac19d2690f61c8d20a8c739dd11c', 'S. Ariyanto Mahulette', 'Laki-Laki', 'Assilulu', '2004-07-05', '6', '081344108775', 'mahuletteariyanto@gmail.com', 101, 'Y'),
('202274007', '579dcb2eb5556bd50ab27992b42ec327', 'Gabriella Amellian Lalaar ', 'Perempuan', 'Porto', '2004-08-12', '6', '081344998741', 'febylalaarporto@gmail.com', 101, 'Y'),
('202274009', '9873db9197f0d72ad671c6f53ad021b0', 'salmalatuconsina', 'Perempuan', 'Tual', '2005-03-01', '6', '085219866474', 'salma.latuconsinaa@gmail.com', 101, 'Y'),
('202274010', 'ab79852fb1f5b7afb072cbb7ec4cd119', 'Melani Suneth', 'Perempuan', 'Wakal', '2004-12-14', '6', '082199720242', 'melanisuneth14@gmail.com', 101, 'Y'),
('202274027', 'cddab135a98dca55c72c8592309645de', 'Nadya Larasati Sjah Nurlette', 'Perempuan', 'Ambon', '2005-03-13', '6', '081344616882', 'nsyah2005@gmail.com', 101, 'Y'),
('202274030', '76eb0d1f957a1594dee30b3228eaaf98', 'M ZENDY ALFIANSYAH', 'Laki-Laki', 'Bojonegoro ', '2004-02-26', '6', '081906857733', 'mzendyalfiansyah0@gmail.com', 101, 'Y'),
('202274031', '0483b757850b3303425c42dfe6416b30', 'RATNA FIRANI SELLA', 'Perempuan', 'MASOHI', '2004-05-21', '6', '082124953391', 'Ratnasella4@gmail.com', 101, 'Y'),
('202274037', 'c77db4f088ad3e909b882b9949204cdb', 'Dian Ode ', 'Perempuan', 'Ambon ', '2003-02-28', '6', '082125634940', 'dianode2802@gmail.com', 101, 'Y'),
('202274042', '5ba5ef5da44369f02f2223d44c3dec9a', 'Rizik Ramadhani Nurlily', 'Laki-Laki', 'Ambon', '2004-10-26', '6', '081248806564', 'rizik.rn@gmail.com', 101, 'Y'),
('202274051', '95d3cad0bf83723c90fd524862add5ea', 'Sitti Elvira Putri Ely', 'Perempuan', 'Gowa, Makassar', '2004-08-13', '6', '0895800994419', 'sit3lmi@gmail.com', 101, 'Y'),
('202274055', 'e9f0ade65e0e4d3530f6643d1d7a8202', 'Dina Resley', 'Perempuan', 'Lesluru', '2004-04-08', '6', '082197930825', 'resleydina@gmail.com', 101, 'Y'),
('202274068', 'ad7828c4b637b29c16a4efb514907cb4', 'Hamdi belatu ', 'Laki-Laki', 'Masawoy ', '2003-07-24', '6', '082257487600', 'hamdybelatu@gmail.com', 101, 'Y'),
('202274083', 'ef02f93794107b7420ed165a74c719f3', 'Habib Muhammad Dai Bin Thahir', 'Laki-Laki', 'Namlea', '2004-05-28', '6', '082198629988', 'Daibinthahir05@gmail.com', 101, 'Y'),
('202274087', 'c34fadbfe7474cc0496349477ef8bb68', 'Muhamad Fatah Kusuma Rusbal ', 'Laki-Laki', 'Tual, Maluku ', '2003-04-13', '6', '081232506855', 'mrusbal@gmail.com', 101, 'Y'),
('202274093', 'b7b59a3fe3ff3d75b3b567c1e1d14583', 'Sultana Ali Alkatiri', 'Perempuan', 'Namlea', '2003-01-30', '6', '682197618203', 'sultanaalkatiri@gmail.com', 101, 'Y'),
('202297005', '5c0620678f18f5e9abb50860484d5de8', 'Raudhatul Zahra Awan', 'Perempuan', 'Ambon', '2004-12-23', '9', '081240657900', 'raraawan23@gmail.com', 101, 'Y'),
('202297009', 'cf11818cbf8ebc4a7b50d7e717d9c6a1', 'Hanifa Usman', 'Perempuan', 'Pelauw', '2003-09-15', '9', '082238196482', 'hanimuay@gmail.com', 101, 'Y'),
('202297010', '893a6c08404cff2aa0e97dca16ebc48c', 'Hillary L. G. Tayl', 'Perempuan', 'Ambon', '2005-09-11', '9', '082259935867', 'lellytayl09@gmail.com', 101, 'Y'),
('202297015', '23215db1f34f2df19131892e4399a7ba', 'Dian putri auliya', 'Perempuan', 'ambon', '2003-03-19', '9', '085223357919', 'auliyadianputri@gmail.com', 101, 'Y'),
('202297021', '5c367602bf7b0bbd9e69e63407b34529', 'Tiene Solagracia Kainama', 'Perempuan', 'Ambon', '2005-01-17', '9', '082210241015', 'graciakainama047@gmail.com', 101, 'Y'),
('202298005', 'ac85ca662b170bd26ae1873a8af9a69e', 'GABRIEL ENUS', 'Laki-Laki', 'Hative Besar', '2004-10-26', '7', '085254160832', 'gabrielenus26@gmail.com', 101, 'Y'),
('202298014', '281f7fad82a065587dfbc5dd38fb74b2', 'Sumini Nasir', 'Perempuan', ' Ambon', '2005-02-15', '7', '082363076982', 'nasirsumini@gmail.com', 101, 'Y'),
('202298016', '44a33807f7030fbbd8867d685e131a82', 'Fellicia Dominique Birahy', 'Perempuan', 'Ambon', '2005-05-19', '7', '082199146228', 'felliciadominique@gmail.com', 101, 'Y'),
('202298022', '9655d08e290b6f173950763778200284', 'Adriana Tasya Titirloloby ', 'Perempuan', 'Ambon', '2004-05-06', '7', '082199431184', 'adrianatitirloloby0604@gmail.com', 101, 'Y'),
('202299002', 'd1644e7a828b3920d24c5cbfdbb17a61', 'Dinda Arafah Hehalatu', 'Perempuan', 'Maluku tengah', '2005-01-19', '8', '081240214393', 'dindaarafahhehalatu@gmail.com', 101, 'Y'),
('202299005', '0482fa47191d07feace6c23e20fd743a', 'SILVIA SAHANAYA ', 'Perempuan', 'Ambon', '2004-11-27', '8', '082238796302', 'silviasahanaya71658@gmail.com', 101, 'Y'),
('202299007', '1d15f93697cf862ead8a50f4c01cd87b', 'Rahma Aulia Dewi ', 'Perempuan', 'Masohi', '2004-11-01', '8', '082292280188', 'rhmaliawi11@gmail.com', 101, 'Y'),
('202299008', '11c5450a2a25fd966d6a22894a535113', 'SITI NURUL HUMAIRAH KAPLALE', 'Perempuan', 'Ambon', '2005-01-19', '8', '082239061455', 'kaplalemairah@gmail.com', 101, 'Y'),
('202299011', 'c4e38f80ba1a337cc876fb2b94cf0f92', 'Preity Alfianty Sabina Fajri', 'Perempuan', 'Ternate ', '2004-04-18', '8', '082199438000', 'puputshabinaf@gmail.com', 101, 'Y'),
('202299013', '1b084fedee7667bd3231ec5e0af852ea', 'CHARIN TURUMENA', 'Perempuan', 'Rutong', '2004-05-23', '8', '082197955727', 'charinturu.23@gmail.com', 101, 'Y'),
('202299022', 'a7133aef3fbaad4fafd0fe6175fc30bc', 'Salwa Safitri Saihitua', 'Perempuan', 'Makassar', '2004-11-21', '8', '081244963532', 'safitrisalwa757@gmail.com', 101, 'Y'),
('202299023', '09c9b35b0eace885fdd78d7e2d6bf844', 'Syakirah', 'Perempuan', 'Namlea', '2004-07-02', '8', '081240365893', 'kikisyakirah930@gmail.com', 101, 'Y'),
('202362005', '97ec14702351b7e7b94f18bf4fc224f7', 'Trisman berkat jaya hulu', 'Laki-Laki', 'Buazilimo', '2004-11-30', '11', '082286355968', 'trisjonalasa@gmail.com', 101, 'Y'),
('202362010', '36610285bec7e8c06ea702ac3421659e', 'Naswan afdal Renuat ', 'Laki-Laki', 'Wamlana', '2004-10-08', '11', '085256226246', 'afdalrenuat24@gmail.com', 101, 'Y'),
('202371030', 'cf11818cbf8ebc4a7b50d7e717d9c6a1', 'Marto Usay', 'Laki-Laki', 'Sunggedes', '2003-09-15', '2', '085397867533', 'martosusay458@gmail.com', 101, 'Y'),
('202371059', '24a91dbf2567d6db74c8ec8168fee74b', 'Abil putra man rukua', 'Laki-Laki', 'Ambon ', '2005-06-29', '2', '082331447966', 'abilrukua@gmail.com', 101, 'Y'),
('202371092', '7b63dc6b0bea5a4199a0591b6a76a8cb', 'BERTY JACSANDRI DANTE ', 'Laki-Laki', 'BULI', '2005-02-21', '2', '082338736254', 'jisandante3@gmail.com', 101, 'Y'),
('202372025', '57546c17be8d31d1c2f699611b53ffbe', 'helmaks wagimin', 'Laki-Laki', 'ambon, maluku', '2005-06-20', '4', '082197841814', 'wagiminhelmaks@gmail.com', 101, 'Y'),
('202372091', '76be7ba81c9766883fca24e6073a9120', 'fijran haikal wally', 'Laki-Laki', 'WAESILI', '2005-06-19', '4', '081247078514', 'fijranhaikalw@gmail.com', 101, 'Y'),
('202372095', 'aa781a2483eff17c993feb6ea85990f4', 'Fariz Gulian Sutendi ', 'Laki-Laki', 'Masohi', '2005-07-02', '4', '082198349033', 'aisrpd61@gmail.com', 101, 'Y'),
('202373013', '71226ed5d07f49e4690d7efae0de161c', 'Zulhamja hamid', 'Laki-Laki', 'NAMLEA', '2005-07-04', '5', '082398699579', 'zulhamja93@gmail.com', 101, 'Y'),
('202373014', '2874465fbd5bcc41280668ee7c321268', 'Rachma Lisza Nurjanah', 'Perempuan', 'Ambon', '2005-12-29', '5', '082198535003', 'rachmalisza070@gmail.com', 101, 'Y'),
('202373017', 'f33b326dbf75697aae6def2ecce3b691', 'Herrads Hecar Latuconsina ', 'Laki-Laki', 'Ternate', '2005-11-01', '5', '082398622310', 'herrardsltc@gmail.com', 101, 'Y'),
('202373035', '072ed40e3712dad2965174a5a62fdda1', 'Fahris syarif umarella ', 'Laki-Laki', 'Tamilouw ', '2005-12-08', '5', '082238385348', 'autocad05fs@gmail.com', 101, 'Y'),
('202373060', '7b186b9d75b7d36f03c225b148827b91', 'FAKHRU ZAINI RENHOAT', 'Laki-Laki', 'TUAL', '2005-07-06', '5', '082190455830', 'fakhruzainirenhoatt@gmail.com', 101, 'Y'),
('202373137', '48febcd5249b5ee091158b5375b2f75d', '08012006', 'Laki-Laki', 'Ambon', '2006-01-08', '5', '081247639482', 'etutupary9@gmail.com', 101, 'Y'),
('202373174', '83b5adc0a8501f153abc8eb407c68649', 'Gilberth Jefald Herwawan', 'Laki-Laki', 'Masohi', '2004-03-13', '5', '082214996440', 'ZoeLeora3@gmail.com', 101, 'Y'),
('202373188', '4d52ff77f4a481c348e85a9b3d0d55a0', 'Safia ramadhani keliwawa', 'Perempuan', 'Amar wawatu', '2005-10-27', '5', '082265457595', 'safiaramadanikeliwawa@gamil.com', 101, 'Y'),
('202373203', '8dddd4f1f966befbea47ad60c3d0dd2f', 'Dwiyanto muhammad fatah suneth', 'Laki-Laki', 'Ambon', '2006-02-10', '5', '082250263114', 'dysuneth@gmail.com', 101, 'Y'),
('202374001', 'f7e09712f32eaa89dcc2c7a552d5171e', 'Mahesa irdiwani Rumair ', 'Perempuan', 'Ambon ', '2005-06-13', '6', '081240942241', 'mahessairdiwanirumair@gmail.com', 101, 'Y'),
('202374003', 'ccf42aa8dd231ef66a660efb8c596f3b', 'Frenklyn Allmendo Talakua', 'Laki-Laki', 'Ambon', '2006-04-08', '6', '081380523438', 'frenklyntalakua158@gmail.com', 101, 'Y'),
('202374021', '0afdacb02b593dad7299bbef4493f039', 'Jessica Julieta sahertian', 'Perempuan', 'Jakarta', '2006-07-18', '6', '082197504681', 'jessicajulietasahertian@gmail.com', 101, 'Y'),
('202374035', '1c5da0ce3679a7e09ef67205682127a6', 'Iftita Marwia Latuconsina', 'Perempuan', 'Ambon', '2005-03-30', '6', '082146612700', 'titalatuconsina@gmail.com', 101, 'Y'),
('202374053', '6c9626b4f923c5f713f32284e028d541', 'Ulfa Wulandari Kiang', 'Perempuan', 'Mamala', '2005-05-16', '6', '085257680079', 'ulfawulandarikiang@gmail.com', 101, 'Y'),
('202374055', 'a90fa8f59fdc65a7dcfc154678382280', 'Victor Miru', 'Laki-Laki', 'Saumlaki ', '2003-12-18', '6', '082393281435', 'vickymiru42@gmail.com', 101, 'Y'),
('202374057', '9ae0f01a4ba93e4408c5348055fc90a1', 'Uun Rahmawati Malawat ', 'Perempuan', 'Namlea', '2005-08-16', '6', '082213749409', 'uunmlwt@gmail.com', 101, 'Y'),
('202374065', 'd8b76267162a6bfdbec7b25cdaf5db4b', 'Zahra opier', 'Perempuan', 'Ambon', '2005-12-03', '6', '085243820088', 'zahraopierzahra@gmail.com', 101, 'Y'),
('202374069', 'f55721919b55710dea07cf41d7f66207', 'ASYKIAH PUTRI KARIM', 'Perempuan', 'Ambon', '2006-03-06', '6', '082224084645', 'asykiahkarim@gmail.com', 101, 'Y'),
('202374071', '7846ffc43c0a525c22ccf1a9a9987a28', 'Muhammad Hidayat rumbaru ', 'Laki-Laki', 'Fak-Fak', '2005-07-18', '6', '082288461665', 'kanekihide52@gmail.com', 101, 'Y'),
('202374079', '4327b0fb602aeb377738c966ccaf729c', 'SORAYA QORAISYIA WAKASALA', 'Perempuan', 'WAKASIHU', '2005-02-02', '6', '081383862351', 'sorayawakasala@gmail.com', 101, 'Y'),
('202374089', 'af3e3522f59b46f72f4f2acc62dfc0fc', 'VALENTINO RIONALDO TITIRLOLOBY', 'Laki-Laki', 'Ambon', '2005-02-12', '6', '081340545605', 'valentinotitirloloby@gmail.com', 101, 'Y'),
('202374101', 'fd88bae28b40018e2ea677afd20283be', 'MAULANA RAHMAN MALIK KAPLALE ', 'Laki-Laki', 'Ambon', '2002-11-14', '6', '085392165562', 'alanojpstar@gmail.com', 101, 'Y'),
('202374103', '135e9839cda7b4f068a05b9c94661586', 'Boy Bold Sedubun', 'Laki-Laki', 'Ohoira', '2003-08-17', '6', '082199773038', 'putra.sedubun@gmail.com', 101, 'Y'),
('202374106', '68f462d9ecacaf40e1eefd5d757a828e', 'Difaini Pattin Muri', 'Laki-Laki', 'Fakfak', '2005-09-22', '6', '081240612618', 'diiifainmuri@gmail.com', 101, 'Y'),
('202374108', '46f86caf8eab576ef024aca1e7d39408', 'JHAILANI MAULANA DAMAT', 'Laki-Laki', 'NAMLEA', '2005-01-07', '6', '082124470218', 'aid80491@gmail.com', 101, 'Y'),
('207972023', '37268d670ad8e26b7b1cc360bb829122', 'Boy Soumokil', 'Laki-Laki', 'Hative Besar', '2001-05-14', '4', '085244868741', 'boykesoumokil@gmail.com', 101, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `reg_old`
--

CREATE TABLE `reg_old` (
  `nim` varchar(10) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `tmplahir` varchar(50) NOT NULL,
  `tglahir` date NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` int DEFAULT '101',
  `active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reg_old`
--

INSERT INTO `reg_old` (`nim`, `pass`, `nama`, `jk`, `tmplahir`, `tglahir`, `prodi`, `hp`, `email`, `level`, `active`) VALUES
('202262001', 'ae1867a3981befff0f1a962b9cf80d81', 'Joko Widodo', 'Laki-Laki', 'Ambon', '1998-01-12', '3', '0181345667', 'jokowidodo@gmail.com', 101, 'Y'),
('202379001', '178d41b8bf5f5208ab2088bfc39718e6', 'Senda Pieter', 'Perempuan', 'Ambon', '1980-07-19', '9', '23', 's@gmail.com', 101, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_surat` int NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `semester` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `thnakd` varchar(15) NOT NULL,
  `ortu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pekerjaan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pangkat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jenis` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tujuan` varchar(80) NOT NULL,
  `ukt` varchar(50) NOT NULL,
  `krs` varchar(50) NOT NULL,
  `dns` varchar(50) NOT NULL,
  `kk` varchar(50) NOT NULL,
  `skortu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ttd` varchar(50) NOT NULL,
  `cap` varchar(50) NOT NULL,
  `date_signature` date NOT NULL DEFAULT '2022-01-10',
  `nomor_surat` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id_surat`, `nim`, `nama`, `prodi`, `semester`, `thnakd`, `ortu`, `pekerjaan`, `nip`, `pangkat`, `alamat`, `jenis`, `tujuan`, `ukt`, `krs`, `dns`, `kk`, `skortu`, `date_create`, `ttd`, `cap`, `date_signature`, `nomor_surat`) VALUES
(123, '202273122', 'SITI ZAHRA RENIURYAAN', '5', 'IV (Empat)', '2023 - Genap', 'NUR RENGUR', 'PNS', '', '', '', '1', 'BEASISWA DAERAH KOTA TUAL', '202273122krs contoh.pdf', '202273122krs contoh.pdf', '202273122krs contoh.pdf', 'krs contoh.pdf', '202273122krs contoh.pdf', '2024-01-19 10:57:52', 'ttd.png', 'cap.png', '2024-01-19', '246/UN.13/KM2024'),
(124, '202273122', 'SITI ZAHRA RENIURYAAN', '5', 'III (Tiga)', '2023 - Ganjil', 'Nur Rengur ', 'PNS', '196605261994032007', 'Pembina tingkat 1 IV/b', '', '1', 'Mendaftar Beasiswa ', '202273122BUKTI BAYAR SITI. ZAHRA.pdf', '202273122KRS SITI ZAHRA.pdf', '202273122KRS SITI ZAHRA (1).pdf', 'KK SITI ZAHRA.pdf', '202273122', '2024-01-20 20:33:55', 'ttd.png', 'cap.png', '2024-01-25', '13/UN13.1.6/LL/2024'),
(125, '202273122', 'SITI ZAHRA RENIURYAAN', '5', 'IV (Empat)', '2023 - Genap', 'Nur Rengur ', 'PNS', '', '', 'Jl Wear We Desa Ohoitahit Kecamatan pulau Dullah Utara Kota Tual', '3', 'Mendaftar Beasiswa ', '202273122BUKTI BAYAR SITI. ZAHRA.pdf', '202273122KRS SITI ZAHRA (1).pdf', 'TRANSKIP SEMENTARA (1).pdf', '202273122KK SITI ZAHRA.pdf', '', '2024-01-20 20:40:46', 'ttd.png', 'cap.png', '2024-02-19', '448/UN.13.1.6.3/KM/2024'),
(128, '003', 'Joko widodo', '2', 'III (Tiga)', '2023 - Ganjil', '', '', '', '', NULL, '2', 'Beasiswa', '00302 Rumphius.pdf', '0032PAKAI-kuisinor BINAKEL.pdf', '0033 ABSTRAK.pdf', '0034 KATA PENGANTAR.pdf', '', '2024-01-25 10:21:31', 'ttd.png', 'cap.png', '2024-01-25', '12/UN13.1.6/2024'),
(129, '201974073', 'JUWITA DEWI BUAMONABOT', '6', 'IX (Sembilan)', '2023 - Ganjil', 'Ilyas Buamonabot', 'Polri', '74110580', 'AIPTU', NULL, '1', 'Pensiunan Warakawuri', '201974073Kwitansi SPP.pdf', '201974073krs 9.pdf', '201974073khs 8 (1).pdf', 'KK_compressed.pdf', '201974073SK warakawuri.pdf', '2024-01-25 12:37:44', 'ttd.png', 'cap.png', '2024-01-25', '275/UN.13.1.6.3/KM/2024'),
(130, '201974073', 'JUWITA DEWI BUAMONABOT', '6', 'IX (Sembilan)', '2023 - Ganjil', 'Ilyas Buamonabot', 'Polri', '74110580', 'AIPTU', NULL, '1', 'Pengurusan BPJS Kesehatan', '201974073Kwitansi SPP.pdf', '201974073krs 9.pdf', '201974073khs 8 (1).pdf', 'KK_compressed.pdf', '201974073', '2024-01-25 12:39:53', 'ttd.png', 'cap.png', '2024-01-25', '274/UN.13.1.6.3/KM/2024'),
(131, '202297021', 'Tiene Solagracia Kainama', '9', 'IV (Empat)', '2023 - Ganjil', '', '', '', '', NULL, '2', 'pengurusan beasiswa Djarum', '202297021bukti bayar.pdf', '202297021Laporan KRS Mahasiswa aca.pdf', '202297021Laporan KHS Mahasiswa aca.pdf', '202297021Kartu Keluarga.pdf', '', '2024-01-25 12:52:44', '', '', '2022-01-10', NULL),
(132, '202297010', 'Hillary L. G. Tayl', '9', 'IV (Empat)', '2023 - Genap', '', '', '', '', '', '2', 'Beasiswa Djarum', '202297010IMG-20240122-WA0004.jpg', '202297010Laporan KRS Mahasiswa.pdf', '202297010Laporan KHS Mahasiswa hill.pdf', '202297010IMG-20231227-WA0036.jpg', '', '2024-01-25 14:16:51', 'ttd.png', 'cap.png', '2024-01-30', '317/UN13.1.6.3/KM/2024'),
(133, '202297021', 'Tiene Solagracia Kainama', '9', 'IV (Empat)', '2023 - Ganjil', '', '', '', '', NULL, '2', 'pengurusan beasiswa Djarum', '202297021bukti bayar.pdf', '202297021Laporan KRS Mahasiswa aca.pdf', '202297021Laporan KHS Mahasiswa aca.pdf', '202297021Kartu Keluarga.pdf', '', '2024-01-25 15:19:53', 'ttd.png', 'cap.png', '2024-01-25', '279/UN.13.1.6.3/KM/2024'),
(134, '202297021', 'Tiene Solagracia Kainama', '9', 'IV (Empat)', '2023 - Genap', 'Mozes Kainama', 'Pensiunan', '', '', 'Mangga dua', '3', 'Beasiswa Pertamina', '202297021bukti bayar.pdf', '202297021Laporan KRS Mahasiswa aca.pdf', 'Laporan KHS Mahasiswa aca.pdf', '202297021Kartu Keluarga.pdf', '', '2024-01-25 15:22:30', 'ttd.png', 'cap.png', '2024-01-25', '285/UN.13.1.6.3/KM/2024'),
(135, '202297021', 'Tiene Solagracia Kainama', '9', 'IV (Empat)', '2023 - Genap', 'Mozes Kainama', 'Pensiunan', '', '', 'Mangga dua', '3', 'Beasiswa Djarum', '202297021bukti bayar.pdf', '202297021Laporan KRS Mahasiswa aca.pdf', 'Laporan KHS Mahasiswa aca.pdf', '202297021Kartu Keluarga.pdf', '', '2024-01-25 15:24:03', 'ttd.png', 'cap.png', '2024-01-25', '286/UN.13.1.6.3/KM/2024'),
(136, '202297010', 'Hillary L. G. Tayl', '9', 'IV (Empat)', '2023 - Ganjil', 'Agusthina Matapere', 'PNS', '', '', 'BTN Waitatiri', '3', 'Beasiswa Pertamina', '202297010IMG-20240122-WA0004.jpg', '202297010Laporan KRS Mahasiswa.pdf', 'Laporan KHS Mahasiswa hill.pdf', '202297010IMG-20231227-WA0036.jpg', '', '2024-01-26 00:21:37', 'ttd.png', 'cap.png', '2024-01-30', '314/UN13.1.6.3/KM/2024'),
(137, '202297010', 'Hillary L. G. Tayl', '9', 'IV (Empat)', '2023 - Genap', 'Agusthina Matapere', 'PNS', '', '', 'BTN Waitatiri', '3', 'Beasiswa Djarum', '202297010IMG-20240122-WA0004.jpg', '202297010Laporan KRS Mahasiswa.pdf', 'Laporan KRS Mahasiswa.pdf', '202297010IMG-20231227-WA0036.jpg', '', '2024-01-26 00:24:15', 'ttd.png', 'cap.png', '2024-01-30', '315/UN13.1.6.3/KM/2024'),
(138, '202273004', 'ULFIYAH NISA LUMAELA', '5', 'III (Tiga)', '2023 - Ganjil', '', '', '', '', NULL, '2', 'Persyaratan Beasiswa ', '202273004IMG-20240125-WA0024.jpg', '202273004KRS 3.pdf', '202273004 KHS 3.pdf', '202273004IMG-20240125-WA0023.jpg', '', '2024-01-26 08:58:51', 'ttd.png', 'cap.png', '2024-01-30', '318/UN13.1.6.3/KM/2024'),
(139, '202362010', 'Naswan afdal Renuat ', '11', 'I (Satu)', '2023 - Ganjil', 'Usman Renuat ', 'Buru/petani', '', '', NULL, '1', 'Pengurusan bantuan beasiswa dari kota tual ', '202362010Screenshot_2024_0126_105809.png', '202362010Screenshot_2024_0126_122455.png', '202362010Screenshot_20240126_124825.jpg', 'IMG-20240126-WA0011.jpg', '202362010', '2024-01-26 12:49:24', 'ttd.png', 'cap.png', '2024-01-30', '316/UN13.1.6.3/KM/2024'),
(140, '201874082', 'A Riman Sihab Laitupa', '6', 'XII (Duabelas)', '2023 - Genap', 'Wahab Laitupa', 'PNS', '486701011446536', 'III/b', '', '1', 'Mengaktivasi BPJS', '201874082Foto.pdf', '201874082Foto 2.pdf', '201874082Foto 3.pdf', 'Foto 4.pdf', '201874082', '2024-02-01 13:50:53', 'ttd.png', 'cap.png', '2024-02-01', '359/UN.13.1.6.3/KM/2024'),
(141, '202299013', 'CHARIN TURUMENA', '8', 'IV (Empat)', '2023 - Genap', 'EFA TELAPARY', 'PNS', '196809221995032001', 'III B', '', '1', 'Daftar Gaji Orang Tua', '202299013BUKTI PEMBAYARAN.pdf', '202299013KRS1.pdf', '202299013KHS1.pdf', 'KK.pdf', '202299013SK.pdf', '2024-02-12 15:34:52', 'ttd.png', 'cap.png', '2024-02-12', '423/UN.13.1.6.3/KM/2024'),
(142, '202072027', 'Salsabilla Aurelia', '4', 'VIII (Delapan)', '2023 - Genap', 'Mooi frans bruery', 'Swasta', '', '', NULL, '1', 'Pengurusan surat kehilangan untuk slip pembayaran UKT', '202072027DOC-20240215-WA0026..pdf', '202072027DOC-20240215-WA0028..pdf', '202072027DOC-20240215-WA0027..pdf', 'DOC-20240215-WA0031..pdf', '202072027', '2024-02-15 11:01:18', '', '', '2022-01-10', NULL),
(143, '202072027', 'Salsabilla Aurelia', '4', 'VIII (Delapan)', '2023 - Genap', 'Mooi frans bruery', 'Swasta', '', '', NULL, '1', 'Pengurusan surat kehilangan slip pembayaran UKT', '202072027DOC-20240215-WA0026..pdf', '202072027DOC-20240215-WA0045..pdf', '202072027DOC-20240215-WA0044..pdf', 'DOC-20240215-WA0031..pdf', '202072027', '2024-02-15 12:11:31', 'ttd.png', 'cap.png', '2024-02-15', '437/UN.13.1.6.3/KM/2024'),
(144, '202073021', 'Nurul hidayah adam', '5', 'VIII (Delapan)', '2023 - Genap', 'Adam Hasyim', 'Pegawai Negri Sipil', '197110051997031003', '3D', NULL, '1', 'Kehilangan Slip pembayaran semester 1,2,4', '202073021Slip semester 8-compressed.pdf', '202073021Laporan KRS Mahasiswa.pdf', '202073021Laporan KHS Mahasiswa smstr 7.pdf', 'Kartu keluarga Nurul-compressed.pdf', '202073021', '2024-02-15 13:45:24', 'ttd.png', 'cap.png', '2024-02-15', '436/UN.13.1.6.3/KM/2024'),
(145, '202073003', 'Sita Silvani Hatuwe ', '5', 'VIII (Delapan)', '2023 - Genap', 'Rahma Lumaela ', 'PNS ', '197609022005012005', 'Penata Tingkat 1, Golongan ruang III/d', NULL, '1', 'Kehilangan slip pembayaran semester 6 dan semester 7', '202073003Slip semester 8.pdf', '202073003krs 8.pdf', '202073003KHS 7.pdf', 'Kartu Keluarga.pdf', '202073003SK Pangkat Orang Tua.pdf', '2024-02-15 13:52:06', 'ttd.png', 'cap.png', '2024-02-15', '435/UN.13.1.6.3/KM/2024'),
(146, '202273097', 'Vachi Adinda Daniela', '5', 'IV (Empat)', '2023 - Genap', 'Hamdany Husni', 'Wiraswasta ', '', '', 'Kebun Cengkeh RT.005 RW.009 Kel. Batu Merah Kec. Sirimau Kota Ambon,Maluku', '3', 'Beasiswa Karya Salemba Empat', '202273097bukti pembayaran.pdf', '202273097KRS smstr 3_compressed.pdf', 'KHS  smstr 3.pdf', '202273097kk vachi.pdf', '', '2024-02-19 07:39:31', 'ttd.png', 'cap.png', '2024-02-19', '447/UN.13.1.6.3/KM/2024'),
(147, '202098020', 'Giovanni Adventi Christy Oratmangun', '7', 'VIII (Delapan)', '2023 - Genap', 'Edjelon Oratmangun', 'PNS', '196412021983061001', 'Pembina IV/a', NULL, '1', 'Pengurusan Pensiun', '202098020Pembayaran UKT.pdf', '202098020KRS.pdf', '202098020DNS.pdf', 'KK.pdf', '202098020SK Jabatan.pdf', '2024-02-19 07:58:43', '', '', '2022-01-10', NULL),
(148, '202098020', 'Giovanni Adventi Christy Oratmangun', '7', 'VIII (Delapan)', '2023 - Genap', 'Edjelon Oratmangun', 'PNS', '196402121983061001', 'Pembina IV/a', NULL, '1', 'Pengurusan Pensiun', '202098020Pembayaran UKT.pdf', '202098020KRS.pdf', '202098020DNS.pdf', 'KK.pdf', '202098020SK Jabatan.pdf', '2024-02-19 08:01:24', 'ttd.png', 'cap.png', '2024-02-19', '446/UN.13.1.6.3/KM/2024'),
(149, '201874046', 'Agus loupatty ', '6', 'X (Sepuluh)', '2023 - Genap', 'Stevanus loupatty ', 'PNS ', '197404162005011001', 'Pelaksana/golongan II ', '', '1', 'Untuk keperluan orang tua di kantor', '201874046IMG_20240219_120417 (3).jpg', '201874046IMG20240219123819 (1).jpg', '201874046IMG20240219123834.jpg', 'IMG-20240219-WA0016.jpg', '201874046', '2024-02-19 13:02:20', 'ttd.png', 'cap.png', '2024-02-19', '458/UN.13.1.6.3/KM/2024'),
(150, '202169028', 'Elmirellia Tristania Lumamuly', '1', 'VI (Enam)', '2023 - Genap', 'Hendri Jeri Lumamuly', 'Tidak Bekerja', '', '', NULL, '1', 'Pengurusan Beasiswa Bank Indonesia', '202169028Bukti Pembayaran.pdf', '202169028KRS Semester 6.pdf', '202169028KHS Semester 5.pdf', 'Kartu Keluarga.pdf', '202169028', '2024-02-20 09:00:15', 'ttd.png', 'cap.png', '2024-02-20', '472/UN13.1.6.3/KM/2024'),
(151, '202169028', 'Elmirellia Tristania Lumamuly', '1', 'VI (Enam)', '2023 - Genap', 'Hendrik Jeri Lumamuly', 'Tidak Bekerja', '', '', 'Rumahtiga', '3', 'Beasiswa Bank Indonesia', '202169028Bukti Pembayaran.pdf', '202169028KRS Semester 6.pdf', 'KHS Semester 5.pdf', '202169028Kartu Keluarga.pdf', '', '2024-02-20 09:02:00', 'ttd.png', 'cap.png', '2024-02-20', '471/UN.13.1.6.3/KM/2024'),
(152, '202273004', 'ULFIYAH NISA LUMAELA', '5', 'IV (Empat)', '2023 - Genap', 'Widyastuti ', 'Wiraswasta ', '', '', 'Stain', '3', 'Surat keterangan tidak menerima Beasiswa dari Kampus/Fakultas', '202273004IMG-20240125-WA0024.jpg', '202273004IMG_20240220_092341.jpg', 'IMG_20240220_092324.jpg', '202273004IMG-20240125-WA0023.jpg', '', '2024-02-20 09:36:02', 'ttd.png', 'cap.png', '2024-02-20', '470/UN.13.1.6.3/KM/2024'),
(153, '202273146', 'fita wahid', '5', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'untuk mendaftar beasiswa', '202273146Image to PDF 20240220 11.09.09_11zon.pdf', '202273146Image to PDF 20240220 11.12.26_11zon.pdf', '202273146Image to PDF 20240220 11.15.07_11zon.pdf', '202273146Image to PDF 20240220 11.16.45_11zon.pdf', '', '2024-02-20 11:18:40', 'ttd.png', 'cap.png', '2024-02-20', '469/UN.13.1.6.3/KM/2024'),
(154, '202273146', 'fita wahid', '5', 'IV (Empat)', '2023 - Genap', 'narti moa', 'penjual kue keliling', '', '', 'lesane masohi maluku tengah', '3', 'beasiswa KSE', '202273146Image to PDF 20240220 11.09.09_11zon.pdf', '202273146Image to PDF 20240220 11.12.26_11zon.pdf', 'Image to PDF 20240220 11.15.07_11zon.pdf', '202273146Image to PDF 20240220 11.16.45_11zon.pdf', '', '2024-02-20 11:31:08', 'ttd.png', 'cap.png', '2024-02-23', '495/UN.13.1.6.3/KM/2024'),
(155, '202273032', 'Salsabila Hamja', '5', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'Untuk pengurusan beasiswa', '202273032Image to PDF 20240220 11.24.20_11zon.pdf', '202273032Image to PDF 20240220 11.20.47_11zon.pdf', '202273032Image to PDF 20240220 11.23.33_11zon.pdf', '202273032KK.pdf', '', '2024-02-20 11:37:50', 'ttd.png', 'cap.png', '2024-02-20', '483/UN.13.1.6.3/KM/2024'),
(156, '202273032', 'Salsabila Hamja', '5', 'IV (Empat)', '2023 - Genap', 'Ayah : Hamja tabara      ', 'Ayah : petani  ', '', '', 'Dusun nasiri', '3', 'Untuk pengurusan beasiswa', '202273032bukti bayar.pdf', '202273032krs 4 pdf.pdf', 'KHS PDF.pdf', '202273032KK.pdf', '', '2024-02-20 11:42:43', 'ttd.png', 'cap.png', '2024-02-20', '482/UN.13.1.6.3/KM/2024'),
(157, '202273032', 'Salsabila Hamja', '5', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'Untuk melengkapi persyaratan beasiswa ', '202273032bukti bayar.pdf', '202273032krs 4 pdf.pdf', '202273032KHS PDF.pdf', '202273032KK.pdf', '', '2024-02-20 11:43:51', '', '', '2022-01-10', NULL),
(158, '202273019', 'Putri Sakinah Marafa ', '5', 'IV (Empat)', '2023 - Genap', 'Bahar Marafa', 'Wiraswasta ', '', '', 'Air kuning ', '3', 'Untuk melengkapi persyaratan beasiswa', '202273019IMG-20240220-WA0018.jpg', '202273019IMG-20240220-WA0016.jpg', 'IMG-20240220-WA0019.jpg', '202273019IMG-20240220-WA0020.jpg', '', '2024-02-20 11:49:34', 'ttd.png', 'cap.png', '2024-02-20', '481/UN.13.1.6.3/KM/2024'),
(159, '202273019', 'Putri Sakinah Marafa ', '5', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'Persyaratan Beasiswa ', '202273019IMG-20240220-WA0018.jpg', '202273019IMG-20240220-WA0016.jpg', '202273019IMG-20240220-WA0019.jpg', '202273019IMG-20240220-WA0020.jpg', '', '2024-02-20 11:50:36', 'ttd.png', 'cap.png', '2024-02-20', '480/UN.13.1.6.3/KM/2024'),
(160, '202374057', 'Uun Rahmawati Malawat ', '6', 'II (Dua)', '2023 - Genap', 'Abubakar Malawat ', 'Pegawai negeri sipil ', '196702241993031009', 'Penata tingkat 1 / III d', NULL, '1', 'untuk tunjangan gaji orang tua', '202374057CamScanner 20-02-2024 11.55 (1).jpg', '202374057CamScanner 20-02-2024 11.57.jpg', '202374057CamScanner 20-02-2024 11.57.jpg', 'CamScanner 20-02-2024 11.31.jpg', '202374057', '2024-02-20 12:12:28', '', '', '2022-01-10', NULL),
(161, '202274055', 'Dina Resley', '6', 'IV (Empat)', '2023 - Genap', 'Luky Zena Resley', 'Petani', '', '', 'Jalan Legatala No 9, RT 03 RW 01, Kelurahan Lesluru, Kecamatan TNS, Kabupaten Maluku Tengah, 97558 ', '3', 'Beasiswa Karya Salemba Empat (KSE)', '202274055bukti bayar UKT 2023.pdf', '202274055KRS Dina 2023.pdf', 'KHS Dina 2023.pdf', '202274055Kartu Keluarga .pdf', '', '2024-02-20 13:44:41', '', '', '2022-01-10', NULL),
(162, '201769004', 'ANGGI PRANATA ', '1', 'XIV (Empatbelas)', '2023 - Genap', 'Sakaria', 'Petani', '', '', NULL, '1', 'Pengurusan slip pembayaran yang hilang untuk semester 1', '201769004IMG_20240219_164843_433.jpg', '201769004IMG_20240219_165711_317.jpg', '2017690041708329518661.jpg', 'IMG_20240220_134327_249.jpg', '201769004', '2024-02-20 13:45:45', 'ttd.png', 'cap.png', '2024-02-23', '497/UN.13.1.6.3/KM/2024'),
(163, '202298016', 'Fellicia Dominique Birahy', '7', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'Pengurusan beasiswa', '202298016BUKTI BAYAR UKT SEMESTER 4.pdf', '202298016KRS SEMESTER 4.pdf', '202298016KHS SEMESTER 3.pdf', '202298016KARTU KELUARGA.pdf', '', '2024-02-20 14:55:48', 'ttd.png', 'cap.png', '2024-02-23', '494/UN.13.1.6.3/KM/2024'),
(164, '202298016', 'Fellicia Dominique Birahy', '7', 'IV (Empat)', '2023 - Genap', 'Jacobus Birahy', 'Karyawan Swasta', '', '', 'Jl. Ot Pattimaipauw, TALAKE', '3', 'Beasiswa KSE', '202298016BUKTI BAYAR UKT SEMESTER 4.pdf', '202298016KRS SEMESTER 4.pdf', 'KHS SEMESTER 3.pdf', '202298016KARTU KELUARGA.pdf', '', '2024-02-20 15:01:17', 'ttd.png', 'cap.png', '2024-02-20', '477/UN.13.1.6.3/KM/2024'),
(165, '201771047', 'Ichlasul Amal Tihurua', '2', 'XIV (Empatbelas)', '2023 - Genap', 'Daud Tihurua S.sos', 'PNS', '196607051992121005', 'Penata / III / d / 01-04-2022', NULL, '1', 'Pengurusan pengusulan pensiun', '201771047IMG_20240220_155211.jpg', '201771047Laporan KRS Mahasiswa akhir.pdf', '201771047Laporan KHS Mahasiswa 13.pdf', '196607051992121005_KK..pdf', '201771047196607051992121005_skIIId..pdf', '2024-02-20 15:57:13', 'ttd.png', 'cap.png', '2024-02-20', '486/UN.13.1.6.3/KM/2024'),
(166, '202274055', 'Dina Resley', '6', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'Beasiswa Karya Salemba Empat (KSE)', '202274055bukti bayar UKT 2023.pdf', '202274055KRS Dina 2023.pdf', '202274055KHS Dina 2023.pdf', '202274055Kartu Keluarga .pdf', '', '2024-02-20 18:46:21', '', '', '2022-01-10', NULL),
(167, '202074010', 'Indayanni Namakule', '6', 'VIII (Delapan)', '2023 - Genap', 'Hasanudin Namakule', 'PNS', '197504122000031008', 'Penata muda', NULL, '1', 'Pengurusan BPJS', '202074010slip.pdf', '202074010krs.pdf', '202074010khs.pdf', 'kk.pdf', '202074010SK.pdf', '2024-02-20 19:19:23', 'ttd.png', 'cap.png', '2024-02-23', '484/UN.13.1.6.3/KM/2024'),
(168, '202169008', 'Yance Edgard Pical', '1', 'VI (Enam)', '2023 - Genap', 'Marcus S Pical', 'Pegawai Swasta', '', '', NULL, '1', 'Pengurusan Beasiswa Bank Indonesia', '202169008Slip Scan.pdf', '202169008KRS Scan.pdf', '202169008KHS Scan.pdf', 'KK Scan_compressed.pdf', '202169008', '2024-02-22 14:20:23', 'ttd.png', 'cap.png', '2024-02-23', '561/UN.13.1.6.3/KM/2024'),
(169, '202169008', 'Yance Edgard Pical', '1', 'VI (Enam)', '2023 - Genap', 'Marcus S Pical', 'Pegawai Swasta', '', '', 'Wayame', '3', 'Beasiswa Bank Indonesia', '202169008Slip Scan.pdf', '202169008KRS Scan.pdf', 'KHS Scan.pdf', '202169008KK Scan_compressed.pdf', '', '2024-02-22 14:21:37', 'ttd.png', 'cap.png', '2024-02-23', '560/UN.13.1.6.3/KM/2024'),
(170, '202274055', 'Dina Resley', '6', 'IV (Empat)', '2023 - Genap', 'Luky Zena Resley', 'Petani', '', '', 'Jalan Legatala , RT 003 RW 001, Kelurahan Lesluru, Kecamatan TNS, Kabupaten Maluku Tengah, 97558 ', '3', 'Beasiswa Karya Salemba Empat (KSE)', '202274055bukti bayar UKT 2023.pdf', '202274055KRS Dina 2023.pdf', 'KHS Dina 2023.pdf', '202274055Kartu Keluarga .pdf', '', '2024-02-22 14:56:22', 'ttd.png', 'cap.png', '2024-02-23', '496/UN.13.1.6.3/KM/2024'),
(173, '202072018', 'Juninda Rahliani. j', '4', 'VIII (Delapan)', '2023 - Genap', 'Junaedi adam', 'Wiraswasta', '', '', NULL, '1', 'Berita kehilangan', '202072018Bukti pembayaran smt 8.pdf', '202072018KRS smt 8.pdf', '202072018KSH smt 8.pdf', 'KK juninda.pdf', '202072018', '2024-02-23 11:15:24', 'ttd.png', 'cap.png', '2024-02-23', '562/UN.13.1.6.3/KM/2024'),
(174, '202373035', 'Fahris syarif umarella ', '5', 'II (Dua)', '2023 - Genap', 'Bir ali umarella ', 'Guru', '', '', 'Rumah tiga', '3', 'Beasiswa karya Salemba empat ', '202373035BUKTI PEMBAYARAN .pdf', '202373035KRS.MAHASISWA.pdf', 'KHS.MAHASISWA.pdf', '202373035KK.pdf', '', '2024-02-23 14:48:00', 'ttd.png', 'cap.png', '2024-02-23', '571/UN.13.1.6.3/KM/2024'),
(175, '201773029', 'Rivaldi.Alanmiguel.Kristo.Alfons', '5', 'XIV (Empatbelas)', '2023 - Genap', '', '', '', '', NULL, '2', 'RPL', '201773029UKT aldi.pdf', '201773029KRS aldi.pdf', '201773029KHS.pdf', '201773029KK aldy.pdf', '', '2024-02-23 14:52:47', 'ttd.png', 'cap.png', '2024-02-23', '573/UN.13.1.6.3/KM/2024'),
(176, '202274093', 'Sultana Ali Alkatiri', '6', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'Pengurusan beasiswa', '202274093IMG_20240223_145544.jpg', '202274093Laporan KRS Mahasiswa (3).pdf', '202274093Laporan KHS Mahasiswa (2).pdf', '202274093IMG_20240222_174416_11zon.jpg', '', '2024-02-23 14:57:06', 'ttd.png', 'cap.png', '2024-02-23', '575/UN.13.1.6.3/KM/2024'),
(177, '202373174', 'Gilberth Jefald Herwawan', '5', 'II (Dua)', '2023 - Genap', 'Frans Moreds Herwawan', 'Polri', '', '', 'Amahai', '3', 'Karya Salemba Empat', '202373174Struk pembayaran UKT_compressed.pdf', '202373174KRS_compressed.pdf', 'KHS_compressed.pdf', '202373174198303142010012018_KARTU KELUARGA.pdf', '', '2024-02-23 15:00:06', 'ttd.png', 'cap.png', '2024-02-23', '572/UN.13.1.6.3/KM/2024'),
(178, '202373013', 'Zulhamja hamid', '5', 'II (Dua)', '2023 - Genap', 'LA HAMID', 'Guru', '', '', 'Wailela', '3', 'Beasiswa karya Salemba empat ', '202373013Slip zul.pdf', '202373013Krs zul.pdf', 'Khs zul.pdf', '202373013KK zul.pdf', '', '2024-02-23 15:08:14', 'ttd.png', 'cap.png', '2024-02-23', '570/UN.13.1.6.3/KM/2024'),
(179, '202373017', 'Herrads Hecar Latuconsina ', '5', 'II (Dua)', '2023 - Genap', 'Carla Ester Latuharhary ', 'Karyawan Swasta ', '', '', 'Jalan Baru', '3', 'Beasiswa Karya Salemba Empat ', '202373017Bukti Bayar.pdf', '202373017KRS HERRAD.pdf', 'KHS HERRAD.pdf', '202373017Kartu Keluarga_ (2).pdf', '', '2024-02-23 15:10:54', 'ttd.png', 'cap.png', '2024-02-23', '569/UN.13.1.6.3/KM/2024'),
(180, '202274037', 'Dian Ode ', '6', 'IV (Empat)', '2023 - Genap', 'Noni Ode', 'Ibu Rumah Tangga', '', '', 'Dusun Jiku Besar', '3', 'Beasiswa KSE', '202274037BUKTI BAYAR TERAKHIR.pdf', '202274037KRS.pdf', 'KHS.pdf', '202274037KK.pdf', '', '2024-02-23 15:11:42', 'ttd.png', 'cap.png', '2024-02-23', '574/UN.13.1.6.3/KM/2024'),
(181, '202273081', 'Nanda Aprilia Rumra', '5', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'pengurusan beasiswa', '202273081bukti pembayaran smt 4.pdf', '202273081 Laporan KRS Mahasiswa smt 3.pdf', '202273081Laporan KHS Mahasiswa smt 3.pdf', '202273081Kartu Keluarga.pdf', '', '2024-02-25 15:18:20', 'ttd.png', 'cap.png', '2024-02-26', '595/UN.13.1.6.3/KM/2024'),
(182, '202273081', 'Nanda Aprilia Rumra', '5', 'IV (Empat)', '2023 - Genap', 'Abdul Hamid Rumra', 'Pensiunan PNS', '', '', 'Desa Fiditan', '3', 'Beasiswa KSE', '202273081bukti pembayaran smt 4.pdf', '202273081 Laporan KRS Mahasiswa smt 3.pdf', 'Laporan KHS Mahasiswa smt 3.pdf', '202273081Kartu Keluarga.pdf', '', '2024-02-25 15:20:19', 'ttd.png', 'cap.png', '2024-02-28', '639/UN.13.1.6.3/KM/2024'),
(183, '202173014', 'Umi Kalsum Latukau', '5', 'VI (Enam)', '2023 - Genap', 'H Ahmad Latukau', 'wiraswasta', '', '', 'desa moreela,kecamatan leihitu,kabupaten maluku tengah', '3', 'Beasiswa KSE', '202173014pembayaran ukt.pdf', '202173014krs umi kalsum latukau.pdf', '9468-31701-2-PB.pdf', '202173014kk umi kalsum latukau.pdf', '', '2024-02-25 16:54:10', 'ttd.png', 'cap.png', '2024-02-27', '702/UN.13.1.6.3/KM/2024'),
(184, '202274031', 'RATNA FIRANI SELLA', '6', 'IV (Empat)', '2023 - Genap', 'S hasna wasahua', 'guru', '197001271994122000', 'IV/b', NULL, '1', 'bantuan biaya studi dari pemda buru selatan', '202274031bukti pembayaran.pdf', '202274031krs(2).pdf', '202274031khs..pdf', 'kk.....pdf', '202274031', '2024-02-25 21:44:29', '', '', '2022-01-10', NULL),
(185, '202274031', 'RATNA FIRANI SELLA', '6', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'bantuan biaya studi dari pemda buru selatan', '202274031bukti pembayaran.pdf', '202274031krs(2).pdf', '202274031khs..pdf', '202274031kk.....pdf', '', '2024-02-25 21:47:36', 'ttd.png', 'cap.png', '2024-02-26', '594/UN.13.1.6.3/KM/2024'),
(186, '202274031', 'RATNA FIRANI SELLA', '6', 'IV (Empat)', '2023 - Genap', 'S hasna wasahua', 'guru', '', '', 'poka, kota ambon', '3', 'bantuan biaya studi dari pemda buru selatan', '202274031bukti pembayaran.pdf', '202274031krs(2).pdf', 'khs..pdf', '202274031kk.....pdf', '', '2024-02-25 21:54:26', '', '', '2022-01-10', NULL),
(187, '202274007', 'Gabriella Amellian Lalaar ', '6', 'IV (Empat)', '2023 - Genap', 'Simon Lalaar ', 'Ojek', '', '', 'Passo', '3', 'Beasiswa KSE ', '202274007Bukti Bayar UKT.jpg', '202274007KRS.pdf', 'KHS.pdf', '202274007KK_1.jpg', '', '2024-02-26 02:31:51', 'ttd.png', 'cap.png', '2024-02-26', '601/UN.13.1.6.3/KM/2024'),
(188, '202274027', 'Nadya Larasati Sjah Nurlette', '6', 'IV (Empat)', '2023 - Genap', 'Adrian Syah Nurlette', 'Pegawai Negeri Sipil', '', '', 'Tanah Rata RT001/RW008', '3', 'Beasiswa Karya Salemba Empat (KSE)', '202274027Bukti Pembayaran_Nadya Nurlette.pdf', '202274027KRS Mahasiswa_Nadya Nurlette.pdf', 'KHS Mahasiswa_Nadya Nurlette.pdf', '202274027KK_Nadya Nurlette.pdf', '', '2024-02-26 11:47:33', 'ttd.png', 'cap.png', '2024-02-26', '600/UN.13.1.6.3/KM/2024'),
(189, '202173101', 'Mariyami Angkotasan', '5', 'VI (Enam)', '2023 - Genap', 'Abdullah Angkotasan ', 'Petani ', '', '', 'Ory', '3', 'Beasiswa Karya Salemba Empat', '202173101kwitansi UKT semester 6.jpg', '202173101KRS kse .pdf', 'Laporan KHS Mahasiswa (1).pdf', '202173101IMG_20240226_115533_11zon.jpg', '', '2024-02-26 12:00:09', 'ttd.png', 'cap.png', '2024-02-26', '599/UN.13.1.6.3/KM/2024'),
(190, '202173033', 'Sakinah Aulia Uryaan', '5', 'VI (Enam)', '2023 - Genap', 'Askar M Musa', 'Buruh bangunan', '', '', 'Masohi', '3', 'Beasiswa Karya Salemba Empat', '202173033ukt pdf.pdf', '202173033Nina krs.pdf', 'Nina khs.pdf', '202173033kk pdf.pdf', '', '2024-02-26 12:50:55', 'ttd.png', 'cap.png', '2024-02-26', '598/UN.13.1.6.3/KM/2024'),
(191, '202273083', 'Hardianti Daeng Bustam ', '5', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'Beasiswa karaya salemba empat', '202273083DOC-20240226-WA0016..pdf', '202273083DOC-20240226-WA0029..pdf', '202273083DOC-20240226-WA0027..pdf', '202273083DOC-20240226-WA0028..pdf', '', '2024-02-26 13:23:57', 'ttd.png', 'cap.png', '2024-02-26', '593/UN.13.1.6.3/KM/2024'),
(192, '202273083', 'Hardianti Daeng Bustam ', '5', 'IV (Empat)', '2023 - Genap', 'BUSTAM', 'Petani', '', '', 'Taruy', '3', 'Beasiswa karya salemba empat', '202273083DOC-20240226-WA0016..pdf', '202273083DOC-20240226-WA0028..pdf', 'DOC-20240226-WA0029..pdf', '202273083DOC-20240226-WA0027..pdf', '', '2024-02-26 13:27:14', 'ttd.png', 'cap.png', '2024-02-26', '597/UN.13.1.6.3/KM/2024'),
(193, '202273127', 'Rahma Wulandari Marasabessy ', '5', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'untuk memenuhi persyaratan beasisiwa KSE ', '202273127bukti pembayaran ukt.pdf', '202273127krs(2) (1).pdf', '202273127khs(2).pdf', '202273127kartu keluarga.pdf', '', '2024-02-26 13:30:12', 'ttd.png', 'cap.png', '2024-02-26', '592/UN.13.1.6.3/KM/2024'),
(194, '202273127', 'Rahma Wulandari Marasabessy ', '5', 'IV (Empat)', '2023 - Genap', 'ISMAIL MARASABESSY', 'PNS', '', '', 'Jln Nuri, RT 14, Kelurahan Namaelo,Kecamatan Kota Masohi ', '3', 'Beasiswa Karya Salemba Empat', '202273127bukti pembayaran ukt.pdf', '202273127krs(2) (1).pdf', 'khs(2).pdf', '202273127kartu keluarga.pdf', '', '2024-02-26 13:32:08', 'ttd.png', 'cap.png', '2024-02-26', '596/UN.13.1.6.3/KM/2024'),
(195, '201972023', 'Boy Soumokil', '4', 'X (Sepuluh)', '2023 - Genap', 'Wilhelmina Petta, S.Pd', 'PNS', '196512271990022001', 'IV/b', NULL, '1', 'Tunjangan daftar gaji orang tua', '201972023Brimo_Slip_sem10.pdf', '201972023KRS.pdf', '201972023KHS.pdf', 'KK.pdf', '201972023SK_jabatan_pangkat.pdf', '2024-02-26 16:04:49', 'ttd.png', 'cap.png', '2024-02-27', '608/UN.13.1.6.3/KM/2024'),
(196, '201871025', 'Zulrizal mulyadi ', '2', 'XII (Duabelas)', '2023 - Genap', 'RAIS ELWAN TRIMULYANTO', 'DINAS KESEHATAN PROVINSI MALUKU', '196103221987031006', 'Penata/III', NULL, '1', 'TUNJANGAN GAJI ORANG TUA', '201871025bukti bayar semester 12.pdf', '201871025krs semester 12.pdf', '201871025khs semester 11.pdf', 'KK.pdf', '201871025sk.pdf', '2024-02-26 17:14:40', 'ttd.png', 'cap.png', '2024-02-27', '609/UN.13.1.6.3/KM/2024'),
(197, '202298014', 'Sumini Nasir', '7', 'IV (Empat)', '2023 - Genap', 'Nasir Lamini', 'Petani', '', '', 'Batu Koneng ,Poka', '3', 'Beasiswa Karya salemba Empat', '202298014CamScanner 16-02-2024 14.57.pdf', '202298014CamScanner 16-02-2024 14.55 (1).pdf', 'CamScanner 16-02-2024 14.53.pdf', '2022980142024-2620.5402.jpg', '', '2024-02-26 18:21:33', 'ttd.png', 'cap.png', '2024-02-27', '610/UN.13.1.6.3/KM/2024'),
(198, '202298014', 'Sumini Nasir', '7', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'pengurusan beasiswa Karya Salemba Empat', '202298014CamScanner 16-02-2024 14.57.pdf', '202298014CamScanner 16-02-2024 14.55 (1).pdf', '202298014CamScanner 16-02-2024 14.53.pdf', '2022980142024-2620.5402.jpg', '', '2024-02-26 18:23:11', 'ttd.png', 'cap.png', '2024-02-27', '611/UN.13.1.6.3/KM/2024'),
(199, '202371059', 'Abil putra man rukua', '2', 'II (Dua)', '2023 - Genap', 'Man Kaimudin', 'Buruh Banguan', '', '', 'Jl. Kebun Cengkih RT 001/RW 009', '3', 'Beasiswa KSE', '202371059Pembayaran UKT.pdf', '202371059KRS Semester akhir.pdf', 'DNS Semester akhir.pdf', '202371059KK...pdf', '', '2024-02-26 19:25:36', 'ttd.png', 'cap.png', '2024-02-27', '612/UN.13.1.6.3/KM/2024'),
(200, '202274051', 'Sitti Elvira Putri Ely', '6', 'IV (Empat)', '2023 - Genap', 'Rabida Ely', 'Ibu Rumah Tangga', '', '', 'Soabali', '3', 'Beasiswa KSE', '202274051bukti pembayaran.pdf', '202274051KRS S4.pdf', 'KHS s3.pdf', '202274051KARTU KELUARGA_page-0001-min.pdf', '', '2024-02-26 23:46:12', 'ttd.png', 'cap.png', '2024-02-28', '720/UN.13.1.6.3/KM/2024'),
(201, '202274031', 'RATNA FIRANI SELLA', '6', 'IV (Empat)', '2023 - Genap', 'S hasna wasahua', 'guru', '197001271994122001', 'IV/b', NULL, '1', 'bantuan biaya studi dari pemda buru selatan', '202274031bukti pembayarann.pdf', '202274031kartu rencana studii.pdf', '202274031kartu hasil studi.pdf', 'kk.....pdf', '202274031', '2024-02-27 07:21:29', 'ttd.png', 'cap.png', '2024-02-28', '721/UN.13.1.6.3/KM/2024'),
(202, '202274031', 'RATNA FIRANI SELLA', '6', 'IV (Empat)', '2023 - Genap', 'S hasna wasahua', 'guru', '', '', 'poka, kota ambon', '3', 'bantuan biaya studi dari pemda buru selatan', '202274031bukti pembayarann.pdf', '202274031kartu rencana studii.pdf', 'kartu hasil studi.pdf', '202274031kk.....pdf', '', '2024-02-27 07:25:44', 'ttd.png', 'cap.png', '2024-02-28', '722/UN.13.1.6.3/KM/2024'),
(203, '202173128', 'M nur Reza Sahartira', '5', 'VI (Enam)', '2023 - Genap', 'ISHAK SAHARTIRA', 'PNS', '', '', 'RT 16 KELURAHAN NAMAELO KECAMATAN KOTA MASOHI', '3', 'BEASISWA KSE', '202173128slip ukt 2024 genap.pdf', '202173128krs.pdf', 'khs.pdf', '202173128KARTU KELUARGA-1 (1)-dikompresi.pdf', '', '2024-02-27 08:27:50', 'ttd.png', 'cap.png', '2024-02-28', '723/UN.13.1.6.3/KM/2024'),
(204, '202072017', 'Yuliana', '4', 'VIII (Delapan)', '2023 - Genap', 'Jumadin', 'Buruh Harian Lepas', '', '', NULL, '1', 'Test Toelf', '202072017Slip UKT Sem 8.pdf', '202072017KRS Sem 8_Yuliana (202072017).pdf', '202072017KHS Sem 7_Yuliana (202072017).pdf', 'KK Yuliana.pdf', '202072017', '2024-02-27 11:01:54', 'ttd.png', 'cap.png', '2024-02-28', '724/UN.13.1.6.3/KM/2024'),
(205, '202173070', 'Januar Saddam Tanassy', '5', 'VI (Enam)', '2023 - Genap', 'Reny Kabalmay', 'Ibu rumah tangga', '', '', 'Batu Merah', '3', 'Beasiswa KSE', '202173070UKT SEMESTER 6.pdf', '202173070KRS Semester 5.pdf', 'KHS Semester 5.pdf', '202173070KK.pdf', '', '2024-02-27 13:28:32', 'ttd.png', 'cap.png', '2024-02-28', '725/UN.13.1.6.3/KM/2024'),
(206, '202362005', 'Trisman berkat jaya hulu', '11', 'II (Dua)', '2023 - Genap', 'Afolo Hulu ', 'Petani ', '', '', 'Sumatra Utara ', '3', 'BEASISWA KARYA SALEMBA EMPAT ( KSE)', '202362005Koentasi UKT.pdf', '202362005KRS yg d cap.pdf', 'KHS yg di Cap.pdf', '202362005KK TRISMA.pdf', '', '2024-02-27 13:37:10', 'ttd.png', 'cap.png', '2024-02-28', '726/UN.13.1.6.3/KM/2024'),
(207, '202273067', 'Verga Putri Rahayu', '5', 'IV (Empat)', '2023 - Genap', 'ERNI', 'Pedagang', '', '', 'Air Salobar', '3', 'Beasiswa KSE', '202273067Bukti tf baru.pdf', '202273067krs baru.pdf', 'KHS baru.pdf', '202273067Kk baru.pdf', '', '2024-02-27 13:48:46', 'ttd.png', 'cap.png', '2024-02-28', '640/UN.13.1.6.3/KM/2024'),
(208, '202273067', 'Verga Putri Rahayu', '5', 'IV (Empat)', '2023 - Genap', 'ERNI', 'Pedagang', '', '', 'Air Salobar', '3', 'Beasiswa KSE', '202273067Bukti tf baru.pdf', '202273067krs baru.pdf', 'KHS baru.pdf', '202273067Kk baru.pdf', '', '2024-02-27 13:48:48', '', '', '2022-01-10', NULL),
(209, '202299023', 'Syakirah', '8', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'Pengurusan Beasiswa', '202299023Ukt 02-27-2024 12-22-41.pdf', '202299023Krs 02-27-2024 12-16-09.pdf', '202299023Khs 02-27-2024 12-22-14.pdf', '202299023Kk.pdf', '', '2024-02-27 14:02:25', 'ttd.png', 'cap.png', '2024-02-28', '728/UN.13.1.6.3/KM/2024'),
(210, '202173121', 'muhammad agly zhalfin sangaji', '5', 'VI (Enam)', '2023 - Genap', 'nursinah sangajii', 'ibu rumah tangga', '', '3b', NULL, '1', 'pengurusan bpjs', '202173121agix.pdf', '202173121agi.pdf', '202173121downloadfile.pdf', 'kk.pdf', '202173121', '2024-02-27 14:35:02', 'ttd.png', 'cap.png', '2024-02-28', '630/UN.13.1.6.3/KM/2024'),
(211, '202072051', 'Andi Dahliya Natsir', '4', 'VIII (Delapan)', '2023 - Genap', 'Halima Afifudin', 'Ibu Rumah Tangga', '', '', NULL, '1', 'Tes Toefl', '202072051Bukti Pembayaran Semester 8 TI.pdf', '202072051KRS Semester 8 TI.pdf', '202072051DNS Semester 7 TI.pdf', 'KK Andi Dahliya Natsir..pdf', '202072051', '2024-02-27 14:49:53', 'ttd.png', 'cap.png', '2024-02-28', '631/UN.13.1.6.3/KM/2024'),
(212, '202371092', 'BERTY JACSANDRI DANTE ', '2', 'II (Dua)', '2023 - Genap', 'Marthen Dante ', 'Pensiunan ', '195703121993031001', 'Pensiunan ', NULL, '1', 'Pengurusan beasiswa ', '202371092UKT .oppodownload', '202371092KRS BERTY J DANTE.pdf', '202371092KHS BERTY J DANTE.pdf', 'KARTU KELUARGA BERTY J DANTE .pdf', '202371092', '2024-02-27 15:41:43', 'ttd.png', 'cap.png', '2024-02-28', '632/UN.13.1.6.3/KM/2024'),
(213, '202371092', 'BERTY JACSANDRI DANTE ', '2', 'II (Dua)', '2023 - Genap', 'Marthen Dante ', 'Pensiunan ', '195703121993031001', 'Pensiunan ', NULL, '1', 'Pengurusan beasiswa ', '202371092UKT .oppodownload', '202371092KRS BERTY J DANTE.pdf', '202371092KHS BERTY J DANTE.pdf', 'KARTU KELUARGA BERTY J DANTE .pdf', '202371092', '2024-02-27 17:25:01', '', '', '2022-01-10', NULL),
(214, '202173006', 'Efata Tammy Tuhuteru', '5', 'VI (Enam)', '2023 - Genap', 'Thomas Tuhuteru', 'Pegawai Swasta', '', '', 'Jl. Karang Panjang', '3', 'Beasiswa KSE (Karya Salemba Empat) ', '202173006Bukti Bayar_11zon.pdf', '202173006KRS SEM6 NEW.pdf', 'KHS Sem 5 T.pdf', '202173006KK_11zon (1).pdf', '', '2024-02-27 17:25:36', 'ttd.png', 'cap.png', '2024-02-28', '633/UN.13.1.6.3/KM/2024'),
(215, '202172095', 'Sari Gentry Habayasya Kilian ', '4', 'VI (Enam)', '2023 - Genap', 'Rais kilian', 'Wiraswasta ', '', '', 'Dusun Btn Tatanggo Raya ', '3', 'Untuk keperluan beasiswa Karya Salemba Empat ', '202172095slip pembayaran semester 6-1.pdf', '202172095krs semester 6-1.pdf', 'KHS semester 5-1.pdf', '202172095Kartu keluarga-1_compressed (1).pdf', '', '2024-02-27 20:01:24', 'ttd.png', 'cap.png', '2024-02-28', '634/UN.13.1.6.3/KM/2024'),
(216, '202173142', 'Jurfan kalidupa', '5', 'VI (Enam)', '2023 - Genap', 'MASRI KALIDUPA, S.pd', 'Pegawai Negri Sipil', '198005202009042005', 'Penata Muda / III/a /01-10-2018', NULL, '1', 'tunjangan gaji orang tua', '202173142BUKTI PEMBAYARAN UKT-dikompresi.pdf', '202173142KRS jurfan.pdf', '202173142transkip.pdf', 'KK-dikompresi.pdf', '202173142SK MAMA-dikompresi.pdf', '2024-02-27 22:34:28', 'ttd.png', 'cap.png', '2024-02-28', '635/UN.13.1.6.3/KM/2024'),
(217, '202298005', 'GABRIEL ENUS', '7', 'IV (Empat)', '2023 - Genap', 'Rein Raimond Enus', 'Wirausaha', '', '', 'Jl. Dr. J. Leimena, Hative Besar, Kota Ambon, Maluku', '3', 'Beasiswa KSE (Karya Salemba Empat)', '202298005Bukti Pembayaran UKT.pdf', '202298005Kartu Rencana Studi.pdf', 'DNS(KHS).pdf', '202298005Kartu Keluarga Gabriel.pdf', '', '2024-02-27 23:04:22', 'ttd.png', 'cap.png', '2024-02-28', '636/UN.13.1.6.3/KM/2024'),
(218, '202298005', 'GABRIEL ENUS', '7', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'Pengurusan Beasiswa', '202298005Bukti Pembayaran UKT.pdf', '202298005Kartu Rencana Studi.pdf', '202298005DNS(KHS).pdf', '202298005Kartu Keluarga Gabriel.pdf', '', '2024-02-27 23:06:19', 'ttd.png', 'cap.png', '2024-02-28', '637/UN.13.1.6.3/KM/2024'),
(219, '202173023', 'MUHAMMAD HASBUL JALIL OHORELLA', '5', 'VI (Enam)', '2023 - Genap', 'MUHAMMAD ALY ACHBAR OHORELLA', 'PEDAGANG', '', '', 'TULEHU', '3', 'Beasiswa Karya Salemba Empat', '202173023pembayaran UKT.pdf', '202173023fotocopy KRS.pdf', 'fotocopy DNS.pdf', '202173023fotocopy KK.pdf', '', '2024-02-28 10:01:08', 'ttd.png', 'cap.png', '2024-02-28', '638/UN.13.1.6.3/KM/2024'),
(220, '201971046', 'Ummi Dalila Temarwut', '2', 'X (Sepuluh)', '2023 - Genap', 'Gani Temarwut ', 'Pns', '19690530200081001', 'IV a', NULL, '1', 'Pembuatan slip semester 4 dan 5', '201971046IMG-20240228-WA0006.jpg', '201971046IMG-20240228-WA0005.jpg', '201971046ummi.pdf', 'IMG-20240228-WA0009.jpg', '201971046', '2024-02-28 11:45:48', 'ttd.png', 'cap.png', '2024-02-28', '644/UN.13.1.6.3/KM/2024'),
(221, '202172045', 'Findri Yani ', '4', 'VI (Enam)', '2023 - Genap', 'Hamid', 'Wiraswasta ', '', '', 'Letwaru ', '3', 'Beasiswa KSE ', '202172045SLIP PEMBAYARAN.pdf', '202172045ACE Scanner_2024_02_28(1).pdf', 'ACE Scanner_2024_02_28.pdf', '202172045kartu keluarga.pdf', '', '2024-02-28 12:54:39', 'ttd.png', 'cap.png', '2024-02-28', '645/UN.13.1.6.3/KM/2024'),
(222, '202173142', 'Jurfan kalidupa', '5', 'VI (Enam)', '2023 - Genap', 'MASRI KALIDUPA, S.pd', 'Pegawai Negri Sipil', '198005202009042005', 'Penata Muda I/ III/b', NULL, '1', 'tunjangan gaji orang tua', '202173142BUKTI PEMBAYARAN UKT-dikompresi.pdf', '202173142KRS jurfan.pdf', '202173142transkip.pdf', 'KK-dikompresi.pdf', '202173142SK MAMA-dikompresi.pdf', '2024-02-28 13:02:21', 'ttd.png', 'cap.png', '2024-02-28', '658/UN.13.1.6.3/KM/2024'),
(223, '202173142', 'Jurfan kalidupa', '5', 'VI (Enam)', '2023 - Genap', 'IRMAN KALIDUPA', 'Petani', '', '', 'Waprea', '3', 'Beasiswa Karya Salemba Empat (KSE)', '202173142BUKTI PEMBAYARAN UKT-dikompresi.pdf', '202173142KRS jurfan.pdf', 'transkip.pdf', '202173142KK-dikompresi.pdf', '', '2024-02-28 13:18:39', 'ttd.png', 'cap.png', '2024-02-28', '642/UN.13.1.6.3/KM/2024'),
(224, '202072039', 'Radil Rafli Aimar Trenggano', '4', 'VIII (Delapan)', '2023 - Genap', 'Machmud Trenggano', 'Pegawai Swasta', '', '', NULL, '1', 'Pengurusan berita kehilangan dan tes toefl', '202072039Kwitansi Semester 8 Radil.pdf', '202072039KRS Semester 8.pdf', '202072039KHS Semester 7.pdf', 'Kartu Keluarga.pdf', '202072039', '2024-02-28 14:56:01', 'ttd.png', 'cap.png', '2024-02-28', '655/UN.13.1.6.3/KM/2024'),
(225, '201974073', 'JUWITA DEWI BUAMONABOT', '6', 'X (Sepuluh)', '2023 - Genap', 'Ilyas Buamonabot', 'Polri', '74110580', 'AIPTU', NULL, '1', 'Pensiunan Warakawuri', '201974073bukti bayar 10.pdf', '201974073Krss 10.pdf', '201974073Khss 9.pdf', 'KK_compressed.pdf', '201974073SK warakawuri.pdf', '2024-02-29 10:09:39', 'ttd.png', 'cap.png', '2024-02-29', '683/UN.13.1.6.3/KM/2024'),
(226, '201873108', 'Reinhard Sapulette', '5', 'XII (Duabelas)', '2023 - Genap', 'Julius Sapulette', 'Petani', '', '', NULL, '1', 'Surat pengantar kehilangan slip pembayaran KKN', '201873108CamScanner 28-02-2024 14.47.pdf', '201873108KRS REIN 12.pdf', '201873108CamScanner 28-02-2024 14.52.pdf', 'CamScanner 28-02-2024 14.47.pdf', '201873108CamScanner 28-02-2024 14.47.pdf', '2024-02-29 10:12:06', 'ttd.png', 'cap.png', '2024-02-29', '682/UN.13.1.6.3/KM/2024'),
(227, '202172011', 'Aulia Patris Tomu ', '4', 'VI (Enam)', '2023 - Genap', 'Patma Namakule', 'Pegawai Negeri sipil (PNS)', '', '', 'LETWARU', '3', 'Beasiswa Karya Salemba Empat (KSE)', '202172011Bukti Pembayaran UKT Semester 6 .pdf', '202172011KRS SEMESTER 6 (AULIA P. TUMO).pdf', 'KHS SEMESTER 6 (AULIA P. TOMU).pdf', '202172011KARTU KELUARGA.pdf', '', '2024-02-29 14:32:45', 'ttd.png', 'cap.png', '2024-03-01', '694/UN.13.1.6.3/KM/2024'),
(228, '202273040', 'uswatun khasanah', '5', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'Mendaftar beasiswa', '202273040UKTsem4.pdf', '202273040KrsSem4.pdf', '202273040KhsSem3.pdf', '202273040kk.pdf', '', '2024-03-01 00:30:17', 'ttd.png', 'cap.png', '2024-03-01', '695/UN.13.1.6.3/KM/2024'),
(229, '202072041', 'Sangkulana Hitimala ', '4', 'VIII (Delapan)', '2023 - Genap', '', '', '', '', NULL, '2', 'Pengurusan test toefl', '202072041Slip Semester 8 Sangkulana Hitimala.pdf', '202072041KRS SEMESTER 8 Sangkulana Hitimala.pdf', '202072041KHS Sangkulana Hitimala.pdf', '202072041KK Sangkulana Hitimala.pdf', '', '2024-03-01 09:34:08', 'ttd.png', 'cap.png', '2024-03-04', '712/UN.13.1.6.3/KM/2024'),
(230, '202172046', 'Balgis Qadiriyyah Arsyad', '4', 'VI (Enam)', '2023 - Genap', 'Arsyad Halimambo', 'Pensiunan', '', '', 'Batu merah atas galunggung', '3', 'Beasiswa Karya Salemba Empat', '202172046pembayaran.pdf', '202172046krs.pdf', 'khs.pdf', '202172046kk.pdf', '', '2024-03-02 00:20:20', 'ttd.png', 'cap.png', '2024-03-04', '711/UN.13.1.6.3/KM/2024'),
(231, '202173037', 'Ansar Latuconsina', '5', 'VI (Enam)', '2023 - Genap', 'Siagur Latuconsina', 'PNS', '', '', 'KEBUN CENGKEH, RT 001/RW 009', '3', 'Beasiswa Karya Salemba Empat (KSE)', '202173037Bukti pembayaran S6.pdf', '202173037KRS_S6.pdf', 'KHS_S5.pdf', '202173037KK.pdf', '', '2024-03-02 22:07:00', 'ttd.png', 'cap.png', '2024-03-04', '710/UN.13.1.6.3/KM/2024'),
(232, '202072025', 'Joya Saddani Makaneneng', '4', 'VIII (Delapan)', '2023 - Genap', '', '', '', '', NULL, '2', 'Ujian TOEFL, ujian hasil, dan ujian sarjana', '202072025Slip-Joya Saddani Makaneneng Sem 8.pdf', '202072025KRS-Joya Saddani Makaneneng Sem 8.pdf', '202072025KHS-Joya Saddani Makaneneng Sem 8.pdf', '202072025Kartu Keluarga01.pdf', '', '2024-03-04 00:42:26', 'ttd.png', 'cap.png', '2024-03-04', '709/UN.13.1.6.3/KM/2024'),
(233, '202072079', 'Fikri sanaky', '4', 'VIII (Delapan)', '2023 - Genap', '', '', '', '', NULL, '2', 'Syarat tes toefl', '202072079Slip Pembayaran.pdf', '202072079Laporan KRS Mahasiswa (6).pdf', '202072079KHS.pdf', '202072079KK Fikri Sanaky.pdf', '', '2024-03-04 13:59:52', 'ttd.png', 'cap.png', '2024-03-04', '723/UN.13.1.6.3/KM/2024'),
(234, '202072021', 'Amelia Rahmadhani', '4', 'VIII (Delapan)', '2023 - Genap', '', '', '', '', NULL, '2', 'Test TOEFL', '202072021Slip Pembayaran Sem 8.pdf', '202072021KRS Sem 8.pdf', '202072021KHS Sem 7.pdf', '202072021Kartu Keluarga.pdf', '', '2024-03-04 14:12:11', 'ttd.png', 'cap.png', '2024-03-04', '732/UN.13.1.6.3/KM/2024'),
(235, '202072069', 'Jundira Yosefin Alsye Sesa', '4', 'VIII (Delapan)', '2023 - Genap', '', '', '', '', NULL, '2', 'Tes toefl', '202072069CamScanner 03-04-2024 14.33.pdf', '202072069CamScanner 01-03-2024 08.29.pdf', '202072069CamScanner 01-03-2024 08.26.pdf', '202072069Scanned Documents.pdf', '', '2024-03-04 14:42:03', 'ttd.png', 'cap.png', '2024-03-04', '733/UN.13.1.6.3/KM/2024'),
(236, '201973006', 'Vaninda I Hetharie ', '5', 'X (Sepuluh)', '2023 - Genap', 'Abraham J Hetharie ', 'Karyawan PTP NUSANTARA I REGIONAL 8', '11111111', 'PKWT', NULL, '1', 'Permohonan Pemondokan ', '2019730061709718929889.jpg', '2019730061709719085344.jpg', '2019730061709719348693.jpg', 'IMG-20230313-WA0002.jpg', '2019730061709719462908.jpg', '2024-03-06 11:04:12', 'ttd.png', 'cap.png', '2024-03-06', '774/UN.13.1.6.3/KM/2024'),
(237, '202072005', 'Fira Juniarni Husein', '4', 'VIII (Delapan)', '2023 - Genap', '', '', '', '', NULL, '2', 'Test TOEFL', '202072005SLIP semester 8.pdf', '202072005KRS semester 8.pdf', '202072005KHS semester 7.pdf', '202072005KK.pdf', '', '2024-03-06 11:52:13', 'ttd.png', 'cap.png', '2024-03-06', '783/UN.13.1.6.3/KM/2024'),
(238, '202072021', 'Amelia Rahmadhani', '4', 'VIII (Delapan)', '2023 - Genap', 'Jumiati', 'Ibu Rumah Tangga', '', '', NULL, '1', 'Pengurusan BPJS', '202072021Slip Pembayaran Sem 8.pdf', '202072021KRS Sem 8.pdf', '202072021KHS Sem 7.pdf', 'Kartu Keluarga.pdf', '202072021', '2024-03-06 17:04:13', 'ttd.png', 'cap.png', '2024-03-07', '798/UN.13.1.6.3/KM/2024'),
(239, '202246001', 'Melvia Natalia Aponno', '10', 'IV (Empat)', '2023 - Genap', 'Donny Aponno', 'Anggota POLRI', '76060103', 'IPDA', NULL, '1', 'Pengurusan BPJS ', '202246001Bukti Pembayaran.pdf', '202246001KRS (1).pdf', '202246001KHS.pdf', 'Kartu Keluarga .pdf', '202246001SK Pangkat Orang Tua.pdf', '2024-03-06 23:07:06', 'ttd.png', 'cap.png', '2024-03-07', '797/UN.13.1.6.3/KM/2024'),
(240, '202374106', 'Difaini Pattin Muri', '6', 'II (Dua)', '2023 - Genap', 'Tahir Muri ', 'PNS ', '196704072001111001', 'Pembina / Golongan IV A', NULL, '1', 'Administrasi Kelengkapan Beasiswa', '202374106slippembayaranukt.pdf', '202374106KRS_compressed.pdf', '202374106KHS_compressed.pdf', 'Kartu Keluarga_compressed.pdf', '202374106', '2024-03-07 16:15:59', 'ttd.png', 'cap.png', '2024-03-14', '870/UN.13.1.6.3/KM/2024'),
(241, '202272041', 'Nana Suryana', '4', 'IV (Empat)', '2023 - Genap', 'Acang', 'Petani', '', '', 'Desa Jakarta Baru, Kec. Bula Barat, Kab. Seram Bagian Timur, Prov. Maluku', '3', 'Beasiswa Karya Salemba Empat (KSE) ', '202272041brimo20240210-113847.png', '202272041Dokumen 17_4_11zon.jpg', 'Dokumen_17_3_11zon-compress1.jpg', '202272041Dokumen 17_5_11zon.jpg', '', '2024-03-08 15:13:29', 'ttd.png', 'cap.png', '2024-03-14', '871/UN.13.1.6.3/KM/2024'),
(242, '202072036', 'Achmad Sidik Salatin', '4', 'VIII (Delapan)', '2023 - Genap', '', '', '', '', NULL, '2', 'Pendaftaran KKN dan lainnya', '202072036Slip-Pembayaran.pdf', '202072036KRS-Semester8.pdf', '202072036KHS-Semester7.pdf', '202072036Kartu Keluarga.pdf', '', '2024-03-12 11:03:59', 'ttd.png', 'cap.png', '2024-03-14', '872/UN.13.1.6.3/KM/2024'),
(243, '202297005', 'Raudhatul Zahra Awan', '9', 'IV (Empat)', '2023 - Genap', 'Suryani Ely', 'Guru', '198109062008012016', 'IIIb', NULL, '1', 'Pengurusan Tunjangan gaji', '202297005bukti pembayaran-1.pdf', '202297005KRS_202297005.pdf', '202297005KHS_UNPATTI.pdf', 'KK_compressed.pdf', '202297005SK pangkat.pdf', '2024-03-14 10:29:14', 'ttd.png', 'cap.png', '2024-03-28', '1261/UN13.1.6.3/KM/2024'),
(244, '202072001', 'Khadijah Dwi Cahyani', '4', 'VIII (Delapan)', '2023 - Genap', '', '', '', '', NULL, '2', 'Administrasi KKN', '202072001UKT Sem.8 - Khadijah Dwi Cahyani.pdf', '202072001KRS Sem.8 - Khadijah Dwi Cahyani.pdf', '202072001KHS Sem.7 - Khadijah Dwi Cahyani.pdf', '202072001Kartu Keluarga - Khadijah Dwi Cahyani.pdf', '', '2024-03-14 10:53:03', 'ttd.png', 'cap.png', '2024-03-28', '1265/UN13.1.6.3/KM/2024'),
(245, '202071055', 'Rifqi Afriansyah awan ', '2', 'VIII (Delapan)', '2023 - Genap', 'Suryani Ely', 'Guru', '198109062008012016', 'IIIb', NULL, '1', 'Pengurusan Tunjangan gaji', '202071055Bukti Ukt(2).pdf', '202071055KRS(2).pdf', '202071055KHS(2).pdf', 'KK_compressed.pdf', '202071055SK pangkat.pdf', '2024-03-14 12:35:45', 'ttd.png', 'cap.png', '2024-03-14', '881/UN.13.1.6.3/KM/2024'),
(246, '201874131', 'Mariyam Yustika Henaulu', '6', 'XII (Duabelas)', '2023 - Genap', '', '', '', '', NULL, '2', 'Persyaratan rekomendasi', '201874131Sem 12.pdf', '201874131Krs 12.pdf', '201874131Laporan KHS Mahasiswa.PDF', '201874131Kk.pdf', '', '2024-03-14 13:08:43', 'ttd.png', 'cap.png', '2024-03-14', '880/UN.13.1.6.3/KM/2024'),
(247, '202074068', 'Ekaristy Giantri Rupilu', '6', 'VIII (Delapan)', '2023 - Genap', 'Ruben Rupilu', 'Polisi', '72060300', 'IPDA', NULL, '1', 'Pengurusan Beasiswa', '2020740681000126697_11zon.jpg', '2020740681000126698_11zon.jpg', '2020740681000126699_11zon.jpg', 'Kartu Keluarga.pdf', '2020740681000126703_11zon.jpg', '2024-03-19 13:59:22', '', '', '2022-01-10', NULL),
(248, '202074068', 'Ekaristy Giantri Rupilu', '6', 'VIII (Delapan)', '2023 - Genap', 'Ruben Rupilu', 'Polisi', '72060300', 'IPDA', NULL, '1', 'Pengurusan Beasiswa', '2020740681000126697_11zon.jpg', '2020740681000126698_11zon.jpg', '2020740681000126699_11zon.jpg', 'Kartu Keluarga.pdf', '2020740681000126703_11zon.jpg', '2024-03-19 13:59:32', 'ttd.png', 'cap.png', '2024-03-20', '1009/UN.13.1.6.3/KM/2024'),
(249, '202173140', 'Annugrah Aharuddin ', '5', 'VI (Enam)', '2023 - Genap', 'AHARUDDIN', 'Petani', '', '', 'kabupaten kolaka utara', '3', 'Beasiswa Karya Salemba Empat', '202173140Slip pembayaran UKT semester 6.pdf', '202173140Laporan KRS Mahasiswa.pdf', 'DNS.pdf', '202173140Kartu keluarga.pdf', '', '2024-03-19 14:15:49', 'ttd.png', 'cap.png', '2024-03-28', '1266/UN13.1.6.3/KM/2024'),
(250, '201973140', 'Abdul Jailani Toumahu', '5', 'X (Sepuluh)', '2023 - Genap', 'Hayani', 'PNS Kodim 1506 Namlea', '197108071990072001', 'PENGATUR/II/c', NULL, '1', 'pengurusan pensiun tahun 2024 dan BPJS', '201973140surat pembayaran ukt semester 10.pdf', '201973140krs smstr 10.pdf', '201973140dns smstr 10.pdf', 'kartu keluarga.pdf', '201973140sk pangkat.pdf', '2024-03-22 13:45:33', 'ttd.png', 'cap.png', '2024-03-28', '1263/UN13.1.6.3/KM/2024'),
(251, '202073011', 'Yudhistira Dio Parawansyah', '5', 'VIII (Delapan)', '2023 - Genap', 'Eddy Prasetijo', 'PNS', '196703212002121003', 'Golongan III/c', NULL, '1', 'Pengurusan BPJS', '202073011bukti bayar.pdf', '202073011krs semester 8.pdf', '202073011dns semester 7.pdf', 'kartu keluarga.pdf', '202073011golongan pegawai.pdf', '2024-03-26 11:49:49', 'ttd.png', 'cap.png', '2024-03-28', '1264/UN13.1.6.3/KM/2024'),
(252, '202271001', 'Dewi Yana Sahetapy ', '2', 'IV (Empat)', '2023 - Genap', 'Berthy Sahetapy', 'Karyawan', '14001638', 'Mandor sadap', NULL, '1', 'Untuk keperluan orang tua', '202271001slip smstr 4.pdf', '202271001KRS smstr 3.pdf', '202271001KHS smstr 3.pdf', 'kartu keluarga dewi.pdf', '202271001IMG-20230918-WA0000.jpg', '2024-04-03 07:25:55', 'ttd.png', 'cap.png', '2024-04-03', '1340/UN13.1.6.3/KM/2024'),
(253, '202271001', 'Dewi Yana Sahetapy ', '2', 'IV (Empat)', '2023 - Genap', 'Berthy Sahetapy', 'Karyawan', '14001638', 'Mandor sadap', '', '1', 'Untuk keperluan orang tua', '202271001slip smstr 4.pdf', '202271001KRS smstr 3.pdf', '202271001KHS smstr 3.pdf', 'kartu keluarga dewi.pdf', '202271001zyo.php7', '2024-04-03 07:26:19', '', '', '2022-01-10', ''),
(254, '202272103', 'Rendy Ardhana Ulath', '4', 'IV (Empat)', '2023 - Genap', 'Tachpip Ulath', 'tidak bekerja', '', '', 'Jln sultah Hasanudin', '3', 'Beasiswa Karya Salembah Empat', '202272103ca7bd381-5151-4944-90b3-3cada3ec4a92.pdf', '202272103CamScanner 18-04-2024 01.16n_1.pdf', 'Gambar panjang 2024-04-18 01.12.44.pdf', '202272103Gambar panjang 2024-04-18 01.11.36.pdf', '', '2024-04-18 01:21:09', 'ttd.png', 'cap.png', '2024-04-19', '1572/UN.13.1.6.3/KM/2024'),
(255, '202272103', 'Rendy Ardhana Ulath', '4', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'Beasiswa', '202272103ca7bd381-5151-4944-90b3-3cada3ec4a92.pdf', '202272103CamScanner 18-04-2024 01.16n_1.pdf', '202272103Gambar panjang 2024-04-18 01.12.44.pdf', '202272103Gambar panjang 2024-04-18 01.11.36.pdf', '', '2024-04-18 01:22:21', 'ttd.png', 'cap.png', '2024-04-19', '1571/UN.13.1.6.3/KM/2024');
INSERT INTO `surat` (`id_surat`, `nim`, `nama`, `prodi`, `semester`, `thnakd`, `ortu`, `pekerjaan`, `nip`, `pangkat`, `alamat`, `jenis`, `tujuan`, `ukt`, `krs`, `dns`, `kk`, `skortu`, `date_create`, `ttd`, `cap`, `date_signature`, `nomor_surat`) VALUES
(256, '202072031', 'Riqqah Thaliah Tueka', '4', 'VIII (Delapan)', '2023 - Genap', 'Lili Tan', 'PNS', '196502131996012001', 'Pembina Tk.I/IV/b', NULL, '1', 'Pengajuan Pensiun Orang Tua (Ibu)', '2020720310652b547-237c-4850-9239-28c1b9b601e2.PDF', '202072031KRS SEM 8.pdf', '202072031KHS SEM 7.pdf', 'KK.pdf', '202072031SK PANGKAT IBU.pdf', '2024-04-19 12:46:58', 'ttd.png', 'cap.png', '2024-04-19', '1573/UN.13.1.6.3/KM/2024'),
(257, '202273089', 'Khansa Aliya Azhar', '5', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'pengurusan beasiswa', '202273089Bukti Pembayaran UKT.pdf', '202273089Laporan KRS Mahasiswa Semester 4.pdf', '202273089Laporan KHS Mahasiswa semester 4.pdf', '202273089Kartu_Keluarga.pdf', '', '2024-04-23 23:37:23', 'ttd.png', 'cap.png', '2024-04-24', '1594/UN.13.1.6.3/KM/2024'),
(258, '202273089', 'Khansa Aliya Azhar', '5', 'IV (Empat)', '2023 - Genap', 'Sukasi Endayani', 'Wiraswasta', '', '', 'Jalan BTN Un Indah gapura 3 blok C no. 40', '3', 'Beasiswa KSE', '202273089Bukti Pembayaran UKT.pdf', '202273089Laporan KRS Mahasiswa Semester 4.pdf', 'Laporan KHS Mahasiswa semester 4.pdf', '202273089Kartu_Keluarga.pdf', '', '2024-04-23 23:41:35', 'ttd.png', 'cap.png', '2024-04-24', '1593/UN.13.1.6.3/KM/2024'),
(259, '202273093', 'ALFIRA ABAS', '5', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'Beasiswa KSE', '2022730931000179994.pdf', '202273093Laporan KRS Mahasiswa(1).PDF', '202273093Laporan KHS Mahasiswa(1).PDF', '2022730931000173359.pdf', '', '2024-04-23 23:53:51', 'ttd.png', 'cap.png', '2024-04-24', '1590/UN.13.1.6.3/KM/2024'),
(260, '202273093', 'ALFIRA ABAS', '5', 'IV (Empat)', '2023 - Genap', 'Ahmad Basrudin', 'PNS', '', '', 'Desa persiapan Rawamangun lorong lapangan RT.13 RW.005', '3', 'Beasiswa KSE', '2022730931000179994.pdf', '202273093Laporan KRS Mahasiswa(1).PDF', 'Laporan KHS Mahasiswa(1).PDF', '2022730931000173359.pdf', '', '2024-04-23 23:57:12', 'ttd.png', 'cap.png', '2024-04-24', '1592/UN.13.1.6.3/KM/2024'),
(261, '202173121', 'muhammad agly zhalfin sangaji', '5', 'VI (Enam)', '2023 - Genap', 'Nursinah sangaji', 'PNS (PEGAWAI NEGERI SIPIL)', '', '', 'JL. Y. SYARANAMUAL  PERUMAHAN KATE-KATE, RT 03 RW 03 DESA', '3', 'Beasiswa Karya Salemba Empat (KSE)', '202173121ukt.pdf', '202173121krs.pdf', 'dns.pdf', '202173121kk copy.pdf', '', '2024-04-30 12:07:15', 'ttd.png', 'cap.png', '2024-05-02', '1672/UN13.1.6.3/KM/2024'),
(262, '201974070', 'Jesika adlea adriaan', '6', 'X (Sepuluh)', '2023 - Genap', 'Walowahani adriaan ', 'PNS ', '197304021993031007', '4', NULL, '1', 'Pengurusan BPJS ', '201974070IMG-20240501-WA0222.jpg', '201974070IMG-20240501-WA0222.jpg', '201974070IMG-20240501-WA0222.jpg', 'IMG-20240501-WA0222.jpg', '201974070IMG-20240501-WA0222.jpg', '2024-05-01 23:20:33', 'ttd.png', 'cap.png', '2024-05-02', '1671/UN13.1.6.3/KM/2024'),
(263, '202273024', 'Marsya Umagap', '5', 'IV (Empat)', '2023 - Genap', 'Ludin Umagap', 'Wiraswasta', '', '', 'DESA FAGUDU RT/RW 001/001 KECAMATAN SANANA KABUPATEN KEPULAUAN SULA PROVINSI MALUKU UTARA', '3', 'Beasiswa KSE (Karsya Salemba Empat)', '202273024Bukti Pembayaran sems 4.pdf', '202273024KRS sems 4.pdf', 'KHS sems 3.pdf', '202273024TanganCap Jempol.pdf', '', '2024-05-07 11:22:10', 'ttd.png', 'cap.png', '2024-05-07', '1713/UN.13.1.6.3/KM/2024'),
(264, '202172032', 'Eka Rahmasari Damar Darwis', '4', 'VI (Enam)', '2023 - Genap', 'Darwis Danier', 'PNS', '197003271997031003', 'Penata Muda Tingkat I/III/B', NULL, '1', 'Tunjangan Gaji Anak', '202172032UKT.jpg', '202172032KRS.jpg', '202172032KHS.jpg', 'KARTU KELUARGA.jpg', '202172032SK IIIb Darwis Danier.pdf', '2024-05-07 15:09:18', 'ttd.png', 'cap.png', '2024-05-07', '1712/UN.13.1.6.3/KM/2024'),
(265, '202172032', 'Eka Rahmasari Damar Darwis', '4', 'VI (Enam)', '2023 - Genap', 'Darwis Danier', 'PNS', '197003271997031003', 'Penata Muda Tingkat I/III/B', NULL, '1', 'Tunjangan Gaji Anak', '202172032UKT.jpg', '202172032KRS.jpg', '202172032KHS.jpg', 'KARTU KELUARGA.jpg', '202172032SK IIIb Darwis Danier.pdf', '2024-05-08 02:04:21', '', '', '2022-01-10', NULL),
(266, '202273048', 'Riyan Muhaimin Ode', '5', 'IV (Empat)', '2023 - Genap', '', '', '', '', NULL, '2', 'mengikuti camp Teknologi For Indonesia di surabaya', '202273048pembayaran ukt-Riyan Muhaimin Ode.pdf', '202273048Laporan KRS Mahasiswa (1).pdf', '202273048Laporan KHS Mahasiswa (1).pdf', '202273048Kk. Riyan _compressed.pdf', '', '2024-05-09 16:53:09', '', '', '2022-01-10', NULL),
(267, '202273048', 'Riyan Muhaimin Ode', '5', 'IV (Empat)', '2023 - Genap', '', '', '', '', '', '2', 'mengikuti camp Teknologi For Indonesia di surabaya', '202273048pembayaran ukt-Riyan Muhaimin Ode.pdf', '202273048Laporan KRS Mahasiswa (1).pdf', '202273048Laporan KHS Mahasiswa (1).pdf', '202273048Kk. Riyan _compressed.pdf', '', '2024-05-09 16:53:17', 'ttd.png', 'cap.png', '2024-05-15', '1774/UN.13.1.6.3/KM/2024'),
(268, '202273048', 'Riyan Muhaimin Ode', '5', 'IV (Empat)', '2023 - Genap', 'Ode Riady', 'Petani', '810601106710003', '', NULL, '1', 'mengikuti camp Teknologi For Indonesia di surabaya', '202273048pembayaran ukt-Riyan Muhaimin Ode.pdf', '202273048Laporan KRS Mahasiswa (1).pdf', '202273048Laporan KHS Mahasiswa (1).pdf', 'Kk. Riyan _compressed.pdf', '202273048', '2024-05-09 17:15:26', 'ttd.png', 'cap.png', '2024-05-09', '1713/UN13.1.6.3/KM/2024'),
(269, '201973030', 'NUR FILA', '5', 'X (Sepuluh)', '2023 - Genap', '', '', '', '', NULL, '2', 'Untuk pengurusan bebas biaya', '201973030slip pembayaran ukt.pdf', '201973030Laporan KRS Mahasiswa.PDF', '201973030Laporan KHS Mahasiswa.PDF', '201973030Kartu keluarga.pdf', '', '2024-05-10 10:06:27', 'ttd.png', 'cap.png', '2024-05-15', '1775/UN.13.1.6.3/KM/2024'),
(270, '201774103', 'Alfian Sillia', '6', 'XIV (Empatbelas)', '2023 - Genap', '', '', '', '', NULL, '2', 'Surat Keterangan Kartu Tanda Mahasiswa Sementara', '201774103IMG_20240516_082441.pdf', '201774103IMG_20240516_083304 (1).pdf', '201774103IMG_20240516_083222 (1).pdf', '201774103IMG-20240508-WA0002.pdf', '', '2024-05-16 10:15:18', 'ttd.png', 'cap.png', '2024-05-16', '1721/UN.13.1.6.3/KM/2024'),
(271, '202173006', 'Efata Tammy Tuhuteru', '5', 'VI (Enam)', '2023 - Genap', 'Thomas Tuhuteru', 'Karyawan Swasta', '', '', 'Jl. Rijali (Lorong Toddie Family and Baby Spa) ', '3', 'Beasiswa KSE (Karya Salemba Empat) ', '202173006Bukti Bayar_11zon.pdf', '202173006KRS SEM 6.pdf', 'Transkrip Efata.pdf', '202173006KK_11zon (1).pdf', '', '2024-05-21 21:24:20', '', '', '2022-01-10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surat_old`
--

CREATE TABLE `surat_old` (
  `id_surat` int NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `semester` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `thnakd` varchar(15) NOT NULL,
  `ortu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pekerjaan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pangkat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jenis` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tujuan` varchar(80) NOT NULL,
  `ukt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `krs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dns` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `skortu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ttd` varchar(50) NOT NULL,
  `cap` varchar(50) NOT NULL,
  `date_signature` date NOT NULL DEFAULT '2022-01-10',
  `nomor_surat` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `surat_old`
--

INSERT INTO `surat_old` (`id_surat`, `nim`, `nama`, `prodi`, `semester`, `thnakd`, `ortu`, `pekerjaan`, `nip`, `pangkat`, `alamat`, `jenis`, `tujuan`, `ukt`, `krs`, `dns`, `kk`, `skortu`, `date_create`, `ttd`, `cap`, `date_signature`, `nomor_surat`) VALUES
(120, '202379001', 'senda', '9', 'I (Satu)', '2022 - Genap', 'ayah papa', 'Tentaraku', '1234566', 'Penata Tk.I/ III.d', '', '1', 'Bantuan Pemerintah', '202379001buktibayar.pdf', '202379001krscontoh.pdf', '202379001dnscontoh2 copy.pdf', '202379001buktibayar copy.pdf', '202379001cekIn.pdf', '2023-07-19 22:19:45', 'ttd.png', 'cap.png', '2024-01-21', '1234455'),
(122, '19820929', 'Victor Pattiradjawane', '7', 'III (Tiga)', '2023 - Ganjil', 'Ayahku', 'Pensiun PNS', '', '', 'Jl. Batu gajah 1 nomor 33', '3', 'Beasiswa Palapa', '19820929Mikrotik Indonesia.pdf', '19820929krscontoh.pdf', 'dnscontoh2 copy.pdf', '19820929Invoice Tokopedia.pdf', '', '2024-01-21 23:40:51', 'ttd.png', 'cap.png', '2022-01-10', '12.UN13.2024'),
(123, '202379001', 'Senda Pieter', '9', 'III (Tiga)', '2023 - Ganjil', '', '', '', '', '', '2', 'Melamar Kerja', '202379001buktibayar.pdf', '202379001krscontoh.pdf', '202379001dnscontoh2 copy.pdf', '202379001agrilan_info.pdf', '', '2024-01-22 00:52:35', 'ttd.png', 'cap.png', '2024-01-22', '2323424'),
(124, '202262001', 'Joko Widodo', '3', 'III (Tiga)', '2023 - Ganjil', 'Parjono', 'Nelayan', '', '', '', '1', 'Pengurusan Bantuan Pemda', '202262001cekIn.pdf', '202262001krscontoh.pdf', '202262001dnscontoh2 copy.pdf', 'cekIn.pdf', '202262001Konfirmasi cekIn.pdf', '2024-01-22 15:57:48', 'ttd.png', 'cap.png', '2024-01-22', '8893/un/2023'),
(125, '202262001', 'Joko Widodo', '3', 'V (Lima)', '2023 - Ganjil', 'papa saya', 'Petani', '', '', 'Rumatiga', '3', 'Asuransi', '202262001cekIn.pdf', '202262001krscontoh.pdf', 'dnscontoh2 copy.pdf', '202262001cekIn.pdf', '', '2024-01-22 16:32:32', 'ttd.png', 'cap.png', '2024-01-22', '0093');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_suket`
--
ALTER TABLE `jenis_suket`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `pejabat`
--
ALTER TABLE `pejabat`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `reg_old`
--
ALTER TABLE `reg_old`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `surat_old`
--
ALTER TABLE `surat_old`
  ADD PRIMARY KEY (`id_surat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `surat_old`
--
ALTER TABLE `surat_old`
  MODIFY `id_surat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
