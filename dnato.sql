-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 15, 2018 at 07:31 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dnato`
--

-- --------------------------------------------------------

--
-- Table structure for table `cargo_types`
--

CREATE TABLE `cargo_types` (
  `cargo_type_id` int(10) NOT NULL,
  `cargo_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cargo_types`
--

INSERT INTO `cargo_types` (`cargo_type_id`, `cargo_type`) VALUES
(1, 'DRY'),
(3, 'HAZARDOUS'),
(2, 'PERISHABLE');

-- --------------------------------------------------------

--
-- Table structure for table `channel_partner`
--

CREATE TABLE `channel_partner` (
  `channel_partner_id` int(10) NOT NULL,
  `channel_partner_name` varchar(255) NOT NULL,
  `listing_quota` varchar(10) NOT NULL,
  `territory` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partners_listing_quota`
--

CREATE TABLE `partners_listing_quota` (
  `partner_category_id` int(10) NOT NULL,
  `listing_quota` varchar(30) NOT NULL,
  `quota` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners_listing_quota`
--

INSERT INTO `partners_listing_quota` (`partner_category_id`, `listing_quota`, `quota`) VALUES
(1, 'PLATINUM', 100),
(2, 'GOLD', 50),
(3, 'SILVER', 25),
(4, 'AFFILIATES', 15);

-- --------------------------------------------------------

--
-- Table structure for table `service_provider`
--

CREATE TABLE `service_provider` (
  `provider_id` int(10) NOT NULL,
  `transport_mode` varchar(30) NOT NULL,
  `provider_name` varchar(255) NOT NULL,
  `provider_type` varchar(30) NOT NULL,
  `prov_shortname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_provider`
--

INSERT INTO `service_provider` (`provider_id`, `transport_mode`, `provider_name`, `provider_type`, `prov_shortname`) VALUES
(1, 'TML', 'Trucker', 'SERVICE OPERATOR', 'TMLTSO'),
(2, 'TML', 'LTL Operator', 'SERVICE OPERATOR', 'TMLLOSO'),
(3, 'TMS', 'Freight Forwarder', 'SERVICE OPERATOR', 'TMSFFSO'),
(4, 'TMS', 'NVOCC', 'SERVICE OPERATOR', 'TMSNSO'),
(5, 'TMS', 'Slot Operators', 'SERVICE OPERATOR', 'TMSSOSO'),
(6, 'TMS', 'Ship Charterers', 'SERVICE OPERATOR', 'TMSSCSO'),
(7, 'TMS', 'Ship Brokers', 'SERVICE OPERATOR', 'TMSSBSO'),
(12, 'TMA', 'Air Freight Agent', 'SERVICE OPERATOR', 'TMAAFASO'),
(13, 'TMA', 'Slot Operators', 'SERVICE OPERATOR', 'TMASOSO'),
(14, 'TMA', 'Air Charter Companies', 'SERVICE OPERATOR', 'TMAACCSO'),
(15, 'TMA', 'Freight Forwarders', 'SERVICE OPERATOR', 'TMAFFSO'),
(16, 'TML', 'Road Side Assistance', 'ASSOCIATE OPERATOR', 'TMLRSAAO'),
(17, 'TML', 'Customs Clearing Agent', 'ASSOCIATE OPERATOR', 'TMLCCAAO'),
(18, 'TML', 'Fork lift & Crane Operator', 'ASSOCIATE OPERATOR', 'TMLFCOAO'),
(19, 'TML', 'Warehouse Operator', 'ASSOCIATE OPERATOR', 'TMLWOAO'),
(20, 'TML', 'Industrial Packers', 'ASSOCIATE OPERATOR', 'TMLIPAO'),
(21, 'TMS', 'Brokers', 'ASSOCIATE OPERATOR', 'TMSBAO'),
(22, 'TMS', 'Customs Clearing Agent', 'ASSOCIATE OPERATOR', 'TMSCCAAO'),
(23, 'TMS', 'Fork lift & Crane Operator', 'ASSOCIATE OPERATOR', 'TMSFCOAO'),
(24, 'TMS', 'Warehouse Operator', 'ASSOCIATE OPERATOR', 'TMSWOAO'),
(25, 'TMS', 'Industrial Packers', 'ASSOCIATE OPERATOR', 'TMSIPAO'),
(26, 'TMA', 'Brokers', 'ASSOCIATE OPERATOR', 'TMABAO'),
(27, 'TMA', 'Customs Clearing Agent', 'ASSOCIATE OPERATOR', 'TMACCAAO'),
(28, 'TMA', 'Fork lift & Crane Operator', 'ASSOCIATE OPERATOR', 'TMAFCOAO'),
(29, 'TMA', 'Warehouse Operator', 'ASSOCIATE OPERATOR', 'TMAWOAO'),
(30, 'TMA', 'Industrial Packers', 'ASSOCIATE OPERATOR', 'TMAIPAO'),
(31, 'TML', 'Consultants', 'FELICITATOR', 'TMLCF'),
(32, 'TML', 'NAFL', 'FELICITATOR', 'TMLNF'),
(33, 'TML', 'FIATA', 'FELICITATOR', 'TMLFF'),
(34, 'TMS', 'Consultants', 'FELICITATOR', 'TMSCF'),
(35, 'TMS', 'NAFL', 'FELICITATOR', 'TMSNF'),
(36, 'TMS', 'FIATA', 'FELICITATOR', 'TMSFF'),
(37, 'TMA', 'Consultants', 'FELICITATOR', 'TMACF'),
(38, 'TMA', 'NAFL', 'FELICITATOR', 'TMANF'),
(39, 'TMA', 'FIATA', 'FELICITATOR', 'TMAFF'),
(40, 'TMA', 'IATA', 'FELICITATOR', 'TMAIF'),
(46, 'TML', 'Road Transport Authority', 'REGULATOR', 'TMLRTAR'),
(47, 'TML', 'Dubai Customs Authority', 'REGULATOR', 'TMLDCAR'),
(48, 'TMS', 'DP World', 'REGULATOR', 'TMSDPWR'),
(49, 'TMS', 'Dubai Customs Authority', 'REGULATOR', 'TMSDCAR'),
(50, 'TMA', 'Airport Authority', 'REGULATOR', 'TMAAAR'),
(51, 'TMA', 'Dubai Customs Authority', 'REGULATOR', 'TMADCAR');

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_type`
--

CREATE TABLE `service_provider_type` (
  `provider_type_id` int(10) NOT NULL,
  `provider_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_provider_type`
--

INSERT INTO `service_provider_type` (`provider_type_id`, `provider_type`) VALUES
(2, 'ASSOCIATE OPERATOR'),
(3, 'FELICITATOR'),
(4, 'REGULATOR'),
(1, 'SERVICE OPERATOR');

-- --------------------------------------------------------

--
-- Table structure for table `service_territory`
--

CREATE TABLE `service_territory` (
  `service_territory_id` int(10) NOT NULL,
  `territory` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_territory`
--

INSERT INTO `service_territory` (`service_territory_id`, `territory`) VALUES
(3, 'GLOBAL'),
(2, 'INTERNATIONAL'),
(1, 'LOCAL');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `timezone` varchar(100) NOT NULL,
  `recaptcha` varchar(5) NOT NULL,
  `theme` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_title`, `timezone`, `recaptcha`, `theme`) VALUES
(1, 'Bloom Admin', 'Asia/Makassar', 'no', 'https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/cosmo/bootstrap.min.css');

-- --------------------------------------------------------

--
-- Table structure for table `tmec_types`
--

CREATE TABLE `tmec_types` (
  `tmecType_id` int(10) NOT NULL,
  `tmecategory_id` varchar(30) DEFAULT NULL,
  `category_type` varchar(255) NOT NULL,
  `variant` varchar(255) NOT NULL,
  `type_shortname` varchar(255) NOT NULL,
  `cargotype` varchar(30) DEFAULT NULL,
  `territory` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transportmodeequipment_category`
--

CREATE TABLE `transportmodeequipment_category` (
  `tmeCategory_id` int(10) NOT NULL,
  `tmequipment_id` varchar(30) NOT NULL,
  `category` varchar(255) NOT NULL,
  `cate_shortname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportmodeequipment_category`
--

INSERT INTO `transportmodeequipment_category` (`tmeCategory_id`, `tmequipment_id`, `category`, `cate_shortname`) VALUES
(1, 'PAX', 'NARROW BODIED AIRCRAFTS', 'PAXNBA'),
(2, 'PAX', 'WIDE BODIED AIRCRAFTS', 'PAXWBA'),
(3, 'FAX', 'NARROW BODIED AIRCRAFTS', 'FAXNBA'),
(4, 'FAX', 'WIDE BODIED AIRCRAFTS', 'FAXWBA'),
(5, 'CTR', '20\'', 'CTR20'),
(6, 'CTR', '40\'', 'CTR40'),
(7, 'BB', 'RO / RO', 'BBRO'),
(8, 'BB', 'BULK SOLID', 'BBBS'),
(9, 'BB', 'BULK LIQUID', 'BBBL'),
(10, 'LPT', '1TON', 'LPT1T'),
(11, 'LPT', '2TON', 'LPT2T'),
(12, 'LPT', '3TON', 'LPT3T'),
(13, 'MPT', '5TON', 'MPT5T'),
(14, 'HPT', '7TON', 'HPT7T'),
(15, 'HPT', '10TON', 'HPT10T'),
(16, 'HT', '20\'', 'HT20'),
(17, 'HT', '40\'', 'HT40'),
(18, 'ST', 'TWO AXLE', 'STTWA'),
(19, 'ST', 'THREE AXLE', 'STTHA'),
(20, 'ST', 'CAR CARRIER', 'STCC'),
(21, 'ST', 'JUMBO TRUCK', 'STJT');

-- --------------------------------------------------------

--
-- Table structure for table `transport_mode`
--

CREATE TABLE `transport_mode` (
  `transport_mode_id` int(10) NOT NULL,
  `transport_mode_name` varchar(255) NOT NULL,
  `TM_shortname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport_mode`
--

INSERT INTO `transport_mode` (`transport_mode_id`, `transport_mode_name`, `TM_shortname`) VALUES
(1, 'AIR ', 'TMA'),
(2, 'LAND', 'TML'),
(4, 'SEA', 'TMS');

-- --------------------------------------------------------

--
-- Table structure for table `transport_mode_attributes`
--

CREATE TABLE `transport_mode_attributes` (
  `attribute_id` int(10) NOT NULL,
  `transport_mode1` varchar(30) NOT NULL,
  `transport_mode2` varchar(30) DEFAULT NULL,
  `transport_mode3` varchar(30) DEFAULT NULL,
  `attribute_name` varchar(255) NOT NULL,
  `attr_shortname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transport_mode_equipment`
--

CREATE TABLE `transport_mode_equipment` (
  `tmEquipment_id` int(10) NOT NULL,
  `transport_mode` varchar(30) NOT NULL,
  `transport_vehicle` varchar(255) NOT NULL,
  `equip_shortname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport_mode_equipment`
--

INSERT INTO `transport_mode_equipment` (`tmEquipment_id`, `transport_mode`, `transport_vehicle`, `equip_shortname`) VALUES
(1, 'TMA', 'PASSENGER AIRCRAFT', 'PAX'),
(2, 'TMA', 'FREIGHTER AIRCRAFT', 'FAX'),
(3, 'TMS', 'CONTAINER ', 'CTR'),
(4, 'TMS', 'BREAK BULK', 'BB'),
(5, 'TML', 'LIGHT PICKUP', 'LPT'),
(6, 'TML', 'MEDIUM PICKUP', 'MPT'),
(7, 'TML', 'HEAVY PICKUP', 'HPT'),
(8, 'TML', 'HEAVY TRUCK', 'HT'),
(9, 'TML', 'SPECIAL TRUCKS', 'ST');

-- --------------------------------------------------------

--
-- Table structure for table `uae_emirates`
--

CREATE TABLE `uae_emirates` (
  `emirate_id` int(10) NOT NULL,
  `emirate_name` varchar(30) NOT NULL,
  `emirate_shortname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uae_emirates`
--

INSERT INTO `uae_emirates` (`emirate_id`, `emirate_name`, `emirate_shortname`) VALUES
(1, 'ABU DHABI', 'ABD'),
(2, 'AJMAN', 'AJM'),
(3, 'SHARJAH', 'SHJ'),
(4, 'DUBAI', 'DXB'),
(5, 'FUJAIRAH', 'FUJ'),
(6, 'RAS AL KHAIMAH', 'RAK'),
(7, 'UMM AL QUWAIN', 'UAQ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL,
  `password` text NOT NULL,
  `last_login` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `banned_users` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `role`, `password`, `last_login`, `status`, `banned_users`) VALUES
(1, 'admin@gmail.com', 'Admin', 'Admin', '1', 'sha256:1000:UJxHaaFpM44Bj1ka7U58GiSHUx3zRWid:Hq86/PHYj0utJLz2ciHzSehsidHAZX+A', '2018-08-15 01:21:48 PM', 'approved', 'unban');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargo_types`
--
ALTER TABLE `cargo_types`
  ADD PRIMARY KEY (`cargo_type_id`),
  ADD UNIQUE KEY `cargo_type` (`cargo_type`);

--
-- Indexes for table `channel_partner`
--
ALTER TABLE `channel_partner`
  ADD PRIMARY KEY (`channel_partner_id`),
  ADD KEY `listing_quota` (`listing_quota`),
  ADD KEY `territory` (`territory`);

--
-- Indexes for table `partners_listing_quota`
--
ALTER TABLE `partners_listing_quota`
  ADD PRIMARY KEY (`partner_category_id`),
  ADD UNIQUE KEY `listing_quota` (`listing_quota`);

--
-- Indexes for table `service_provider`
--
ALTER TABLE `service_provider`
  ADD PRIMARY KEY (`provider_id`),
  ADD UNIQUE KEY `prov_shortname` (`prov_shortname`),
  ADD KEY `transport_mode` (`transport_mode`),
  ADD KEY `provider_type` (`provider_type`);

--
-- Indexes for table `service_provider_type`
--
ALTER TABLE `service_provider_type`
  ADD PRIMARY KEY (`provider_type_id`),
  ADD UNIQUE KEY `provider_type` (`provider_type`);

--
-- Indexes for table `service_territory`
--
ALTER TABLE `service_territory`
  ADD PRIMARY KEY (`service_territory_id`),
  ADD UNIQUE KEY `territory` (`territory`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmec_types`
--
ALTER TABLE `tmec_types`
  ADD PRIMARY KEY (`tmecType_id`),
  ADD UNIQUE KEY `type_shortname` (`type_shortname`),
  ADD KEY `tmecategory_id` (`tmecategory_id`),
  ADD KEY `cargotype` (`cargotype`),
  ADD KEY `territory` (`territory`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transportmodeequipment_category`
--
ALTER TABLE `transportmodeequipment_category`
  ADD PRIMARY KEY (`tmeCategory_id`),
  ADD UNIQUE KEY `cate_shortname` (`cate_shortname`),
  ADD KEY `tmequipment_id` (`tmequipment_id`);

--
-- Indexes for table `transport_mode`
--
ALTER TABLE `transport_mode`
  ADD PRIMARY KEY (`transport_mode_id`),
  ADD UNIQUE KEY `TM_shortname` (`TM_shortname`);

--
-- Indexes for table `transport_mode_attributes`
--
ALTER TABLE `transport_mode_attributes`
  ADD PRIMARY KEY (`attribute_id`),
  ADD UNIQUE KEY `attr_shortname` (`attr_shortname`),
  ADD KEY `transport_mode1` (`transport_mode1`),
  ADD KEY `transport_mode2` (`transport_mode2`),
  ADD KEY `transport_mode3` (`transport_mode3`);

--
-- Indexes for table `transport_mode_equipment`
--
ALTER TABLE `transport_mode_equipment`
  ADD PRIMARY KEY (`tmEquipment_id`),
  ADD UNIQUE KEY `equip_shortname` (`equip_shortname`),
  ADD KEY `transport_mode` (`transport_mode`);

--
-- Indexes for table `uae_emirates`
--
ALTER TABLE `uae_emirates`
  ADD PRIMARY KEY (`emirate_id`),
  ADD UNIQUE KEY `emirate_shortname` (`emirate_shortname`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargo_types`
--
ALTER TABLE `cargo_types`
  MODIFY `cargo_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `channel_partner`
--
ALTER TABLE `channel_partner`
  MODIFY `channel_partner_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners_listing_quota`
--
ALTER TABLE `partners_listing_quota`
  MODIFY `partner_category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_provider`
--
ALTER TABLE `service_provider`
  MODIFY `provider_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `service_provider_type`
--
ALTER TABLE `service_provider_type`
  MODIFY `provider_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_territory`
--
ALTER TABLE `service_territory`
  MODIFY `service_territory_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tmec_types`
--
ALTER TABLE `tmec_types`
  MODIFY `tmecType_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transportmodeequipment_category`
--
ALTER TABLE `transportmodeequipment_category`
  MODIFY `tmeCategory_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `transport_mode`
--
ALTER TABLE `transport_mode`
  MODIFY `transport_mode_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transport_mode_attributes`
--
ALTER TABLE `transport_mode_attributes`
  MODIFY `attribute_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_mode_equipment`
--
ALTER TABLE `transport_mode_equipment`
  MODIFY `tmEquipment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `uae_emirates`
--
ALTER TABLE `uae_emirates`
  MODIFY `emirate_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `channel_partner`
--
ALTER TABLE `channel_partner`
  ADD CONSTRAINT `channel_partner_ibfk_1` FOREIGN KEY (`listing_quota`) REFERENCES `partners_listing_quota` (`listing_quota`),
  ADD CONSTRAINT `channel_partner_ibfk_2` FOREIGN KEY (`territory`) REFERENCES `uae_emirates` (`emirate_shortname`);

--
-- Constraints for table `service_provider`
--
ALTER TABLE `service_provider`
  ADD CONSTRAINT `service_provider_ibfk_1` FOREIGN KEY (`transport_mode`) REFERENCES `transport_mode` (`TM_shortname`),
  ADD CONSTRAINT `service_provider_ibfk_2` FOREIGN KEY (`provider_type`) REFERENCES `service_provider_type` (`provider_type`);

--
-- Constraints for table `tmec_types`
--
ALTER TABLE `tmec_types`
  ADD CONSTRAINT `tmec_types_ibfk_1` FOREIGN KEY (`tmecategory_id`) REFERENCES `transportmodeequipment_category` (`cate_shortname`),
  ADD CONSTRAINT `tmec_types_ibfk_2` FOREIGN KEY (`cargotype`) REFERENCES `cargo_types` (`cargo_type`),
  ADD CONSTRAINT `tmec_types_ibfk_3` FOREIGN KEY (`territory`) REFERENCES `service_territory` (`territory`);

--
-- Constraints for table `transportmodeequipment_category`
--
ALTER TABLE `transportmodeequipment_category`
  ADD CONSTRAINT `transportmodeequipment_category_ibfk_1` FOREIGN KEY (`tmequipment_id`) REFERENCES `transport_mode_equipment` (`equip_shortname`);

--
-- Constraints for table `transport_mode_attributes`
--
ALTER TABLE `transport_mode_attributes`
  ADD CONSTRAINT `transport_mode_attributes_ibfk_1` FOREIGN KEY (`transport_mode1`) REFERENCES `transport_mode` (`TM_shortname`),
  ADD CONSTRAINT `transport_mode_attributes_ibfk_2` FOREIGN KEY (`transport_mode2`) REFERENCES `transport_mode` (`TM_shortname`),
  ADD CONSTRAINT `transport_mode_attributes_ibfk_3` FOREIGN KEY (`transport_mode3`) REFERENCES `transport_mode` (`TM_shortname`);

--
-- Constraints for table `transport_mode_equipment`
--
ALTER TABLE `transport_mode_equipment`
  ADD CONSTRAINT `transport_mode_equipment_ibfk_1` FOREIGN KEY (`transport_mode`) REFERENCES `transport_mode` (`TM_shortname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
