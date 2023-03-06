-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 08:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kbgstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add appointment', 7, 'add_appointment'),
(26, 'Can change appointment', 7, 'change_appointment'),
(27, 'Can delete appointment', 7, 'delete_appointment'),
(28, 'Can view appointment', 7, 'view_appointment'),
(29, 'Can add contact form', 8, 'add_contactform'),
(30, 'Can change contact form', 8, 'change_contactform'),
(31, 'Can delete contact form', 8, 'delete_contactform'),
(32, 'Can view contact form', 8, 'view_contactform'),
(33, 'Can add popup', 9, 'add_popup'),
(34, 'Can change popup', 9, 'change_popup'),
(35, 'Can delete popup', 9, 'delete_popup'),
(36, 'Can view popup', 9, 'view_popup'),
(37, 'Can add pop up submission', 10, 'add_popupsubmission'),
(38, 'Can change pop up submission', 10, 'change_popupsubmission'),
(39, 'Can delete pop up submission', 10, 'delete_popupsubmission'),
(40, 'Can view pop up submission', 10, 'view_popupsubmission');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$rwnUD9N6GkwvEtmts9phO2$mXk0lWSJfyNwca5ZkaNyLHc2QKJy7hxMR8HPZn0bF34=', '2023-03-06 07:20:09.912474', 1, 'admin', '', '', '', 1, 1, '2023-03-04 11:54:02.399645');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_appointment`
--

CREATE TABLE `dashboard_appointment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `appointment_time` varchar(10) NOT NULL,
  `appointment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_appointment`
--

INSERT INTO `dashboard_appointment` (`id`, `name`, `email`, `phone`, `appointment_time`, `appointment_date`) VALUES
(1, 'Niloy Islam', 'niloyislam37@gmail.com', '01786848457', '9:30 am', '2023-03-10'),
(2, 'Aporajita ', 'saha.aporajita@gmail.com', '01634235097', '10:30 am', '2023-03-05'),
(3, 'Nazmul Hossain', 'nazmul120766@gmail.com', '01647087561', '11:30 am', '2023-03-05'),
(13, 'Niloy Islam', 'niloyislam37@gmail.com', '01786848457', '11:30 am', '2023-03-08');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_contactform`
--

CREATE TABLE `dashboard_contactform` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_contactform`
--

INSERT INTO `dashboard_contactform` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Niloy Islam', 'niloyislam37@gmail.com', 'Marbel buy', 'o;kok'),
(2, 'Niloy Islam', 'niloyislam37@gmail.com', 'Want to buy marbel', 'oihjhilniln'),
(3, 'Niloy Islam', 'niloyislam37@gmail.com', 'Want to buy marbel', 'okokk[k');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_popupsubmission`
--

CREATE TABLE `dashboard_popupsubmission` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_popupsubmission`
--

INSERT INTO `dashboard_popupsubmission` (`id`, `name`, `number`, `email`, `postcode`, `timestamp`) VALUES
(1, 'Niloy Islam', '01786848457', 'niloyislam37@gmail.com', '1229', '2023-03-05 21:16:45.409666'),
(2, 'Niloy Islam', '01786848457', 'niloyislam37@gmail.com', '1229', '2023-03-05 21:57:42.799514'),
(3, 'Niloy Islam', '01786848457', 'niloyislam37@gmail.com', '1229', '2023-03-05 22:02:17.001405');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-05 22:04:03.108177', '12', 'Niloy Islam', 3, '', 7, 1),
(2, '2023-03-05 22:04:03.110163', '11', 'Niloy Islam', 3, '', 7, 1),
(3, '2023-03-05 22:04:03.112172', '10', 'Niloy Islam', 3, '', 7, 1),
(4, '2023-03-05 22:04:03.116150', '9', 'Niloy Islam', 3, '', 7, 1),
(5, '2023-03-05 22:04:03.117398', '8', 'Niloy Islam', 3, '', 7, 1),
(6, '2023-03-05 22:04:03.119857', '7', 'Niloy Islam', 3, '', 7, 1),
(7, '2023-03-05 22:04:03.121407', '6', 'Niloy Islam', 3, '', 7, 1),
(8, '2023-03-05 22:04:03.122918', '5', 'Niloy', 3, '', 7, 1),
(9, '2023-03-05 22:04:03.124395', '4', 'Niloy Islam', 3, '', 7, 1),
(10, '2023-03-05 22:04:43.390642', '13', 'Niloy Islam', 2, '[]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'dashboard', 'appointment'),
(8, 'dashboard', 'contactform'),
(9, 'dashboard', 'popup'),
(10, 'dashboard', 'popupsubmission'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-04 11:48:41.458790'),
(2, 'auth', '0001_initial', '2023-03-04 11:48:41.841447'),
(3, 'admin', '0001_initial', '2023-03-04 11:48:41.947583'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-04 11:48:41.955589'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-04 11:48:41.967052'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-04 11:48:42.026321'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-04 11:48:42.080675'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-04 11:48:42.102906'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-04 11:48:42.111097'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-04 11:48:42.158613'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-04 11:48:42.162604'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-04 11:48:42.171615'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-04 11:48:42.187536'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-04 11:48:42.204201'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-04 11:48:42.220205'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-04 11:48:42.230798'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-04 11:48:42.246960'),
(18, 'dashboard', '0001_initial', '2023-03-04 11:48:42.357829'),
(19, 'dashboard', '0002_contactform_alter_appointment_appointment_date', '2023-03-04 11:48:42.451688'),
(20, 'dashboard', '0003_remove_appointment_appointment_date', '2023-03-04 11:48:42.467881'),
(21, 'dashboard', '0004_remove_appointment_appointment_time_period_and_more', '2023-03-04 11:48:42.534443'),
(22, 'sessions', '0001_initial', '2023-03-04 11:48:42.563366'),
(23, 'dashboard', '0005_alter_appointment_appointment_date', '2023-03-04 11:55:44.347476'),
(24, 'dashboard', '0006_popup', '2023-03-05 19:25:24.523645'),
(25, 'dashboard', '0007_rename_number_popup_phone', '2023-03-05 20:13:01.328053'),
(26, 'dashboard', '0008_popupsubmission', '2023-03-05 20:54:07.323653');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4zkunsnwyt87ye2djbhwrndcmhzuhlih', '.eJxVjEEOwiAQAP_C2RBgCy0evfcNZBcWqRqalPZk_Lsh6UGvM5N5i4DHXsLReAtLElehxeWXEcYn1y7SA-t9lXGt-7aQ7Ik8bZPzmvh1O9u_QcFW-pZUVt6ME1uIoyeVQCOjdWytgZgypEzMDtlSRufRDBrIQM56GjRH8fkC9Uw4sw:1pYZSM:_IBMs80mB9BJgJl4C1D9VFmEmLFF88m1MPX9tZj37tM', '2023-03-18 21:30:18.887607'),
('ku57wkws1fdyt5yawsd3n3goo7ge6l9w', '.eJxVjEEOwiAQAP_C2RBgCy0evfcNZBcWqRqalPZk_Lsh6UGvM5N5i4DHXsLReAtLElehxeWXEcYn1y7SA-t9lXGt-7aQ7Ik8bZPzmvh1O9u_QcFW-pZUVt6ME1uIoyeVQCOjdWytgZgypEzMDtlSRufRDBrIQM56GjRH8fkC9Uw4sw:1pYvek:YJ5GRzhn-dsD1kgCHFfyWSLM_3b0R0kRV-QZysJJ8yw', '2023-03-19 21:12:34.335386'),
('rq6b7pq0ep1s444eh0ciefrvncdg06dt', '.eJxVjEEOwiAQAP_C2RBgCy0evfcNZBcWqRqalPZk_Lsh6UGvM5N5i4DHXsLReAtLElehxeWXEcYn1y7SA-t9lXGt-7aQ7Ik8bZPzmvh1O9u_QcFW-pZUVt6ME1uIoyeVQCOjdWytgZgypEzMDtlSRufRDBrIQM56GjRH8fkC9Uw4sw:1pZ58j:-GtqMNxs1v5wDKrkdVCIhCmyq-dKmiMlm_12JBcXAR0', '2023-03-20 07:20:09.916478');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `dashboard_appointment`
--
ALTER TABLE `dashboard_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_contactform`
--
ALTER TABLE `dashboard_contactform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_popupsubmission`
--
ALTER TABLE `dashboard_popupsubmission`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `dashboard_appointment`
--
ALTER TABLE `dashboard_appointment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dashboard_contactform`
--
ALTER TABLE `dashboard_contactform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dashboard_popupsubmission`
--
ALTER TABLE `dashboard_popupsubmission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

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
