-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 11:58 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kavling`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `no_ktp` varchar(25) NOT NULL,
  `no_kk` varchar(35) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `alamat_domisili` text NOT NULL,
  `alamat_tidak_serumah` text NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `no_telp` varchar(25) NOT NULL,
  `no_wa` varchar(25) NOT NULL,
  `no_hp_tidak_serumah` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `surat_akad` varchar(100) NOT NULL,
  `ktp` varchar(100) NOT NULL,
  `kk` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_lengkap`, `no_ktp`, `no_kk`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `alamat_domisili`, `alamat_tidak_serumah`, `pekerjaan`, `no_telp`, `no_wa`, `no_hp_tidak_serumah`, `email`, `surat_akad`, `ktp`, `kk`, `keterangan`) VALUES
(1, 'Heru1', '2345234523452', '', 'Laki-laki', 'Malang3', '2023-02-04', 'Her mandiri 145', 'asdaSD6666', 'SDFASDF111', '', '08123345345347', '00000000888', '99999999999990000', '', '', '1677654941075.jpg', '1677654941082.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `kavling_peta`
--

CREATE TABLE `kavling_peta` (
  `id_kavling` int(11) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `kode_kavling` varchar(15) NOT NULL,
  `panjang_kanan` double(11,1) NOT NULL,
  `panjang_kiri` double(11,1) NOT NULL,
  `lebar_depan` double(11,1) NOT NULL,
  `lebar_belakang` double(11,1) NOT NULL,
  `luas_tanah` int(11) NOT NULL,
  `hrg_meter` int(11) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `jenis_map` varchar(15) NOT NULL,
  `map` text NOT NULL,
  `matrik` varchar(250) NOT NULL,
  `status` int(2) NOT NULL,
  `id_customer` int(3) NOT NULL,
  `id_marketing` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_jatuh_tempo` int(2) NOT NULL,
  `stt_cicilan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kavling_peta`
--

INSERT INTO `kavling_peta` (`id_kavling`, `id_lokasi`, `kode_kavling`, `panjang_kanan`, `panjang_kiri`, `lebar_depan`, `lebar_belakang`, `luas_tanah`, `hrg_meter`, `hrg_jual`, `jenis_map`, `map`, `matrik`, `status`, `id_customer`, `id_marketing`, `keterangan`, `tgl_jatuh_tempo`, `stt_cicilan`) VALUES
(1, 0, 'A-1', 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 'polygon', '423.08,562.69 483.78,555.31 519.34,535.79 492,839.69 334.01,827.22 ', '0', 0, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_kavling`
--

CREATE TABLE `lokasi_kavling` (
  `id_lokasi` int(11) NOT NULL,
  `nama_kavling` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `data_xml` text NOT NULL,
  `file_svg` varchar(50) NOT NULL,
  `stt_kavling` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lokasi_kavling`
--

INSERT INTO `lokasi_kavling` (`id_lokasi`, `nama_kavling`, `alamat`, `data_xml`, `file_svg`, `stt_kavling`) VALUES
(1, 'Mentaya 1', 'Jl. Kavling Mentaya 1', '\r\n<!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\" \"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">\r\n<!-- Creator: CorelDRAW X8 -->\r\n<svg xmlns=\"http://www.w3.org/2000/svg\" xml:space=\"preserve\" width=\"297mm\" height=\"210mm\" version=\"1.1\" style=\"shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd\"\r\nviewBox=\"0 0 29700 21000\"\r\n xmlns:xlink=\"http://www.w3.org/1999/xlink\">\r\n <defs>\r\n  <style type=\"text/css\">\r\n   <![CDATA[\r\n    .str1 {stroke:#332C2B;stroke-width:35.28}\r\n    .str0 {stroke:#DCDDDD;stroke-width:20}\r\n    .fil0 {fill:none}\r\n    .fil6 {fill:#332C2B}\r\n    .fil7 {fill:#332C2B}\r\n    .fil8 {fill:#FFF000}\r\n    .fil9 {fill:#F08519}\r\n    .fil10 {fill:#00A2E9}\r\n    .fil5 {fill:#EEEEEF;fill-rule:nonzero}\r\n    .fil1 {fill:#332C2B;fill-rule:nonzero}\r\n    .fil4 {fill:#FFF000;fill-rule:nonzero}\r\n    .fil3 {fill:#D2CDE6;fill-rule:nonzero}\r\n    .fil2 {fill:#009B4C;fill-rule:nonzero}\r\n    .fnt5 {font-weight:bold;font-size:279.01px;font-family:\'Arial\'}\r\n    .fnt4 {font-weight:bold;font-size:281.69px;font-family:\'Roboto\'}\r\n    .fnt3 {font-weight:bold;font-size:306.04px;font-family:\'Roboto\'}\r\n    .fnt0 {font-weight:bold;font-size:310.5px;font-family:\'Roboto\'}\r\n    .fnt2 {font-weight:bold;font-size:331.97px;font-family:\'Roboto\'}\r\n    .fnt1 {font-weight:bold;font-size:357.63px;font-family:\'Roboto\'}\r\n   ]]>\r\n  </style>\r\n   <clipPath id=\"id0\">\r\n    <path d=\"M2758 2004l2554 0c132,0 241,109 241,241l0 2737c0,133 -109,241 -241,241l-2554 0c-132,0 -241,-108 -241,-241l0 -2737c0,-132 109,-241 241,-241z\"/>\r\n   </clipPath>\r\n    <clipPath id=\"id1\">\r\n     <path d=\"M2684 2162l2698 0 0 2896 -2698 0 0 -2896z\"/>\r\n    </clipPath>\r\n    <clipPath id=\"id2\">\r\n     <path d=\"M2758 2004l2554 0c132,0 241,109 241,241l0 2737c0,133 -109,241 -241,241l-2554 0c-132,0 -241,-108 -241,-241l0 -2737c0,-132 109,-241 241,-241z\"/>\r\n    </clipPath>\r\n </defs>\r\n <g id=\"Layer_x0020_1\">\r\n  <metadata id=\"CorelCorpID_0Corel-Layer\"/>\r\n  <rect class=\"fil0 str0\" x=\"1170\" y=\"699\" width=\"22520\" height=\"19254\"/>\r\n  <path class=\"fil1\" d=\"M16923 5087l459 3229 -8481 667 155 375 5611 -433c127,1134 253,2268 380,3402l-4452 745 166 401 4331 -752 661 5897 119 148 3807 -2838 -855 -7281 1995 -159 -52 -466 -2602 233c-141,-1056 -282,-2113 -424,-3170l2698 -12 -52 -475 -2732 -17c-135,-986 -271,-1972 -407,-2959 1027,-11 2055,-23 3082,-35 493,4372 988,8744 1479,13117 -1987,1500 -3973,2999 -5961,4497l-3307 -4134 -1304 335c-943,-2249 -1885,-4499 -2827,-6749l2922 -246 -650 -3283 2795 -773 -458 -2763c1137,5 2273,11 3410,17 142,997 283,1993 424,2990l-3121 13 -2670 750 88 481 2887 -782 2869 15 0 17 17 -2zm-755 12919l-1049 -9104c1080,-83 2160,-165 3240,-248 281,2353 562,4705 842,7058 -1009,775 -2020,1550 -3030,2325l-3 -31z\"/>\r\n  <path class=\"fil2\" d=\"M16758 1590l181 0c315,2219 628,4438 943,6657l-242 0c-300,-2219 -601,-4438 -902,-6657l20 0z\"/>\r\n  <path class=\"fil3\" d=\"M17110 6648l-33 -230 -2880 28 -2821 817c-118,-643 -237,-1286 -355,-1930l2689 -755 -205 -1359 3117 -1 -32 -224 -3105 4 -199 -1374 -226 -1 456 2753 -2793 773 651 3290 -2913 245 2797 6676 1296 -332 3300 4124 5918 -4464 -1473 -13065 -218 2 148 1375 -2757 -6 33 238 2765 -17c119,1077 237,2154 356,3231l-2667 6 27 196 2660 0c301,2644 601,5288 899,7933 -1892,1412 -3786,2823 -5679,4233 -1012,-1259 -2023,-2518 -3033,-3778l2422 -551 -26 -225 -3816 878c-856,-2062 -1709,-4124 -2563,-6186l2780 -219 -227 -1264c943,-274 1886,-548 2829,-821l2878 0z\"/>\r\n  <polygon class=\"fil3\" points=\"15342,10531 15366,10739 16823,10624 17547,16937 17761,16773 17052,10608 18543,10493 18517,10275 \"/>\r\n  <polygon class=\"fil3\" points=\"9717,10954 9811,11182 14840,10791 14815,10567 12851,10716 12850,10700 12847,10701 12546,9124 12340,9140 12653,10731 \"/>\r\n  <polygon class=\"fil2\" points=\"16010,16330 16199,17971 17514,16962 17429,16217 \"/>\r\n  <polygon class=\"fil4\" points=\"14935,17599 15712,18567 15594,17513 \"/>\r\n  <polygon class=\"fil5\" points=\"14452,16998 14910,17568 15590,17478 15517,16820 \"/>\r\n  <g id=\"_2044866858816\">\r\n   <polygon class=\"fil5\" points=\"15917,15523 16006,16295 17425,16182 17336,15408 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 703.345 6841.73)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C17</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044866858528\">\r\n   <polygon class=\"fil5\" points=\"17793,16748 19164,15696 19081,14999 17602,15085 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 2398.87 6545.86)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C18</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044866857056\">\r\n   <polygon class=\"fil5\" points=\"19712,15904 21508,14565 21419,13775 19480,13935 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 4616.59 5389.1)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">D7</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044866857184\">\r\n   <polygon class=\"fil5\" points=\"15259,14520 12895,15058 13404,15692 15353,15360 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -1500.23 6084.81)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">G1</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044866856704\">\r\n   <polygon class=\"fil5\" points=\"13429,15723 13926,16343 15445,16187 15357,15395 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -1286.05 6854.53)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt2\">G2</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865894624\">\r\n   <polygon class=\"fil5\" points=\"13953,16375 14427,16966 15513,16786 15449,16221 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -1098.72 7552.22)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt3\">G3</text>\r\n   </g>\r\n  </g>\r\n  <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -815.96 8165.65)\">\r\n   <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt4\">G4</text>\r\n  </g>\r\n  <g id=\"_2044865896384\">\r\n   <polygon class=\"fil5\" points=\"17955,6417 18789,6415 18613,5116 17781,5120 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 2886.99 -4074.88)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B1</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865892512\">\r\n   <polygon class=\"fil5\" points=\"17072,6383 16891,5106 15988,5102 16160,6392 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 1105.99 -4092.99)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B2</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865893440\">\r\n   <polygon class=\"fil5\" points=\"19281,6683 17990,6683 18196,8218 19462,8104 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 3304.61 -2389.57)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B3</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865891744\">\r\n   <polygon class=\"fil5\" points=\"17342,8284 17115,6683 16208,6683 16425,8356 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 1350.33 -2321.42)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B4</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865891328\">\r\n   <polygon class=\"fil5\" points=\"20763,7988 20615,6683 19316,6683 19496,8101 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 4616.93 -2448.62)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B5</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865890816\">\r\n   <polygon class=\"fil5\" points=\"20586,6411 20443,5108 19589,5112 19754,6413 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 4664.22 -4079.52)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B6</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865890016\">\r\n   <polygon class=\"fil5\" points=\"18825,6415 19719,6413 19554,5112 18648,5116 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 3764.2 -4077.2)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B7</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865889216\">\r\n   <polygon class=\"fil5\" points=\"15202,6401 16125,6392 15953,5102 15030,5097 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 155.605 -4090.62)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B8</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865890368\">\r\n   <polygon class=\"fil5\" points=\"15493,8429 16390,8359 16173,6683 15263,6683 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 406.675 -2283.84)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B9</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865888256\">\r\n   <polygon class=\"fil5\" points=\"14533,8505 15458,8432 15228,6683 14286,6683 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 -651.58 -2242.26)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B10</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865887584\">\r\n   <polygon class=\"fil5\" points=\"13582,8580 14498,8508 14251,6683 14237,6683 13384,6931 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 -1560.11 -2206.31)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B11</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865885088\">\r\n   <polygon class=\"fil5\" points=\"12629,8655 13547,8582 13350,6941 12462,7198 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 -2522.31 -2038.76)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B12</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865885056\">\r\n   <polygon class=\"fil5\" points=\"11665,8730 12595,8657 12427,7208 11443,7494 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 -3505.29 -1867.06)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B13</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865885536\">\r\n   <polygon class=\"fil5\" points=\"14256,6411 15167,6402 14995,5097 14060,5092 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 -914.354 -4085.87)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B14</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865882304\">\r\n   <polygon class=\"fil5\" points=\"13317,6664 14192,6411 14221,6411 14025,5097 13133,5338 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 -1847.79 -3956.45)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B15</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865883360\">\r\n   <polygon class=\"fil5\" points=\"12382,6935 13283,6674 13099,5348 12197,5592 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 -2785.48 -3694.85)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B16</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865881728\">\r\n   <polygon class=\"fil5\" points=\"11156,5874 11403,7219 12348,6945 12163,5601 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 -3769.7 -3427.01)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">B17</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865880864\">\r\n   <polygon class=\"fil5\" points=\"15158,8934 15338,10496 16151,10431 15996,8870 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -238.399 660.706)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">C1</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044865881184\">\r\n   <polygon class=\"fil5\" points=\"15370,10774 15458,11536 16879,11422 16792,10662 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 226.074 2067.78)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C5</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868488448\">\r\n   <polygon class=\"fil5\" points=\"15462,11570 15549,12328 16970,12214 16883,11457 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 319.869 2856.23)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C6</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868488960\">\r\n   <polygon class=\"fil5\" points=\"18634,11254 18547,10528 17091,10640 17171,11339 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 1983.33 1915.84)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C7</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868487648\">\r\n   <polygon class=\"fil5\" points=\"18720,11979 18638,11289 17175,11374 17254,12063 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 2052.33 2635.99)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C8</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868486144\">\r\n   <polygon class=\"fil5\" points=\"15553,12362 15641,13123 17061,13009 16974,12249 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 421.129 3648.29)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C9</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868485888\">\r\n   <polygon class=\"fil5\" points=\"18809,12722 18724,12014 17258,12097 17340,12807 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 2052.3 3379.88)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C10</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868487168\">\r\n   <polygon class=\"fil5\" points=\"15645,13158 15732,13918 17152,13805 17065,13044 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 421.432 4452.38)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C11</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868484704\">\r\n   <polygon class=\"fil5\" points=\"18898,13466 18813,12757 17344,12842 17426,13552 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 2127.13 4116.89)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C12</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868484576\">\r\n   <polygon class=\"fil5\" points=\"15736,13953 15822,14699 17242,14586 17156,13840 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 505.802 5237.25)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C13</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868481984\">\r\n   <polygon class=\"fil5\" points=\"18986,14210 18902,13501 17430,13586 17511,14296 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 2219.51 4870.35)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C14</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868482720\">\r\n   <polygon class=\"fil5\" points=\"15826,14734 15913,15488 17332,15374 17246,14620 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 591.957 6031.31)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C15</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868483264\">\r\n   <polygon class=\"fil5\" points=\"19076,14964 18991,14245 17515,14330 17598,15050 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 2311.11 5619.34)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">C16</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868513568\">\r\n   <polygon class=\"fil5\" points=\"14636,8963 13659,9038 13817,10608 14811,10532 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -1643.78 762.261)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">E1</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868512576\">\r\n   <polygon class=\"fil5\" points=\"13624,9041 12581,9121 12878,10679 13782,10611 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -2722.86 839.689)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">E2</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868510432\">\r\n   <polygon class=\"fil5\" points=\"15008,12298 14844,10826 13865,10902 14016,12464 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -1464.82 2624.34)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">E3</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868511776\">\r\n   <polygon class=\"fil5\" points=\"9070,9392 9703,10920 10661,10848 10342,9294 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -6040.06 1085.82)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">E4</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868511616\">\r\n   <polygon class=\"fil5\" points=\"11320,9219 10377,9292 10696,10845 11620,10775 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -4904.04 1010.54)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">E5</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868508352\">\r\n   <polygon class=\"fil5\" points=\"12305,9143 11355,9216 11656,10772 12611,10699 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -3920.74 936.906)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">E6</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868509984\">\r\n   <polygon class=\"fil5\" points=\"13830,10905 12862,10980 13135,12611 13982,12469 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -2477.83 2736.66)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">E7</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868507808\">\r\n   <polygon class=\"fil5\" points=\"12125,12780 13101,12617 12827,10983 11808,11062 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -3447.88 2860.97)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">E8</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868506016\">\r\n   <polygon class=\"fil5\" points=\"11334,12913 12091,12786 11772,11065 10777,11142 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -4466.36 2967.88)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">E9</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868506464\">\r\n   <polygon class=\"fil5\" points=\"9826,11216 10581,13039 11299,12918 10741,11145 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -5375.98 3080.17)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">E10</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868504576\">\r\n   <polygon class=\"fil5\" points=\"16586,2959 16398,1640 15538,1636 15711,2960 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 663.394 -7543.74)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">A1</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868505056\">\r\n   <polygon class=\"fil5\" points=\"18143,1647 17288,1657 17467,2959 18325,2961 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 2382.28 -7536.08)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">A2</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868503936\">\r\n   <polygon class=\"fil5\" points=\"14311,1629 13321,1624 13515,2963 14520,2962 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 -1500.82 -7546.55)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">A3</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868503456\">\r\n   <polygon class=\"fil5\" points=\"15502,1635 14346,1629 14555,2962 15675,2960 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 -414.08 -7545.7)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">A4</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868503264\">\r\n   <polygon class=\"fil5\" points=\"20046,1626 19135,1636 19312,2963 20190,2965 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 4240.32 -7545.43)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">A5</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868502304\">\r\n   <polygon class=\"fil5\" points=\"19100,1636 18178,1647 18360,2961 19277,2963 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 3304.02 -7540.41)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">A6</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868500736\">\r\n   <polygon class=\"fil5\" points=\"15814,4565 16813,4560 16627,3253 15629,3253 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 801.656 -5932.18)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">A7</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868501088\">\r\n   <polygon class=\"fil5\" points=\"17509,3267 17686,4547 18534,4552 18369,3261 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 2600.36 -5933.47)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">A8</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868498944\">\r\n   <polygon class=\"fil5\" points=\"18570,4552 19481,4558 19310,3255 18404,3261 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 3522.73 -5933.57)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">A9</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044868498176\">\r\n   <polygon class=\"fil5\" points=\"19516,4558 20383,4563 20239,3250 19345,3255 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 4340.52 -5929.82)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">A10</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864305664\">\r\n   <polygon class=\"fil5\" points=\"14850,4569 15779,4565 15594,3253 14665,3254 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 -278.92 -5927.01)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">A11</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864305088\">\r\n   <polygon class=\"fil5\" points=\"13745,4573 14814,4569 14629,3254 13546,3254 \"/>\r\n   <g transform=\"matrix(0.999391 -0.0348995 0.0348995 0.999391 -1346.26 -5923.05)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">A12</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864303488\">\r\n   <polygon class=\"fil5\" points=\"20923,9401 20823,8523 18863,8679 18966,9563 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 4022.8 2.18272)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">D1</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864303968\">\r\n   <polygon class=\"fil5\" points=\"21025,10306 20927,9435 18971,9597 19073,10468 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 4111.41 902.607)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">D2</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864303712\">\r\n   <polygon class=\"fil5\" points=\"21124,11177 21029,10341 19077,10503 19175,11339 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 4224.46 1796.08)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">D3</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864317760\">\r\n   <polygon class=\"fil5\" points=\"21220,12026 21128,11212 19179,11374 19275,12187 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 4327.21 2672.82)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">D4</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864318560\">\r\n   <polygon class=\"fil5\" points=\"21318,12884 21224,12061 19279,12222 19376,13045 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 4426.99 3531.26)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">D5</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864315904\">\r\n   <polygon class=\"fil5\" points=\"21415,13740 21322,12919 19380,13080 19476,13901 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 4502.48 4351.44)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt0\">D6</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864316864\">\r\n   <polygon class=\"fil5\" points=\"14291,14440 15225,14225 15061,12762 14061,12936 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -1232.95 4577.65)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">F1</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864316480\">\r\n   <polygon class=\"fil5\" points=\"13334,14660 14257,14448 14026,12942 13059,13110 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -2243.93 4780.29)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">F2</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864315008\">\r\n   <polygon class=\"fil5\" points=\"12354,14885 13300,14668 13024,13116 12058,13283 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -3220.1 4979.69)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">F3</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864314400\">\r\n   <polygon class=\"fil5\" points=\"10774,13506 11434,15097 12320,14893 12024,13289 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 -4355.71 5171.5)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">F4</text>\r\n   </g>\r\n  </g>\r\n  <path class=\"fil7\" d=\"M2758 2004l2554 0c132,0 241,109 241,241l0 2737c0,133 -109,241 -241,241l-2554 0c-132,0 -241,-108 -241,-241l0 -2737c0,-132 109,-241 241,-241z\"/>\r\n  <g style=\"clip-path:url(#id0)\">\r\n   <g id=\"_2044864314688\">\r\n   </g>\r\n   <g style=\"clip-path:url(#id1)\">\r\n    <image id=\"photo_2022-11-22_11-45-22.jpg\" x=\"2684\" y=\"2162\" width=\"2697\" height=\"2896\" xlink:href=\"revisi_Images\\revisi_ImgID1.png\"/>\r\n   </g>\r\n   <g style=\"clip-path:url(#id2)\">\r\n   </g>\r\n  </g>\r\n  <path class=\"fil0\" d=\"M2758 2004l2554 0c132,0 241,109 241,241l0 2737c0,133 -109,241 -241,241l-2554 0c-132,0 -241,-108 -241,-241l0 -2737c0,-132 109,-241 241,-241z\"/>\r\n  <text x=\"3299\" y=\"13566\"  class=\"fil6 fnt5\">KAVLING KOSONG</text>\r\n  <text x=\"3299\" y=\"13995\"  class=\"fil6 fnt5\">KAVLING BOOKING</text>\r\n  <text x=\"3299\" y=\"14425\"  class=\"fil6 fnt5\">KAVLING KREDIT</text>\r\n  <text x=\"3299\" y=\"14854\"  class=\"fil6 fnt5\">KAVLING CASH</text>\r\n  <rect class=\"fil0 str1\" x=\"2435\" y=\"13339\" width=\"471\" height=\"231\"/>\r\n  <rect class=\"fil8 str1\" x=\"2435\" y=\"13772\" width=\"471\" height=\"231\"/>\r\n  <rect class=\"fil9 str1\" x=\"2435\" y=\"14205\" width=\"471\" height=\"231\"/>\r\n  <rect class=\"fil10 str1\" x=\"2435\" y=\"14638\" width=\"471\" height=\"231\"/>\r\n  <g id=\"_2044864310688\">\r\n   <polygon class=\"fil5\" points=\"18513,10240 18328,8692 17590,8748 17744,10302 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 2130.28 477.338)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">C2</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864308416\">\r\n   <polygon class=\"fil5\" points=\"16774,8810 16031,8867 16186,10428 16927,10368 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 562.092 599.561)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">C3</text>\r\n   </g>\r\n  </g>\r\n  <g id=\"_2044864307008\">\r\n   <polygon class=\"fil5\" points=\"17555,8751 16809,8808 16962,10365 17709,10305 \"/>\r\n   <g transform=\"matrix(0.996195 -0.0871557 0.0871557 0.996195 1338.02 538.399)\">\r\n    <text x=\"14850\" y=\"10500\"  class=\"fil6 fnt1\">C4</text>\r\n   </g>\r\n  </g>\r\n </g>\r\n</svg>\r\n', 'mentaya_1', 0),
(2, 'Mentaya 2', 'Jl. Lokasi Kavling 2', '<!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\" \"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">\r\n<!-- Creator: CorelDRAW X8 -->\r\n<svg xmlns=\"http://www.w3.org/2000/svg\" xml:space=\"preserve\" width=\"297mm\" height=\"210mm\" version=\"1.1\" style=\"shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd\"\r\nviewBox=\"0 0 29700 21000\"\r\n xmlns:xlink=\"http://www.w3.org/1999/xlink\">\r\n <defs>\r\n  <style type=\"text/css\">\r\n   <![CDATA[\r\n    .str1 {stroke:#332C2B;stroke-width:35.28}\r\n    .str0 {stroke:#DCDDDD;stroke-width:20}\r\n    .fil7 {fill:none}\r\n    .fil5 {fill:#FEFEFE}\r\n    .fil4 {fill:#332C2B}\r\n    .fil8 {fill:#332C2B}\r\n    .fil9 {fill:#FFF000}\r\n    .fil10 {fill:#F08519}\r\n    .fil11 {fill:#00A2E9}\r\n    .fil6 {fill:#EEEEEF;fill-rule:nonzero}\r\n    .fil0 {fill:#332C2B;fill-rule:nonzero}\r\n    .fil3 {fill:#FFF000;fill-rule:nonzero}\r\n    .fil2 {fill:#D2CDE6;fill-rule:nonzero}\r\n    .fil1 {fill:#009B4C;fill-rule:nonzero}\r\n    .fnt1 {font-weight:bold;font-size:233.62px;font-family:\'Arial\'}\r\n    .fnt0 {font-weight:bold;font-size:263.9px;font-family:\'Arial\'}\r\n    .fnt7 {font-weight:bold;font-size:279.01px;font-family:\'Arial\'}\r\n    .fnt6 {font-weight:bold;font-size:281.69px;font-family:\'Roboto\'}\r\n    .fnt5 {font-weight:bold;font-size:306.04px;font-family:\'Roboto\'}\r\n    .fnt2 {font-weight:bold;font-size:310.5px;font-family:\'Roboto\'}\r\n    .fnt4 {font-weight:bold;font-size:331.97px;font-family:\'Roboto\'}\r\n    .fnt3 {font-weight:bold;font-size:357.63px;font-family:\'Roboto\'}\r\n   ]]>\r\n  </style>\r\n   <clipPath id=\"id0\">\r\n    <path d=\"M2758 2004l2554 0c132,0 241,109 241,241l0 2737c0,133 -109,241 -241,241l-2554 0c-132,0 -241,-108 -241,-241l0 -2737c0,-132 109,-241 241,-241z\"/>\r\n   </clipPath>\r\n    <clipPath id=\"id1\">\r\n     <path d=\"M2684 2162l2698 0 0 2896 -2698 0 0 -2896z\"/>\r\n    </clipPath>\r\n    <clipPath id=\"id2\">\r\n     <path d=\"M2758 2004l2554 0c132,0 241,109 241,241l0 2737c0,133 -109,241 -241,241l-2554 0c-132,0 -241,-108 -241,-241l0 -2737c0,-132 109,-241 241,-241z\"/>\r\n    </clipPath>\r\n </defs>\r\n <g id=\"Layer_x0020_1\">\r\n  <metadata id=\"CorelCorpID_0Corel-Layer\"/>\r\n  <path class=\"fil0\" d=\"M16923 5087l459 3229 -8481 667 155 375 5611 -433c127,1134 253,2268 380,3402l-4452 745 166 401 4331 -752 661 5897 119 148 3807 -2838 -855 -7281 1995 -159 -52 -466 -2602 233c-141,-1056 -282,-2113 -424,-3170l2698 -12 -52 -475 -2732 -17c-135,-986 -271,-1972 -407,-2959 1027,-11 2055,-23 3082,-35 493,4372 988,8744 1479,13117 -1987,1500 -3973,2999 -5961,4497l-3307 -4134 -1304 335c-943,-2249 -1885,-4499 -2827,-6749l2922 -246 -650 -3283 2795 -773 -458 -2763c1137,5 2273,11 3410,17 142,997 283,1993 424,2990l-3121 13 -2670 750 88 481 2887 -782 2869 15 0 17 17 -2zm-755 12919l-1049 -9104c1080,-83 2160,-165 3240,-248 281,2353 562,4705 842,7058 -1009,775 -2020,1550 -3030,2325l-3 -31z\"/>\r\n  <path class=\"fil1\" d=\"M16758 1590l181 0c315,2219 628,4438 943,6657l-242 0c-300,-2219 -601,-4438 -902,-6657l20 0z\"/>\r\n  <path class=\"fil2\" d=\"M17110 6648l-33 -230 -2880 28 -2821 817c-118,-643 -237,-1286 -355,-1930l2689 -755 -205 -1359 3117 -1 -32 -224 -3105 4 -199 -1374 -226 -1 456 2753 -2793 773 651 3290 -2913 245 2797 6676 1296 -332 3300 4124 5918 -4464 -1473 -13065 -218 2 148 1375 -2757 -6 33 238 2765 -17c119,1077 237,2154 356,3231l-2667 6 27 196 2660 0c301,2644 601,5288 899,7933 -1892,1412 -3786,2823 -5679,4233 -1012,-1259 -2023,-2518 -3033,-3778l2422 -551 -26 -225 -3816 878c-856,-2062 -1709,-4124 -2563,-6186l2780 -219 -227 -1264c943,-274 1886,-548 2829,-821l2878 0z\"/>\r\n  <polygon class=\"fil2\" points=\"15342,10531 15366,10739 16823,10624 17547,16937 17761,16773 17052,10608 18543,10493 18517,10275 \"/>\r\n  <polygon class=\"fil2\" points=\"9717,10954 9811,11182 14840,10791 14815,10567 12851,10716 12850,10700 12847,10701 12546,9124 12340,9140 12653,10731 \"/>\r\n  <polygon class=\"fil1\" points=\"16010,16330 16199,17971 17514,16962 17429,16217 \"/>\r\n  <polygon class=\"fil3\" points=\"14935,17599 15712,18567 15594,17513 \"/>\r\n  <text x=\"15081\" y=\"17809\"  class=\"fil4 fnt0\">TPA</text>\r\n  <text x=\"16117\" y=\"16875\"  class=\"fil5 fnt1\">MUSHOLLA</text>\r\n\r\n\r\n\r\n  <?php \r\n  $peta = $this->db->query(\"SELECT * FROM kavling_peta\")->result();\r\n\r\n  foreach ($peta as $pt) {\r\n    if($pt->status == \'0\'){\r\n      $warna = \'#ffffff\';\r\n    }elseif($pt->status == \'1\'){\r\n      $warna = \'#FFF693\';\r\n    }elseif($pt->status == \'2\'){\r\n      $warna = \'#3DBEF0\';\r\n    }elseif($pt->status == \'3\'){\r\n      $warna = \'#F08519\';\r\n    }\r\n\r\n    if($pt->jenis_map == \'polygon\'){\r\n        echo \'<a href=\"#bawah\" onclick=\"add(\'.$pt->id_kavling.\')\">\r\n          <g id=\"_2044867948768\">\r\n           <polygon class=\"fil6\" points=\"\'.$pt->map.\'\" style=\"fill:\'.$warna.\'\"/>\r\n           <g transform=\"\'.$pt->matrik.\'\">\r\n            <text x=\"14850\" y=\"10500\"  class=\"fil4 fnt2\">\'.$pt->kode_kavling.\'</text>\r\n           </g>\r\n          </g>\r\n      </a>\';\r\n    }\r\n\r\n    if($pt->jenis_map == \'path\'){\r\n    echo \'<a href=\"#bawah\" onclick=\"add(\'.$pt->id_kavling.\')\">\r\n    <g id=\"_2368771775280\">\r\n    <path class=\"fil4\" d=\"\'.$pt->map.\'\" style=\"fill:\'.$warna.\'\"/>\r\n    <g transform=\"\'.$pt->matrik.\'\">\r\n     <text x=\"8765\" y=\"12246\"  class=\"fil5 fnt0\">\'.$pt->kode_kavling.\'</text>\r\n    </g>\r\n   </g>\r\n   </a>\';\r\n    }\r\n\r\n\r\n  //    if($pt->jenis_map == \'path\'){\r\n  //     echo \'<a href=\"#bawah\" onclick=\"add(\'.$pt->id_kavling.\')\">\r\n  //     <g id=\"_2019809037472\">\r\n  //  <path class=\"fil3\" d=\"\'.$pt->map.\'\" style=\"fill:\'.$warna.\'\"/>\r\n  //  <g transform=\"\'.$pt->matrik.\'\">\r\n  //   <text x=\"9903\" y=\"7409\"  class=\"fil4 fnt1\">\'.$pt->kode_kavling.\'</text>\r\n  //  </g>\r\n  // </g>\r\n\r\n  //    </a> \r\n  //     \';\r\n  //   }\r\n  } \r\n  \r\n  \r\n  //Hitung statistik\r\n  $stt_1 = $this->db->query(\"SELECT * FROM kavling_peta WHERE status=\'1\'\")->num_rows();\r\n  $stt_2 = $this->db->query(\"SELECT * FROM kavling_peta WHERE status=\'2\'\")->num_rows();\r\n  $stt_3 = $this->db->query(\"SELECT * FROM kavling_peta WHERE status=\'3\'\")->num_rows();\r\n  $stt_0 = $this->db->query(\"SELECT * FROM kavling_peta\")->num_rows();\r\n\r\n  $kosong = $stt_0 - ($stt_1 + $stt_2 + $stt_3);\r\n  ?>\r\n  \r\n\r\n  \r\n  <rect class=\"fil7 str0\" x=\"1170\" y=\"699\" width=\"22520\" height=\"19254\"/>\r\n  <path class=\"fil8\" d=\"M2758 2004l2554 0c132,0 241,109 241,241l0 2737c0,133 -109,241 -241,241l-2554 0c-132,0 -241,-108 -241,-241l0 -2737c0,-132 109,-241 241,-241z\"/>\r\n  <g style=\"clip-path:url(#id0)\">\r\n   <g id=\"_2044864317664\">\r\n   </g>\r\n   <g style=\"clip-path:url(#id1)\">\r\n    <image id=\"photo_2022-11-22_11-45-22.jpg\" x=\"2684\" y=\"2162\" width=\"2697\" height=\"2896\" xlink:href=\"./assets/JADI_ImgID1.png\"/>\r\n   </g>\r\n   <g style=\"clip-path:url(#id2)\">\r\n   </g>\r\n  </g>\r\n  <path class=\"fil7\" d=\"M2758 2004l2554 0c132,0 241,109 241,241l0 2737c0,133 -109,241 -241,241l-2554 0c-132,0 -241,-108 -241,-241l0 -2737c0,-132 109,-241 241,-241z\"/>\r\n  <text x=\"3299\" y=\"13566\"  class=\"fil4 fnt7\">KAVLING KOSONG</text>\r\n  <text x=\"3299\" y=\"13995\"  class=\"fil4 fnt7\">KAVLING BOOKING</text>\r\n  <text x=\"3299\" y=\"14425\"  class=\"fil4 fnt7\">KAVLING KREDIT</text>\r\n  <text x=\"3299\" y=\"14854\"  class=\"fil4 fnt7\">KAVLING CASH</text>\r\n  <rect class=\"fil7 str1\" x=\"2435\" y=\"13339\" width=\"471\" height=\"231\"/>\r\n  <rect class=\"fil9 str1\" x=\"2435\" y=\"13772\" width=\"471\" height=\"231\"/>\r\n  <rect class=\"fil10 str1\" x=\"2435\" y=\"14205\" width=\"471\" height=\"231\"/>\r\n  <rect class=\"fil11 str1\" x=\"2435\" y=\"14638\" width=\"471\" height=\"231\"/>\r\n </g>\r\n</svg>\r\n\r\n  \r\n\r\n  \r\n  ', 'mentaya_2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `no_pembayaran` varchar(40) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_kavling` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `pembayaran_ke` int(5) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `jenis_pembelian` int(1) NOT NULL,
  `id_bank` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tanggal` date NOT NULL,
  `transaksi_jenis` enum('Pengeluaran','Pemasukan') NOT NULL,
  `transaksi_kategori` int(11) NOT NULL,
  `transaksi_barang` int(11) NOT NULL,
  `transaksi_nominal` int(11) NOT NULL,
  `transaksi_keterangan` text NOT NULL,
  `transaksi_bank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_booking`
--

CREATE TABLE `transaksi_booking` (
  `id_pembelian` int(11) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `tgl_expired` date NOT NULL,
  `jenis_pembelian` varchar(25) NOT NULL,
  `id_kavling` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `nominal_booking` int(11) NOT NULL,
  `keterangan_booking` varchar(200) NOT NULL,
  `stt_booking` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_kavling`
--

CREATE TABLE `transaksi_kavling` (
  `id_pembelian` int(11) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `tgl_akad` date NOT NULL,
  `tgl_mulai_cicilan` date NOT NULL,
  `no_transaksi` varchar(35) NOT NULL,
  `jenis_pembelian` varchar(25) NOT NULL,
  `id_kavling` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_marketing` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah_dp` int(11) NOT NULL,
  `cicilan_per_bulan` int(11) NOT NULL,
  `lama_cicilan` int(11) NOT NULL,
  `booking_rp` int(11) NOT NULL,
  `bayar_cash` int(11) NOT NULL,
  `fee_marketing` int(11) NOT NULL,
  `fee_notaris` int(11) NOT NULL,
  `stt_transaksi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` enum('AKTIF','BLOKIR') NOT NULL DEFAULT 'AKTIF',
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `id_join` int(11) DEFAULT NULL,
  `is_trash` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `surname`, `username`, `password`, `email`, `status`, `is_admin`, `id_join`, `is_trash`) VALUES
(1, 'Heru Hidayat', 'master', '$2y$10$LpLDl4dZjUyQKgXSqywF.OX3p0OYQL1IT1wMhIM66EPJGA854pmN.', 'tes@gmail.com', 'AKTIF', 1, 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `kavling_peta`
--
ALTER TABLE `kavling_peta`
  ADD PRIMARY KEY (`id_kavling`);

--
-- Indexes for table `lokasi_kavling`
--
ALTER TABLE `lokasi_kavling`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `transaksi_booking`
--
ALTER TABLE `transaksi_booking`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `transaksi_kavling`
--
ALTER TABLE `transaksi_kavling`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kavling_peta`
--
ALTER TABLE `kavling_peta`
  MODIFY `id_kavling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `lokasi_kavling`
--
ALTER TABLE `lokasi_kavling`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi_booking`
--
ALTER TABLE `transaksi_booking`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi_kavling`
--
ALTER TABLE `transaksi_kavling`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
