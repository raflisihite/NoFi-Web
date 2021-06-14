-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 09:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbnofi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` varchar(10) NOT NULL,
  `adminName` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `adminName`, `password`) VALUES
('1', 'AsepBalon', 'balonkuada5');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `idFilm` int(10) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `durasi` varchar(30) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `sinopsis` varchar(1000) NOT NULL,
  `tampilkan` varchar(5) NOT NULL,
  `gbrCover` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`idFilm`, `judul`, `durasi`, `tahun`, `sinopsis`, `tampilkan`, `gbrCover`) VALUES
(34, 'Nanti Kita Cerita Tentang Hari Ini', '122 Minutes', '2020', 'Setiap keluarga punya rahasia. Angkasa, Aurora dan Awan adalah kakak beradik yang hidup dalam keluarga yang tampak bahagia. Setelah mengalami kegagalan besar pertamanya, Awan berkenalan dengan Kale, seorang cowok eksentrik yang memberikan Awan pengalaman hidup baru, tentang patah, bangun, jatuh, tumbuh, hilang dan semua ketakutan manusia pada umumnya.', 'True', 'NKCTHI.png'),
(35, 'Tilik', '30 Minutes', '2018', 'Tilik adalah sebuah film pendek berbahasa Jawa yang diproduksi oleh Ravacana Films. Tilik merupakan salah satu film pendek yang lolos kurasi dana istimewa Dinas Kebudayaan Provinsi Daerah Istimewa Yogyakarta pada 2018.', 'True', 'TILIK.png'),
(36, 'Mulan', '120 Minutes', '2020', 'Ketika kaisar Tiongkok mengeluarkan dekrit bahwa satu pria dari setiap keluarga wajib bergabung dalam tentara kekaisaran untuk mempertahankan negara dari serangan bangsa Hun, Hua Mulan, putri tertua dari seorang pejuang terhormat, memutuskan menggantikan ayahnya yang sakit-sakitan.', 'True', 'Mulan.png'),
(37, 'Mortal Kombat', '110 Minutes', '2020', 'Petarung MMA Cole Young, yang terbiasa menerima pukulan demi uang, tidak menyadari warisannya-atau mengapa Kaisar Dunia Luar Shang Tsung telah mengirim prajurit terbaiknya, Sub-Zero, seorang Cryomancer dunia lain, untuk memburu Cole. Khawatir akan keselamatan keluarganya, Cole pergi mencari Sonya Blade ke arah Jax, seorang Mayor Pasukan Khusus yang memiliki tanda naga aneh yang sama dengan Cole saat lahir.', 'True', 'f11.png'),
(38, 'Black Widow', '134 Minutes', '2021', 'Black Widow adalah film pahlawan super Amerika Serikat tahun 2021 yang didasarkan dari karakter Marvel Comics bernama sama. Film ini diproduksi Marvel Studios dan disalurkan Walt Disney Studios Motion Pictures. Film ini adalah film ke-24 Marvel Cinematic Universe.', 'True', 'f2.png'),
(39, 'LAND', '90 Minutes', '2021', 'Land adalah film drama tahun 2021 yang disutradarai oleh Robin Wright dalam debutnya sebagai sutradara, dari skenario oleh Jesse Chatham dan Erin Dignam. Ini dibintangi oleh Wright, Demián Bichir dan Kim Dickens.', 'True', 'f3.png');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `idJadwal` int(10) NOT NULL,
  `idFilm` varchar(10) NOT NULL,
  `noStudio` varchar(10) NOT NULL,
  `jamTayang` varchar(50) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`idJadwal`, `idFilm`, `noStudio`, `jamTayang`, `tanggal`) VALUES
(10, '34', 'STUDIO0001', '10:15', '2021-06-14'),
(11, '34', 'STUDIO0001', '12:35', '2021-06-14'),
(12, '38', 'STUDIO0002', '14:15', '2021-06-15'),
(14, '35', 'STUDIO0001', '10:15', '2021-06-15'),
(15, '36', 'STUDIO0001', '10:15', '2021-06-16'),
(16, '37', 'STUDIO0003', '10:15', '2021-06-14'),
(17, '38', 'STUDIO0003', '16:15', '2021-06-16'),
(19, '36', 'STUDIO0002', '18:35', '2021-06-14'),
(20, '39', 'STUDIO0001', '10:15', '2021-06-17'),
(21, '39', 'STUDIO0002', '16:15', '2021-06-14'),
(22, '35', 'STUDIO0003', '20:35', '2021-06-12'),
(23, '34', 'STUDIO0001', '10:15', '2021-06-18'),
(24, '34', 'STUDIO0001', '12:35', '2021-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `kursi`
--

CREATE TABLE `kursi` (
  `noKursi` varchar(10) NOT NULL,
  `noStudio` varchar(10) NOT NULL,
  `kodeKursi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kursi`
--

INSERT INTO `kursi` (`noKursi`, `noStudio`, `kodeKursi`) VALUES
('STARIUMA01', 'STUDIO0001', 'A01'),
('STARIUMA02', 'STUDIO0001', 'A02'),
('STARIUMA03', 'STUDIO0001', 'A03'),
('STARIUMA04', 'STUDIO0001', 'A04'),
('STARIUMA05', 'STUDIO0001', 'A05'),
('STARIUMA06', 'STUDIO0001', 'A06'),
('STARIUMA07', 'STUDIO0001', 'A07'),
('STARIUMA08', 'STUDIO0001', 'A08'),
('STARIUMA09', 'STUDIO0001', 'A09'),
('STARIUMA10', 'STUDIO0001', 'A10'),
('STARIUMA11', 'STUDIO0001', 'A11'),
('STARIUMA12', 'STUDIO0001', 'A12'),
('STARIUMB01', 'STUDIO0001', 'B01'),
('STARIUMB02', 'STUDIO0001', 'B02'),
('STARIUMB03', 'STUDIO0001', 'B03'),
('STARIUMB04', 'STUDIO0001', 'B04'),
('STARIUMB05', 'STUDIO0001', 'B05'),
('STARIUMB06', 'STUDIO0001', 'B06'),
('STARIUMB07', 'STUDIO0001', 'B07'),
('STARIUMB08', 'STUDIO0001', 'B08'),
('STARIUMB09', 'STUDIO0001', 'B09'),
('STARIUMB10', 'STUDIO0001', 'B10'),
('STARIUMB11', 'STUDIO0001', 'B11'),
('STARIUMB12', 'STUDIO0001', 'B12'),
('STARIUMC01', 'STUDIO0001', 'C01'),
('STARIUMC02', 'STUDIO0001', 'C02'),
('STARIUMC03', 'STUDIO0001', 'C03'),
('STARIUMC04', 'STUDIO0001', 'C04'),
('STARIUMC05', 'STUDIO0001', 'C05'),
('STARIUMC06', 'STUDIO0001', 'C06'),
('STARIUMC07', 'STUDIO0001', 'C07'),
('STARIUMC08', 'STUDIO0001', 'C08'),
('STARIUMC09', 'STUDIO0001', 'C09'),
('STARIUMC10', 'STUDIO0001', 'C10'),
('STARIUMC11', 'STUDIO0001', 'C11'),
('STARIUMC12', 'STUDIO0001', 'C12'),
('STARIUMD01', 'STUDIO0001', 'D01'),
('STARIUMD02', 'STUDIO0001', 'D02'),
('STARIUMD03', 'STUDIO0001', 'D03'),
('STARIUMD04', 'STUDIO0001', 'D04'),
('STARIUMD05', 'STUDIO0001', 'D05'),
('STARIUMD06', 'STUDIO0001', 'D06'),
('STARIUMD07', 'STUDIO0001', 'D07'),
('STARIUMD08', 'STUDIO0001', 'D08'),
('STARIUMD09', 'STUDIO0001', 'D09'),
('STARIUMD10', 'STUDIO0001', 'D10'),
('STARIUMD11', 'STUDIO0001', 'D11'),
('STARIUMD12', 'STUDIO0001', 'D12'),
('STARIUME01', 'STUDIO0001', 'E01'),
('STARIUME02', 'STUDIO0001', 'E02'),
('STARIUME03', 'STUDIO0001', 'E03'),
('STARIUME04', 'STUDIO0001', 'E04'),
('STARIUME05', 'STUDIO0001', 'E05'),
('STARIUME06', 'STUDIO0001', 'E06'),
('STARIUME07', 'STUDIO0001', 'E07'),
('STARIUME08', 'STUDIO0001', 'E08'),
('STARIUME09', 'STUDIO0001', 'E09'),
('STARIUME10', 'STUDIO0001', 'E10'),
('STARIUME11', 'STUDIO0001', 'E11'),
('STARIUME12', 'STUDIO0001', 'E12'),
('STARIUMF01', 'STUDIO0001', 'F01'),
('STARIUMF02', 'STUDIO0001', 'F02'),
('STARIUMF03', 'STUDIO0001', 'F03'),
('STARIUMF04', 'STUDIO0001', 'F04'),
('STARIUMF05', 'STUDIO0001', 'F05'),
('STARIUMF06', 'STUDIO0001', 'F06'),
('STARIUMF07', 'STUDIO0001', 'F07'),
('STARIUMF08', 'STUDIO0001', 'F08'),
('STARIUMF09', 'STUDIO0001', 'F09'),
('STARIUMF10', 'STUDIO0001', 'F10'),
('STARIUMF11', 'STUDIO0001', 'F11'),
('STARIUMF12', 'STUDIO0001', 'F12'),
('STARIUMG01', 'STUDIO0001', 'G01'),
('STARIUMG02', 'STUDIO0001', 'G02'),
('STARIUMG03', 'STUDIO0001', 'G03'),
('STARIUMG04', 'STUDIO0001', 'G04'),
('STARIUMG05', 'STUDIO0001', 'G05'),
('STARIUMG06', 'STUDIO0001', 'G06'),
('STARIUMG07', 'STUDIO0001', 'G07'),
('STARIUMG08', 'STUDIO0001', 'G08'),
('STARIUMG09', 'STUDIO0001', 'G09'),
('STARIUMG10', 'STUDIO0001', 'G10'),
('STARIUMG11', 'STUDIO0001', 'G11'),
('STARIUMG12', 'STUDIO0001', 'G12'),
('STARIUMH01', 'STUDIO0001', 'H01'),
('STARIUMH02', 'STUDIO0001', 'H02'),
('STARIUMH03', 'STUDIO0001', 'H03'),
('STARIUMH04', 'STUDIO0001', 'H04'),
('STARIUMH05', 'STUDIO0001', 'H05'),
('STARIUMH06', 'STUDIO0001', 'H06'),
('STARIUMH07', 'STUDIO0001', 'H07'),
('STARIUMH08', 'STUDIO0001', 'H08'),
('STARIUMH09', 'STUDIO0001', 'H09'),
('STARIUMH10', 'STUDIO0001', 'H10'),
('STARIUMH11', 'STUDIO0001', 'H11'),
('STARIUMH12', 'STUDIO0001', 'H12'),
('STARIUMI01', 'STUDIO0001', 'I01'),
('STARIUMI02', 'STUDIO0001', 'I02'),
('STARIUMI03', 'STUDIO0001', 'I03'),
('STARIUMI04', 'STUDIO0001', 'I04'),
('STARIUMI05', 'STUDIO0001', 'I05'),
('STARIUMI06', 'STUDIO0001', 'I06'),
('STARIUMI07', 'STUDIO0001', 'I07'),
('STARIUMI08', 'STUDIO0001', 'I08'),
('STARIUMI09', 'STUDIO0001', 'I09'),
('STARIUMI10', 'STUDIO0001', 'I10'),
('STARIUMI11', 'STUDIO0001', 'I11'),
('STARIUMI12', 'STUDIO0001', 'I12'),
('STARIUMJ01', 'STUDIO0001', 'J01'),
('STARIUMJ02', 'STUDIO0001', 'J02'),
('STARIUMJ03', 'STUDIO0001', 'J03'),
('STARIUMJ04', 'STUDIO0001', 'J04'),
('STARIUMJ05', 'STUDIO0001', 'J05'),
('STARIUMJ06', 'STUDIO0001', 'J06'),
('STARIUMJ07', 'STUDIO0001', 'J07'),
('STARIUMJ08', 'STUDIO0001', 'J08'),
('STARIUMJ09', 'STUDIO0001', 'J09'),
('STARIUMJ10', 'STUDIO0001', 'J10'),
('STARIUMJ11', 'STUDIO0001', 'J11'),
('STARIUMJ12', 'STUDIO0001', 'J12'),
('SWEETBXA01', 'STUDIO0002', 'A01'),
('SWEETBXA02', 'STUDIO0002', 'A02'),
('SWEETBXA03', 'STUDIO0002', 'A03'),
('SWEETBXA04', 'STUDIO0002', 'A04'),
('SWEETBXA05', 'STUDIO0002', 'A05'),
('SWEETBXA06', 'STUDIO0002', 'A06'),
('SWEETBXA07', 'STUDIO0002', 'A07'),
('SWEETBXA08', 'STUDIO0002', 'A08'),
('SWEETBXA09', 'STUDIO0002', 'A09'),
('SWEETBXA10', 'STUDIO0002', 'A10'),
('SWEETBXA11', 'STUDIO0002', 'A11'),
('SWEETBXA12', 'STUDIO0002', 'A12'),
('SWEETBXB01', 'STUDIO0002', 'B01'),
('SWEETBXB02', 'STUDIO0002', 'B02'),
('SWEETBXB03', 'STUDIO0002', 'B03'),
('SWEETBXB04', 'STUDIO0002', 'B04'),
('SWEETBXB05', 'STUDIO0002', 'B05'),
('SWEETBXB06', 'STUDIO0002', 'B06'),
('SWEETBXB07', 'STUDIO0002', 'B07'),
('SWEETBXB08', 'STUDIO0002', 'B08'),
('SWEETBXB09', 'STUDIO0002', 'B09'),
('SWEETBXB10', 'STUDIO0002', 'B10'),
('SWEETBXB11', 'STUDIO0002', 'B11'),
('SWEETBXB12', 'STUDIO0002', 'B12'),
('SWEETBXC01', 'STUDIO0002', 'C01'),
('SWEETBXC02', 'STUDIO0002', 'C02'),
('SWEETBXC03', 'STUDIO0002', 'C03'),
('SWEETBXC04', 'STUDIO0002', 'C04'),
('SWEETBXC05', 'STUDIO0002', 'C05'),
('SWEETBXC06', 'STUDIO0002', 'C06'),
('SWEETBXC07', 'STUDIO0002', 'C07'),
('SWEETBXC08', 'STUDIO0002', 'C08'),
('SWEETBXC09', 'STUDIO0002', 'C09'),
('SWEETBXC10', 'STUDIO0002', 'C10'),
('SWEETBXC11', 'STUDIO0002', 'C11'),
('SWEETBXC12', 'STUDIO0002', 'C12'),
('SWEETBXD01', 'STUDIO0002', 'D01'),
('SWEETBXD02', 'STUDIO0002', 'D02'),
('SWEETBXD03', 'STUDIO0002', 'D03'),
('SWEETBXD04', 'STUDIO0002', 'D04'),
('SWEETBXD05', 'STUDIO0002', 'D05'),
('SWEETBXD06', 'STUDIO0002', 'D06'),
('SWEETBXD07', 'STUDIO0002', 'D07'),
('SWEETBXD08', 'STUDIO0002', 'D08'),
('SWEETBXD09', 'STUDIO0002', 'D09'),
('SWEETBXD10', 'STUDIO0002', 'D10'),
('SWEETBXD11', 'STUDIO0002', 'D11'),
('SWEETBXD12', 'STUDIO0002', 'D12'),
('SWEETBXE01', 'STUDIO0002', 'E01'),
('SWEETBXE02', 'STUDIO0002', 'E02'),
('SWEETBXE03', 'STUDIO0002', 'E03'),
('SWEETBXE04', 'STUDIO0002', 'E04'),
('SWEETBXE05', 'STUDIO0002', 'E05'),
('SWEETBXE06', 'STUDIO0002', 'E06'),
('SWEETBXE07', 'STUDIO0002', 'E07'),
('SWEETBXE08', 'STUDIO0002', 'E08'),
('SWEETBXE09', 'STUDIO0002', 'E09'),
('SWEETBXE10', 'STUDIO0002', 'E10'),
('SWEETBXE11', 'STUDIO0002', 'E11'),
('SWEETBXE12', 'STUDIO0002', 'E12'),
('SWEETBXF01', 'STUDIO0002', 'F01'),
('SWEETBXF02', 'STUDIO0002', 'F02'),
('SWEETBXF03', 'STUDIO0002', 'F03'),
('SWEETBXF04', 'STUDIO0002', 'F04'),
('SWEETBXF05', 'STUDIO0002', 'F05'),
('SWEETBXF06', 'STUDIO0002', 'F06'),
('SWEETBXF07', 'STUDIO0002', 'F07'),
('SWEETBXF08', 'STUDIO0002', 'F08'),
('SWEETBXF09', 'STUDIO0002', 'F09'),
('SWEETBXF10', 'STUDIO0002', 'F10'),
('SWEETBXF11', 'STUDIO0002', 'F11'),
('SWEETBXF12', 'STUDIO0002', 'F12'),
('SWEETBXG01', 'STUDIO0002', 'G01'),
('SWEETBXG02', 'STUDIO0002', 'G02'),
('SWEETBXG03', 'STUDIO0002', 'G03'),
('SWEETBXG04', 'STUDIO0002', 'G04'),
('SWEETBXG05', 'STUDIO0002', 'G05'),
('SWEETBXG06', 'STUDIO0002', 'G06'),
('SWEETBXG07', 'STUDIO0002', 'G07'),
('SWEETBXG08', 'STUDIO0002', 'G08'),
('SWEETBXG09', 'STUDIO0002', 'G09'),
('SWEETBXG10', 'STUDIO0002', 'G10'),
('SWEETBXG11', 'STUDIO0002', 'G11'),
('SWEETBXG12', 'STUDIO0002', 'G12'),
('SWEETBXH01', 'STUDIO0002', 'H01'),
('SWEETBXH02', 'STUDIO0002', 'H02'),
('SWEETBXH03', 'STUDIO0002', 'H03'),
('SWEETBXH04', 'STUDIO0002', 'H04'),
('SWEETBXH05', 'STUDIO0002', 'H05'),
('SWEETBXH06', 'STUDIO0002', 'H06'),
('SWEETBXH07', 'STUDIO0002', 'H07'),
('SWEETBXH08', 'STUDIO0002', 'H08'),
('SWEETBXH09', 'STUDIO0002', 'H09'),
('SWEETBXH10', 'STUDIO0002', 'H10'),
('SWEETBXH11', 'STUDIO0002', 'H11'),
('SWEETBXH12', 'STUDIO0002', 'H12'),
('SWEETBXI01', 'STUDIO0002', 'I01'),
('SWEETBXI02', 'STUDIO0002', 'I02'),
('SWEETBXI03', 'STUDIO0002', 'I03'),
('SWEETBXI04', 'STUDIO0002', 'I04'),
('SWEETBXI05', 'STUDIO0002', 'I05'),
('SWEETBXI06', 'STUDIO0002', 'I06'),
('SWEETBXI07', 'STUDIO0002', 'I07'),
('SWEETBXI08', 'STUDIO0002', 'I08'),
('SWEETBXI09', 'STUDIO0002', 'I09'),
('SWEETBXI10', 'STUDIO0002', 'I10'),
('SWEETBXI11', 'STUDIO0002', 'I11'),
('SWEETBXI12', 'STUDIO0002', 'I12'),
('SWEETBXJ01', 'STUDIO0002', 'J01'),
('SWEETBXJ02', 'STUDIO0002', 'J02'),
('SWEETBXJ03', 'STUDIO0002', 'J03'),
('SWEETBXJ04', 'STUDIO0002', 'J04'),
('SWEETBXJ05', 'STUDIO0002', 'J05'),
('SWEETBXJ06', 'STUDIO0002', 'J06'),
('SWEETBXJ07', 'STUDIO0002', 'J07'),
('SWEETBXJ08', 'STUDIO0002', 'J08'),
('SWEETBXJ09', 'STUDIO0002', 'J09'),
('SWEETBXJ10', 'STUDIO0002', 'J10'),
('SWEETBXJ11', 'STUDIO0002', 'J11'),
('SWEETBXJ12', 'STUDIO0002', 'J12'),
('VELVETCA01', 'STUDIO0003', 'A01'),
('VELVETCA02', 'STUDIO0003', 'A02'),
('VELVETCA03', 'STUDIO0003', 'A03'),
('VELVETCA04', 'STUDIO0003', 'A04'),
('VELVETCA05', 'STUDIO0003', 'A05'),
('VELVETCA06', 'STUDIO0003', 'A06'),
('VELVETCA07', 'STUDIO0003', 'A07'),
('VELVETCA08', 'STUDIO0003', 'A08'),
('VELVETCA09', 'STUDIO0003', 'A09'),
('VELVETCA10', 'STUDIO0003', 'A10'),
('VELVETCA11', 'STUDIO0003', 'A11'),
('VELVETCA12', 'STUDIO0003', 'A12'),
('VELVETCB01', 'STUDIO0003', 'B01'),
('VELVETCB02', 'STUDIO0003', 'B02'),
('VELVETCB03', 'STUDIO0003', 'B03'),
('VELVETCB04', 'STUDIO0003', 'B04'),
('VELVETCB05', 'STUDIO0003', 'B05'),
('VELVETCB06', 'STUDIO0003', 'B06'),
('VELVETCB07', 'STUDIO0003', 'B07'),
('VELVETCB08', 'STUDIO0003', 'B08'),
('VELVETCB09', 'STUDIO0003', 'B09'),
('VELVETCB10', 'STUDIO0003', 'B10'),
('VELVETCB11', 'STUDIO0003', 'B11'),
('VELVETCB12', 'STUDIO0003', 'B12'),
('VELVETCC01', 'STUDIO0003', 'C01'),
('VELVETCC02', 'STUDIO0003', 'C02'),
('VELVETCC03', 'STUDIO0003', 'C03'),
('VELVETCC04', 'STUDIO0003', 'C04'),
('VELVETCC05', 'STUDIO0003', 'C05'),
('VELVETCC06', 'STUDIO0003', 'C06'),
('VELVETCC07', 'STUDIO0003', 'C07'),
('VELVETCC08', 'STUDIO0003', 'C08'),
('VELVETCC09', 'STUDIO0003', 'C09'),
('VELVETCC10', 'STUDIO0003', 'C10'),
('VELVETCC11', 'STUDIO0003', 'C11'),
('VELVETCC12', 'STUDIO0003', 'C12'),
('VELVETCD01', 'STUDIO0003', 'D01'),
('VELVETCD02', 'STUDIO0003', 'D02'),
('VELVETCD03', 'STUDIO0003', 'D03'),
('VELVETCD04', 'STUDIO0003', 'D04'),
('VELVETCD05', 'STUDIO0003', 'D05'),
('VELVETCD06', 'STUDIO0003', 'D06'),
('VELVETCD07', 'STUDIO0003', 'D07'),
('VELVETCD08', 'STUDIO0003', 'D08'),
('VELVETCD09', 'STUDIO0003', 'D09'),
('VELVETCD10', 'STUDIO0003', 'D10'),
('VELVETCD11', 'STUDIO0003', 'D11'),
('VELVETCD12', 'STUDIO0003', 'D12'),
('VELVETCE01', 'STUDIO0003', 'E01'),
('VELVETCE02', 'STUDIO0003', 'E02'),
('VELVETCE03', 'STUDIO0003', 'E03'),
('VELVETCE04', 'STUDIO0003', 'E04'),
('VELVETCE05', 'STUDIO0003', 'E05'),
('VELVETCE06', 'STUDIO0003', 'E06'),
('VELVETCE07', 'STUDIO0003', 'E07'),
('VELVETCE08', 'STUDIO0003', 'E08'),
('VELVETCE09', 'STUDIO0003', 'E09'),
('VELVETCE10', 'STUDIO0003', 'E10'),
('VELVETCE11', 'STUDIO0003', 'E11'),
('VELVETCE12', 'STUDIO0003', 'E12'),
('VELVETCF01', 'STUDIO0003', 'F01'),
('VELVETCF02', 'STUDIO0003', 'F02'),
('VELVETCF03', 'STUDIO0003', 'F03'),
('VELVETCF04', 'STUDIO0003', 'F04'),
('VELVETCF05', 'STUDIO0003', 'F05'),
('VELVETCF06', 'STUDIO0003', 'F06'),
('VELVETCF07', 'STUDIO0003', 'F07'),
('VELVETCF08', 'STUDIO0003', 'F08'),
('VELVETCF09', 'STUDIO0003', 'F09'),
('VELVETCF10', 'STUDIO0003', 'F10'),
('VELVETCF11', 'STUDIO0003', 'F11'),
('VELVETCF12', 'STUDIO0003', 'F12'),
('VELVETCG01', 'STUDIO0003', 'G01'),
('VELVETCG02', 'STUDIO0003', 'G02'),
('VELVETCG03', 'STUDIO0003', 'G03'),
('VELVETCG04', 'STUDIO0003', 'G04'),
('VELVETCG05', 'STUDIO0003', 'G05'),
('VELVETCG06', 'STUDIO0003', 'G06'),
('VELVETCG07', 'STUDIO0003', 'G07'),
('VELVETCG08', 'STUDIO0003', 'G08'),
('VELVETCG09', 'STUDIO0003', 'G09'),
('VELVETCG10', 'STUDIO0003', 'G10'),
('VELVETCG11', 'STUDIO0003', 'G11'),
('VELVETCG12', 'STUDIO0003', 'G12'),
('VELVETCH01', 'STUDIO0003', 'H01'),
('VELVETCH02', 'STUDIO0003', 'H02'),
('VELVETCH03', 'STUDIO0003', 'H03'),
('VELVETCH04', 'STUDIO0003', 'H04'),
('VELVETCH05', 'STUDIO0003', 'H05'),
('VELVETCH06', 'STUDIO0003', 'H06'),
('VELVETCH07', 'STUDIO0003', 'H07'),
('VELVETCH08', 'STUDIO0003', 'H08'),
('VELVETCH09', 'STUDIO0003', 'H09'),
('VELVETCH10', 'STUDIO0003', 'H10'),
('VELVETCH11', 'STUDIO0003', 'H11'),
('VELVETCH12', 'STUDIO0003', 'H12'),
('VELVETCI01', 'STUDIO0003', 'I01'),
('VELVETCI02', 'STUDIO0003', 'I02'),
('VELVETCI03', 'STUDIO0003', 'I03'),
('VELVETCI04', 'STUDIO0003', 'I04'),
('VELVETCI05', 'STUDIO0003', 'I05'),
('VELVETCI06', 'STUDIO0003', 'I06'),
('VELVETCI07', 'STUDIO0003', 'I07'),
('VELVETCI08', 'STUDIO0003', 'I08'),
('VELVETCI09', 'STUDIO0003', 'I09'),
('VELVETCI10', 'STUDIO0003', 'I10'),
('VELVETCI11', 'STUDIO0003', 'I11'),
('VELVETCI12', 'STUDIO0003', 'I12'),
('VELVETCJ01', 'STUDIO0003', 'J01'),
('VELVETCJ02', 'STUDIO0003', 'J02'),
('VELVETCJ03', 'STUDIO0003', 'J03'),
('VELVETCJ04', 'STUDIO0003', 'J04'),
('VELVETCJ05', 'STUDIO0003', 'J05'),
('VELVETCJ06', 'STUDIO0003', 'J06'),
('VELVETCJ07', 'STUDIO0003', 'J07'),
('VELVETCJ08', 'STUDIO0003', 'J08'),
('VELVETCJ09', 'STUDIO0003', 'J09'),
('VELVETCJ10', 'STUDIO0003', 'J10'),
('VELVETCJ11', 'STUDIO0003', 'J11'),
('VELVETCJ12', 'STUDIO0003', 'J12');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `idOrder` int(10) NOT NULL,
  `idJadwal` varchar(10) NOT NULL,
  `idUser` varchar(10) NOT NULL,
  `noKursi` varchar(10) NOT NULL,
  `tglOrder` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`idOrder`, `idJadwal`, `idUser`, `noKursi`, `tglOrder`, `status`) VALUES
(1, 'SENINPG001', 'USER000001', 'STARIUMA01', '2021-06-06', 'Lunas'),
(7, '10', 'USER000001', 'STARIUMA01', '2021-06-14', 'Lunas'),
(8, '10', 'USER000001', 'STARIUMA02', '2021-06-14', 'Lunas'),
(9, '10', 'USER000001', 'STARIUMA03', '2021-06-14', 'Lunas'),
(10, '10', 'USER000001', 'STARIUMA04', '2021-06-14', 'Lunas'),
(11, '10', 'USER000001', 'STARIUMA05', '2021-06-14', 'Lunas'),
(12, '10', 'USER000001', 'STARIUMA06', '2021-06-14', 'Lunas'),
(13, '10', 'USER000002', 'STARIUMA07', '2021-06-14', 'Lunas'),
(14, '19', 'USER000002', 'SWEETBXA10', '2021-06-14', 'Lunas'),
(15, '14', 'USER000002', 'STARIUMB10', '2021-06-14', 'Lunas'),
(16, '14', 'USER000002', 'STARIUMB03', '2021-06-14', 'Lunas'),
(17, '10', 'USER000002', 'STARIUMA08', '2021-06-14', 'Lunas'),
(18, '10', 'USER000002', 'STARIUMB05', '2021-06-14', 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

CREATE TABLE `studio` (
  `noStudio` varchar(10) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`noStudio`, `kelas`, `harga`) VALUES
('STUDIO0001', 'Starium', 35000),
('STUDIO0002', 'Sweet Box', 110000),
('STUDIO0003', 'Velvet Class', 75000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` varchar(10) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `noHp` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `userName`, `password`, `nama`, `noHp`, `email`, `saldo`) VALUES
('USER000001', 'alexsur', 'yapaloh', 'Alex Surya Paloh', '081111111111', 'alexsur@gmail.com', 0),
('USER000002', 'usertest', 'usertest', 'user test nama', 'user hp', 'user email', 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`),
  ADD UNIQUE KEY `adminName` (`adminName`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`idFilm`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`idJadwal`),
  ADD KEY `FK1` (`idFilm`),
  ADD KEY `FK2` (`noStudio`);

--
-- Indexes for table `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`noKursi`),
  ADD KEY `FK1` (`noStudio`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `FK1` (`idJadwal`),
  ADD KEY `FK2` (`idUser`),
  ADD KEY `FK3` (`noKursi`);

--
-- Indexes for table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`noStudio`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `idFilm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `idJadwal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `idOrder` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
