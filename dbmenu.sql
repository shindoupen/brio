/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.53-0ubuntu0.14.04.1 : Database - dbmenu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `r_menu` */

DROP TABLE IF EXISTS `r_menu`;

CREATE TABLE `r_menu` (
  `id_menu` int(2) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(100) DEFAULT NULL,
  `urutan` int(2) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `newclass` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `r_menu` */

insert  into `r_menu`(`id_menu`,`nama_menu`,`urutan`,`icon`,`newclass`) values (1,'Multilevel Menu',1,'<i class=\"fa fa-dashboard\"></i','first_class');
insert  into `r_menu`(`id_menu`,`nama_menu`,`urutan`,`icon`,`newclass`) values (2,'Penjualan',2,'<i class=\"fa fa-files-o\"></i','second_class');
insert  into `r_menu`(`id_menu`,`nama_menu`,`urutan`,`icon`,`newclass`) values (3,'Pembelian',3,'<i class=\"fa fa-th\"></i','third_class');
insert  into `r_menu`(`id_menu`,`nama_menu`,`urutan`,`icon`,`newclass`) values (4,'Laporan',6,'<i class=\"fa fa-dashboard\"></i',NULL);
insert  into `r_menu`(`id_menu`,`nama_menu`,`urutan`,`icon`,`newclass`) values (5,'Utility',7,'<i class=\"fa fa-pie-chart\"></i',NULL);
insert  into `r_menu`(`id_menu`,`nama_menu`,`urutan`,`icon`,`newclass`) values (6,'Mutasi Barang',4,'<i class=\"fa fa-laptop\"></i',NULL);
insert  into `r_menu`(`id_menu`,`nama_menu`,`urutan`,`icon`,`newclass`) values (7,'Biaya',5,'<i class=\"fa fa-envelope\"></i',NULL);

/*Table structure for table `r_menu_sub` */

DROP TABLE IF EXISTS `r_menu_sub`;

CREATE TABLE `r_menu_sub` (
  `id_sub_menu` int(3) NOT NULL AUTO_INCREMENT,
  `nama_sub_menu` varchar(100) DEFAULT NULL,
  `id_menu` int(2) DEFAULT NULL,
  `urutan_sub_menu` int(2) DEFAULT NULL,
  `hak_akses` varchar(30) DEFAULT '4',
  `url` varchar(150) DEFAULT '#',
  `content_before` varchar(200) DEFAULT NULL,
  `content_after` varchar(200) DEFAULT NULL,
  `icon` varchar(150) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `target` enum('_self','_blank') DEFAULT '_self',
  PRIMARY KEY (`id_sub_menu`),
  KEY `urutan_sub_menu_index` (`id_menu`,`urutan_sub_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Data for the table `r_menu_sub` */

insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (1,'Jenis Barang',1,3,'2','','<li class=\"dropdown-header\">Referensi Produk</li>',NULL,'<i class=\"fa  fa-arrow-right\"></i>','Master Jenis Barang','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (2,'Merk',1,4,'2','',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Master Merk Barang','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (5,'Pelanggan',2,1,'2','aplikasi/penjualan/v_pelanggan.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Master Pelanggan','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (6,'Penjualan',2,2,'2','aplikasi/penjualan/v_penjualan.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Transaksi Penjualan (POS)','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (7,'Retur Penjualan',2,3,'2','aplikasi/penjualan/v_retur_penjualan.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Transaksi Retur Penjualan','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (8,'Supplier',3,1,'4','aplikasi/pembelian/v_master_supplier.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Master Supplier','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (9,'Pembelian',3,2,'4','aplikasi/pembelian/v_pembelian.php',NULL,'','<i class=\"fa  fa-arrow-right\"></i>','Transaksi Pembelian','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (10,'Retur Pembelian',3,3,'4','aplikasi/pembelian/v_retur_pembelian.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Transaksi Retur Pembelian','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (11,'Cetak Daftar Harga Barang',4,4,'2','aplikasi/laporan/l_daftar_harga_barang.php','',NULL,'<i class=\"fa  fa-arrow-right\"></i>','Laporan Daftar Harga Barang','_blank');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (12,'Cetak Daftar Harga Jasa',4,5,'2','aplikasi/laporan/l_daftar_harga_jasa.php','',NULL,'<i class=\"fa  fa-arrow-right\"></i>','Laporan Daftar Harga Jasa','_blank');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (13,'L. Pembelian',4,8,'4','aplikasi/laporan/v_laporan_pembelian.php','',NULL,'<i class=\"fa  fa-arrow-right\"></i>','Laporan Pembelian','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (14,'L. Laba Rugi',4,14,'4','aplikasi/laporan/v_laporan_laba_rugi.php','<li class=\"divider\"></li>',NULL,'<i class=\"fa  fa-arrow-right\"></i>','Laporan Laba Rugi','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (15,'Master Pengguna Aplikasi',5,1,'4','aplikasi/utility/v_mstuser.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Master Pengguna Aplikasi','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (16,'Referensi Sistem',5,2,'4','aplikasi/utility/v_refsystem.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Referensi Sistem','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (17,'Satuan',1,5,'2','aplikasi/master/v_satuan.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Master Satuan','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (18,'Pelunasan Jual Tempo',2,4,'2','aplikasi/penjualan/v_lunas_jual_tempo.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Form Pelunasan Penjualan Secara Tempo','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (20,'Pelunasan Beli Tempo',3,4,'4','aplikasi/pembelian/v_lunas_beli_tempo.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Form Pelunasan Pembelian Tempo','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (21,'Penyesuaian Stok',6,1,'2','aplikasi/mutasi/v_mutasi.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Menu Penyesuaian Stok (Adjustment Stok)','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (22,'Kartu Stok',6,2,'2','aplikasi/mutasi/v_kartu_stok.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Lihat Kartu Stok','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (23,'Cetak Mutasi Stok Barang',6,3,'2','aplikasi/mutasi/l_laporan_mutasi_stok.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Laporan Mutasi Stok Barang','_blank');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (24,'Cetak Barang Habis',6,4,'2','aplikasi/mutasi/l_barang_abis.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Laporan Barang Habis','_blank');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (25,'Cetak Daftar Harga Jual dan Beli',4,3,'4','aplikasi/laporan/l_daftar_seluruh_harga.php',NULL,'<li class=\"divider\"></li>','<i class=\"fa  fa-arrow-right\"></i>','Laporan Daftar Harga Jual dan Beli','_blank');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (26,'L. Penjualan',4,7,'2','aplikasi/laporan/v_laporan_penjualan.php','<li class=\"divider\"></li>',NULL,'<i class=\"fa  fa-arrow-right\"></i>','Laporan Penjualan','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (27,'Cetak Daftar Supplier',4,1,'4','aplikasi/laporan/l_daftar_supplier.php',NULL,'<li class=\"divider\"></li>','<i class=\"fa  fa-arrow-right\"></i>','Laporan Daftar Supplier','_blank');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (28,'Cetak Daftar Pelanggan',4,2,'2','aplikasi/laporan/l_daftar_pelanggan.php',NULL,'<li class=\"divider\"></li>','<i class=\"fa  fa-arrow-right\"></i>','Laporan Daftar Pelanggan','_blank');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (30,'L. Retur Penjualan',4,9,'2','aplikasi/laporan/v_laporan_retur_penjualan.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Laporan Retur Penjualan','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (31,'L. Retur Pembelian',4,10,'4','aplikasi/laporan/v_laporan_retur_pembelian.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Laporan Retur Pembelian','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (32,'Penjualan Grosir',2,5,'2','aplikasi/penjualan/v_penjualan_grosir.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Transaksi Penjualan Grosir','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (33,'Backup Database',5,3,'4','aplikasi/utility/v_backup.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Menu Backup Database','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (34,'Closing Stok',6,5,'4','aplikasi/mutasi/v_close_stok.php','<li class=\"divider\"></li>',NULL,'<i class=\"fa  fa-arrow-right\"></i>','Menu Penutupan Stok (Closing Stok)','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (35,'Ubah Margin Manual',5,4,'4','aplikasi/utility/v_ubah_margin.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Menu Ubah Laba Rugi secara Manual Pada Transaksi Penjualan','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (36,'Biaya Harian',7,1,'2','aplikasi/biaya/v_biaya.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Untuk mencatat pengeluaran harian','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (37,'Setoran',7,2,'2','aplikasi/biaya/v_setoran.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Untuk mencatat setoran ','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (38,'Upah Karyawan',7,3,'4','aplikasi/biaya/v_upah.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Untuk mencatat pengeluaran gaji karyawan','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (39,'L. Biaya/Pengeluaran Harian',4,11,'2','aplikasi/laporan/v_laporan_biaya.php','<li class=\"divider\"></li>',NULL,'<i class=\"fa  fa-arrow-right\"></i>','Laporan Biaya / pengeluaran harian','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (41,'L. Setoran',4,12,'2','aplikasi/laporan/v_laporan_setoran.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Laporan Setoran','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (42,'L. Upah Karyawan',4,13,'4','aplikasi/laporan/v_laporan_upah.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Laporan upah karyawan','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (43,'L. Transaksi Harian',4,6,'2','aplikasi/laporan/v_transaksi_harian.php','<li class=\"divider\"></li>','','<i class=\"fa  fa-arrow-right\"></i>','Laporan transaksi harian','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (44,'Restore Master Barang',5,5,'4','aplikasi/utility/v_restore_m_barang.php','<li class=\"divider\"></li>',NULL,'<i class=\"fa  fa-arrow-right\"></i>','Restoring Master Barang yang dihapus','_self');
insert  into `r_menu_sub`(`id_sub_menu`,`nama_sub_menu`,`id_menu`,`urutan_sub_menu`,`hak_akses`,`url`,`content_before`,`content_after`,`icon`,`title`,`target`) values (45,'Restore Master Jasa',5,6,'4','aplikasi/utility/v_restore_m_jasa.php',NULL,NULL,'<i class=\"fa  fa-arrow-right\"></i>','Restoring Master Jasa yang dihapus','_self');

/*Table structure for table `r_menu_sub_level_2` */

DROP TABLE IF EXISTS `r_menu_sub_level_2`;

CREATE TABLE `r_menu_sub_level_2` (
  `id_sub_menu_level_2` int(3) NOT NULL AUTO_INCREMENT,
  `nama_sub_menu_level_2` varchar(100) DEFAULT NULL,
  `id_sub_menu` int(2) DEFAULT NULL,
  `urutan_sub_menu` int(2) DEFAULT NULL,
  `url` varchar(150) DEFAULT '#',
  `icon` varchar(150) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `target` enum('_self','_blank') DEFAULT '_self',
  PRIMARY KEY (`id_sub_menu_level_2`),
  KEY `urutan_sub_menu_index` (`id_sub_menu`,`urutan_sub_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `r_menu_sub_level_2` */

insert  into `r_menu_sub_level_2`(`id_sub_menu_level_2`,`nama_sub_menu_level_2`,`id_sub_menu`,`urutan_sub_menu`,`url`,`icon`,`title`,`target`) values (1,'multilevel 1',1,1,'aplikasi/master/v_jenis_produk.php','<i class=\"fa  fa-circle\"></i>','this is multilevel','_self');
insert  into `r_menu_sub_level_2`(`id_sub_menu_level_2`,`nama_sub_menu_level_2`,`id_sub_menu`,`urutan_sub_menu`,`url`,`icon`,`title`,`target`) values (2,'multilevel 2',1,2,'aplikasi/master/v_merk.php','<i class=\"fa  fa-circle\"></i>','this is multilevel','_self');
insert  into `r_menu_sub_level_2`(`id_sub_menu_level_2`,`nama_sub_menu_level_2`,`id_sub_menu`,`urutan_sub_menu`,`url`,`icon`,`title`,`target`) values (3,'multilevel 3',1,3,'aplikasi/master/v_jasa.php','<i class=\"fa  fa-circle\"></i>','this is multilevel','_self');
insert  into `r_menu_sub_level_2`(`id_sub_menu_level_2`,`nama_sub_menu_level_2`,`id_sub_menu`,`urutan_sub_menu`,`url`,`icon`,`title`,`target`) values (4,'multilevel 4',1,4,'aplikasi/master/v_barang.php','<i class=\"fa  fa-circle\"></i>','this is multilevel','_self');
insert  into `r_menu_sub_level_2`(`id_sub_menu_level_2`,`nama_sub_menu_level_2`,`id_sub_menu`,`urutan_sub_menu`,`url`,`icon`,`title`,`target`) values (5,'multilevel 5',2,2,'aplikasi/penjualan/v_pelanggan.php','<i class=\"fa  fa-circle\"></i>','this is multilevel','_self');
insert  into `r_menu_sub_level_2`(`id_sub_menu_level_2`,`nama_sub_menu_level_2`,`id_sub_menu`,`urutan_sub_menu`,`url`,`icon`,`title`,`target`) values (6,'multilevel 6',2,1,'aplikasi/penjualan/v_penjualan.php','<i class=\"fa  fa-circle\"></i>','this is multilevel','_self');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
