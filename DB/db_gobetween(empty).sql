-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2024 at 07:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gobetween`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(50) DEFAULT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `company_id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_contact` varchar(50) NOT NULL,
  `company_email` varchar(50) NOT NULL,
  `company_address` varchar(50) NOT NULL,
  `company_doj` varchar(50) NOT NULL,
  `company_since` varchar(50) NOT NULL,
  `company_proof` varchar(50) NOT NULL,
  `company_logo` varchar(50) NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `owner_email` varchar(50) NOT NULL,
  `owner_contact` varchar(50) NOT NULL,
  `owner_password` varchar(50) NOT NULL,
  `company_status` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company_driver`
--

CREATE TABLE `tbl_company_driver` (
  `company_driver_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `company_driver_status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `company_driver_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(10) UNSIGNED NOT NULL,
  `complaint_content` varchar(50) NOT NULL,
  `complainttype_id` int(10) UNSIGNED NOT NULL,
  `complaint_date` varchar(50) NOT NULL,
  `complaint_status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `complaint_reply` varchar(50) NOT NULL DEFAULT 'Not Yet Reply',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `company_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `driver_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `complaint_reply_date` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complainttype`
--

CREATE TABLE `tbl_complainttype` (
  `complainttype_id` int(10) UNSIGNED NOT NULL,
  `complainttype_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(50) NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driver`
--

CREATE TABLE `tbl_driver` (
  `driver_id` int(10) UNSIGNED NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `driver_primary_contact` varchar(50) NOT NULL,
  `driver_secondary_contact` varchar(50) NOT NULL,
  `driver_email` varchar(50) NOT NULL,
  `driver_proof` varchar(50) NOT NULL,
  `driver_photo` varchar(50) NOT NULL,
  `driver_dob` varchar(50) NOT NULL,
  `driver_doj` varchar(50) NOT NULL,
  `driver_password` varchar(50) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_expirence` varchar(50) NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `driver_status` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driver_license`
--

CREATE TABLE `tbl_driver_license` (
  `driver_license_front_photo` varchar(50) NOT NULL,
  `driver_license_back_photo` varchar(50) NOT NULL,
  `driver_license_date` varchar(50) NOT NULL,
  `driver_license_exp_date` varchar(50) NOT NULL,
  `driver_license_badge_exp_date` varchar(50) NOT NULL,
  `driver_license_class` varchar(50) NOT NULL,
  `driver_license_number` varchar(50) NOT NULL,
  `driver_license_id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driver_request`
--

CREATE TABLE `tbl_driver_request` (
  `request_id` int(11) NOT NULL,
  `request_date` varchar(50) NOT NULL,
  `request_status` varchar(10) NOT NULL DEFAULT 'Pending',
  `company_id` int(10) NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(10) UNSIGNED NOT NULL,
  `feedback_content` varchar(50) NOT NULL,
  `feedback_date` varchar(50) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `company_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `driver_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `location_id` int(10) UNSIGNED NOT NULL,
  `location_name` varchar(50) NOT NULL,
  `location_longitude` varchar(50) NOT NULL,
  `location_latitude` varchar(50) NOT NULL,
  `location_pincode` varchar(50) NOT NULL,
  `district_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(10) UNSIGNED NOT NULL,
  `state_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transport_request`
--

CREATE TABLE `tbl_transport_request` (
  `transport_request_id` int(10) UNSIGNED NOT NULL,
  `transport_request_description` varchar(50) NOT NULL,
  `transport_request_date` varchar(50) NOT NULL,
  `transport_request_qty` varchar(50) NOT NULL,
  `transport_request_for_date` varchar(50) NOT NULL,
  `transport_request_status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `from_location_id` int(10) UNSIGNED NOT NULL,
  `to_location_id` int(10) UNSIGNED NOT NULL,
  `transport_request_reply` varchar(50) NOT NULL DEFAULT 'Pending',
  `company_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `delivery_time` varchar(50) NOT NULL,
  `delivery_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transport_shedule`
--

CREATE TABLE `tbl_transport_shedule` (
  `transport_shedule_id` int(10) UNSIGNED NOT NULL,
  `transport_shedule_date` varchar(50) NOT NULL,
  `transport_request_id` int(10) UNSIGNED NOT NULL,
  `transport_shedule_status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `driver_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `driver_id2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `transport_amount` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transport_update`
--

CREATE TABLE `tbl_transport_update` (
  `transport_update_id` int(10) UNSIGNED NOT NULL,
  `transport_update_datetime` varchar(50) NOT NULL,
  `transport_update_location` varchar(50) NOT NULL,
  `transport_update_status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `transport_shedule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_dob` varchar(50) NOT NULL,
  `user_doj` varchar(50) NOT NULL,
  `user_address` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_aadhar_number` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `location_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle`
--

CREATE TABLE `tbl_vehicle` (
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `vehicle_chase_no` varchar(50) NOT NULL,
  `vehicle_reg_no` varchar(50) NOT NULL,
  `vehicle_insurance_date` varchar(50) NOT NULL,
  `vehicle_insurance_exp` varchar(50) NOT NULL,
  `vehicle_status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vehiclesubtype_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `vehicle_detailes` varchar(100) NOT NULL,
  `vehicle_name` varchar(50) NOT NULL,
  `vehicle_amount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehiclesubtype`
--

CREATE TABLE `tbl_vehiclesubtype` (
  `vehiclesubtype_id` int(11) NOT NULL,
  `vehiclesubtype_name` varchar(50) NOT NULL,
  `vehicletype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicletype`
--

CREATE TABLE `tbl_vehicletype` (
  `vehicletype_id` int(10) UNSIGNED NOT NULL,
  `vehicletype_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `tbl_company_driver`
--
ALTER TABLE `tbl_company_driver`
  ADD PRIMARY KEY (`company_driver_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_complainttype`
--
ALTER TABLE `tbl_complainttype`
  ADD PRIMARY KEY (`complainttype_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_driver`
--
ALTER TABLE `tbl_driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `tbl_driver_license`
--
ALTER TABLE `tbl_driver_license`
  ADD PRIMARY KEY (`driver_license_id`);

--
-- Indexes for table `tbl_driver_request`
--
ALTER TABLE `tbl_driver_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tbl_transport_request`
--
ALTER TABLE `tbl_transport_request`
  ADD PRIMARY KEY (`transport_request_id`);

--
-- Indexes for table `tbl_transport_shedule`
--
ALTER TABLE `tbl_transport_shedule`
  ADD PRIMARY KEY (`transport_shedule_id`);

--
-- Indexes for table `tbl_transport_update`
--
ALTER TABLE `tbl_transport_update`
  ADD PRIMARY KEY (`transport_update_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_vehicle`
--
ALTER TABLE `tbl_vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `tbl_vehiclesubtype`
--
ALTER TABLE `tbl_vehiclesubtype`
  ADD PRIMARY KEY (`vehiclesubtype_id`);

--
-- Indexes for table `tbl_vehicletype`
--
ALTER TABLE `tbl_vehicletype`
  ADD PRIMARY KEY (`vehicletype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `company_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_company_driver`
--
ALTER TABLE `tbl_company_driver`
  MODIFY `company_driver_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_complainttype`
--
ALTER TABLE `tbl_complainttype`
  MODIFY `complainttype_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_driver`
--
ALTER TABLE `tbl_driver`
  MODIFY `driver_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_driver_license`
--
ALTER TABLE `tbl_driver_license`
  MODIFY `driver_license_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_driver_request`
--
ALTER TABLE `tbl_driver_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `location_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_transport_request`
--
ALTER TABLE `tbl_transport_request`
  MODIFY `transport_request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_transport_shedule`
--
ALTER TABLE `tbl_transport_shedule`
  MODIFY `transport_shedule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_transport_update`
--
ALTER TABLE `tbl_transport_update`
  MODIFY `transport_update_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_vehicle`
--
ALTER TABLE `tbl_vehicle`
  MODIFY `vehicle_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_vehiclesubtype`
--
ALTER TABLE `tbl_vehiclesubtype`
  MODIFY `vehiclesubtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_vehicletype`
--
ALTER TABLE `tbl_vehicletype`
  MODIFY `vehicletype_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
