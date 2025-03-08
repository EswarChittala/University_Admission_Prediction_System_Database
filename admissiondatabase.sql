-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 26, 2023 at 02:39 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admissiondatabase`
--
CREATE DATABASE IF NOT EXISTS `admissiondatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `admissiondatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add dataset', 8, 'add_dataset'),
(30, 'Can change dataset', 8, 'change_dataset'),
(31, 'Can delete dataset', 8, 'delete_dataset'),
(32, 'Can view dataset', 8, 'view_dataset');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dataset_table`
--

DROP TABLE IF EXISTS `dataset_table`;
CREATE TABLE IF NOT EXISTS `dataset_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dataset_table`
--

INSERT INTO `dataset_table` (`id`, `title`, `file`, `uploaded_at`) VALUES
(2, 'admission_data.csv', 'datasets/admission_data_Aerol9m.csv', '2023-09-19 10:31:14.218376');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'userapp', 'user'),
(8, 'adminapp', 'dataset');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-19 09:35:24.146203'),
(2, 'auth', '0001_initial', '2023-09-19 09:35:25.125258'),
(3, 'admin', '0001_initial', '2023-09-19 09:35:25.370382'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-19 09:35:25.380761'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-19 09:35:25.392050'),
(6, 'adminapp', '0001_initial', '2023-09-19 09:35:25.403171'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-09-19 09:35:25.510881'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-09-19 09:35:25.566884'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-09-19 09:35:25.625562'),
(10, 'auth', '0004_alter_user_username_opts', '2023-09-19 09:35:25.637006'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-09-19 09:35:25.693468'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-09-19 09:35:25.696477'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-09-19 09:35:25.706379'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-09-19 09:35:25.757864'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-09-19 09:35:25.825388'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-09-19 09:35:25.883355'),
(17, 'auth', '0011_update_proxy_permissions', '2023-09-19 09:35:25.895492'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-09-19 09:35:25.956503'),
(19, 'sessions', '0001_initial', '2023-09-19 09:35:26.021784'),
(20, 'userapp', '0001_initial', '2023-09-19 09:35:26.033628');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('tev5pszivfiwv0eaxkju2dzdq5naaoil', 'eyJ1c2VyX2lkIjoxfQ:1ql3c6:OLJXvkfmf3S4pHoZgVihtE8-heOexQLwYKrmBXmwTnA', '2023-10-10 08:40:14.109189'),
('4vxd6gybctouyrdufg275hgahhn1cycn', 'eyJ1c2VyX2lkIjoxfQ:1qjfye:hS2pe38dJEz2mlkm8xipno8gQRpc2m-ZHIDwAaZ-hJE', '2023-10-06 13:13:48.594287'),
('wa2en7jqkg4qemtk65d8gl7aej3zve5c', '.eJxlzztPwzAUhuH_kjlC9vG5slEBHbgMgYGtKtQKHhpLdsSC-O84iCKlePHy6Oh7P7thPx3y8TaXWOchju2ruXSX7kLMYSAGz45RPPfdy3bzJ3YD_CABCi4AmGvP_Dl6eLpZmGMFF0RQTEz_sZNyyOSFUI3ZUD2euasTRCWnAoJOkAixjbuOb6mmPD2XGFcdjBQE2FQFQZab27I_pDjNm5zrnKZxnU3eA4nzrYhYG797jGl8f82lrqEPrcrQjIBMoO_u0xT35Re1KYtSr4oBiKVZBuu7-nHclfVAtUDAjByCuPD1Ddf5c38:1qjw18:GvFY1ZI5-CYH63CxgosXI6O7B0BO8R4LccBIpx9kAkc', '2023-10-07 06:21:26.679292'),
('ykuatsk39h7f19y3331dmjh2738z2ga0', '.eJxlyqEOg1AMBdB_QRPS13fb285BskzNMDOHIsglIJf9-5jAsKPPu3nehnFe1nnbXus0anORjlSrUlVTdlnaU7o_rr8mHiqVBJMZf-1YArdCQ6R7IgpOrz8iwiSohBBmgH--mtsqkw:1ql3ef:DcHlC298PT1TC1aDTdUfQr4s6M3fUmXt4KHa27bzAO4', '2023-10-10 08:42:53.036660'),
('d1nclh7lyfsoq9vz0jj1cyui699elhpe', '.eJxl0LtOAzEQBdB_cb1C4_E8POmIgBQ8ikBBF4WsFVxkLdmBBvHvOIggLfRHc--dD_fWUt3k0S384K7SLrdcpqea0jrta2qtVLeACyEOimIxKqF6Gtx6O43lcFO6Oc6oGlBgQS8gpF4Gt6rbMafpuCylHfO0n3P2HlnBGwBL7JdvH1Lev76U2ubQB4loZMbIpji4uzylbf1BvfVJRR8jBWTRbgVtcO39sKnzLdECowhJCAphcM-r5W_UZo3faYocICD2WgDm_6L7x-sTg14JgiqpqcV_7KyAhL1yDxYxiqf_zdzlGVJkiIpKoMRMJJ9feXt3RQ:1ql3tB:Vnn1DTLTJ2jwFYT1ksMy343eu9APehVom1gTAnORMY0', '2023-10-10 08:57:53.485272'),
('j1ltpsyn2n7kj94hnpyf0c7clpr3p89p', '.eJxl0LtOAzEQBdB_cb1C9nie6YiAFDyKQEEXhcQKLrKW7ECD-He8EkHaMPWZq7nz5V5Xy3U61NRaqZs1uIW_EgGKPgKY72NhuECPz7cT86zgowiKiek_dlYemYIQqjEbasALd32GqORVQNALEiHy4G7SLrdcxpea0t_GhBkpCrCpCoJMmevtuC_Hu9LNaUbFPEZiCOwZJfTUVd3ucxpPy1LaKY-HOacQgMSHXp5Ye_L9U8qH97dS2xyG2B9gaEZAJjC4hzymbf1F_epJaVDFCMTSLYMNrn0eN3XeRS0SMCPHKD4O7qOlusl7twjfP3ped0U:1ql49F:IL6ahVOHyRW6bJry-1i1HcbAaajVYC1WTeD_7a2zzWo', '2023-10-10 09:14:29.116835'),
('2xxp1l0wmw1kgi5um896fs216kehjx3b', 'eyJ1c2VyX2lkIjoyfQ:1ql4E3:8JLNKFJIog9i1VvcQPSZObeWAm7DHXBMAl5AKd8bGfM', '2023-10-10 09:19:27.375768'),
('xxoacr5712vtz6it9v75guprp9lzfzc0', 'eyJ1c2VyX2lkIjoyfQ:1ql56c:zGm8MZwX3ZDyXLpecS3-zz7Ic6zoiy5HO_S8oO8Pxpw', '2023-10-10 10:15:50.026047'),
('oie6xlc8cpu7k20dcysvd1sq0qup3a01', '.eJxl0D1PwzAQBuD_kjlC9vk-2aiADnwMgYGtKq0VPDSW7IgF8d9xJIqUcvNzr-69r-5tuxniWGKtuewG6K7dlQhQcAHAXBvz_QV6erlbmGMFF0RQTEz_sbNyyOSFUI3ZUD1euJszRCWnAoJOkAiR--42HlJNeXotMf5tLJiRggCbqiDIkjnsp2M-3edm5hUVcxiIwbNjFN9St2V_THGaNznXOU3jmpP3QOJ8K0-sLfnhOabx4z2XuoY-tAcYmhGQCfTdY5rivvyidvWi1KtiAGJplsH6rn6edmXdRS0QMCOHIC58_wD423N_:1ql6k6:W9pd5nRl1EHLY735YhFrOE2ibxu6ZxLC-6NWfcyyN84', '2023-10-10 12:00:42.541267'),
('6x0pm58va7712j3asdimmm0n0iddqzxy', '.eJxlyqEOg1AMBdB_QRPS13fb285BskzNMDOHIsglIJf9-5jAsKPPu3nehnFe1nnbXus0anORjlSrUlVTdlnaU7o_rr8mHiqVBJMZf-1YArdCQ6R7IgpOrz8iwiSohBBmgH--mtsqkw:1ql6lt:5cO95KMK47n1MpVcP0e9-ARHK6lzbjQMkNh44sme2lU', '2023-10-10 12:02:33.588727'),
('a7yplnwafq7ytjsxgy6510eei3so1knj', '.eJxl0D1PwzAQBuD_kjlC9vk-2aiADnwMgYGtKq0VPDSW7IgF8d9xJIqUcvNzr-69r-5tuxniWGKtuewG6K7dlQhQcAHAXBvz_QV6erlbmGMFF0RQTEz_sbNyyOSFUI3ZUD1euJszRCWnAoJOkAiR--42HlJNeXotMf5tLJiRggCbqiDIkjnsp2M-3edm5hUVcxiIwbNjFN9St2V_THGaNznXOU3jmpP3QOJ8K0-sLfnhOabx4z2XuoY-tAcYmhGQCfTdY5rivvyidvWi1KtiAGJplsH6rn6edmXdRS0QMCOHIC58_wD423N_:1ql73i:-JDAMIJDPWru7sIporbg6gMfsNq9zKLekl174LVSJU4', '2023-10-10 12:20:58.162172'),
('9h807zzpgie0n8dq90thd0p31q5dgixm', '.eJxl0D1PwzAQBuD_kjlC9vk-2aiADnwMgYGtKq0VPDSW7IgF8d9xJIqUcvNzr-69r-5tuxniWGKtuewG6K7dlQhQcAHAXBvz_QV6erlbmGMFF0RQTEz_sbNyyOSFUI3ZUD1euJszRCWnAoJOkAiR--42HlJNeXotMf5tLJiRggCbqiDIkjnsp2M-3edm5hUVcxiIwbNjFN9St2V_THGaNznXOU3jmpP3QOJ8K0-sLfnhOabx4z2XuoY-tAcYmhGQCfTdY5rivvyidvWi1KtiAGJplsH6rn6edmXdRS0QMCOHIC58_wD423N_:1ql831:t9YG5o1oizbzYQIlOsOAgaMWQ8dQZ07KHsETX1OUyvk', '2023-10-10 13:24:19.459154'),
('fxnysv0n0rerr3s2srrx4xb87s61yw6h', 'eyJ1c2VyX2lkIjoxfQ:1ql90L:41HbTfNP0PMxbtbfhFUdAS5C8n0gZWupUJQMsoo9VIc', '2023-10-10 14:25:37.698113'),
('k7629wnkgq3ub4j52ceuosjp3x51bl76', 'eyJ1c2VyX2lkIjoxfQ:1ql9CN:mP9T3PvljYXema1ICTf8A7AlO89o9Y_B6g_GnI9Q2bc', '2023-10-10 14:38:03.150780');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `user_location` varchar(50) NOT NULL,
  `user_profile` varchar(100) NOT NULL,
  `status` varchar(15) NOT NULL,
  `otp` varchar(6) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_location`, `user_profile`, `status`, `otp`) VALUES
(1, 'upender', 'upenderbala25@gmail.com', '12', '9666473716', 'Kolkata', 'images/user/testimonial-2.jpg', 'Accepted', '0846');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
