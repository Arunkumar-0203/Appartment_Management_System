-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 08:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appartment_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appartment_app_add_appartment`
--

CREATE TABLE `appartment_app_add_appartment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact_details` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `appartment_type` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `image4` varchar(100) DEFAULT NULL,
  `rent` varchar(50) DEFAULT NULL,
  `rooms` varchar(50) DEFAULT NULL,
  `bath_rooms` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appartment_app_add_appartment`
--

INSERT INTO `appartment_app_add_appartment` (`id`, `name`, `contact_details`, `location`, `appartment_type`, `type`, `image`, `image1`, `image2`, `image3`, `image4`, `rent`, `rooms`, `bath_rooms`, `status`, `user_id`) VALUES
(1, 'skyline', '9745036373 trissur', 'Ernakkulam', 'House', 'Single Men', 'about_b77lp0l.jpg', 'property-1_AdoqPdR.jpg', 'property-2_UuYC245.jpg', 'property-3_5ggu4Au.jpg', 'property-4_tEJlOq5.jpg', '500', '6', '4', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `appartment_app_book_now`
--

CREATE TABLE `appartment_app_book_now` (
  `id` bigint(20) NOT NULL,
  `time` time(6) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `days` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `proof` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `payment` varchar(100) DEFAULT NULL,
  `status2` varchar(100) DEFAULT NULL,
  `appartment_id` bigint(20) DEFAULT NULL,
  `owner_id_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appartment_app_book_now`
--

INSERT INTO `appartment_app_book_now` (`id`, `time`, `date`, `name`, `days`, `status`, `address`, `action`, `proof`, `amount`, `payment`, `status2`, `appartment_id`, `owner_id_id`, `user_id`) VALUES
(1, '01:05:00.000000', '2022-05-08', 'ramesh', '12', 'paid', 'wayanad', 'asasa', 'call-to-action_rclLT3c.jpg', '6000', 'paid', NULL, 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `appartment_app_feedback`
--

CREATE TABLE `appartment_app_feedback` (
  `id` bigint(20) NOT NULL,
  `feedback` varchar(100) DEFAULT NULL,
  `reply` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `appartment_app_owner_reg`
--

CREATE TABLE `appartment_app_owner_reg` (
  `id` bigint(20) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appartment_app_owner_reg`
--

INSERT INTO `appartment_app_owner_reg` (`id`, `phone`, `address`, `type`, `location`, `image`, `status`, `user_id`) VALUES
(1, '9874563210', 'qwerty', 'House', 'qwerty', '9mgonles_gold-jewellery,-kerala_625x300_13_July_18.jpg', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `appartment_app_payment`
--

CREATE TABLE `appartment_app_payment` (
  `id` bigint(20) NOT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `payment` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `appartment_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `appartment_app_service`
--

CREATE TABLE `appartment_app_service` (
  `id` bigint(20) NOT NULL,
  `services` varchar(100) DEFAULT NULL,
  `service_status` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `appartment_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `appartment_app_usertype`
--

CREATE TABLE `appartment_app_usertype` (
  `id` bigint(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appartment_app_usertype`
--

INSERT INTO `appartment_app_usertype` (`id`, `type`, `user_id`) VALUES
(1, 'owner', 2),
(2, 'userr', 3);

-- --------------------------------------------------------

--
-- Table structure for table `appartment_app_user_reg`
--

CREATE TABLE `appartment_app_user_reg` (
  `id` bigint(20) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appartment_app_user_reg`
--

INSERT INTO `appartment_app_user_reg` (`id`, `phone`, `address`, `location`, `image`, `status`, `user_id`) VALUES
(1, '9874563210', 'qwerty', 'kothamangalam', '9mgonles_gold-jewellery,-kerala_625x300_13_July_18_KPtoCco.jpg', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add add_appartment', 7, 'add_add_appartment'),
(26, 'Can change add_appartment', 7, 'change_add_appartment'),
(27, 'Can delete add_appartment', 7, 'delete_add_appartment'),
(28, 'Can view add_appartment', 7, 'view_add_appartment'),
(29, 'Can add user type', 8, 'add_usertype'),
(30, 'Can change user type', 8, 'change_usertype'),
(31, 'Can delete user type', 8, 'delete_usertype'),
(32, 'Can view user type', 8, 'view_usertype'),
(33, 'Can add user_reg', 9, 'add_user_reg'),
(34, 'Can change user_reg', 9, 'change_user_reg'),
(35, 'Can delete user_reg', 9, 'delete_user_reg'),
(36, 'Can view user_reg', 9, 'view_user_reg'),
(37, 'Can add service', 10, 'add_service'),
(38, 'Can change service', 10, 'change_service'),
(39, 'Can delete service', 10, 'delete_service'),
(40, 'Can view service', 10, 'view_service'),
(41, 'Can add payment', 11, 'add_payment'),
(42, 'Can change payment', 11, 'change_payment'),
(43, 'Can delete payment', 11, 'delete_payment'),
(44, 'Can view payment', 11, 'view_payment'),
(45, 'Can add owner_reg', 12, 'add_owner_reg'),
(46, 'Can change owner_reg', 12, 'change_owner_reg'),
(47, 'Can delete owner_reg', 12, 'delete_owner_reg'),
(48, 'Can view owner_reg', 12, 'view_owner_reg'),
(49, 'Can add feedback', 13, 'add_feedback'),
(50, 'Can change feedback', 13, 'change_feedback'),
(51, 'Can delete feedback', 13, 'delete_feedback'),
(52, 'Can view feedback', 13, 'view_feedback'),
(53, 'Can add book_now', 14, 'add_book_now'),
(54, 'Can change book_now', 14, 'change_book_now'),
(55, 'Can delete book_now', 14, 'delete_book_now'),
(56, 'Can view book_now', 14, 'view_book_now');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$EsFQTJORDiiuTzet82Ntac$21ZVnUfxHZfQ6N/Rixx4mGXzXFKK2Og26G5VYaCR3es=', '2022-05-08 14:27:21.857602', 1, 'admin', '', '1', 'admin@gmail.com', 1, 1, '2022-05-08 14:24:19.029666'),
(2, 'pbkdf2_sha256$260000$AdW7idVzewbJ8eFtLmgprL$hn3+fl+BUd4Yo/9d2iAzdRXt1SACrYOKFxqpzroDnN0=', '2022-05-08 14:31:14.562757', 0, 'owner', 'owner', '1', 'owner@gmail.com', 1, 1, '2022-05-08 14:25:57.336949'),
(3, 'pbkdf2_sha256$260000$tTDz22MA4ylvBZ0pXT07yZ$kRJM+Qr8q7q1OR1GBg3ns+eljRI+AmIjOoBEULpQoYc=', '2022-05-08 14:31:56.651007', 0, 'user', 'user', '1', 'user@gmail.com', 1, 1, '2022-05-08 14:26:36.875332');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'Appartment_App', 'add_appartment'),
(14, 'Appartment_App', 'book_now'),
(13, 'Appartment_App', 'feedback'),
(12, 'Appartment_App', 'owner_reg'),
(11, 'Appartment_App', 'payment'),
(10, 'Appartment_App', 'service'),
(8, 'Appartment_App', 'usertype'),
(9, 'Appartment_App', 'user_reg'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-08 14:23:44.518379'),
(2, 'auth', '0001_initial', '2022-05-08 14:23:45.174830'),
(3, 'Appartment_App', '0001_initial', '2022-05-08 14:23:46.300176'),
(4, 'admin', '0001_initial', '2022-05-08 14:23:46.456474'),
(5, 'admin', '0002_logentry_remove_auto_add', '2022-05-08 14:23:46.487735'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-08 14:23:46.518995'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-05-08 14:23:46.612773'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-05-08 14:23:46.675291'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-05-08 14:23:46.722187'),
(10, 'auth', '0004_alter_user_username_opts', '2022-05-08 14:23:46.737813'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-05-08 14:23:46.815961'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-05-08 14:23:46.815961'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-05-08 14:23:46.847220'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-05-08 14:23:46.894109'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-05-08 14:23:46.925372'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-05-08 14:23:46.972257'),
(17, 'auth', '0011_update_proxy_permissions', '2022-05-08 14:23:47.003518'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-05-08 14:23:47.050411'),
(19, 'sessions', '0001_initial', '2022-05-08 14:23:47.112928');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('fv4okfsh1vpla2h7wh722z4y9h40r9j2', '.eJxVjMsOwiAQRf-FtSEMb1y69xsIzIBUDU1KuzL-uzbpQrf3nHNfLKZtbXEbZYkTsTNT7PS75YSP0ndA99RvM8e5r8uU-a7wgw5-nak8L4f7d9DSaN9aQEgAkIlqQQtaaZTGF2-CVaiMqy4TVJmMDMZrEhXQCjQZtEMdBLH3B9Y9N2s:1nnhwy:lrvUBw0zri-ijwQo2vs_KLB2NW14FTcYzMuAwtjlkAI', '2022-05-22 14:31:56.658988');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appartment_app_add_appartment`
--
ALTER TABLE `appartment_app_add_appartment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Appartment_App_add_appartment_user_id_6051e37d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `appartment_app_book_now`
--
ALTER TABLE `appartment_app_book_now`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Appartment_App_book__appartment_id_a55dd7fa_fk_Appartmen` (`appartment_id`),
  ADD KEY `Appartment_App_book__owner_id_id_7e6abe37_fk_Appartmen` (`owner_id_id`),
  ADD KEY `Appartment_App_book_now_user_id_16d574cd_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `appartment_app_feedback`
--
ALTER TABLE `appartment_app_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Appartment_App_feedb_type_id_dc3ece28_fk_Appartmen` (`type_id`),
  ADD KEY `Appartment_App_feedback_user_id_14926e02_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `appartment_app_owner_reg`
--
ALTER TABLE `appartment_app_owner_reg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Appartment_App_owner_reg_user_id_cf0df2fb_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `appartment_app_payment`
--
ALTER TABLE `appartment_app_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Appartment_App_payme_appartment_id_4b396616_fk_Appartmen` (`appartment_id`),
  ADD KEY `Appartment_App_payment_user_id_ddc958da_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `appartment_app_service`
--
ALTER TABLE `appartment_app_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Appartment_App_servi_appartment_id_e997de17_fk_Appartmen` (`appartment_id`),
  ADD KEY `Appartment_App_service_user_id_01bb4da6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `appartment_app_usertype`
--
ALTER TABLE `appartment_app_usertype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Appartment_App_usertype_user_id_33ab2422_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `appartment_app_user_reg`
--
ALTER TABLE `appartment_app_user_reg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Appartment_App_user_reg_user_id_d28bd858_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appartment_app_add_appartment`
--
ALTER TABLE `appartment_app_add_appartment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appartment_app_book_now`
--
ALTER TABLE `appartment_app_book_now`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appartment_app_feedback`
--
ALTER TABLE `appartment_app_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appartment_app_owner_reg`
--
ALTER TABLE `appartment_app_owner_reg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appartment_app_payment`
--
ALTER TABLE `appartment_app_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appartment_app_service`
--
ALTER TABLE `appartment_app_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appartment_app_usertype`
--
ALTER TABLE `appartment_app_usertype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appartment_app_user_reg`
--
ALTER TABLE `appartment_app_user_reg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appartment_app_add_appartment`
--
ALTER TABLE `appartment_app_add_appartment`
  ADD CONSTRAINT `Appartment_App_add_appartment_user_id_6051e37d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `appartment_app_book_now`
--
ALTER TABLE `appartment_app_book_now`
  ADD CONSTRAINT `Appartment_App_book__appartment_id_a55dd7fa_fk_Appartmen` FOREIGN KEY (`appartment_id`) REFERENCES `appartment_app_add_appartment` (`id`),
  ADD CONSTRAINT `Appartment_App_book__owner_id_id_7e6abe37_fk_Appartmen` FOREIGN KEY (`owner_id_id`) REFERENCES `appartment_app_owner_reg` (`id`),
  ADD CONSTRAINT `Appartment_App_book_now_user_id_16d574cd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `appartment_app_feedback`
--
ALTER TABLE `appartment_app_feedback`
  ADD CONSTRAINT `Appartment_App_feedb_type_id_dc3ece28_fk_Appartmen` FOREIGN KEY (`type_id`) REFERENCES `appartment_app_usertype` (`id`),
  ADD CONSTRAINT `Appartment_App_feedback_user_id_14926e02_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `appartment_app_owner_reg`
--
ALTER TABLE `appartment_app_owner_reg`
  ADD CONSTRAINT `Appartment_App_owner_reg_user_id_cf0df2fb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `appartment_app_payment`
--
ALTER TABLE `appartment_app_payment`
  ADD CONSTRAINT `Appartment_App_payme_appartment_id_4b396616_fk_Appartmen` FOREIGN KEY (`appartment_id`) REFERENCES `appartment_app_add_appartment` (`id`),
  ADD CONSTRAINT `Appartment_App_payment_user_id_ddc958da_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `appartment_app_service`
--
ALTER TABLE `appartment_app_service`
  ADD CONSTRAINT `Appartment_App_servi_appartment_id_e997de17_fk_Appartmen` FOREIGN KEY (`appartment_id`) REFERENCES `appartment_app_add_appartment` (`id`),
  ADD CONSTRAINT `Appartment_App_service_user_id_01bb4da6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `appartment_app_usertype`
--
ALTER TABLE `appartment_app_usertype`
  ADD CONSTRAINT `Appartment_App_usertype_user_id_33ab2422_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `appartment_app_user_reg`
--
ALTER TABLE `appartment_app_user_reg`
  ADD CONSTRAINT `Appartment_App_user_reg_user_id_d28bd858_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
