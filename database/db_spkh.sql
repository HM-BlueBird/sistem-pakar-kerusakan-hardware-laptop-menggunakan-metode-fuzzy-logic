/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.28-MariaDB : Database - skripsikelar
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`skripsikelar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `skripsikelar`;

/*Table structure for table `input_kerusakan_teknisi` */

DROP TABLE IF EXISTS `input_kerusakan_teknisi`;

CREATE TABLE `input_kerusakan_teknisi` (
  `tahun` varchar(20) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `merk_laptop` varchar(30) NOT NULL,
  `nik_pemilik` varchar(20) NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL,
  `nik_teknisi` varchar(20) NOT NULL,
  `nama_teknisi` varchar(100) NOT NULL,
  `kd_kerusakan` varchar(20) NOT NULL,
  `nama_kerusakan` varchar(100) NOT NULL,
  `tgl_perbaikan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `input_kerusakan_teknisi` */

insert  into `input_kerusakan_teknisi`(`tahun`,`bulan`,`merk_laptop`,`nik_pemilik`,`nama_pemilik`,`nik_teknisi`,`nama_teknisi`,`kd_kerusakan`,`nama_kerusakan`,`tgl_perbaikan`) values 
('2023','Januari','ACER','0010','John','0012','MUHAMAD HARIS MAULANA','e2','stop 0xc000e','2023-08-01');

/*Table structure for table `input_pembayaran` */

DROP TABLE IF EXISTS `input_pembayaran`;

CREATE TABLE `input_pembayaran` (
  `nik_pemilik` varchar(20) NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL,
  `merk_laptop` varchar(20) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `kd_bayar` varchar(20) NOT NULL,
  `jenis_bayar` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `input_pembayaran` */

insert  into `input_pembayaran`(`nik_pemilik`,`nama_pemilik`,`merk_laptop`,`tgl_bayar`,`kd_bayar`,`jenis_bayar`,`nominal`,`jumlah_bayar`,`keterangan`) values 
('0011','ais','Acer','2023-08-01','kdjs','Biaya Jasa',50000,50000,'Lunas'),
('0011','ais','Acer','2023-08-01','eb','er',23333,23333,'Lunas');

/*Table structure for table `master_data_kerusakan` */

DROP TABLE IF EXISTS `master_data_kerusakan`;

CREATE TABLE `master_data_kerusakan` (
  `nik_pemilik` varchar(20) NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL,
  `merk_laptop` varchar(50) NOT NULL,
  `type_laptop` varchar(50) NOT NULL,
  `tgl_masuk_perbaikan` date NOT NULL,
  `jam_kerja` varchar(255) NOT NULL,
  `hasil_cek` varchar(255) NOT NULL,
  `alasan` varchar(255) NOT NULL,
  `no_telp_pemilik` varchar(15) NOT NULL,
  PRIMARY KEY (`nik_pemilik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `master_data_kerusakan` */

insert  into `master_data_kerusakan`(`nik_pemilik`,`nama_pemilik`,`merk_laptop`,`type_laptop`,`tgl_masuk_perbaikan`,`jam_kerja`,`hasil_cek`,`alasan`,`no_telp_pemilik`) values 
('0010','John','Acer','4739','2023-08-01','07:00 - 08:30','Perlu Pengecekan Lebih Lanjut','Harus Dicek lebih lanjut karna ada kendala saat percobaan masuk bios','08123456789'),
('0012','ACIL','Acer','4739','2023-08-02','07:00 - 08:30','Perlu Pengecekan Lebih Lanjut','DI CEK LEBIH LANJUT KARNA ADA BEBERAPA MASALAH DI HARDWARE','1234567890');

/*Table structure for table `master_data_kode_kerusakan` */

DROP TABLE IF EXISTS `master_data_kode_kerusakan`;

CREATE TABLE `master_data_kode_kerusakan` (
  `kd_kerusakan` varchar(20) NOT NULL,
  `nama_kerusakan` varchar(100) NOT NULL,
  `definisi` varchar(255) DEFAULT NULL,
  `gejala_penyebab` text DEFAULT NULL,
  `cara_mengatasi` text DEFAULT NULL,
  `perawatan_pencegahan` text DEFAULT NULL,
  PRIMARY KEY (`kd_kerusakan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `master_data_kode_kerusakan` */

insert  into `master_data_kode_kerusakan`(`kd_kerusakan`,`nama_kerusakan`,`definisi`,`gejala_penyebab`,`cara_mengatasi`,`perawatan_pencegahan`) values 
('test','test123','new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())','new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())','new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())','new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())new SimpleDateFormat(\"dd MMMM yyyy\", new java.util.Locale(\"id\")).format(new Date())');

/*Table structure for table `master_data_teknisi` */

DROP TABLE IF EXISTS `master_data_teknisi`;

CREATE TABLE `master_data_teknisi` (
  `nik_teknisi` varchar(20) NOT NULL,
  `nama_teknisi` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `bidang` varchar(20) NOT NULL,
  `jkel` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `notek` varchar(15) NOT NULL,
  PRIMARY KEY (`nik_teknisi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `master_data_teknisi` */

insert  into `master_data_teknisi`(`nik_teknisi`,`nama_teknisi`,`tgl_lahir`,`bidang`,`jkel`,`agama`,`alamat`,`notek`) values 
('0010','MUHAMAD HARIS MAULANA','2000-11-17','SOFTWARE','Laki-laki','Islam','JL. RAYA SYECKH NAWAWI','085156082308');

/*Table structure for table `master_pembayaran` */

DROP TABLE IF EXISTS `master_pembayaran`;

CREATE TABLE `master_pembayaran` (
  `kd_bayar` varchar(10) NOT NULL,
  `jenis_bayar` varchar(100) NOT NULL,
  `nominal` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `master_pembayaran` */

insert  into `master_pembayaran`(`kd_bayar`,`jenis_bayar`,`nominal`) values 
('KDJS','Biaya Jasa',50000),
('eb','er',23333);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
