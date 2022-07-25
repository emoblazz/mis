-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2022 at 11:27 AM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sinhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `fullname`, `password`, `contact`, `pic`) VALUES
(1, 'emoblazz', 'Honeylee T. Magbanua', '202cb962ac59075b964b07152d234b70', '09263562814', '../dist/img/avatar3.png'),
(2, 'gemma', 'Gemma Belnas', '9fab187bcdc5a5baf91a986ca34debe9', 'na', '../dist/img/avatar3.png'),
(3, 'alma', 'Alma Garnica', '202cb962ac59075b964b07152d234b70', 'na', '../dist/img/avatar3.png'),
(4, 'barbie', 'Ma. Sheila Fortunado', 'ffe49cdf45d56b04b8542e6abc4f5fb6', '09307730273', '../dist/img/avatar3.png'),
(5, 'nhez', 'Ma. Henisa Bandiola', '202cb962ac59075b964b07152d234b70', '09', '../dist/img/avatar3.png');

-- --------------------------------------------------------

--
-- Table structure for table `allotment`
--

CREATE TABLE `allotment` (
  `allotment_id` int(11) NOT NULL,
  `allotment_month` int(11) NOT NULL,
  `allotment_year` int(11) NOT NULL,
  `allotment_amount` decimal(15,2) NOT NULL,
  `uacs_id` int(11) NOT NULL,
  `fund_source_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allotment`
--

INSERT INTO `allotment` (`allotment_id`, `allotment_month`, `allotment_year`, `allotment_amount`, `uacs_id`, `fund_source_id`) VALUES
(1, 1, 0, '644000.00', 6, 0),
(2, 2, 0, '58000.00', 6, 0),
(3, 3, 0, '78000.00', 6, 0),
(4, 4, 0, '650000.00', 6, 0),
(5, 5, 0, '600000.00', 6, 0),
(6, 6, 0, '645000.00', 6, 0),
(7, 7, 0, '58000.00', 6, 0),
(8, 8, 0, '86000.00', 6, 0),
(9, 9, 0, '58000.00', 6, 0),
(10, 10, 0, '76000.00', 6, 0),
(11, 11, 0, '53000.00', 6, 0),
(12, 12, 0, '50000.00', 6, 0),
(13, 1, 0, '100000.00', 32, 0),
(14, 2, 0, '99000.00', 32, 0),
(15, 3, 0, '88000.00', 32, 0),
(16, 4, 0, '95000.00', 32, 0),
(17, 5, 0, '101000.00', 32, 0),
(18, 6, 0, '50000.00', 32, 0),
(19, 7, 0, '45000.00', 32, 0),
(20, 8, 0, '65000.00', 32, 0),
(21, 9, 0, '85000.00', 32, 0),
(22, 10, 0, '95000.00', 32, 0),
(23, 11, 0, '105000.00', 32, 0),
(24, 12, 0, '20000.00', 32, 0),
(25, 1, 0, '10.00', 23, 0),
(26, 2, 0, '20.00', 23, 0),
(27, 3, 0, '30.00', 23, 0),
(28, 4, 0, '40.00', 23, 0),
(29, 5, 0, '50.00', 23, 0),
(30, 6, 0, '60.00', 23, 0),
(31, 7, 0, '70.00', 23, 0),
(32, 8, 0, '80.00', 23, 0),
(33, 9, 0, '90.00', 23, 0),
(34, 10, 0, '100.00', 23, 0),
(35, 11, 0, '110.00', 23, 0),
(36, 12, 0, '120.00', 23, 0),
(37, 1, 0, '53000.00', 22, 0),
(38, 2, 0, '53000.00', 22, 0),
(39, 3, 0, '53000.00', 22, 0),
(40, 4, 0, '53000.00', 22, 0),
(41, 5, 0, '53000.00', 22, 0),
(42, 6, 0, '53000.00', 22, 0),
(43, 7, 0, '53000.00', 22, 0),
(44, 8, 0, '53000.00', 22, 0),
(45, 9, 0, '53000.00', 22, 0),
(46, 10, 0, '53000.00', 22, 0),
(47, 11, 0, '53000.00', 22, 0),
(48, 12, 0, '53000.00', 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date_posted` datetime NOT NULL,
  `announcement_title` varchar(1000) NOT NULL,
  `announcement_desc` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`announcement_id`, `id`, `date_posted`, `announcement_title`, `announcement_desc`) VALUES
(1, 1, '2019-10-12 08:43:00', 'No Class November 1, 2019', 'There will be no class on november 1, 2019 in relation to All Saints Day');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `designation_id` int(11) NOT NULL,
  `step` int(11) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `appointment_status` varchar(50) NOT NULL,
  `appointment_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `id`, `appointment_date`, `designation_id`, `step`, `remarks`, `appointment_status`, `appointment_type`) VALUES
(1, 10, '2019-09-09', 4, 1, '', 'active', 'Original'),
(2, 11, '2016-07-01', 1, 2, '', 'active', 'Original'),
(3, 12, '1999-01-01', 6, 3, '', 'active', 'Original'),
(4, 13, '2018-07-06', 1, 1, '', 'active', 'Original'),
(5, 14, '2017-06-06', 1, 1, '', 'active', 'Original'),
(6, 15, '2017-08-01', 1, 1, '', 'active', 'Original'),
(7, 16, '2017-08-07', 1, 1, '', 'active', 'Original'),
(8, 17, '2010-07-20', 1, 4, '', 'active', 'Original'),
(9, 18, '2015-10-01', 1, 2, '', 'active', 'Original'),
(10, 19, '2011-09-20', 3, 2, '', 'active', 'Original'),
(11, 20, '2001-06-14', 3, 2, '', 'active', 'Original'),
(12, 21, '1991-10-21', 3, 5, '', 'active', 'Original'),
(13, 22, '2004-10-01', 3, 2, '', 'active', 'Original'),
(14, 23, '2008-12-08', 3, 2, '', 'active', 'Original'),
(15, 24, '1996-07-01', 3, 3, '', 'active', 'Original'),
(16, 25, '2009-07-28', 3, 2, '', 'active', 'Original'),
(17, 26, '2013-09-09', 3, 2, '', 'active', 'Original'),
(18, 27, '2013-05-15', 1, 3, '', 'active', 'Original'),
(19, 28, '2013-05-15', 1, 3, '', 'active', 'Original'),
(20, 29, '2019-07-22', 1, 1, '', 'active', 'Original'),
(21, 30, '2016-08-05', 1, 2, '', 'active', 'Original'),
(22, 31, '2015-01-05', 1, 2, '', 'active', 'Original');

-- --------------------------------------------------------

--
-- Table structure for table `archive`
--

CREATE TABLE `archive` (
  `archive_id` int(11) NOT NULL,
  `archive_title` varchar(200) NOT NULL,
  `archive_desc` varchar(500) NOT NULL,
  `archive_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `archive`
--

INSERT INTO `archive` (`archive_id`, `archive_title`, `archive_desc`, `archive_date`) VALUES
(2, 'Guidelines on the Grant of Cash Allowance for Teacher 2022-2023', 'Guidelines on the Grant of Cash Allowance for Teacher 2022-2023 Deped Order # 10 s 2020 ', '2022-06-22 16:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `archive_details`
--

CREATE TABLE `archive_details` (
  `archive_details_id` int(11) NOT NULL,
  `archive_id` int(11) NOT NULL,
  `archive_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `archive_details`
--

INSERT INTO `archive_details` (`archive_details_id`, `archive_id`, `archive_file`) VALUES
(1, 1, '1 - Copy.JPG'),
(2, 1, '2.jpg'),
(3, 2, 'DO_s2020_010-Guidelines-on-the-Grant-of-Cash-Allowance-to-Teachers.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `attachment_id` int(11) NOT NULL,
  `attachment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attachment`
--

INSERT INTO `attachment` (`attachment_id`, `attachment`) VALUES
(1, 'Appointment'),
(2, 'Service Record'),
(3, 'TIN'),
(4, 'ATM'),
(5, 'Authority to Travel'),
(6, 'Certificate of Appearance'),
(7, 'Letter Request to Avail Monetization'),
(8, 'Certificate of Availability of Funds and All Payables are Settled'),
(9, 'FORM 6'),
(10, 'Certificate of Travel Completion'),
(11, 'Itinerary of Travel'),
(12, 'Memorandum'),
(13, 'Tickets, Receipts');

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE `checklist` (
  `checklist_id` int(11) NOT NULL,
  `checklist_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checklist`
--

INSERT INTO `checklist` (`checklist_id`, `checklist_title`) VALUES
(1, 'Salary Integration (Step )'),
(2, 'Salary Integration (Newly Hired)'),
(3, 'Local Travel'),
(5, 'None'),
(8, 'Loyalty '),
(9, 'Monetization of Leave Credits');

-- --------------------------------------------------------

--
-- Table structure for table `checklist_details`
--

CREATE TABLE `checklist_details` (
  `checklist_details_id` int(11) NOT NULL,
  `checklist_id` int(11) NOT NULL,
  `attachment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checklist_details`
--

INSERT INTO `checklist_details` (`checklist_details_id`, `checklist_id`, `attachment_id`) VALUES
(5, 0, 5),
(7, 8, 2),
(11, 2, 1),
(12, 2, 4),
(13, 2, 3),
(14, 3, 5),
(15, 9, 8),
(16, 9, 9),
(17, 9, 7),
(18, 3, 6),
(19, 3, 10),
(20, 3, 12),
(21, 3, 13),
(22, 3, 11),
(23, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `designation_code` varchar(15) NOT NULL,
  `salary_grade` int(11) NOT NULL,
  `salary` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation`, `designation_code`, `salary_grade`, `salary`) VALUES
(1, 'Teacher I', 'T-1', 12, '0.00'),
(2, 'Teacher II', 'T-2', 18, '0.00'),
(3, 'Teacher III', 'T-3', 8, '0.00'),
(4, 'Administrative Assistant II', 'ADAS II', 8, '0.00'),
(5, 'School Clerk', 'Clerk', 0, '0.00'),
(6, 'Principal II', 'P-2', 18, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `disbursement`
--

CREATE TABLE `disbursement` (
  `dv_id` int(11) NOT NULL,
  `payee_id` int(11) NOT NULL,
  `particulars` varchar(500) NOT NULL,
  `dv_date` date NOT NULL,
  `dv_amount` decimal(15,2) NOT NULL,
  `uacs_id` int(11) NOT NULL,
  `jev_no` int(11) NOT NULL,
  `obr_no` int(11) NOT NULL,
  `dv_no` int(11) NOT NULL,
  `nca_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disbursement`
--

INSERT INTO `disbursement` (`dv_id`, `payee_id`, `particulars`, `dv_date`, `dv_amount`, `uacs_id`, `jev_no`, `obr_no`, `dv_no`, `nca_id`) VALUES
(8, 3, 'ddede', '2020-01-02', '20000.00', 6, 1, 1, 1, 10),
(10, 3, 'dsds', '2020-02-13', '3000.00', 11, 1, 1, 1, 9),
(11, 7, 'dsdsd', '2020-01-31', '2000.00', 8, 3, 3, 3, 17),
(12, 7, 'dded', '2020-01-30', '2000.00', 8, 3, 3, 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

CREATE TABLE `doc` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(100) NOT NULL,
  `doc_date` datetime NOT NULL,
  `doc_subject` varchar(100) NOT NULL,
  `doc_desc` varchar(500) NOT NULL,
  `doc_remarks` varchar(500) NOT NULL,
  `doc_type` varchar(20) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc`
--

INSERT INTO `doc` (`doc_id`, `doc_name`, `doc_date`, `doc_subject`, `doc_desc`, `doc_remarks`, `doc_type`, `admin_id`) VALUES
(1, 'NOCECO', '2022-06-20 14:43:43', 'NOCECO Bill & DV June 2022', 'NOCECO Bill & DV June 2022, DV Praise 29k, 28k and internet.', 'Mam Ging for payment\r\nReturn: June 27,2022', 'Outgoing', 2),
(3, 'Jegabytes ', '2022-06-22 09:36:38', 'Jegabytes documents DV,OBR,JEV, RFQ for May 2022 HDD', 'Jegabytes documents DV,OBR,JEV, RFQ for May 2022 HDD', 'C/O Henisa\r\nReturned 7/6/202 with receipt', 'Outgoing', 2),
(4, 'Kristine Ann N. Fangena', '2022-07-06 10:50:34', 'Good Moral', 'Good Moral ', 'Kristine Ann N. Fangena', 'Outgoing', 5);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `level` varchar(30) NOT NULL,
  `employee_no` varchar(11) NOT NULL,
  `last` varchar(30) NOT NULL,
  `first` varchar(30) NOT NULL,
  `middle` varchar(30) NOT NULL,
  `address` varchar(500) NOT NULL,
  `birthday` date NOT NULL,
  `contact` varchar(30) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `citizenship` varchar(30) NOT NULL,
  `gsis_no` varchar(30) NOT NULL,
  `pagibig_no` varchar(15) NOT NULL,
  `phic_no` varchar(15) NOT NULL,
  `tin` varchar(15) NOT NULL,
  `civil_status` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `orig_appointment` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `level`, `employee_no`, `last`, `first`, `middle`, `address`, `birthday`, `contact`, `sex`, `citizenship`, `gsis_no`, `pagibig_no`, `phic_no`, `tin`, `civil_status`, `username`, `password`, `orig_appointment`) VALUES
(10, 'JHS', '6427971', 'Magbanua', 'Honeylee', 'Tolentino', 'Bago City', '1989-10-14', 'RJM11021990', 'Female', '', '', '', '', '403733637000', '', 'emoblazz', '123', '2019-09-09'),
(11, 'JHS', '6312053', 'Canja', 'Jomarie', 'A', '', '1992-10-17', 'RJM11021990', 'Male', '', '', '', '', '', '', '', '', '2016-07-01'),
(12, 'JHS', '4590803', 'Estacion', 'Joy', 'Olarte', '', '0000-00-00', 'RJM11021990', 'Female', '', '', '', '', '', '', '', '', '1999-01-01'),
(13, 'JHS', '6427972', 'Gregorio', 'Jenny Ann', 'Tendero', '', '1990-11-14', 'RJM11021990', 'Female', '', '', '', '', '349326920000', '', '', '', '2018-07-06'),
(14, 'JHS', '6387404', 'Eyan', 'Raffy', 'Belnas', '', '1994-11-07', 'RJM11021990', 'Male', '', '', '', '', '338512709000', '', '', '', '2017-06-06'),
(15, 'JHS', '6387403', 'Eledia', 'Marjorie', 'Sioson', '', '1993-12-23', 'RJM11021990', 'Female', 'Filipino', '', '', '', '457993993000', '', '', '', '2017-08-01'),
(16, 'JHS', '6387402', 'Dequilla', 'Jessica', 'Matillano', '', '1986-06-05', 'RJM11021990', 'Female', 'Filipino', '', '', '', '428760123000', '', '', '', '2017-08-07'),
(17, 'JHS', '4537723', 'Pura', 'Lisandro', 'Escanlar', '', '1978-08-03', 'RJM11021990', 'Male', '', '', '', '', '238123684000', '', '', '', '2010-07-20'),
(18, 'JHS', '6312054', 'Marcito', 'Rebecca', 'Galvez', '', '1987-08-09', 'RJM11021990', 'Female', '', '', '', '', '307498799000', '', '', '', '2015-10-01'),
(19, 'JHS', '4590790', 'Teodoro', 'Ammie', 'Eumag', '', '1970-03-24', 'RJM11021990', 'Female', 'Filipino', '', '', '', '104578996000', '', '', '', '2011-09-20'),
(20, 'JHS', '0012134', 'Resuma', 'Rowena', 'Atienza', '', '1970-03-05', 'RJM11021990', 'Female', 'Filipino', '', '', '', '198869293000', '', '', '', '2001-06-14'),
(21, 'JHS', '0011952', 'Teodoro', 'Lucenda', 'Quillip', '', '1960-03-25', 'RJM11021990', 'Female', '', '', '', '', '160715292000', '', '', '', '1991-10-21'),
(22, 'JHS', '0012635', 'Belnas', 'Gemma ', 'Maghari', '', '1969-12-30', 'RJM11021990', 'Female', '', '', '', '', '921003036000', '', '', '', '2004-10-01'),
(23, 'JHS', '4452078', 'De Asis', 'Rosebec', 'Era', '', '1978-01-23', 'RJM11021990', 'Female', '', '', '', '', '494184487000', '', '', '', '2008-12-08'),
(24, 'JHS', '0011955', 'Ambagan', 'Ailene', 'Tagasling', '', '1974-11-26', 'RJM11021990', 'Female', '', '', '', '', '191665000000', '', '', '', '1996-07-01'),
(25, 'JHS', '4537479', 'Celis', 'Caroline', 'Villar', '', '1977-01-05', 'RJM11021990', 'Female', '', '', '', '', '921001242000', '', '', '', '2009-07-28'),
(26, 'JHS', '4767041', 'Tuya', 'Everlee Faith', 'Lim', '', '1978-11-15', 'RJM11021990', 'Female', '', '', '', '', '932622941000', '', '', '', '2013-09-09'),
(27, 'JHS', '4767039', 'Elayron', 'Mhervie', 'Geanga', '', '1979-09-22', 'RJM11021990', 'Male', '', '', '', '', '436260063000', '', '', '', '2013-05-15'),
(28, 'JHS', '4767040', 'Sarasa', 'Rocelia', 'Marqueza', '', '1973-02-22', 'RJM11021990', 'Male', '', '', '', '', '401287124000', '', '', '', '2013-05-15'),
(29, 'JHS', '6427826', 'Geanga', 'Cris May', '', '', '1996-12-20', 'RJM11021990', 'Female', '', '', '', '', '337105320000', '', '', '', '2019-07-22'),
(30, 'JHS', '6312052', 'Hulleza', 'Rochellie', 'Gonzaga', '', '1991-01-20', 'RJM11021990', 'Female', '', '', '', '', '489444518000', '', '', '', '2016-08-05'),
(31, 'JHS', '6387405', 'Gomez', 'Epie', 'Arimas', '', '1962-01-06', 'RJM11021990', 'Male', '', '', '', '', '136051345000', '', '', '', '2015-01-05');

-- --------------------------------------------------------

--
-- Table structure for table `enrol`
--

CREATE TABLE `enrol` (
  `enrol_id` int(10) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `sy` varchar(15) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `section` varchar(30) DEFAULT NULL,
  `enrol_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_id` int(11) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_desc` varchar(500) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  `file_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`file_id`, `file_name`, `file_desc`, `date_uploaded`, `file_url`) VALUES
(1, 'FAR 4 SEPTEMBER 2019', 'FAR 4 SEPTEMBER 2019', '2019-10-22 05:34:00', 'far4.jpg'),
(2, 'List of Personnel granted Step Increment 2019', 'List of Personnel granted Step Increment 2019 Excel', '2019-10-23 05:41:00', 'step_2019.xlsx'),
(3, 'List of Personnel Entitled for Loyalty Pay  2019', 'List of Personnel Entitled for Loyalty Pay  2019 Excel', '2019-10-23 05:42:00', 'loyalty_list_2019.xlsx'),
(4, 'Health Assessment Per Student Form 2019', 'Health Assessment Per Student Form Excel File 2019', '2019-11-06 02:23:00', 'health-assessment-per-student (1).xlsx'),
(5, 'Health Summary Per Section Form 2019', 'Health Summary Per Section Form 2019 Excel File', '2019-11-06 02:24:00', 'summary-per-section-health.xlsx'),
(6, 'ADE October 2019 Excel', 'ADE October 2019 Excel\r\nActual Daily Expenditures October 2019', '2019-11-06 02:26:00', 'ADE102019.xlsx'),
(7, 'Year End Bonus And Cash Gift Matrix 2019', 'Year End Bonus And Cash Gift Matrix 2019', '2019-11-06 02:36:00', 'yearendcg2019.jpg'),
(8, 'Tax Computation 2019 Excel', 'Tax Computation 2019 Excel', '2019-11-06 02:49:00', 'Tax-Computation-2019.xlsx'),
(9, 'School Based Authority to Travel 2019 Excel', 'School Based Authority to Travel 2019 Excel', '2019-11-06 03:07:00', 'School Based-Authority-To-Travel.xlsx'),
(10, 'Annex B October 2019 Excel', 'Annex B October 2019 Excel File', '2019-11-06 06:01:00', 'annexB_102019.xlsx'),
(11, 'URS Generated Far4 October 2019 Excel', 'URS Generated Far4 October 2019 Excel', '2019-11-07 02:30:00', 'far4_102019_urs.xlsx'),
(12, 'GACPA Memorandum Seminar Boracay 2019', 'GACPA Memorandum Seminar Boracay 2019', '2019-11-07 03:04:00', 'GACPA Memorandum Boracay 2019.jpg'),
(13, 'Program of Works Form', 'Program of Works Form Excel', '2019-12-03 04:10:00', 'programofworks.xlsx'),
(14, 'Purchase Request Form', 'Purchase Request Form Excel', '2019-12-03 04:11:00', 'purchaserequest.xlsx'),
(15, 'RFQ For Goods Form', 'RFQ For Goods Form Excel', '2019-12-03 04:12:00', 'rfq.xlsx'),
(16, 'ADE November 2019 Excel', 'ADE November 2019 Excel', '2019-12-03 04:12:00', 'ADE112019.xlsx'),
(17, 'FAR 4 NOVEMBER 2019 PDF URS', 'FAR 4 NOVEMBER 2019 PDF URS', '2019-12-03 04:13:00', 'far4112019.pdf'),
(18, 'FAR 4 NOVEMBER 2019 EXCEL ', 'FAR 4 NOVEMBER 2019 EXCEL ', '2019-12-03 04:13:00', 'FAR4112019.xlsx'),
(19, 'Template Annexes Excel', 'Template Annexes Excel', '2019-12-03 04:15:00', 'Template Annexes.xls');

-- --------------------------------------------------------

--
-- Table structure for table `file_details`
--

CREATE TABLE `file_details` (
  `file_details_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `filename` varchar(500) NOT NULL,
  `file_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `form_id` int(11) NOT NULL,
  `form_title` varchar(100) NOT NULL,
  `form_desc` varchar(500) NOT NULL,
  `form_file` varchar(200) NOT NULL,
  `form_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`form_id`, `form_title`, `form_desc`, `form_file`, `form_date`) VALUES
(4, 'Form 6 Revised 2020', 'CSC Form 6 Leave Form Revised 2020', 'CSC_Form_6_Leave_Form-New.xlsx', '2022-06-08 08:26:31'),
(5, 'Travel Order', 'School Based Authority to Travel', 'School Based Authority to Travel.xlsx', '2022-06-08 08:38:39'),
(6, 'Reimbursement Expense Receipt', 'Appendix 46 RER', 'Appendix-46-RER.xls', '2022-06-08 09:41:50'),
(7, 'Form 211 Revised 2018', 'Medical Certificate Form 211 Revised 2018', 'Form 211 Revised 2018.xls', '2022-06-08 09:46:46'),
(9, 'Enrollment Form 2022-2023', 'Enrollment Form 2022-2023', 'enrollment form 2022 2023.pdf', '2022-06-09 10:59:16'),
(10, 'Request Form 137', 'Request Form 137', 'REQUEST (FORM 137).docx', '2022-06-09 11:01:54'),
(11, 'Good Moral', 'School Good Moral 2022', 'GOOD MORAL.docx', '2022-06-09 11:20:49'),
(12, 'Certification of Enrollment', 'Certification of Enrollment 2022', 'Certificate of Enrolment.docx', '2022-06-09 11:22:03'),
(13, 'Certificate of Appearance', 'Certificate of Appearance', 'certificate of appearance.docx', '2022-06-09 11:24:24'),
(14, 'Front Cover', 'Front Cover for Reports/Documents', 'FRONTCOVER.docx', '2022-06-09 11:28:40'),
(15, 'Home Visitation Form', 'Home Visitation Form', 'home visitation form.pub', '2022-06-09 11:29:44'),
(16, 'School Clearance', 'School Clearance for School Personnel', 'School Clearance.docx', '2022-06-09 12:10:28'),
(17, 'Form 41 Medical Certificate', 'CSC Form 41 Medical Certificate For Maternity Leave', 'CS Form 41 CSC Medical Certification.pdf', '2022-06-09 12:12:42'),
(18, 'Purchase Order and RFQ Template', 'Purchase Order and RFQ Template', 'Procurement Attachments.xlsx', '2022-06-20 13:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `fund_source`
--

CREATE TABLE `fund_source` (
  `fund_source_id` int(11) NOT NULL,
  `fund_source` varchar(100) NOT NULL,
  `type_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fund_source`
--

INSERT INTO `fund_source` (`fund_source_id`, `fund_source`, `type_id`) VALUES
(1, 'PS', 1),
(2, 'RLIP', 1),
(3, 'JHS MOOE', 2),
(4, 'SHS MOOE', 2);

-- --------------------------------------------------------

--
-- Table structure for table `incoming`
--

CREATE TABLE `incoming` (
  `in_id` int(11) NOT NULL,
  `in_name` varchar(50) NOT NULL,
  `in_date` datetime NOT NULL,
  `in_subject` varchar(100) NOT NULL,
  `in_desc` varchar(100) NOT NULL,
  `in_remarks` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `journal_id` int(11) NOT NULL,
  `journal_date` date NOT NULL,
  `fund_source` varchar(30) NOT NULL,
  `particulars` varchar(500) NOT NULL,
  `uacs_code` varchar(15) NOT NULL,
  `debit` decimal(12,2) NOT NULL,
  `credit` decimal(12,2) NOT NULL,
  `dv_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`journal_id`, `journal_date`, `fund_source`, `particulars`, `uacs_code`, `debit`, `credit`, `dv_no`) VALUES
(2, '2019-10-14', 'MOOE', 'To record Training Expense for JHS Math Teachers', '5020201000', '4370.00', '0.00', 0),
(3, '2019-10-15', 'MOOE', 'To record travel expense of Eyan, Raffy to attend YES-O Election', '5020101000', '694.00', '0.00', 0),
(4, '2019-10-15', 'MOOE', 'To record payment of training expenses of ADAS II for the month of October 2019 (registration fee)', '5020201000', '2300.00', '0.00', 0),
(5, '2019-10-15', 'MOOE', 'To record payment of training expenses for INSET 2019', '5020201000', '18500.00', '0.00', 0),
(6, '2019-10-15', 'MOOE', 'To record payment of internet expense for the month of October 2019', '5020503000', '3598.00', '0.00', 0),
(7, '2019-10-15', 'MOOE', 'To record payment of travelling expenses of Belnas, Gemma for the month of October', '5020101000', '1282.00', '0.00', 0),
(9, '2019-10-15', 'MOOE', 'To record payment of water expenses for the month of October 2019', '5020401000', '840.00', '0.00', 0),
(10, '2019-10-15', 'MOOE', 'To record payment of various office supplies for the month of October 2019', '5020301000', '1110.00', '0.00', 0),
(12, '2019-10-21', 'PS', 'To record payment of 18 RPSU paid personnel for the month of October 2019', '5010101000', '169710.29', '0.00', 0),
(14, '2019-10-21', 'PS', 'To record payment of salary of Estacion, Joy for the month of October 2019', '5010101000', '42704.60', '0.00', 0),
(15, '2019-10-21', 'MOOE', 'To record payment of Electricity Expense for the month of October 2019', '5020402000', '5371.91', '0.00', 0),
(16, '2019-10-21', 'MOOE', 'To record payment of labor and wages of school clerk for the month of October 2019', '5021601000', '5000.00', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `list_id` int(11) NOT NULL,
  `list_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loyalty`
--

CREATE TABLE `loyalty` (
  `loyalty_id` int(11) NOT NULL,
  `loyalty_date` date NOT NULL,
  `loyalty_length` int(11) NOT NULL,
  `loyalty_status` varchar(30) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loyalty`
--

INSERT INTO `loyalty` (`loyalty_id`, `loyalty_date`, `loyalty_length`, `loyalty_status`, `id`) VALUES
(6, '2019-10-10', 10, 'Claimed', 5),
(7, '2031-10-10', 5, '', 5),
(8, '2036-10-10', 5, '', 5),
(9, '2000-10-10', 10, '', 6),
(10, '2005-10-10', 5, '', 6),
(11, '2010-10-10', 5, '', 6),
(12, '2015-10-10', 5, '', 6),
(13, '2020-10-10', 5, '', 6),
(14, '2025-10-10', 5, '', 6),
(15, '2030-10-10', 5, '', 6),
(16, '2035-10-10', 5, '', 6),
(17, '2029-10-02', 10, '', 7),
(18, '2034-10-02', 5, '', 7),
(21, '1995-01-01', 5, '', 7),
(22, '2000-01-01', 5, '', 7),
(23, '2005-01-01', 5, '', 7),
(24, '2010-01-01', 5, '', 7),
(25, '2009-01-01', 10, '', 8),
(26, '2014-01-01', 5, '', 8),
(27, '2019-01-01', 5, '', 8),
(28, '2024-01-01', 5, '', 8),
(29, '2029-01-01', 5, '', 8),
(30, '2034-01-01', 5, '', 8),
(33, '2029-09-09', 10, '', 9),
(34, '2034-09-09', 5, '', 9),
(37, '2029-09-09', 10, '', 10),
(38, '2034-09-09', 5, '', 10),
(41, '2026-07-01', 10, '', 11),
(42, '2031-07-01', 5, '', 11),
(43, '2036-07-01', 5, '', 11),
(45, '2009-01-01', 10, 'Claimed', 12),
(46, '2014-01-01', 5, 'Claimed', 12),
(47, '2019-01-01', 5, '', 12),
(48, '2024-01-01', 5, '', 12),
(49, '2029-01-01', 5, '', 12),
(50, '2034-01-01', 5, '', 12),
(51, '2028-07-06', 10, '', 13),
(52, '2033-07-06', 5, '', 13),
(55, '2027-06-06', 10, '', 14),
(56, '2032-06-06', 5, '', 14),
(57, '2037-06-06', 5, '', 14),
(59, '2027-08-01', 10, '', 15),
(60, '2032-08-01', 5, '', 15),
(61, '2037-08-01', 5, '', 15),
(63, '2027-08-07', 10, '', 16),
(64, '2032-08-07', 5, '', 16),
(65, '2037-08-07', 5, '', 16),
(67, '2020-07-20', 10, '', 17),
(68, '2025-07-20', 5, '', 17),
(69, '2030-07-20', 5, '', 17),
(70, '2035-07-20', 5, '', 17),
(71, '2025-10-01', 10, '', 18),
(72, '2030-10-01', 5, '', 18),
(73, '2035-10-01', 5, '', 18),
(74, '2021-09-20', 10, '', 19),
(75, '2026-09-20', 5, '', 19),
(76, '2031-09-20', 5, '', 19),
(77, '2036-09-20', 5, '', 19),
(78, '2011-06-14', 10, '', 20),
(79, '2016-06-14', 5, '', 20),
(80, '2021-06-14', 5, '', 20),
(81, '2026-06-14', 5, '', 20),
(82, '2031-06-14', 5, '', 20),
(83, '2036-06-14', 5, '', 20),
(84, '2001-10-21', 10, '', 21),
(85, '2006-10-21', 5, '', 21),
(86, '2011-10-21', 5, '', 21),
(87, '2016-10-21', 5, '', 21),
(88, '2021-10-21', 5, '', 21),
(89, '2026-10-21', 5, '', 21),
(90, '2031-10-21', 5, '', 21),
(91, '2014-10-01', 10, '', 22),
(92, '2019-10-01', 5, '', 22),
(93, '2024-10-01', 5, '', 22),
(94, '2029-10-01', 5, '', 22),
(95, '2034-10-01', 5, '', 22),
(96, '2018-12-08', 10, '', 23),
(97, '2023-12-08', 5, '', 23),
(98, '2028-12-08', 5, '', 23),
(99, '2033-12-08', 5, '', 23),
(100, '2006-07-01', 10, '', 24),
(101, '2011-07-01', 5, '', 24),
(102, '2016-07-01', 5, '', 24),
(103, '2021-07-01', 5, '', 24),
(104, '2026-07-01', 5, '', 24),
(105, '2031-07-01', 5, '', 24),
(106, '2036-07-01', 5, '', 24),
(107, '2019-07-28', 10, '', 25),
(108, '2024-07-28', 5, '', 25),
(109, '2029-07-28', 5, '', 25),
(110, '2034-07-28', 5, '', 25),
(111, '2023-09-09', 10, '', 26),
(112, '2028-09-09', 5, '', 26),
(113, '2033-09-09', 5, '', 26),
(114, '1985-01-01', 5, '', 26),
(115, '2023-05-15', 10, '', 27),
(116, '2028-05-15', 5, '', 27),
(117, '2033-05-15', 5, '', 27),
(118, '1985-01-01', 5, '', 27),
(119, '2023-05-15', 10, '', 28),
(120, '2028-05-15', 5, '', 28),
(121, '2033-05-15', 5, '', 28),
(122, '1985-01-01', 5, '', 28),
(123, '2029-07-22', 10, '', 29),
(124, '2034-07-22', 5, '', 29),
(125, '1985-01-01', 5, '', 29),
(126, '1990-01-01', 5, '', 29),
(127, '2026-08-05', 10, '', 30),
(128, '2031-08-05', 5, '', 30),
(129, '2036-08-05', 5, '', 30),
(130, '1985-01-01', 5, '', 30),
(131, '2025-01-05', 10, '', 31),
(132, '2030-01-05', 5, '', 31),
(133, '2035-01-05', 5, '', 31),
(134, '1985-01-01', 5, '', 31);

-- --------------------------------------------------------

--
-- Table structure for table `nca`
--

CREATE TABLE `nca` (
  `nca_id` int(11) NOT NULL,
  `nca_no` int(11) NOT NULL,
  `nca_date` date NOT NULL,
  `nca_amount` decimal(15,2) NOT NULL,
  `fund_source_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nca`
--

INSERT INTO `nca` (`nca_id`, `nca_no`, `nca_date`, `nca_amount`, `fund_source_id`) VALUES
(17, 0, '2020-01-01', '0.00', 5),
(29, 58, '2021-01-04', '1869000.00', 1),
(30, 58, '2021-01-04', '201000.00', 3),
(31, 58, '2021-01-04', '44000.00', 4),
(32, 58, '2021-01-04', '213000.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `obligation`
--

CREATE TABLE `obligation` (
  `obr_id` int(11) NOT NULL,
  `obr_source` int(11) NOT NULL,
  `fund_source` varchar(15) NOT NULL,
  `obr_date` date NOT NULL,
  `obr_particulars` varchar(500) NOT NULL,
  `uacs_id` int(11) NOT NULL,
  `dv_no` int(11) NOT NULL,
  `dv_date` date NOT NULL,
  `payee_id` int(11) NOT NULL,
  `jev_no` int(11) NOT NULL,
  `check_ada` int(11) NOT NULL,
  `dv_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outgoing`
--

CREATE TABLE `outgoing` (
  `out_id` int(11) NOT NULL,
  `out_name` varchar(50) NOT NULL,
  `out_date` datetime NOT NULL,
  `out_title` varchar(100) NOT NULL,
  `out_desc` varchar(100) NOT NULL,
  `out_remarks` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payee`
--

CREATE TABLE `payee` (
  `payee_id` int(11) NOT NULL,
  `payee_name` varchar(100) NOT NULL,
  `payee_address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payee`
--

INSERT INTO `payee` (`payee_id`, `payee_name`, `payee_address`) VALUES
(1, 'Honeylee T. Magbanua', 'Bago City'),
(2, 'Gemma M. Belnas', 'San Isidro, Pontevedra'),
(3, 'Ailene T. Ambagan', 'San Isidro, Pontevedra'),
(4, 'Praise Mt. Enterprises', 'Pontevedra'),
(5, 'GSIS', 'Bacolod City'),
(6, 'Zelesty Mae Villacrusis', 'Bago City'),
(7, 'ddttt', 'dddtt');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `payroll_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `payroll_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_details`
--

CREATE TABLE `payroll_details` (
  `payroll_details_id` int(11) NOT NULL,
  `payroll_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `payroll_amount` decimal(12,2) NOT NULL,
  `net_pay` decimal(12,2) NOT NULL,
  `deductions` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_items`
--

CREATE TABLE `payroll_items` (
  `item_id` int(11) NOT NULL,
  `item_code` varchar(30) NOT NULL,
  `item_desc` varchar(100) NOT NULL,
  `item_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll_items`
--

INSERT INTO `payroll_items` (`item_id`, `item_code`, `item_desc`, `item_type`) VALUES
(3, '0001', 'Basic Salary', 'Addition'),
(4, '0002', 'PERA+ACA', 'Addition'),
(5, '003', 'GSIS Personal Share', 'Deduction'),
(6, '0111', 'MEDICARE (PHILHEALTH)', 'Deduction'),
(7, '0222', 'PAG-IBIG FUND', 'Deduction'),
(8, '0036', 'BIR WITHHOLDING TAX', 'Deduction'),
(9, '0336', 'PAG-IBIG MULTI-PURPOSE LN', 'Deduction'),
(10, '0132', 'GSIS CONSOL LOAN', 'Deduction'),
(11, '0121', 'MTSLA-MUTUAL AID SYSTEM', 'Deduction');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_template`
--

CREATE TABLE `payroll_template` (
  `template_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `template_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll_template`
--

INSERT INTO `payroll_template` (`template_id`, `id`, `item_id`, `template_amount`) VALUES
(4, 0, 0, '0.00'),
(5, 0, 1, '0.00'),
(8, 12, 3, '51989.00'),
(9, 12, 4, '2000.00'),
(10, 12, 5, '4679.01'),
(11, 12, 6, '550.00'),
(12, 12, 7, '100.00'),
(13, 12, 8, '5790.54'),
(14, 29, 3, '20754.00'),
(15, 29, 4, '2000.00'),
(16, 29, 5, '1867.86'),
(17, 29, 7, '100.00'),
(18, 29, 6, '285.37'),
(19, 12, 7, '479.43');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `rank_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `appointment_date` date NOT NULL,
  `step` int(11) NOT NULL,
  `step_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_id` int(11) NOT NULL,
  `division` varchar(100) NOT NULL,
  `division_code` varchar(30) NOT NULL,
  `station` varchar(100) NOT NULL,
  `station_code` varchar(30) NOT NULL,
  `school_address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `division`, `division_code`, `station`, `station_code`, `school_address`) VALUES
(1, 'Negros Occidental', '035', 'San Isidro National High School', '556', 'San Isidro, Pontevedra');

-- --------------------------------------------------------

--
-- Table structure for table `service_record`
--

CREATE TABLE `service_record` (
  `service_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `service_from` date NOT NULL,
  `service_to` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `station` varchar(30) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `separation_causes` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `step`
--

CREATE TABLE `step` (
  `step_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `step` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `step_status` varchar(30) NOT NULL,
  `appointment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `step`
--

INSERT INTO `step` (`step_id`, `id`, `designation_id`, `step`, `appointment_date`, `step_status`, `appointment`) VALUES
(1, 7, 1, 1, '2019-10-02', 'inactive', ''),
(3, 7, 1, 2, '2022-10-02', 'active', ''),
(4, 8, 1, 1, '1999-01-01', 'active', ''),
(5, 9, 1, 1, '2019-09-09', 'active', '');

-- --------------------------------------------------------

--
-- Table structure for table `stockin`
--

CREATE TABLE `stockin` (
  `stockin_id` int(11) NOT NULL,
  `stockin_date` datetime NOT NULL,
  `supply_id` int(11) NOT NULL,
  `stockin_qty` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stockout`
--

CREATE TABLE `stockout` (
  `stockout_id` int(11) NOT NULL,
  `stockout_date` datetime NOT NULL,
  `supply_id` int(11) NOT NULL,
  `stockout_qty` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(10) NOT NULL,
  `stud_lrn` varchar(12) NOT NULL,
  `stud_last` varchar(20) NOT NULL,
  `stud_first` varchar(20) NOT NULL,
  `stud_mi` varchar(20) NOT NULL,
  `stud_ext` varchar(10) NOT NULL,
  `stud_bday` date NOT NULL,
  `stud_pic` varchar(50) DEFAULT NULL,
  `stud_address1` varchar(100) NOT NULL,
  `stud_address2` varchar(50) NOT NULL,
  `stud_contact` varchar(30) NOT NULL,
  `stud_email` varchar(30) DEFAULT NULL,
  `stud_sex` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supply`
--

CREATE TABLE `supply` (
  `supply_id` int(11) NOT NULL,
  `supply_name` varchar(100) NOT NULL,
  `supply_desc` varchar(200) NOT NULL,
  `supply_qty` int(11) DEFAULT NULL,
  `supply_unit` varchar(20) NOT NULL,
  `supply_reorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supply`
--

INSERT INTO `supply` (`supply_id`, `supply_name`, `supply_desc`, `supply_qty`, `supply_unit`, `supply_reorder`) VALUES
(4, 'Black Permanent Marker', 'Black Permanent Marker', 0, 'pc/s', 5),
(5, 'A4 Bond Paper', 'A4 Bond Paper 70 GSM 500 Sheets', NULL, 'ream/s', 10),
(7, 'Sticker Pad Long', 'Sticker Pad Long 10 pcs/pack', NULL, 'Pcs', 20),
(8, 'Tissue ', 'Bathroom Tissue ', NULL, 'Pcs', 5),
(9, 'Double Sided Tape ', 'Double Sided Tape ', NULL, 'Pc', 5),
(10, 'Black Ballpen', 'Black Ballpen 0.5', NULL, 'Pc', 5),
(11, 'Double Sided Foam Tape ', 'Double Sided Foam Tape ', NULL, 'Pc', 2),
(12, 'Vellum', 'Vellum Long', NULL, 'Pack', 5),
(13, 'Vellum Short', 'Vellum ', NULL, 'Pack', 5),
(14, 'Fasteners ', 'Fasteners Colored ', NULL, 'Pc', 20),
(15, 'Push Pin', 'Push Pin Colored ', NULL, 'Pack', 2),
(16, 'Long Folders ', 'Ordinary Long Folder Red', NULL, 'Pcs', 5),
(17, 'Long Folders ', 'Ordinary Blue Long Folder ', NULL, 'Pc', 5),
(18, 'Battery (Double A)', 'Battery (Double A)', NULL, 'pc', 8),
(19, 'FaceMask K9', 'FaceMask K9', NULL, 'box', 3),
(20, 'Alcohol', 'Alcohol', NULL, 'galloon', 1),
(21, 'Packing Tape', 'Packing Tape', NULL, 'pc', 3),
(22, 'Highlighter ', 'Highlighter Colored', NULL, 'pc', 5),
(23, 'Medals', 'Medals Bronze', NULL, 'pc', 10),
(24, 'Medals', 'Medals Gold', NULL, 'pc', 10),
(25, 'Medals', 'Medals Silver', NULL, 'pc', 10),
(26, 'Toilet Cleaner', 'Toilet Cleaner Big', NULL, 'Bottle', 2),
(27, 'Hand Soap', 'Hand Soap', NULL, 'Bottle', 4),
(28, 'Black Bag', 'Black Bag Big', NULL, 'pc', 10),
(29, 'Black Bag', 'Black Bag Small', NULL, 'pc', 10),
(30, 'Yellow Bag', 'Yellow Bag Large', NULL, 'pc', 10),
(31, 'Yellow Bag', 'Yellow Bag Small', NULL, 'pc', 10),
(32, 'Pencils', 'Pencils', NULL, 'pc', 5),
(33, 'Long Folder', 'Long Folder Brown', NULL, 'pc', 5),
(34, 'Long Folder', 'Long Folder White', NULL, 'pc', 5),
(35, 'Long Folder', 'Long Folder Blue', NULL, 'pc', 5),
(36, 'Long Folder', 'Long Folder Green', NULL, 'pc', 5),
(37, 'Long Folder', 'Long Folder Dirty White', NULL, 'pc', 5),
(38, 'Long Folder', 'Long Folder Pink', NULL, 'pc', 5),
(39, 'Long Folder', 'Long Folder Yellow', NULL, 'pc', 5),
(40, 'Expanded Long Folder', 'Expanded Long Folder Red', NULL, 'pc', 5),
(41, 'Expanded Long Folder', 'Expanded Long Folder brown', NULL, 'pc', 5),
(42, 'Expanded Long Folder', 'Expanded Long Folder white', NULL, 'pc', 5),
(43, 'Expanded Long Folder', 'Expanded Long Folder blue', NULL, 'pc', 5),
(44, 'Expanded Long Folder', 'Expanded Long Folder Green', NULL, 'pc', 5),
(45, 'Expanded Long Folder', 'Expanded Long Folder yellow', NULL, 'pc', 5),
(46, 'Short Folder', 'Short Folder white', NULL, 'pc', 5),
(47, 'Short Folder ', 'Short Folder brown', NULL, 'pc', 5),
(48, 'Paper Long Envelope ', 'Paper Long Envelope brown', NULL, 'pc', 5),
(49, 'Paper Short Envelope ', 'Paper Short Envelope ', NULL, 'pc', 5),
(50, 'Letter White Envelope', 'Letter White Envelope', NULL, 'pc', 10),
(51, 'Plastic long Envelope', 'Plastic long Envelope', NULL, 'pc', 5),
(52, 'Plastic Short Envelope', 'Plastic Short Envelope', NULL, 'pc', 5);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` int(11) NOT NULL,
  `task` varchar(500) NOT NULL,
  `deadline` date NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `date_created` datetime NOT NULL,
  `task_status` varchar(30) NOT NULL,
  `id` int(11) NOT NULL,
  `checklist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `task`, `deadline`, `remarks`, `date_created`, `task_status`, `id`, `checklist_id`) VALUES
(1, 'Test', '0000-00-00', 'hkjhjh', '2019-10-12 13:53:06', '', 0, 0),
(2, 'Process Step Ms. Hulleza', '0000-00-00', '', '2019-10-13 14:58:27', '', 0, 1),
(4, 'Salary Integration Ms. Gregorio', '0000-00-00', '', '2019-10-13 22:20:12', '', 5, 2),
(5, 'Receipt for October Water Bill', '0000-00-00', '', '2019-10-29 12:28:24', '', 10, 5),
(6, 'Ada official copy for 45014', '0000-00-00', '', '2019-10-29 12:28:45', '', 10, 3),
(8, 'Payment Water 5640.75', '0000-00-00', '', '2019-10-29 14:42:54', '', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `task_details`
--

CREATE TABLE `task_details` (
  `task_details_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `attachment_id` int(11) NOT NULL,
  `attachment_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `tax_id` int(11) NOT NULL,
  `tax_date` date NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `fund_source_id` int(11) NOT NULL,
  `particulars` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`tax_id`, `tax_date`, `tax_amount`, `fund_source_id`, `particulars`) VALUES
(1, '2020-01-30', '1500.00', 1, 'jhjhj');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `travel_id` int(11) NOT NULL,
  `control_no` varchar(50) NOT NULL,
  `travel_filed` date NOT NULL,
  `travel_purpose` varchar(1000) NOT NULL,
  `travel_period` varchar(50) NOT NULL,
  `travel_type` varchar(50) NOT NULL,
  `travel_venue` varchar(1000) NOT NULL,
  `travel_coverage` varchar(1000) NOT NULL,
  `travel_source` varchar(50) NOT NULL,
  `user_id` int(6) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`travel_id`, `control_no`, `travel_filed`, `travel_purpose`, `travel_period`, `travel_type`, `travel_venue`, `travel_coverage`, `travel_source`, `user_id`) VALUES
(1, '2022-07-001', '2022-07-04', 'To attend the 2nd Quarter Cluster Meeting', '2022-07-05', 'Official Business', 'Division Office', 'MOOE', '5020101000', 000001),
(2, '2022-07-002', '2022-07-12', 'Submit Bank Recon 2021 and 2022 and pickup documents from Records Section.', '2022-07-13', 'Official Business', 'Division Office', 'MOOE', '5020101000', 000001);

-- --------------------------------------------------------

--
-- Table structure for table `travel_details`
--

CREATE TABLE `travel_details` (
  `travel_details_id` int(11) NOT NULL,
  `travel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_details`
--

INSERT INTO `travel_details` (`travel_details_id`, `travel_id`, `user_id`) VALUES
(1, 1, 2),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `type_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `type_desc`) VALUES
(1, 'PS', 'Personnel Services'),
(2, 'MOOE', 'Maintenance and Other Operating Expenses');

-- --------------------------------------------------------

--
-- Table structure for table `uacs`
--

CREATE TABLE `uacs` (
  `uacs_id` int(11) NOT NULL,
  `account_title` varchar(100) NOT NULL,
  `uacs_code` varchar(30) NOT NULL,
  `type_id` int(10) NOT NULL,
  `uacs_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uacs`
--

INSERT INTO `uacs` (`uacs_id`, `account_title`, `uacs_code`, `type_id`, `uacs_order`) VALUES
(1, 'Cash-Modified Disbursement System (MDS), Regular', '1010404000', 0, 0),
(2, 'Pag-IBIG Contributions', '5010302000', 1, 10),
(3, 'PhilHealth Contribution', '5010303000', 1, 11),
(4, 'Productivity Enhancement Incentove', '5010201000', 1, 9),
(5, 'Training Expenses', '5020201000', 2, 2),
(6, 'Salaries and Wages - Regular', '5010101001', 1, 1),
(7, 'Salaries and Wages - Casual/Contractual', '5010101000', 1, 2),
(8, 'Due to BIR', '2020101000', 0, 0),
(9, 'Travelling Expenses', '5020101000', 2, 1),
(10, 'Office Supplies Expenses', '5020301000', 2, 3),
(11, 'Electricity Expenses', '5020402000', 2, 5),
(12, 'Water Expenses', '5020401000', 2, 4),
(13, 'Internet Subscription Expenses', '5020503000', 2, 7),
(14, 'Labor and Wages', '5021601000', 2, 9),
(15, 'Due to Regional Office', '2030103000', 0, 0),
(16, 'Personal Economic Relief Allowance (PERA)', '5010201001', 1, 3),
(17, 'Clothing and Uniform Allowance', '5010204000', 1, 4),
(18, 'Productivity Incentive Allowance', '5010208000', 1, 0),
(19, 'Year End Bonus', '5010214000', 1, 7),
(20, 'Cash Gift', '5010215000', 1, 8),
(21, 'Other Bonuses and Allowances', '5010299000', 1, 0),
(22, 'Retirement and Life Insurance Premiums', '5010301000', 1, 1),
(23, 'Employees Compensation Insurance Premiums', '5010304000', 1, 12),
(24, 'Other Personnel Benefits', '5010499000', 0, 0),
(25, 'Textbooks and Instructional Materials Expenses', '5020311000', 0, 0),
(26, 'Postage and Courier Services', '5020501000', 0, 0),
(27, 'Telephone Expenses', '5020502000', 0, 0),
(28, 'Repairs and Maintenance - Buildings and Other Structures', '5021304000', 0, 0),
(29, 'Fidelity Bond Premiums', '5021502000', 0, 0),
(30, 'Honoraria', '501020202', 0, 5),
(31, 'Mid Year Bonus', '5010', 0, 6),
(32, 'Lumpsum Step - Loyalty', '5010215000', 0, 13),
(33, 'Communication Expenses', '5010215000', 0, 6),
(34, 'School Building Repair', '5010', 0, 8),
(35, 'Other Office Supplies', '5010399000', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `user_first` varchar(30) NOT NULL,
  `user_last` varchar(30) NOT NULL,
  `user_middle` varchar(50) DEFAULT NULL,
  `user_contact` varchar(30) NOT NULL,
  `qrcode` varchar(50) DEFAULT NULL,
  `user_address` varchar(50) NOT NULL,
  `city_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_bday` date NOT NULL,
  `user_sex` varchar(15) NOT NULL,
  `audio` varchar(100) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_first`, `user_last`, `user_middle`, `user_contact`, `qrcode`, `user_address`, `city_id`, `cat_id`, `user_bday`, `user_sex`, `audio`, `username`, `password`) VALUES
(000001, 'ALMA', 'GARNICA', 'TEORIMA', '09983574531', '../dist/img/1.png', 'ISABELA', 2, 4, '1963-02-18', 'Female', 'dist/audio/garnica.mp3', '', ''),
(000002, 'HONEYLEE', 'MAGBANUA', 'TOLENTINO', '09263562814', '../dist/img/2.png', 'BRGY. BUSAY', 4, 4, '1989-10-14', 'Female', 'dist/audio/magbanua.mp3', 'emoblazz', '202cb962ac59075b964b07152d234b70'),
(000003, 'FORTUNADO', 'MA. SHEILA', 'PLOTENA', '09307730273', '../dist/img/3.png', 'BRGY. SAN ISIDRO', 6, 6, '1986-08-20', 'Female', 'dist/audio/fortunado.mp3', 'barbie', '202cb962ac59075b964b07152d234b70'),
(000004, 'JEZEEL', 'TOLEDO', '', 'N/A', '../dist/img/4.png', 'BRGY. SAN ISIDRO', 6, 6, '0011-11-11', 'Male', 'dist/audio/toledo.mp3', '', ''),
(000005, 'JOSE', 'TENDERO', '', 'N/A', '../dist/img/5.png', 'BRGY. SAN ISIDRO', 6, 6, '0011-11-11', 'Male', 'dist/audio/tendero.mp3', '', ''),
(000006, 'EPIE', 'GOMEZ', '', 'N/A', '../dist/img/6.png', 'N/A', 10, 4, '1962-01-06', 'Male', 'dist/audio/gomez.mp3', '', ''),
(000007, 'IRIS LEE', 'PALLER', '', 'N/A', '../dist/img/7.png', 'BRGY. M. H. DEL PILAR', 6, 4, '1982-08-13', 'Female', 'dist/audio/paller.mp3', '', ''),
(000008, 'REBECCA', 'MAGTULIS', '', 'N/A', '../dist/img/8.png', 'N/A', 6, 4, '1987-08-09', 'Female', 'dist/audio/magtulis.mp3', '', ''),
(000009, 'AMMIE', 'TEODORO', '', 'N/A', '../dist/img/9.png', 'BRGY. SAN ISIDRO', 6, 4, '1970-03-24', 'Female', 'dist/audio/ateodoro.mp3', '', ''),
(000010, 'ROWENA', 'RESUMA', 'ATIENZA', 'N/A', '../dist/img/10.png', 'BRGY 1, ZONE 1', 1, 4, '1970-03-05', 'Female', 'dist/audio/resuma.mp3', '', ''),
(000011, 'LUCENDA', 'TEODORO ', 'QUILLIP', 'N/A', '../dist/img/11.png', 'BRGY. SAN ISIDRO', 6, 4, '1960-03-25', 'Female', 'dist/audio/lteodoro.mp3', '', ''),
(000012, 'GEMMA', 'BELNAS', 'MAGHARI', 'N/A', '../dist/img/12.png', 'BRGY. M. H. DEL PILAR', 6, 4, '1969-12-30', 'Female', 'dist/audio/belnas.mp3', '', ''),
(000013, 'ROSEBEC', 'DE ASIS', 'ERA', 'N/A', '../dist/img/13.png', 'BRGY. M. H. DEL PILAR', 6, 4, '1978-01-23', 'Female', 'dist/audio/deasis.mp3', '', ''),
(000014, 'AILENE', 'AMBAGAN', 'TAGASLING', 'N/A', '../dist/img/14.png', 'BRGY. SAN ISIDRO', 6, 4, '1974-11-26', 'Female', 'dist/audio/aambagan.mp3', '', ''),
(000015, 'CAROLINE', 'CELIS', 'VILLAR', 'N/A', '../dist/img/15.png', 'N/A', 6, 4, '1977-01-05', 'Female', 'dist/audio/celis.mp3', '', ''),
(000016, 'JOMARIE', 'CANJA', 'ALINGALAN', 'N/A', '../dist/img/16.png', 'N/A', 8, 4, '1992-10-17', 'Male', 'dist/audio/canja.mp3', '', ''),
(000017, 'EVERLEE FAITH', 'TUYA', 'LIM', 'N/A', '../dist/img/17.png', 'N/A', 7, 4, '1978-11-15', 'Female', 'dist/audio/tuya.mp3', '', ''),
(000018, 'RAFFY', 'EYAN', 'BELNAS', 'N/A', '../dist/img/18.png', 'BRGY. M. H. DEL PILAR', 6, 4, '1994-11-07', 'Male', 'dist/audio/reyan.mp3', '', ''),
(000019, 'JENNY ANN', 'GREGORIO', 'TENDERO', 'N/A', '../dist/img/19.png', 'BRGY. SAN ISIDRO', 6, 4, '1990-11-14', 'Female', 'dist/audio/gregorio.mp3', '', ''),
(000020, 'MHERVIE', 'ELAYRON', 'GEANGA', 'N/A', '../dist/img/20.png', 'BRGY. M. H. DEL PILAR', 6, 4, '1979-09-22', 'Female', 'dist/audio/elayron.mp3', '', ''),
(000021, 'ROCELIA', 'SARASA', 'MARQUEZA', 'N/A', '../dist/img/21.png', 'BRGY. BALANGIGAY', 6, 4, '1973-02-22', 'Female', 'dist/audio/sarasa.mp3', '', ''),
(000022, 'MARJORIE', 'ELEDIA', 'SIOSAN', 'N/A', '../dist/img/22.png', 'N/A', 6, 4, '1993-12-23', 'Female', 'dist/audio/eledia.mp3', '', ''),
(000023, 'CRIS MAY', 'GEANGA', '', 'N/A', '../dist/img/23.png', 'BRGY. M. H. DEL PILAR', 6, 4, '1996-12-20', 'Female', 'dist/audio/geanga.mp3', '', ''),
(000024, 'LISANDRO', 'PURA', 'ESCANLAR', 'N/A', '../dist/img/24.png', 'BRGY. SAN ISIDRO', 6, 4, '1978-08-03', 'Male', 'dist/audio/pura.mp3', '', ''),
(000025, 'ROCHELLIE', 'HULLEZA', 'GONZAGA', 'N/A', '../dist/img/25.png', 'N/A', 8, 4, '1991-01-20', 'Female', 'dist/audio/hulleza.mp3', '', ''),
(000026, 'REMAN', 'CABALONGA', '', 'N/A', '../dist/img/26.png', 'BRGY. CAMBARUS', 6, 5, '0111-11-11', 'Male', 'dist/audio/cabalonga.mp3', '', ''),
(000027, 'JOMER', 'GEPANAGO', '', 'N/A', '../dist/img/27.png', 'N/A', 8, 5, '0111-11-11', 'Male', 'dist/audio/gepanago.mp3', '', ''),
(000028, 'MANUEL', 'ABADA', '', 'N/A', '../dist/img/28.png', 'N/A', 7, 5, '0111-11-11', 'Male', 'dist/audio/abada.mp3', '', ''),
(000029, 'SHEILA', 'JALANDONI', '', 'N/A', '../dist/img/29.png', 'BRGY. SAN ISIDRO', 6, 5, '0011-11-11', 'Female', 'dist/audio/jalandoni.mp3', '', ''),
(000030, 'ROWENA', 'MOGUAD', '', 'N/A', '../dist/img/30.png', 'BRGY. SAN ISIDRO', 6, 5, '0011-11-11', 'Female', 'dist/audio/moguad.mp3', '', ''),
(000031, 'QUINCY MAE', 'EYAN', '', 'N/A', '../dist/img/31.png', 'BRGY. M. H. DEL PILAR', 6, 7, '0111-11-11', 'Female', 'dist/audio/qeyan.mp3', '', ''),
(000032, 'JONALYN', 'ESTRELLANES', '', 'N/A', '../dist/img/32.png', 'BRGY. SAN ISIDRO', 6, 7, '0111-11-11', 'Female', 'dist/audio/estrellanes.mp3', '', ''),
(000033, 'GRACE', 'FRIAS', '', 'N/A', '../dist/img/33.png', 'N/A', 8, 7, '0011-11-11', 'Female', 'dist/audio/frias.mp3', '', ''),
(000034, 'MA. HENISA', 'BANDIOLA', '', 'N/A', '../dist/img/34.png', 'N/A', 2, 5, '0011-11-11', 'Female', 'dist/audio/bandiola.mp3', '', ''),
(000035, 'JULIUS', 'DALISAY', '', 'na', '../dist/img/35.png', 'LA GRANJA', 9, 1, '1986-07-14', 'Male', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_details_id` int(11) NOT NULL,
  `user_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `designation` varchar(50) NOT NULL,
  `bp_no` int(11) DEFAULT NULL,
  `phic_no` int(11) DEFAULT NULL,
  `hdmf_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_details_id`, `user_id`, `designation`, `bp_no`, `phic_no`, `hdmf_no`) VALUES
(1, 000001, 'Principal II', 0, 0, 0),
(2, 000002, 'Administrative Assistant II', NULL, NULL, NULL),
(3, 000034, 'Administrative Assistant II', NULL, NULL, NULL),
(4, 000003, 'Clerk', NULL, NULL, NULL),
(5, 000004, 'Guard', NULL, NULL, NULL),
(6, 000005, 'Guard', NULL, NULL, NULL),
(7, 000006, 'Teacher I', NULL, NULL, NULL),
(8, 000007, 'Teacher I', NULL, NULL, NULL),
(9, 000008, 'Teacher I', NULL, NULL, NULL),
(10, 000009, 'Teacher III', NULL, NULL, NULL),
(11, 000010, 'Teacher III', NULL, NULL, NULL),
(12, 000011, 'Teacher III', NULL, NULL, NULL),
(13, 000012, 'Teacher III', NULL, NULL, NULL),
(14, 000013, 'Teacher III', NULL, NULL, NULL),
(15, 000014, 'Teacher III', NULL, NULL, NULL),
(16, 000015, 'Teacher III', NULL, NULL, NULL),
(17, 000016, 'Teacher III', NULL, NULL, NULL),
(18, 000017, 'Teacher III', NULL, NULL, NULL),
(19, 000018, 'Teacher I', NULL, NULL, NULL),
(20, 000019, 'Teacher I', NULL, NULL, NULL),
(21, 000020, 'Teacher I', NULL, NULL, NULL),
(22, 000021, 'Teacher I', NULL, NULL, NULL),
(23, 000022, 'Teacher I', NULL, NULL, NULL),
(24, 000023, 'Teacher I', NULL, NULL, NULL),
(25, 000024, 'Teacher I', NULL, NULL, NULL),
(26, 000025, 'Teacher I', NULL, NULL, NULL),
(27, 000026, 'Teacher II', NULL, NULL, NULL),
(28, 000027, 'Teacher II', NULL, NULL, NULL),
(29, 000028, 'Teacher II', NULL, NULL, NULL),
(30, 000029, 'Teacher III', NULL, NULL, NULL),
(31, 000030, 'Teacher III', NULL, NULL, NULL),
(32, 000031, 'Substitute Teacher', NULL, NULL, NULL),
(33, 000032, 'Literacy Teacher', NULL, NULL, NULL),
(34, 000033, 'Literacy Teacher', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `allotment`
--
ALTER TABLE `allotment`
  ADD PRIMARY KEY (`allotment_id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`archive_id`);

--
-- Indexes for table `archive_details`
--
ALTER TABLE `archive_details`
  ADD PRIMARY KEY (`archive_details_id`);

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`attachment_id`);

--
-- Indexes for table `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`checklist_id`);

--
-- Indexes for table `checklist_details`
--
ALTER TABLE `checklist_details`
  ADD PRIMARY KEY (`checklist_details_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `disbursement`
--
ALTER TABLE `disbursement`
  ADD PRIMARY KEY (`dv_id`);

--
-- Indexes for table `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrol`
--
ALTER TABLE `enrol`
  ADD PRIMARY KEY (`enrol_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `file_details`
--
ALTER TABLE `file_details`
  ADD PRIMARY KEY (`file_details_id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `fund_source`
--
ALTER TABLE `fund_source`
  ADD PRIMARY KEY (`fund_source_id`);

--
-- Indexes for table `incoming`
--
ALTER TABLE `incoming`
  ADD PRIMARY KEY (`in_id`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`journal_id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `loyalty`
--
ALTER TABLE `loyalty`
  ADD PRIMARY KEY (`loyalty_id`);

--
-- Indexes for table `nca`
--
ALTER TABLE `nca`
  ADD PRIMARY KEY (`nca_id`);

--
-- Indexes for table `obligation`
--
ALTER TABLE `obligation`
  ADD PRIMARY KEY (`obr_id`);

--
-- Indexes for table `outgoing`
--
ALTER TABLE `outgoing`
  ADD PRIMARY KEY (`out_id`);

--
-- Indexes for table `payee`
--
ALTER TABLE `payee`
  ADD PRIMARY KEY (`payee_id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`payroll_id`);

--
-- Indexes for table `payroll_items`
--
ALTER TABLE `payroll_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `payroll_template`
--
ALTER TABLE `payroll_template`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `service_record`
--
ALTER TABLE `service_record`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `step`
--
ALTER TABLE `step`
  ADD PRIMARY KEY (`step_id`);

--
-- Indexes for table `stockin`
--
ALTER TABLE `stockin`
  ADD PRIMARY KEY (`stockin_id`);

--
-- Indexes for table `stockout`
--
ALTER TABLE `stockout`
  ADD PRIMARY KEY (`stockout_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`supply_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `task_details`
--
ALTER TABLE `task_details`
  ADD PRIMARY KEY (`task_details_id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`travel_id`);

--
-- Indexes for table `travel_details`
--
ALTER TABLE `travel_details`
  ADD PRIMARY KEY (`travel_details_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `uacs`
--
ALTER TABLE `uacs`
  ADD PRIMARY KEY (`uacs_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_details_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `allotment`
--
ALTER TABLE `allotment`
  MODIFY `allotment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `archive`
--
ALTER TABLE `archive`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `archive_details`
--
ALTER TABLE `archive_details`
  MODIFY `archive_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `attachment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `checklist`
--
ALTER TABLE `checklist`
  MODIFY `checklist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `checklist_details`
--
ALTER TABLE `checklist_details`
  MODIFY `checklist_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `disbursement`
--
ALTER TABLE `disbursement`
  MODIFY `dv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `doc`
--
ALTER TABLE `doc`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `enrol`
--
ALTER TABLE `enrol`
  MODIFY `enrol_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `file_details`
--
ALTER TABLE `file_details`
  MODIFY `file_details_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `fund_source`
--
ALTER TABLE `fund_source`
  MODIFY `fund_source_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `incoming`
--
ALTER TABLE `incoming`
  MODIFY `in_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `journal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loyalty`
--
ALTER TABLE `loyalty`
  MODIFY `loyalty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `nca`
--
ALTER TABLE `nca`
  MODIFY `nca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `obligation`
--
ALTER TABLE `obligation`
  MODIFY `obr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `outgoing`
--
ALTER TABLE `outgoing`
  MODIFY `out_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payee`
--
ALTER TABLE `payee`
  MODIFY `payee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `payroll_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payroll_items`
--
ALTER TABLE `payroll_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `payroll_template`
--
ALTER TABLE `payroll_template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `service_record`
--
ALTER TABLE `service_record`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `step`
--
ALTER TABLE `step`
  MODIFY `step_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stockin`
--
ALTER TABLE `stockin`
  MODIFY `stockin_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stockout`
--
ALTER TABLE `stockout`
  MODIFY `stockout_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `supply`
--
ALTER TABLE `supply`
  MODIFY `supply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `task_details`
--
ALTER TABLE `task_details`
  MODIFY `task_details_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `travel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `travel_details`
--
ALTER TABLE `travel_details`
  MODIFY `travel_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `uacs`
--
ALTER TABLE `uacs`
  MODIFY `uacs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
