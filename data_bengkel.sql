-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: db_sig
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori` (
  `id_kategori` varchar(5) NOT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES ('AT','Alat Tangan'),('PE','Perangkat Elektronika');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_instruktur` int(5) DEFAULT NULL,
  `level` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3',1,1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lokasi`
--

DROP TABLE IF EXISTS `lokasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lokasi` (
  `id_lokasi` varchar(30) NOT NULL,
  `nama_lokasi` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_lokasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokasi`
--

LOCK TABLES `lokasi` WRITE;
/*!40000 ALTER TABLE `lokasi` DISABLE KEYS */;
INSERT INTO `lokasi` VALUES ('NB1','Ruang Network Basic 1'),('NB2','Ruang Network Basic 2'),('TS1','Ruang Technical Support 1'),('TS2','Ruang Technical Support 2');
/*!40000 ALTER TABLE `lokasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mstAlat`
--

DROP TABLE IF EXISTS `mstAlat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mstAlat` (
  `kode_alat` varchar(20) NOT NULL,
  `nama_alat` varchar(50) DEFAULT NULL,
  `merk` varchar(20) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `jml_alat` int(4) DEFAULT NULL,
  `satuan` varchar(10) DEFAULT NULL,
  `kelengkapan` text,
  `kondisi_alat` enum('Bagus','Rusak') DEFAULT NULL,
  `foto` text,
  PRIMARY KEY (`kode_alat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mstAlat`
--

LOCK TABLES `mstAlat` WRITE;
/*!40000 ALTER TABLE `mstAlat` DISABLE KEYS */;
INSERT INTO `mstAlat` VALUES ('TVED15/TKJ/NB1/IC01','IP Camera DLINK DCS-5222L','DLink','',16,'Unit','CD-Driver, Antena, Audio-Jack','Bagus','/foto.png'),('TVED15/TKJ/NB1/KS01','PC Dell Optiplex 7020 MT','Dell','',36,'Unit','Kabel Power, Mouse, Keyboard','Bagus','/foto.png'),('TVED15/TKJ/NB1/VP01','VOIP Phone Cisco 7945G','Cisco','',8,'Unit','Adaptor','Bagus','/foto.png'),('TVED15/TKJ/TS1/KS01','PC Dell Optiplex 7020 MT','Dell','',36,'Unit','Mouse, Keyboard','Bagus','/foto.png'),('TVED15/TKJ/TS1/KS02','PC Thin Client Fujitech CT-2500/MPX 3000','Fujitech','',8,'Unit','Kabel Power, Kabel VGA, Holder, CD-Driver','Bagus','/foto.png'),('TVED15/TKJ/TS1/MS01','Monitor Dell E2215H','Dell','',36,'Unit','Kabel VGA, Kabel DC','Bagus','/foto.png'),('TVED15/TKJ/TS1/PM01','Printer Brother MFC-9140CDN','Brother','',1,'Unit','CD-Driver, Kabel USB, Kabel Power','Bagus','/foto.png'),('TVED15/TKJ/TS1/PM02','Plotter HP Design Z5200','HP','',1,'Unit','Kabel Power, Kabel USB, CD-Driver','Bagus','/foto.png'),('TVED15/TKJ/TS1/PY01','Proyektor Epson EB-X21','Epson','',1,'Unit','Kabel VGA, Kabel Power','Bagus','/foto.png'),('TVED15/TKJ/TS1/UPS1','UPS Abrelex 1000L','Abrelex','',2,'Unit','Kabel Power','Bagus','/foto.png'),('TVED15/TKJ/TS2/BD01','Blue-Ray DVD Samsung SE-506','Samsung','',4,'Unit','Disk, Kabel USB, Kabel Power','Bagus','/foto.png'),('TVED15/TKJ/TS2/LS01','Laptop Lenovo E551','Lenovo','',40,'Unit','Tas, Charger, Mouse','Bagus','/foto.png'),('TVED15/TKJ/TS2/PG01','PC AIO Series Dell Optiplex 9030','Dell','',4,'Unit','Keyboard, Mouse','Bagus','/foto.png'),('TVED15/TKJ/TS2/PM01','Printer Brother MFC-9140CDN','Brother','',1,'Unit','CD-Driver, Kabel USB, Kabel Power','Bagus','/foto.png');
/*!40000 ALTER TABLE `mstAlat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mstBahan`
--

DROP TABLE IF EXISTS `mstBahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mstBahan` (
  `kode_bahan` varchar(10) NOT NULL,
  `nama_bahan` varchar(50) DEFAULT NULL,
  `merk` varchar(20) DEFAULT NULL,
  `jml_bahan` int(4) DEFAULT NULL,
  `satuan_bahan` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kode_bahan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mstBahan`
--

LOCK TABLES `mstBahan` WRITE;
/*!40000 ALTER TABLE `mstBahan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mstBahan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengguna` (
  `id_pengguna` varchar(9) DEFAULT NULL,
  `nama_pengguna` varchar(30) DEFAULT NULL,
  `kelas_pengguna` varchar(10) DEFAULT NULL,
  `phone_pengguna` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengguna`
--

LOCK TABLES `pengguna` WRITE;
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sumberPengadaan`
--

DROP TABLE IF EXISTS `sumberPengadaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sumberPengadaan` (
  `id_pengadaan` int(5) NOT NULL AUTO_INCREMENT,
  `nama_pengadaan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_pengadaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sumberPengadaan`
--

LOCK TABLES `sumberPengadaan` WRITE;
/*!40000 ALTER TABLE `sumberPengadaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `sumberPengadaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `id_supplier` int(5) NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(30) DEFAULT NULL,
  `alamat_supplier` text,
  `person_supplier` varchar(30) DEFAULT NULL,
  `phone_supplier` varchar(15) DEFAULT NULL,
  `email_supplier` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-06 22:37:04
