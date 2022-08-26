-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 04:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `phar_id` varchar(5) NOT NULL,
  `py_id` varchar(5) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `supervisor` varchar(20) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`phar_id`, `py_id`, `start_date`, `end_date`, `supervisor`, `description`) VALUES
('pc001', 'py004', '2020-10-10', '2024-01-01', 'Krishna', 'Well Maintained'),
('pc001', 'py008', '2021-05-15', '2023-12-20', 'Vishnu', 'Relatively inexpensive'),
('pc002', 'py001', '2021-10-05', '2023-01-24', 'Monica', 'Well Maintained'),
('pc003', 'py002', '2022-09-10', '2024-02-14', 'Chandler', 'Well Maintained'),
('pc004', 'py003', '2015-08-15', '2025-03-04', 'Phoeba', 'Well Maintained'),
('pc005', 'py005', '2016-07-20', '2026-04-22', 'Joey', 'Well Maintained'),
('pc006', 'py004', '2022-04-10', '2028-05-30', 'Mahehswara', 'Good'),
('pc006', 'py008', '2022-05-10', '2030-01-30', 'Narasimha', 'Very Good'),
('pc007', 'py006', '2017-06-25', '2027-05-12', 'Ross', 'Well Maintained'),
('pc008', 'py007', '2018-05-30', '2028-06-02', 'Janice', 'Well Maintained');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `d_ssn` varchar(5) NOT NULL,
  `d_name` varchar(25) DEFAULT NULL,
  `d_spec` varchar(25) DEFAULT NULL,
  `d_expr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`d_ssn`, `d_name`, `d_spec`, `d_expr`) VALUES
('d001', 'Bharath', 'Eye-Specialist', 5),
('d002', 'Chandhan', 'ENT-Specialist', 7),
('d003', 'Ajith', 'Orthopedic', 10),
('d004', 'Akash', 'Pediatric', 3),
('d005', 'Prashanth', 'Gyocholegist', 15),
('d006', 'Anjali', 'Physician', 5),
('d007', 'Deepa', 'Cardiologist', 20),
('d008', 'Sowmya', 'Surgon', 12);

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

CREATE TABLE `drug` (
  `drug_id` varchar(5) NOT NULL,
  `drug_name` varchar(25) DEFAULT NULL,
  `tr_name` varchar(25) DEFAULT NULL,
  `formula` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `expr_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug`
--

INSERT INTO `drug` (`drug_id`, `drug_name`, `tr_name`, `formula`, `price`, `expr_date`) VALUES
('dg001', 'Zeptal', 'drug1', 'd1+d2', 30, '2023-01-01'),
('dg002', 'Eye-Care', 'drug2', 'd2+d3', 150, '2024-01-01'),
('dg003', 'Dolo', 'drug3', 'd1+d3', 10, '2024-12-01'),
('dg004', 'Nicip', 'drug4', 'd2+d1', 15, '2025-11-01'),
('dg005', 'Citrizen', 'drug5', 'd3+d1', 5, '2024-10-01'),
('dg006', 'Brofin', 'drug6', 'd2+d4', 25, '2026-09-01'),
('dg007', 'Omeo', 'drug7', 'd4+d1', 35, '2025-08-01'),
('dg008', 'hp-kit', 'drug8', 'd3+d4', 60, '2022-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `manufacture`
--

CREATE TABLE `manufacture` (
  `drug_id` varchar(5) NOT NULL,
  `phar_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacture`
--

INSERT INTO `manufacture` (`drug_id`, `phar_id`) VALUES
('dg001', 'pc001'),
('dg002', 'pc001'),
('dg003', 'pc003'),
('dg004', 'pc004'),
('dg005', 'pc005'),
('dg006', 'pc001'),
('dg006', 'pc002'),
('dg006', 'pc003'),
('dg006', 'pc004'),
('dg006', 'pc005'),
('dg006', 'pc006'),
('dg006', 'pc007'),
('dg006', 'pc008'),
('dg007', 'pc006'),
('dg008', 'pc007');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_ssn` varchar(5) NOT NULL,
  `p_name` varchar(25) DEFAULT NULL,
  `p_addr` varchar(30) DEFAULT NULL,
  `p_age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_ssn`, `p_name`, `p_addr`, `p_age`) VALUES
('p001', 'Kumar', 'bangalore', 30),
('p002', 'Manju', 'hubi', 20),
('p003', 'Raju', 'Dharvad', 35),
('p004', 'Sridhar', 'Vijayanagar', 28),
('p005', 'Sidharth', 'Nagarbhavi', 39),
('p006', 'Shankar', 'Hebbal', 45),
('p007', 'Monika', 'Silk Town', 32),
('p008', 'Manjula', 'Bommanahalli', 14),
('p009', 'Shilpa', 'Electronic city', 20);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `py_id` varchar(5) NOT NULL,
  `py_name` varchar(30) DEFAULT NULL,
  `py_city` varchar(25) DEFAULT NULL,
  `py_ph` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`py_id`, `py_name`, `py_city`, `py_ph`) VALUES
('py001', 'Apollo', 'vijayanagar', 9845203154),
('py002', 'Med Plus', 'Nagarbhavi', 9845201258),
('py003', 'Practo', 'Electronic city', 9845206598),
('py004', 'SLV', 'Bangalore', 9845203178),
('py005', 'Himalaya', 'Hesaraghatta', 9845206200),
('py006', 'Medi Care', 'Anjananagar', 9845207236),
('py007', 'Zandhan', 'Bommanahalli', 9845201430),
('py008', 'Modi', 'Bangalore', 9845208520);

-- --------------------------------------------------------

--
-- Table structure for table `phar_comp`
--

CREATE TABLE `phar_comp` (
  `phar_id` varchar(5) NOT NULL,
  `phar_name` varchar(30) DEFAULT NULL,
  `phar_city` varchar(25) DEFAULT NULL,
  `phar_ph` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phar_comp`
--

INSERT INTO `phar_comp` (`phar_id`, `phar_name`, `phar_city`, `phar_ph`) VALUES
('pc001', 'Himalaya.pvt.ltd', 'Bangalore', 9845789654),
('pc002', 'Apollo.pvt.ltd', 'Mysore', 9845589745),
('pc003', 'Drugmaker.pvt.ltd', 'Dharwad', 9845321478),
('pc004', 'CAD Pharma.pvt.ltd', 'Hubli', 9845251398),
('pc005', 'Remidix.pvt.ltd', 'Bellari', 9845021473),
('pc006', 'Biocon.pvt.ltd', 'Bangalore', 9845321000),
('pc007', 'Microlabs.pvt.ltd', 'Shimoga', 9845157035),
('pc008', 'Apotex.pvt.ltd', 'Bijapur', 9845100025);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `presc_id` varchar(5) NOT NULL,
  `d_ssn` varchar(5) DEFAULT NULL,
  `p_ssn` varchar(5) DEFAULT NULL,
  `drug_name` varchar(30) DEFAULT NULL,
  `presc_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`presc_id`, `d_ssn`, `p_ssn`, `drug_name`, `presc_date`) VALUES
('pr001', 'd002', 'p001', 'Zeptol', '2024-02-01'),
('pr002', 'd001', 'p002', 'Eye-care', '2023-10-30'),
('pr003', 'd003', 'p003', 'Dolo', '2024-02-01'),
('pr004', 'd004', 'p004', 'Nicip', '2024-02-01'),
('pr005', 'd005', 'p005', 'Citrizen', '2024-02-01'),
('pr006', 'd006', 'p006', 'Brofin', '2024-02-01'),
('pr007', 'd007', 'p007', 'Omeo', '2024-02-01'),
('pr008', 'd008', 'p008', 'hp-kit', '2024-02-01'),
('pr009', 'd001', 'p009', 'Eye-care', '2023-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `selling`
--

CREATE TABLE `selling` (
  `drug_id` varchar(5) NOT NULL,
  `py_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selling`
--

INSERT INTO `selling` (`drug_id`, `py_id`) VALUES
('dg001', 'py001'),
('dg002', 'py002'),
('dg003', 'py003'),
('dg004', 'py004'),
('dg005', 'py005'),
('dg006', 'py006'),
('dg007', 'py007'),
('dg008', 'py008');

-- --------------------------------------------------------

--
-- Table structure for table `treats`
--

CREATE TABLE `treats` (
  `d_ssn` varchar(5) NOT NULL,
  `p_ssn` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treats`
--

INSERT INTO `treats` (`d_ssn`, `p_ssn`) VALUES
('d001', 'p002'),
('d001', 'p009'),
('d002', 'p001'),
('d003', 'p003'),
('d004', 'p004'),
('d005', 'p005'),
('d006', 'p006'),
('d007', 'p007'),
('d008', 'p008');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`phar_id`,`py_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`d_ssn`);

--
-- Indexes for table `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `manufacture`
--
ALTER TABLE `manufacture`
  ADD PRIMARY KEY (`drug_id`,`phar_id`),
  ADD KEY `phar_id` (`phar_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_ssn`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`py_id`);

--
-- Indexes for table `phar_comp`
--
ALTER TABLE `phar_comp`
  ADD PRIMARY KEY (`phar_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`presc_id`);

--
-- Indexes for table `selling`
--
ALTER TABLE `selling`
  ADD PRIMARY KEY (`drug_id`,`py_id`),
  ADD KEY `py_id` (`py_id`);

--
-- Indexes for table `treats`
--
ALTER TABLE `treats`
  ADD PRIMARY KEY (`d_ssn`,`p_ssn`),
  ADD KEY `p_ssn` (`p_ssn`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `manufacture`
--
ALTER TABLE `manufacture`
  ADD CONSTRAINT `manufacture_ibfk_1` FOREIGN KEY (`drug_id`) REFERENCES `drug` (`drug_id`),
  ADD CONSTRAINT `manufacture_ibfk_2` FOREIGN KEY (`phar_id`) REFERENCES `phar_comp` (`phar_id`);

--
-- Constraints for table `selling`
--
ALTER TABLE `selling`
  ADD CONSTRAINT `selling_ibfk_1` FOREIGN KEY (`drug_id`) REFERENCES `drug` (`drug_id`),
  ADD CONSTRAINT `selling_ibfk_2` FOREIGN KEY (`py_id`) REFERENCES `pharmacy` (`py_id`);

--
-- Constraints for table `treats`
--
ALTER TABLE `treats`
  ADD CONSTRAINT `treats_ibfk_1` FOREIGN KEY (`d_ssn`) REFERENCES `doctor` (`d_ssn`),
  ADD CONSTRAINT `treats_ibfk_2` FOREIGN KEY (`p_ssn`) REFERENCES `patient` (`p_ssn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
