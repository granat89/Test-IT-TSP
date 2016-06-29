-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Waktu pembuatan: 29. Juni 2016 jam 13:58
-- Versi Server: 5.0.51
-- Versi PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `support`
-- 

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `divisi`
-- 

CREATE TABLE `divisi` (
  `id_divisi` int(3) NOT NULL auto_increment,
  `divisi` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_divisi`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data untuk tabel `divisi`
-- 

INSERT INTO `divisi` VALUES (1, 'IT');
INSERT INTO `divisi` VALUES (2, 'Accounting');
INSERT INTO `divisi` VALUES (3, 'Exim');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `hardware`
-- 

CREATE TABLE `hardware` (
  `id_hardware` int(3) NOT NULL auto_increment,
  `hardware` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_hardware`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data untuk tabel `hardware`
-- 

INSERT INTO `hardware` VALUES (1, 'CPU');
INSERT INTO `hardware` VALUES (2, 'Monitor LCD');
INSERT INTO `hardware` VALUES (3, 'Printer');
INSERT INTO `hardware` VALUES (4, 'Laptop');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `jkerusakan`
-- 

CREATE TABLE `jkerusakan` (
  `id_jkerusakan` int(3) NOT NULL auto_increment,
  `id_hardware` int(3) NOT NULL,
  `jkerusakan` text NOT NULL,
  PRIMARY KEY  (`id_jkerusakan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data untuk tabel `jkerusakan`
-- 

INSERT INTO `jkerusakan` VALUES (1, 1, 'CPU tidak bisa menyala');
INSERT INTO `jkerusakan` VALUES (2, 1, 'CPU muncul bau gosong');
INSERT INTO `jkerusakan` VALUES (3, 1, 'CPU bunyi beep panjang');
INSERT INTO `jkerusakan` VALUES (4, 2, 'LCD Monitor Mati');
INSERT INTO `jkerusakan` VALUES (5, 3, 'Printer Bunyi Kasar');
INSERT INTO `jkerusakan` VALUES (6, 3, 'Printer Cetak Tidak Jelas');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `kerusakan`
-- 

CREATE TABLE `kerusakan` (
  `id_kerusakan` int(3) NOT NULL auto_increment,
  `id_divisi` int(3) NOT NULL,
  `id_hardware` int(3) NOT NULL,
  `id_jkerusakan` int(3) NOT NULL,
  `id_support` int(3) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY  (`id_kerusakan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data untuk tabel `kerusakan`
-- 

INSERT INTO `kerusakan` VALUES (2, 2, 1, 2, 3, '2016-06-29', '2016-06-29', 'Selesai', 'ganti power supply');
INSERT INTO `kerusakan` VALUES (3, 2, 3, 6, 2, '2016-06-29', '2016-06-29', 'Proses', '');
INSERT INTO `kerusakan` VALUES (4, 3, 3, 5, 1, '2016-06-29', '0000-00-00', 'Antrian', '');
INSERT INTO `kerusakan` VALUES (5, 3, 1, 3, 1, '2016-06-29', '0000-00-00', 'Antrian', '');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `support`
-- 

CREATE TABLE `support` (
  `id_support` int(3) NOT NULL auto_increment,
  `support` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_support`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data untuk tabel `support`
-- 

INSERT INTO `support` VALUES (1, 'Erwin Setyawan');
INSERT INTO `support` VALUES (2, 'Citra Alam Prayogi');
INSERT INTO `support` VALUES (3, 'Aditya Vichy Pramuditha');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `user`
-- 

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL auto_increment,
  `id_divisi` int(3) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `luser` varchar(30) NOT NULL,
  PRIMARY KEY  (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data untuk tabel `user`
-- 

INSERT INTO `user` VALUES (1, 1, 'admin', 'support', 'Admin');
INSERT INTO `user` VALUES (2, 1, 'manager', 'support', 'Manager');
INSERT INTO `user` VALUES (3, 2, 'user1', '123', 'User');
INSERT INTO `user` VALUES (4, 3, 'user2', '123', 'User');
INSERT INTO `user` VALUES (5, 1, 'user3', '123', 'User');
