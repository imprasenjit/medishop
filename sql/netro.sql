-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2019 at 07:36 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netro`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` varchar(220) NOT NULL,
  `account_table_name` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `account_table_name`, `account_name`, `status`) VALUES
('ZAHJQBF676', 'outflow_ER7B9HC3EV', 'Test Demo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_add`
--

CREATE TABLE `bank_add` (
  `bank_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_add`
--

INSERT INTO `bank_add` (`bank_id`, `bank_name`, `status`) VALUES
('LLPOSLPAYC', 'DBBL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cheque_manger`
--

CREATE TABLE `cheque_manger` (
  `cheque_id` varchar(100) NOT NULL,
  `transection_id` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `bank_id` varchar(100) NOT NULL,
  `cheque_no` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `transection_type` varchar(100) NOT NULL,
  `cheque_status` int(10) NOT NULL,
  `amount` bigint(10) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('9vpt4i8upl8go4cssacavv7ihv', '127.0.0.1', 1560530796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533303739363b),
('k33brbf9n9p64dchged51ua6j9', '127.0.0.1', 1560530803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533303830333b7369645f7765627c733a32393a22626379644865586e79694b466a707a657a6162796448794b644b646370223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('jatu1okg7a4tuv3b9ar7vtbak8', '127.0.0.1', 1560530805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533303830343b),
('tjk60048h2tpak4bbbor2hhglq', '127.0.0.1', 1560531042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533313034323b),
('7stuh3moeb9rphker467cu06fa', '127.0.0.1', 1560531159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533313135383b7369645f7765627c733a32393a226e79694b466a63556655664b644b646364487a556665525261664a6165223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('68voh75hp9b9eftjg7epvgajdg', '127.0.0.1', 1560531195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533313139353b7369645f7765627c733a33303a22486279665252614a6464486364487a656a5865586e79694b466a64487062223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('2oo6k31ql2dkogu7pdvkcg1e1m', '127.0.0.1', 1560531272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533313237323b7369645f7765627c733a33323a2248796a584b64624b64655264524b647062556665616a5865586e79694b466a64223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('gip320b8nt6bj81s3d887b83ls', '127.0.0.1', 1560531273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533313237333b),
('0q0p1t76ejka3bh1aieoaq8d9s', '127.0.0.1', 1560531280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533313238303b),
('2mc2crcgoie8m0lakhkff4id7f', '127.0.0.1', 1560533411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333431303b7369645f7765627c733a32393a22586e79694b466a4a615566527a7a5270624a624a666464487055665566223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('242ro7gd98ip7bigq6n3tdo4l9', '127.0.0.1', 1560533411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333431313b),
('8fj299okbl8smqa1t2j63ib3mp', '127.0.0.1', 1560533507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333530373b),
('lukpi3m17q3elo5bri7m5hctn1', '127.0.0.1', 1560533509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333530383b),
('hrm8n52paaq8pl64chjo03e40c', '127.0.0.1', 1560533511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333531313b),
('9df46puk961qog0tqpvam92he5', '127.0.0.1', 1560533515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333531343b7369645f7765627c733a33303a22796465586e79694b466a624a6665586e79694b466a7065586e79694b466a223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('bjble3tk12alshmqa5jsf5mauq', '127.0.0.1', 1560533515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333531353b),
('flpt4l4o3gl5j4tl1pkf3q4edf', '127.0.0.1', 1560533574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333537343b),
('jj67kuvk8iu6l7s800jghakhr1', '127.0.0.1', 1560533576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333537363b),
('jtdflgnqf8g7ek5aams895nft4', '127.0.0.1', 1560533580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333537393b7369645f7765627c733a32383a2261556665586e79694b466a527a4b644b646665586e79694b466a6558223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('hfi6iicfji5dv2447s9pltr7er', '127.0.0.1', 1560533580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333538303b),
('58japjebvnlo9rhbtjcuo2rfa4', '127.0.0.1', 1560533616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333631363b),
('autn2chdjgl4snncjfl8dqj77k', '127.0.0.1', 1560533618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333631383b),
('d8fe56idktme3un01nqojt4ual', '127.0.0.1', 1560533622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333632323b),
('0jd480uhn4ddqfhoom0977htrp', '127.0.0.1', 1560533632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333633313b7369645f7765627c733a32383a2264706565586e79694b466a655252657a6664797a657070627a666558223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('5ur1egujc5am50ql9jv0hrd04s', '127.0.0.1', 1560533633, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333633333b),
('09esocdimntmmldr74budh3so3', '127.0.0.1', 1560533678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333637383b),
('bpr98lvdkto7f7d1oi3442ojla', '127.0.0.1', 1560533717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333731373b7369645f7765627c733a32383a2265586e79694b466a6264486a584b646279657a7a5264486a5863646a223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('at4o2sk6pvts7ca783idl566f5', '127.0.0.1', 1560533761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333736313b7369645f7765627c733a33313a2265586e79694b466a7a4b64656448646a587a63526655666464486562664b64223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('6iip6mtglglj0aivt5vvhnbdk3', '127.0.0.1', 1560533793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333739333b7369645f7765627c733a33313a22794a664a646448797a63624b64646448624b64614a7065617a796a58795279223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('p6ujl2smebottpfohglio1112g', '127.0.0.1', 1560533843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333834333b),
('egi5scdjt8p8jlnb9kjq9f7887', '127.0.0.1', 1560533860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333835393b),
('4j6u02eii60ql1lf62pmlqbhr4', '127.0.0.1', 1560533864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333836343b7369645f7765627c733a32383a226e79694b466a7a64486166666565586e79694b466a6465586e79694b223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('a4mkmd7m1jg11to1c6e01lfctc', '127.0.0.1', 1560533865, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333836353b),
('7l8o0l9mnc5gvkcmlgjd3p0jlt', '127.0.0.1', 1560533879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333837393b),
('u8va1hjalmipip07f7h2j6obb9', '127.0.0.1', 1560533881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333838313b),
('v6em7adb78jje4cccmd1dm1pj8', '127.0.0.1', 1560533936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333933363b),
('4tbs14ivvuvm2f4a3rflrqv3u2', '127.0.0.1', 1560533940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333934303b7369645f7765627c733a32393a22616365625265617a6664667a4a79614b6465797a63556666526a58654a223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('de9qmucc5ilgtbs26m6fikqoq5', '127.0.0.1', 1560533941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533333934313b),
('d3lu9fdhg6mjfff2t1h2i31mm8djgivo', '127.0.0.1', 1560534976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303533343835323b7369645f7765627c733a32393a2261796166524b64645270654a7a654b644a665252556679524b646a5864223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('ur9slgr3pbdq1ptok2a3em1gdm0gre4k', '::1', 1560791166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303739303535383b7369645f7765627c733a32393a227a7965586e79694b466a7a657961556664487961656a58706479636448223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('h13oi9iu8tl79puvhoiu53a5k2fvu28b', '::1', 1560878665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303837373534333b7369645f7765627c733a32383a2248617962656465707079666a586465586e79694b466a556664486261223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b),
('pv142epuepa0267od3h6ijji4rrev0sk', '::1', 1560964812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536303935393938393b7369645f7765627c733a32393a226665637a52644a63556665586e79694b466a7a7a65637965586e79694b223b757365725f69647c733a313a2231223b757365725f747970657c733a313a2231223b757365725f6e616d657c733a31393a22416c697368657220416b686d61746f76696368223b757365725f656d61696c7c733a31333a227465737440746573742e636f6d223b);

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

CREATE TABLE `company_information` (
  `company_id` varchar(250) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` int(11) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `address`, `mobile`, `website`, `status`) VALUES
('NOILG8EGCRXXBWUEUQBM', 'Janu Care', 'bdtask@gmail.com', '98,Green Road,Dhaka', 3243242, 'http://www.bdtask.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `customer_id` varchar(250) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `customer_mobile`, `customer_email`, `status`) VALUES
('93G73FMMTZ7IQ1W', 'new customer', '', '3453453', 'customer@gmail.com', 2),
('TUW3WLOB7LM128Y', 'new customers', '', '43534534', 'customers@gmail.com', 2),
('89LP6SZ6LLOQZSW', 'sssss', 'sad', '353543', 'ssss@gmail.com', 2),
('MFYZNJCLTWV7IUD', 'sssssdddd', '', '345634634', 'ssss@gmail.com', 2),
('TT8SVKPMGT84E5A', 'dsfsadfsa', '', '43534534', 'customersdfsdfsaf@gmail.com', 2),
('LUBO5P6PVXOT31Y', 'csdfsadfhaf', '', '345345345', 'customerssdfsdaf@gmail.com', 2),
('ITYTKKFVLBUEYON', 'OKL', 'LIB', '', '', 1),
('C6QVMS7TJXS66MZ', 'Pikaso Makisutu', '98/A, East Lackx view,West Nkhali', '00011112121', 'maki@blaaa.com', 2),
('MY4MUNPJMR68SYN', 'Casing Orangto', '98/A, East Lackx view,West Nkhali', '098712562747749', 'cas@muku.com', 2),
('35SSXK8R383XXIG', 'Mike Boltu Mian', '231,East Patalipur,Sonamuri', '21119872345', 'boltu@gmail.com', 2),
('VBP5J8J55M7IUT5', 'Modon Lal Box', 'South Ferri Ghat,Padma River,Chandpur ', '0912314567', 'box@lal.com', 2),
('SQIU7DSJPE81QNZ', 'NORMA', 'SEMARANG AJAH', '0987654321', 'ISNAWAN@GMAIL.COM', 2),
('6LDSHSFXM1DXEKH', 'FAIQ', 'SEMARANG JUGA', '897654345678', 'FAIQ@GMAIL.COM', 2),
('TNU86ATUNPTQ9E7', 'xsdfcgvsdx', 'gbsdfbfds', '', '', 1),
('HAB4KIIE89YFME9', 'Walking Customer', 'Demo', '23453245', 'demo@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer_ledger`
--

CREATE TABLE `customer_ledger` (
  `transaction_id` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `receipt_no` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `cheque_no` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_ledger`
--

INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`) VALUES
('Q975UJSQP6', '93G73FMMTZ7IQ1W', 'NA', NULL, 0, 'Previous adjustment with software', 'NA', 'NA', '2017-04-05 00:00:00', 1),
('GCH7AEUFQ3', 'TUW3WLOB7LM128Y', 'NA', NULL, 0, 'Previous adjustment with software', 'NA', 'NA', '2017-04-05 00:00:00', 1),
('9X7VPREDI4', 'TT8SVKPMGT84E5A', 'NA', NULL, 0, 'Previous adjustment with software', 'NA', 'NA', '2017-04-05 00:00:00', 1),
('HOWL6Y3M7U', 'LUBO5P6PVXOT31Y', 'NA', NULL, 0, 'Previous adjustment with software', 'NA', 'NA', '2017-04-05 00:00:00', 1),
('642529375794262', 'MFYZNJCLTWV7IUD', '3593473827', NULL, 200, '', '', '', '2017-04-05 00:00:00', 1),
('263735161496658', '93G73FMMTZ7IQ1W', '4744113125', NULL, 200, '', '', '', '2017-04-05 00:00:00', 1),
('594715177761782', '93G73FMMTZ7IQ1W', '7525436455', NULL, 200, '', '', '', '2017-04-05 00:00:00', 1),
('884124542795653', '93G73FMMTZ7IQ1W', '5682226453', NULL, 200, '', '', '', '2017-04-05 00:00:00', 1),
('444928155429746', '93G73FMMTZ7IQ1W', '8917987516', NULL, 200, '', '', '', '2017-04-05 00:00:00', 1),
('839243781194995', '93G73FMMTZ7IQ1W', '5316967541', NULL, 200, '', '', '', '2017-04-05 00:00:00', 1),
('6QM4WHNRVE', 'UPEIHPBKHJVV9C7', 'NA', NULL, 0, 'Previous adjustment with software', 'NA', 'NA', '2017-04-05 00:00:00', 1),
('687769919624358', 'UPEIHPBKHJVV9C7', '8287358954', NULL, 200, '', '', '', '2017-04-05 00:00:00', 1),
('987OG1V6I3VUV4Y', '93G73FMMTZ7IQ1W', NULL, 'HNVQ2SQOPF', 23423, 'sdfsd', '1', '', '2017-04-11 00:00:00', 1),
('SOGD5NF7B9', 'C6QVMS7TJXS66MZ', 'NA', NULL, 100, 'Previous adjustment with software', 'NA', 'NA', '2017-04-11 00:00:00', 1),
('RB2IBF9N2I', 'MY4MUNPJMR68SYN', 'NA', NULL, 500, 'Previous adjustment with software', 'NA', 'NA', '2017-04-11 00:00:00', 1),
('L3NKYQX1HG', '35SSXK8R383XXIG', 'NA', NULL, 0, 'Previous adjustment with software', 'NA', 'NA', '2017-04-11 00:00:00', 1),
('HKMYNVL455', 'VBP5J8J55M7IUT5', 'NA', NULL, 1000, 'Previous adjustment with software', 'NA', 'NA', '2017-04-11 00:00:00', 1),
('836987889721896', '35SSXK8R383XXIG', '4691468853', NULL, 7000, '', '', '', '2017-04-11 00:00:00', 1),
('351919555719896', '35SSXK8R383XXIG', '9925955497', NULL, 33386, '', '', '', '2017-04-11 00:00:00', 1),
('596766256935366', 'MY4MUNPJMR68SYN', '5687162418', NULL, 21043, '', '', '', '2017-04-11 00:00:00', 1),
('382969493324312', '93G73FMMTZ7IQ1W', '8764464745', NULL, 600, '', '', '', '2017-04-11 00:00:00', 1),
('316564166313895', 'UPEIHPBKHJVV9C7', '2865224739', NULL, 600, '', '', '', '2017-04-11 00:00:00', 1),
('375343795354636', 'UPEIHPBKHJVV9C7', '8393718837', NULL, 2500, '', '', '', '2017-04-11 00:00:00', 1),
('328718387161889', 'UPEIHPBKHJVV9C7', '6382139238', NULL, 1917, '', '', '', '2017-04-17 00:00:00', 1),
('983648913192795', 'UPEIHPBKHJVV9C7', '3436948295', NULL, 12, '', '', '', '2017-04-17 00:00:00', 1),
('678334525426892', 'UPEIHPBKHJVV9C7', '9598355759', NULL, 810, '', '', '', '2017-04-18 00:00:00', 1),
('373215294234131', 'UPEIHPBKHJVV9C7', '5161744482', NULL, 200, '', '', '', '2017-04-18 00:00:00', 1),
('117484479879511', 'UPEIHPBKHJVV9C7', '8939863753', NULL, 200, '', '', '', '2017-04-18 00:00:00', 1),
('638869235235688', 'UPEIHPBKHJVV9C7', '8133241233', NULL, 0, '', '', '', '2017-04-18 00:00:00', 1),
('95ADC6GYFK', 'SQIU7DSJPE81QNZ', 'NA', NULL, 9000, 'Previous adjustment with software', 'NA', 'NA', '2017-04-18 00:00:00', 1),
('5YRC2UR3DT', '6LDSHSFXM1DXEKH', 'NA', NULL, 80000, 'Previous adjustment with software', 'NA', 'NA', '2017-04-18 00:00:00', 1),
('442564528741572', 'C6QVMS7TJXS66MZ', '6165263115', NULL, 500, '', '', '', '2017-04-18 00:00:00', 1),
('184756828219959', 'LUBO5P6PVXOT31Y', '5588998834', NULL, 500, '', '', '', '2017-04-18 00:00:00', 1),
('259355588723516', 'LUBO5P6PVXOT31Y', '3368754496', NULL, 305, '', '', '', '2017-04-18 00:00:00', 1),
('994716233176883', 'LUBO5P6PVXOT31Y', '8186445426', NULL, 12, '', '', '', '2017-04-18 00:00:00', 1),
('TVR1G8UWHL', 'ITYTKKFVLBUEYON', 'NA', NULL, 0, 'Previous adjustment with software', 'NA', 'NA', '2017-04-18 00:00:00', 1),
('197364621254427', 'ITYTKKFVLBUEYON', '8537475376', NULL, 10490, '', '', '', '2017-04-18 00:00:00', 1),
('294479552791871', '93G73FMMTZ7IQ1W', '5398294526', NULL, 400, '', '', '', '2017-04-19 00:00:00', 1),
('ZBSLNRWA8Y', 'TNU86ATUNPTQ9E7', 'NA', NULL, 0, 'Previous adjustment with software', 'NA', 'NA', '2017-04-19 00:00:00', 1),
('321583128118663', 'TNU86ATUNPTQ9E7', '3651333263', NULL, 0, '', '', '', '2017-04-19 00:00:00', 1),
('VO578UFV2T', 'HAB4KIIE89YFME9', 'NA', NULL, 0, 'Previous adjustment with software', 'NA', 'NA', '2017-04-19 00:00:00', 1),
('695525769281691', 'HAB4KIIE89YFME9', '4558415141', NULL, 1575, '', '', '', '2017-04-19 00:00:00', 1),
('665547649157348', 'C6QVMS7TJXS66MZ', '1715493788', NULL, 1995, '', '', '', '2017-04-19 00:00:00', 1),
('843359736785595', '35SSXK8R383XXIG', '4121841666', NULL, 374, '', '', '', '2017-04-19 00:00:00', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_transection_summary`
-- (See below for the actual view)
--
CREATE TABLE `customer_transection_summary` (
`customer_name` varchar(255)
,`customer_id` varchar(100)
,`type` varchar(6)
,`amount` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `daily_banking_add`
--

CREATE TABLE `daily_banking_add` (
  `banking_id` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `bank_id` varchar(100) NOT NULL,
  `deposit_type` varchar(255) NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daily_closing`
--

CREATE TABLE `daily_closing` (
  `closing_id` varchar(255) NOT NULL,
  `last_day_closing` int(11) NOT NULL,
  `cash_in` int(11) NOT NULL,
  `cash_out` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `adjustment` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daily_closing`
--

INSERT INTO `daily_closing` (`closing_id`, `last_day_closing`, `cash_in`, `cash_out`, `date`, `amount`, `adjustment`, `status`) VALUES
('WFx00H9vP7SpZ0N', 0, 43543534, 7878778, '2017-03-30 12:48:37', 35664756, 0, 1),
('D5shdsn8wYb8Hct', 35664756, 0, 0, '2017-04-18 10:49:42', 35664756, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `head_office_deposit`
--

CREATE TABLE `head_office_deposit` (
  `transection_id` varchar(200) NOT NULL,
  `tracing_id` varchar(200) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  `amount` int(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `total_amount` int(11) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `status`) VALUES
('3887411773', '9UCBIDFDWLRTLEE', '2017-04-05 00:00:00', 200, '1000', 1),
('8764464745', '93G73FMMTZ7IQ1W', '2017-04-11 00:00:00', 600, '1001', 1),
('2865224739', 'UPEIHPBKHJVV9C7', '2017-04-11 00:00:00', 600, '1002', 1),
('8393718837', 'UPEIHPBKHJVV9C7', '2017-04-11 00:00:00', 2500, '1003', 1),
('6382139238', 'UPEIHPBKHJVV9C7', '2017-04-17 00:00:00', 1917, '1004', 1),
('3436948295', 'UPEIHPBKHJVV9C7', '2017-04-17 00:00:00', 12, '1005', 1),
('9598355759', 'UPEIHPBKHJVV9C7', '2017-04-18 00:00:00', 810, '1006', 1),
('5161744482', 'UPEIHPBKHJVV9C7', '2017-04-18 00:00:00', 200, '1007', 1),
('8939863753', 'UPEIHPBKHJVV9C7', '2017-04-18 00:00:00', 200, '1008', 1),
('8133241233', 'UPEIHPBKHJVV9C7', '2017-04-18 00:00:00', 0, '1009', 1),
('6165263115', 'C6QVMS7TJXS66MZ', '2017-04-18 00:00:00', 500, '1010', 1),
('5588998834', 'LUBO5P6PVXOT31Y', '2017-04-18 00:00:00', 500, '1011', 1),
('3368754496', 'LUBO5P6PVXOT31Y', '2017-04-18 00:00:00', 305, '1012', 1),
('8186445426', 'LUBO5P6PVXOT31Y', '2017-04-18 00:00:00', 12, '1013', 1),
('8537475376', 'ITYTKKFVLBUEYON', '2017-04-18 00:00:00', 10490, '1014', 1),
('5398294526', '93G73FMMTZ7IQ1W', '2017-04-19 00:00:00', 400, '1015', 1),
('1715493788', 'C6QVMS7TJXS66MZ', '2017-04-19 00:00:00', 1995, '1018', 1),
('4558415141', 'HAB4KIIE89YFME9', '2017-04-19 00:00:00', 1575, '1017', 1),
('4121841666', '35SSXK8R383XXIG', '2017-04-19 00:00:00', 374, '1019', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `invoice_details_id` varchar(100) NOT NULL,
  `invoice_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `cartoon` int(11) DEFAULT NULL,
  `quantity` int(8) NOT NULL,
  `rate` int(8) NOT NULL,
  `supplier_rate` int(10) DEFAULT NULL,
  `total_price` int(11) NOT NULL,
  `discount` int(250) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `paid_amount` int(11) DEFAULT '0',
  `due_amount` int(11) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `cartoon`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES
('922525247675172', '3887411773', '83873176', NULL, 1, 200, 150, 200, 0, 0, 0, 200, 1),
('151236993448712', '8764464745', '74879464', NULL, 3, 200, 150, 600, 0, 0, 0, 600, 1),
('122598784296679', '2865224739', '74879464', NULL, 4, 200, 150, 600, 200, 0, 600, 0, 1),
('335387126486269', '8393718837', '21887371', NULL, 5, 500, 300, 2500, 0, 0, 0, 2500, 1),
('434426759343263', '3436948295', '39161423', NULL, 1, 12, 10, 12, 0, 0, 0, 12, 1),
('133865461435773', '5161744482', '74879464', NULL, 1, 200, 150, 200, 0, 0, 0, 200, 1),
('674392294171445', '8939863753', '74879464', NULL, 3, 200, 150, 200, 0, 0, 1000, -800, 1),
('858169776282583', '6165263115', '21887371', NULL, 6, 500, 300, 500, 0, 0, 0, 500, 1),
('639243682572464', '5588998834', '21887371', NULL, 1, 500, 300, 500, 0, 0, 0, 500, 1),
('691584382826468', '8186445426', '39161423', NULL, 1, 12, 10, 12, 0, 0, 0, 12, 1),
('478112777586158', '8537475376', '21887371', NULL, 21, 500, 300, 10490, 10, 0, 0, 10490, 1),
('662929458377638', '5398294526', '74879464', NULL, 2, 200, 150, 400, 0, 0, 0, 400, 1),
('148937473224627', '4558415141', '47323949', NULL, 3, 500, 100, 1500, 0, 75, 0, 1575, 1),
('356652723262439', '1715493788', '74879464', NULL, 10, 200, 150, 1995, 5, 0, 0, 1995, 1),
('288927439413478', '4121841666', '63666625', NULL, 4, 89, 80, 356, 0, 18, 374, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text,
  `bangla` text,
  `uzbek` text,
  `franais` text,
  `french` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`, `uzbek`, `franais`, `french`) VALUES
(1, 'user_profile', 'User Profile', NULL, '', '', ''),
(2, 'setting', 'Setting', NULL, '', '', ''),
(3, 'language', 'Language', NULL, '', '', ''),
(4, 'manage_users', 'Manage Users', NULL, '', '', ''),
(5, 'add_user', 'Add User', NULL, '', '', ''),
(6, 'manage_company', 'Manage Company', NULL, '', '', ''),
(7, 'web_settings', 'Software Settings', NULL, '', '', ''),
(8, 'manage_accounts', 'Manage Accounts', NULL, '', '', ''),
(9, 'create_accounts', 'Create Accounts', NULL, '', '', ''),
(10, 'manage_bank', 'Manage Bank', NULL, '', '', ''),
(11, 'add_new_bank', 'Add New Bank', NULL, '', '', ''),
(12, 'settings', 'Bank', NULL, '', '', ''),
(13, 'closing_report', 'Closing Report', NULL, '', '', ''),
(14, 'closing', 'Closing', NULL, '', '', ''),
(15, 'cheque_manager', 'Cheque Manager', NULL, '', '', ''),
(16, 'accounts_summary', 'Accounts Summary', NULL, '', '', ''),
(17, 'expense', 'Expense', NULL, '', '', ''),
(18, 'income', 'Income', NULL, '', '', ''),
(19, 'accounts', 'Accounts', NULL, 'Profillar', 'Comptes', ''),
(20, 'stock_report', 'Stock Report', NULL, '', '', ''),
(21, 'stock', 'Stock', NULL, '', '', ''),
(22, 'pos_invoice', 'POS Invoice', NULL, '', '', ''),
(23, 'manage_invoice', 'Manage Invoice ', NULL, '', '', ''),
(24, 'new_invoice', 'New Invoice', NULL, '', '', ''),
(25, 'invoice', 'Invoice', NULL, '', '', ''),
(26, 'manage_purchase', 'Manage Purchase', NULL, '', '', ''),
(27, 'add_purchase', 'Add Purchase', NULL, '', '', ''),
(28, 'purchase', 'Purchase', NULL, '', '', ''),
(29, 'paid_customer', 'Paid Customer', NULL, '', '', ''),
(30, 'manage_customer', 'Manage Customer', NULL, '', '', ''),
(31, 'add_customer', 'Add Customer', NULL, '', '', ''),
(32, 'customer', 'Customer', NULL, '', '', ''),
(33, 'supplier_payment_actual', 'Supplier Payment Actual', NULL, '', '', ''),
(34, 'supplier_sales_summary', 'Supplier Sales Summary', NULL, '', '', ''),
(35, 'supplier_sales_details', 'Supplier Sales Details', NULL, '', '', ''),
(36, 'supplier_ledger', 'Supplier Ledger', NULL, '', '', ''),
(37, 'manage_supplier', 'Manage Supplier', NULL, '', '', ''),
(38, 'add_supplier', 'Add Supplier', NULL, '', '', ''),
(39, 'supplier', 'Supplier', NULL, '', '', ''),
(40, 'product_statement', 'Meidicine Statement', NULL, '', '', ''),
(41, 'manage_product', 'Manage Medicine', NULL, '', '', ''),
(42, 'add_product', 'Add Medicine', NULL, '', '', ''),
(43, 'product', 'Medicine', NULL, '', '', ''),
(44, 'manage_category', 'Manage Category', NULL, '', '', ''),
(45, 'add_category', 'Add Category', NULL, '', '', ''),
(46, 'category', 'Category', NULL, '', '', ''),
(47, 'sales_report_product_wise', 'Sales Report (Medicine Wise)', NULL, '', '', ''),
(48, 'purchase_report', 'Purchase Report', NULL, '', '', ''),
(49, 'sales_report', 'Sales Report', NULL, '', '', ''),
(50, 'todays_report', 'Todays Report', NULL, '', '', ''),
(51, 'report', 'Report', NULL, '', '', ''),
(52, 'dashboard', 'Dashboard', NULL, '', '', ''),
(53, 'online', 'Online', NULL, '', '', ''),
(54, 'logout', 'Logout', NULL, '', '', ''),
(56, 'total_purchase', 'Total Purchase', NULL, '', '', ''),
(57, 'total_amount', 'Total Ammount', NULL, '', '', ''),
(58, 'supplier_name', 'Supplier Name', NULL, '', '', ''),
(59, 'invoice_no', 'Invoice No', NULL, '', '', ''),
(60, 'purchase_date', 'Purchase Date', NULL, '', '', ''),
(61, 'todays_purchase_report', 'Todays Purchase Report', NULL, '', '', ''),
(62, 'total_sales', 'Total Sales', NULL, '', '', ''),
(63, 'customer_name', 'Customer Name', NULL, '', '', ''),
(64, 'sales_date', 'Sales Date', NULL, '', '', ''),
(65, 'todays_sales_report', 'Todays Sales Report', NULL, '', '', ''),
(66, 'home', 'Home', NULL, '', '', ''),
(67, 'todays_sales_and_purchase_report', 'Todays sales and purchase report', NULL, '', '', ''),
(68, 'total_ammount', 'Total Ammount', NULL, '', '', ''),
(69, 'rate', 'Rate', NULL, '', '', ''),
(70, 'product_model', 'Batch No', NULL, '', '', ''),
(71, 'product_name', 'Medicine Name', NULL, '', '', ''),
(72, 'search', 'Search', NULL, '', '', ''),
(73, 'end_date', 'End Date', NULL, '', '', ''),
(74, 'start_date', 'Start Date', NULL, '', '', ''),
(75, 'total_purchase_report', 'Total Purchase Report', NULL, '', '', ''),
(76, 'total_sales_report', 'Total Sales Report', NULL, '', '', ''),
(77, 'total_seles', 'Total Sales', NULL, '', '', ''),
(78, 'all_stock_report', 'All Stock Report', NULL, '', '', ''),
(79, 'search_by_product', 'Search By Medicine', NULL, '', '', ''),
(80, 'date', 'Date', NULL, '', '', ''),
(81, 'print', 'Print', NULL, '', '', ''),
(82, 'stock_date', 'Stock Date', NULL, '', '', ''),
(83, 'print_date', 'Print Date', NULL, '', '', ''),
(84, 'sales', 'Sales', NULL, '', '', ''),
(85, 'price', 'Price', NULL, '', '', ''),
(86, 'sl', 'SL.', NULL, '', '', ''),
(87, 'add_new_category', 'Add new category', NULL, '', '', ''),
(88, 'category_name', 'Category Name', NULL, '', '', ''),
(89, 'save', 'Save', NULL, '', '', ''),
(90, 'delete', 'Delete', NULL, '', '', ''),
(91, 'update', 'Update', NULL, '', '', ''),
(92, 'action', 'Action', NULL, '', '', ''),
(93, 'manage_your_category', 'Manage your category ', NULL, '', '', ''),
(94, 'category_edit', 'Category Edit', NULL, '', '', ''),
(95, 'status', 'Status', NULL, '', '', ''),
(96, 'active', 'Active', NULL, '', '', ''),
(97, 'inactive', 'Inactive', NULL, '', '', ''),
(98, 'save_changes', 'Save Changes', NULL, '', '', ''),
(99, 'save_and_add_another', 'Save And Add Another', NULL, '', '', ''),
(100, 'model', 'Batch No', NULL, '', '', ''),
(101, 'supplier_price', 'Supplier Price', NULL, '', '', ''),
(102, 'sell_price', 'Sell Price', NULL, '', '', ''),
(103, 'image', 'Image', NULL, '', '', ''),
(104, 'select_one', 'Select One', NULL, '', '', ''),
(105, 'details', 'Details', NULL, '', '', ''),
(106, 'new_product', 'New Medicine', NULL, '', '', ''),
(107, 'add_new_product', 'Add new medicine', NULL, '', '', ''),
(108, 'barcode', 'Barcode', NULL, '', '', ''),
(109, 'qr_code', 'Qr-Code', NULL, '', '', ''),
(110, 'product_details', 'Medicine Details', NULL, '', '', ''),
(111, 'manage_your_product', 'Manage your medicine', NULL, '', '', ''),
(112, 'product_edit', 'Medicine Edit', NULL, '', '', ''),
(113, 'edit_your_product', 'Edit your medicine', NULL, '', '', ''),
(114, 'cancel', 'Cancel', NULL, '', '', ''),
(115, 'incl_vat', 'Incl. Vat', NULL, '', '', ''),
(116, 'money', 'TK', NULL, '', '', ''),
(117, 'grand_total', 'Grand Total', NULL, '', '', ''),
(118, 'quantity', 'Quantity', NULL, '', '', ''),
(119, 'product_report', 'Medicine Report', NULL, '', '', ''),
(120, 'product_sales_and_purchase_report', 'Medicine sales and purchase report', NULL, '', '', ''),
(121, 'previous_stock', 'Previous Stock', NULL, '', '', ''),
(122, 'out', 'Out', NULL, '', '', ''),
(123, 'in', 'In', NULL, '', '', ''),
(124, 'to', 'To', NULL, '', '', ''),
(125, 'previous_balance', 'Previous Balance', NULL, '', '', ''),
(126, 'customer_address', 'Customer Address', NULL, '', '', ''),
(127, 'customer_mobile', 'Customer Mobile', NULL, '', '', ''),
(128, 'customer_email', 'Customer Email', NULL, '', '', ''),
(129, 'add_new_customer', 'Add new customer', NULL, '', '', ''),
(130, 'balance', 'Balance', NULL, '', '', ''),
(131, 'mobile', 'Mobile', NULL, '', '', ''),
(132, 'address', 'Address', NULL, 'Manzil', '', ''),
(133, 'manage_your_customer', 'Manage your credit customer', NULL, '', '', ''),
(134, 'customer_edit', 'Customer Edit', NULL, '', '', ''),
(135, 'paid_customer_list', 'Paid Customer List', NULL, '', '', ''),
(136, 'ammount', 'Amount', NULL, '', '', ''),
(137, 'customer_ledger', 'Customer Ledger', NULL, '', '', ''),
(138, 'manage_customer_ledger', 'Manage Customer Ledger', NULL, '', '', ''),
(139, 'customer_information', 'Customer Information', NULL, '', '', ''),
(140, 'debit_ammount', 'Debit Ammount', NULL, '', '', ''),
(141, 'credit_ammount', 'Credit Ammount', NULL, '', '', ''),
(142, 'balance_ammount', 'Balance Ammount', NULL, '', '', ''),
(143, 'receipt_no', 'Receipt NO', NULL, '', '', ''),
(144, 'description', 'Description', NULL, '', '', ''),
(145, 'debit', 'Debit', NULL, '', '', ''),
(146, 'credit', 'Credit', NULL, '', '', ''),
(147, 'item_information', 'Item Information', NULL, '', '', ''),
(148, 'total', 'Total', NULL, '', '', ''),
(149, 'please_select_supplier', 'Please Select Supplier', NULL, '', '', ''),
(150, 'submit', 'Submit', NULL, '', '', ''),
(151, 'submit_and_add_another', 'Submit And Add Another One', NULL, '', '', ''),
(152, 'add_new_item', 'Add New Item', NULL, '', '', ''),
(153, 'manage_your_purchase', 'Manage your purchase', NULL, '', '', ''),
(154, 'purchase_edit', 'Purchase Edit', NULL, '', '', ''),
(155, 'purchase_ledger', 'Purchase Ledger', NULL, '', '', ''),
(156, 'invoice_information', 'Invoice Information', NULL, '', '', ''),
(157, 'paid_ammount', 'Paid Ammount', NULL, '', '', ''),
(158, 'discount', 'Discount', NULL, '', '', ''),
(159, 'save_and_paid', 'Save And Paid', NULL, '', '', ''),
(160, 'payee_name', 'Payee Name', NULL, '', '', ''),
(161, 'manage_your_invoice', 'Manage your invoice', NULL, '', '', ''),
(162, 'invoice_edit', 'Invoice Edit', NULL, '', '', ''),
(163, 'new_pos_invoice', 'New POS invoice', NULL, '', '', ''),
(164, 'add_new_pos_invoice', 'Add new pos invoice', NULL, '', '', ''),
(165, 'product_id', 'Medicine ID', NULL, '', '', ''),
(166, 'paid_amount', 'Paid Ammount', NULL, '', '', ''),
(167, 'authorised_by', 'Authorised By', NULL, '', '', ''),
(168, 'checked_by', 'Checked By', NULL, '', '', ''),
(169, 'received_by', 'Received By', NULL, '', '', ''),
(170, 'prepared_by', 'Prepared By', NULL, '', '', ''),
(171, 'memo_no', 'Memo No', NULL, '', '', ''),
(172, 'website', 'Website', NULL, '', '', ''),
(173, 'email', 'Email', NULL, '', '', ''),
(174, 'invoice_details', 'Invoice Details', NULL, '', '', ''),
(175, 'reset', 'Reset', NULL, '', '', ''),
(176, 'payment_account', 'Payment Account', NULL, '', '', ''),
(177, 'bank_name', 'Bank Name', NULL, '', '', ''),
(178, 'cheque_or_pay_order_no', 'Cheque/Pay Order No', NULL, '', '', ''),
(179, 'payment_type', 'Payment Type', NULL, '', '', ''),
(180, 'payment_from', 'Payment From', NULL, '', '', ''),
(181, 'payment_date', 'Payment Date', NULL, '', '', ''),
(182, 'add_income', 'Add Income', NULL, '', '', ''),
(183, 'cash', 'Cash', NULL, '', '', ''),
(184, 'cheque', 'Cheque', NULL, '', '', ''),
(185, 'pay_order', 'Pay Order', NULL, '', '', ''),
(186, 'payment_to', 'Payment To', NULL, '', '', ''),
(187, 'total_outflow_ammount', 'Total Outflow Report', NULL, '', '', ''),
(188, 'transections', 'Transections', NULL, '', '', ''),
(189, 'accounts_name', 'Accounts Name', NULL, '', '', ''),
(190, 'outflow_report', 'Expense Report', NULL, '', '', ''),
(191, 'inflow_report', 'Income Report', NULL, '', '', ''),
(192, 'all', 'All', NULL, '', '', ''),
(193, 'account', 'Account', NULL, 'Profil', 'Compte', ''),
(194, 'from', 'From', NULL, '', '', ''),
(195, 'account_summary_report', 'Account Summary Report', NULL, '', '', ''),
(196, 'search_by_date', 'Search By Date', NULL, '', '', ''),
(197, 'cheque_no', 'Cheque No', NULL, '', '', ''),
(198, 'name', 'Name', NULL, '', '', ''),
(199, 'closing_account', 'Closing Account', NULL, '', '', ''),
(200, 'close_your_account', 'Close your account', NULL, '', '', ''),
(201, 'last_day_closing', 'Last Day Closing', NULL, '', '', ''),
(202, 'cash_in', 'Cash In', NULL, '', '', ''),
(203, 'cash_out', 'Cash Out', NULL, '', '', ''),
(204, 'cash_in_hand', 'Cash In Hand', NULL, '', '', ''),
(205, 'add_new_bank', 'Add New Bank', NULL, '', '', ''),
(206, 'day_closing', 'Day Closing', NULL, '', '', ''),
(207, 'account_closing_report', 'Account Closing Report', NULL, '', '', ''),
(208, 'last_day_ammount', 'Last Day Ammount', NULL, '', '', ''),
(209, 'adjustment', 'Adjustment', NULL, '', '', ''),
(210, 'pay_type', 'Pay Type', NULL, '', '', ''),
(211, 'customer_or_supplier', 'Customer Or Supplier', NULL, '', '', ''),
(212, 'transection_id', 'Transections ID', NULL, '', '', ''),
(213, 'accounts_summary_report', 'Accounts Summary Report', NULL, '', '', ''),
(214, 'bank_list', 'Bank List', NULL, '', '', ''),
(215, 'bank_edit', 'Bank Edit', NULL, '', '', ''),
(216, 'debit_plus', 'Debit (+)', NULL, '', '', ''),
(217, 'credit_minus', 'Credit (-)', NULL, '', '', ''),
(218, 'account_name', 'Account Name', NULL, '', '', ''),
(219, 'account_type', 'Account Type', NULL, '', '', ''),
(220, 'account_real_name', 'Account Real Name', NULL, '', '', ''),
(221, 'manage_account', 'Manage Account', NULL, '', '', ''),
(222, 'company_name', 'Company Name', NULL, '', '', ''),
(223, 'edit_your_company_information', 'Edit your company information', NULL, '', '', ''),
(224, 'company_edit', 'Company Edit', NULL, '', '', ''),
(225, 'admin', 'Admin', NULL, '', '', ''),
(226, 'user', 'User', NULL, '', '', ''),
(227, 'password', 'Password', NULL, '', '', ''),
(228, 'last_name', 'Last Name', NULL, '', '', ''),
(229, 'first_name', 'First Name', NULL, '', '', ''),
(230, 'add_new_user_information', 'Add new user information', NULL, '', '', ''),
(231, 'user_type', 'User Type', NULL, '', '', ''),
(232, 'user_edit', 'User Edit', NULL, '', '', ''),
(233, 'rtr', 'RTR', NULL, '', '', ''),
(234, 'ltr', 'LTR', NULL, '', '', ''),
(235, 'ltr_or_rtr', 'LTR/RTR', NULL, '', '', ''),
(236, 'footer_text', 'Footer Text', NULL, '', '', ''),
(237, 'favicon', 'Favicon', NULL, '', '', ''),
(238, 'logo', 'Logo', NULL, '', '', ''),
(239, 'update_setting', 'Update Setting', NULL, '', '', ''),
(240, 'update_your_web_setting', 'Update your web setting', NULL, '', '', ''),
(241, 'login', 'Login', NULL, '', '', ''),
(242, 'your_strong_password', 'Your strong password', NULL, '', '', ''),
(243, 'your_unique_email', 'Your unique email', NULL, '', '', ''),
(244, 'please_enter_your_login_information', 'Please enter your login information.', NULL, '', '', ''),
(245, 'update_profile', 'Update Profile', NULL, '', '', ''),
(246, 'your_profile', 'Your Profile', NULL, 'Sizning profil', '', ''),
(247, 're_type_password', 'Re-Type Password', NULL, '', '', ''),
(248, 'new_password', 'New Password', NULL, '', '', ''),
(249, 'old_password', 'Old Password', NULL, '', '', ''),
(250, 'new_information', 'New Information', NULL, '', '', ''),
(251, 'old_information', 'Old Information', NULL, '', '', ''),
(252, 'change_your_information', 'Change your information', NULL, '', '', ''),
(253, 'change_your_profile', 'Change your profile', NULL, '', '', ''),
(254, 'profile', 'Profile', NULL, '', '', ''),
(255, 'wrong_username_or_password', 'Wrong User Name Or Password !', NULL, '', '', ''),
(256, 'successfully_updated', 'Successfully Updated.', NULL, '', '', ''),
(257, 'blank_field_does_not_accept', 'Blank Field Does Not Accept !', NULL, '', '', ''),
(258, 'successfully_changed_password', 'Successfully changed password.', NULL, '', '', ''),
(259, 'you_are_not_authorised_person', 'You are not authorised person !', NULL, '', '', ''),
(260, 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !', NULL, '', '', ''),
(261, 'new_password_at_least_six_character', 'New Password At Least 6 Character.', NULL, '', '', ''),
(262, 'you_put_wrong_email_address', 'You put wrong email address !', NULL, '', '', ''),
(263, 'cheque_ammount_asjusted', 'Cheque amount adjusted.', NULL, '', '', ''),
(264, 'successfully_payment_paid', 'Successfully Payment Paid.', NULL, '', '', ''),
(265, 'successfully_added', 'Successfully Added.', NULL, '', '', ''),
(266, 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Ammount Not Changeable.', NULL, '', '', ''),
(267, 'successfully_payment_received', 'Successfully Payment Received.', NULL, '', '', ''),
(268, 'already_inserted', 'Already Inserted !', NULL, '', '', ''),
(269, 'successfully_delete', 'Successfully Delete.', NULL, '', '', ''),
(270, 'successfully_created', 'Successfully Created.', NULL, '', '', ''),
(271, 'logo_not_uploaded', 'Logo not uploaded !', NULL, '', '', ''),
(272, 'favicon_not_uploaded', 'Favicon not uploaded !', NULL, '', '', ''),
(273, 'supplier_mobile', 'Supplier Mobile', NULL, '', '', ''),
(274, 'supplier_address', 'Supplier Address', NULL, '', '', ''),
(275, 'supplier_details', 'Supplier Details', NULL, '', '', ''),
(276, 'add_new_supplier', 'Add New Supplier', NULL, '', '', ''),
(277, 'manage_suppiler', 'Manage Supplier', NULL, '', '', ''),
(278, 'manage_your_supplier', 'Manage your supplier', NULL, '', '', ''),
(279, 'manage_supplier_ledger', 'Manage supplier ledger', NULL, '', '', ''),
(280, 'invoice_id', 'Invoice ID', NULL, '', '', ''),
(281, 'deposite_id', 'Deposite ID', NULL, '', '', ''),
(282, 'supplier_actual_ledger', 'Supplier Actual Ledger', NULL, '', '', ''),
(283, 'supplier_information', 'Supplier Information', NULL, '', '', ''),
(284, 'event', 'Event', NULL, '', '', ''),
(285, 'add_new_income', 'Add New Income', NULL, '', '', ''),
(286, 'add_expese', 'Add Expense', NULL, '', '', ''),
(287, 'add_new_expense', 'Add New Expense', NULL, '', '', ''),
(288, 'total_inflow_ammount', 'Total Inflow Ammount', NULL, '', '', ''),
(289, 'create_new_invoice', 'Create New Invoice', NULL, '', '', ''),
(290, 'create_pos_invoice', 'Create POS Invoice', NULL, '', '', ''),
(291, 'total_profit', 'Total Profit', NULL, '', '', ''),
(292, 'monthly_progress_report', 'Monthly Progress Report', NULL, '', '', ''),
(293, 'total_invoice', 'Total Invoice', NULL, '', '', ''),
(294, 'account_summary', 'Account Summary', NULL, '', '', ''),
(295, 'total_supplier', 'Total Supplier', NULL, '', '', ''),
(296, 'total_product', 'Total Medicine', NULL, '', '', ''),
(297, 'total_customer', 'Total Customer', NULL, '', '', ''),
(298, 'supplier_edit', 'Supplier Edit', NULL, '', '', ''),
(299, 'add_new_invoice', 'Add New Invoice', NULL, '', '', ''),
(300, 'add_new_purchase', 'Add new purchase', NULL, '', '', ''),
(301, 'currency', 'Currency', NULL, '', '', ''),
(302, 'currency_position', 'Currency Position', NULL, '', '', ''),
(303, 'left', 'Left', NULL, '', '', ''),
(304, 'right', 'Right', NULL, '', '', ''),
(305, 'add_tax', 'Add Tax', NULL, '', '', ''),
(306, 'manage_tax', 'Manage Tax', NULL, '', '', ''),
(307, 'add_new_tax', 'Add new tax', NULL, '', '', ''),
(308, 'enter_tax', 'Enter Tax', NULL, '', '', ''),
(309, 'already_exists', 'Already Exists !', NULL, '', '', ''),
(310, 'successfully_inserted', 'Successfully Inserted.', NULL, '', '', ''),
(311, 'tax', 'Tax', NULL, '', '', ''),
(312, 'tax_edit', 'Tax Edit', NULL, '', '', ''),
(313, 'product_not_added', 'Medicine not added !', NULL, '', '', ''),
(314, 'total_tax', 'Total Tax', NULL, '', '', ''),
(315, 'manage_your_supplier_details', 'Manage your supplier details.', NULL, '', '', ''),
(316, 'invoice_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s                                       standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, '', '', ''),
(317, 'thank_you_for_choosing_us', 'Thank you very much for choosing us.', NULL, '', '', ''),
(318, 'billing_date', 'Billing Date', NULL, '', '', ''),
(319, 'billing_to', 'Billing To', NULL, '', '', ''),
(320, 'billing_from', 'Billing From', NULL, '', '', ''),
(321, 'you_cant_delete_this_product', 'Sorry !!  You can\'t delete this medicine.This medicine already used in calculation system!', NULL, '', '', ''),
(322, 'old_customer', 'Old Customer', NULL, '', '', ''),
(323, 'new_customer', 'New Customer', NULL, '', '', ''),
(324, 'new_supplier', 'New Supplier', NULL, '', '', ''),
(325, 'old_supplier', 'Old Supplier', NULL, '', '', ''),
(326, 'credit_customer', 'Credit Customer', NULL, '', '', ''),
(327, 'account_already_exists', 'This Account Already Exists !', NULL, '', '', ''),
(328, 'edit_income', 'Edit Income', NULL, '', '', ''),
(329, 'you_are_not_access_this_part', 'You are not authorised person !', NULL, '', '', ''),
(330, 'account_edit', 'Account Edit', NULL, '', '', ''),
(331, 'due', 'Due', NULL, '', '', ''),
(332, 'expense_edit', 'Expense Edit', NULL, '', '', ''),
(333, 'please_select_customer', 'Please select customer !', NULL, '', '', ''),
(334, 'profit_report', 'Profit Report', NULL, '', '', ''),
(335, 'total_profit_report', 'Total profit report', NULL, '', '', ''),
(336, 'please_enter_valid_captcha', 'Please enter valid captcha.', NULL, '', '', ''),
(337, 'category_not_selected', 'Category not selected.', NULL, '', '', ''),
(338, 'supplier_not_selected', 'Supplier not selected.', NULL, '', '', ''),
(339, 'please_select_product', 'Please select medicine.', NULL, '', '', ''),
(340, 'product_model_already_exist', 'Batch No already exist !', NULL, '', '', ''),
(341, 'invoice_logo', 'Invoice Logo', NULL, '', '', ''),
(342, 'available_quantity', 'Available Quantity', NULL, '', '', ''),
(343, 'you_can_not_buy_greater_than_available_quantity', 'You can not select grater than availale quantity !', NULL, '', '', ''),
(344, 'customer_details', 'Customer details', NULL, '', '', ''),
(345, 'manage_customer_details', 'Manage customer details.', NULL, '', '', ''),
(346, 'box_size', 'Box size', NULL, '', '', ''),
(347, 'expire_date', 'Expire Date', NULL, '', '', ''),
(348, 'product_location', 'Medicine location', NULL, '', '', ''),
(349, 'generic_name', 'Generic name', NULL, '', '', ''),
(350, 'payment_method', 'Payment Method', NULL, '', '', ''),
(351, 'card_no', 'Card no', NULL, '', '', ''),
(352, 'medicine', 'Medicine', NULL, '', '', ''),
(353, 'medicine_search', 'Medicine Search', NULL, '', '', ''),
(354, 'what_you_search', 'Enter what you search', NULL, '', '', ''),
(355, 'company', 'Company', NULL, '', '', ''),
(356, 'customer_search', 'Customer search', NULL, '', '', ''),
(357, 'invoice_search', 'Invoice search', NULL, '', '', ''),
(358, 'purchase_search', 'Purchase search', NULL, '', '', ''),
(359, 'daily_closing_report', 'Daily closing report.', NULL, '', '', ''),
(360, 'closing_search_report', 'Closing Search Report', NULL, '', '', ''),
(361, 'category_list', 'Category List', NULL, '', '', ''),
(362, 'company_list', 'Company List', NULL, '', '', ''),
(363, 'customers_list', 'Customer List', NULL, '', '', ''),
(364, 'credit_customer_list', 'Credit Customer List', NULL, '', '', ''),
(365, 'previous_balance_adjustment', 'Previous Balance Adjustment', NULL, '', '', ''),
(366, 'invoice_list', 'Invoice List', NULL, '', '', ''),
(367, 'add_pos_invoice', 'Add POS Invoice', NULL, '', '', ''),
(368, 'add_invoice', 'Add Invoice', NULL, '', '', ''),
(369, 'product_list', 'Medicine List', NULL, '', '', ''),
(370, 'purchases_list', 'Purchase List', NULL, '', '', ''),
(371, 'purchase_list', 'Purchase List', NULL, '', '', ''),
(372, 'stock_list', 'Stock List', NULL, '', '', ''),
(373, 'all_report', 'All Report', NULL, '', '', ''),
(374, 'daily_sales_report', 'Daily sales Report', NULL, '', '', ''),
(375, 'product_wise_sales_report', 'Medicine Wise Sales Report', NULL, '', '', ''),
(376, 'bank_update', 'Bank Update', NULL, '', '', ''),
(377, 'account_list', 'Account List', NULL, '', '', ''),
(378, 'supplier_list', 'Supplier List', NULL, '', '', ''),
(379, 'supplier_search_item', 'Supplier Search Item', NULL, '', '', ''),
(380, 'user_list', 'User List', NULL, '', '', ''),
(381, 'user_search_item', 'User Search Item', NULL, '', '', ''),
(382, 'change_password', 'Change Password', NULL, '', '', ''),
(383, 'admin_login_area', 'Admin Login Area', NULL, '', '', ''),
(384, 'accounts_inflow_form', 'Account income', NULL, '', '', ''),
(385, 'accounts_outflow_form', 'Accounts expense', NULL, '', '', ''),
(386, 'accounts_tax_form', 'Accounts Tax Form', NULL, '', '', ''),
(387, 'accounts_manage_tax', 'Accounts Manage Tax', NULL, '', '', ''),
(388, 'accounts_tax_edit', 'Accounts Tax Edit', NULL, '', '', ''),
(389, 'accounts_summary_data', 'Accounts Summary Data', NULL, '', '', ''),
(390, 'accounts_details_data', 'Accounts Details Data', NULL, '', '', ''),
(391, 'datewise_summary_data', 'Date wise Summary Data', NULL, '', '', ''),
(392, 'accounts_cheque_manager', 'Account Cheque Manager', NULL, '', '', ''),
(393, 'accounts_edit_data', 'Accounts Edit Data', NULL, '', '', ''),
(394, 'print_barcode', 'Print Barcode', NULL, '', '', ''),
(395, 'print_qrcode', 'Print Qrcode', NULL, '', '', ''),
(396, 'add_new_account', 'Add New Account', NULL, '', '', ''),
(397, 'table_edit', 'Table Edit', NULL, '', '', ''),
(0, 'captcha', 'Captcha', NULL, NULL, NULL, NULL),
(0, 'site_key', 'Site Key', NULL, NULL, NULL, NULL),
(0, 'secret_key', 'Secret Key', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outflow_er7b9hc3ev`
--

CREATE TABLE `outflow_er7b9hc3ev` (
  `transection_id` varchar(200) NOT NULL,
  `tracing_id` varchar(200) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  `amount` int(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outflow_er7b9hc3ev`
--

INSERT INTO `outflow_er7b9hc3ev` (`transection_id`, `tracing_id`, `payment_type`, `date`, `amount`, `description`, `status`) VALUES
('8A01WqQ5CZL4RTr', 'YS6APPSSL3OZOFK8YOZ2', '1', '2017-04-19 00:00:00', 123, 'Demo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(250) DEFAULT NULL,
  `card_no` varchar(250) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_id`, `category_name`, `status`) VALUES
(1, '31XYLWEF6GQOUS5', 'Laxatives', 1),
(2, 'RT742TFRXITK86G', 'Leprostatics', 1),
(3, 'J92YBRWR546SEQH', 'Allergenics', 1),
(4, 'WHIBHKKV917FRTK', 'Amebicides', 1),
(5, 'DBB9RFJI9XWI7KD', 'Methylxanthines', 1),
(6, 'NVUOTK9153ERZQA', 'Antacids', 1),
(7, 'NIBPE5DPVVCVEEN', 'Nasal steroids', 1),
(8, '7PWNR3JA2C4I6XR', 'Antitussives', 1),
(9, 'YJI3PWF9UXS7IGD', 'Ophthalmic steroids', 1),
(10, 'FM1ZHX6UMPKMD4S', 'Otic anesthetics', 1),
(11, 'YYLZFCXAII4BGG7', 'Hallo', 1),
(12, 'LWP69ZGBXR83RQN', 'Tab', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

CREATE TABLE `product_information` (
  `product_id` varchar(100) NOT NULL,
  `supplier_id` varchar(255) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `generic_name` varchar(100) DEFAULT NULL,
  `box_size` varchar(100) DEFAULT NULL,
  `expire_date` varchar(100) DEFAULT NULL,
  `product_location` varchar(100) DEFAULT NULL,
  `price` int(8) NOT NULL,
  `supplier_price` int(10) DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `product_model` varchar(100) NOT NULL,
  `product_details` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_information`
--

INSERT INTO `product_information` (`product_id`, `supplier_id`, `category_id`, `product_name`, `generic_name`, `box_size`, `expire_date`, `product_location`, `price`, `supplier_price`, `tax`, `product_model`, `product_details`, `image`, `status`) VALUES
('74879464', 'VJDKS1FHXRGHTF3UYLU5', '31XYLWEF6GQOUS5', 'Magnesium citrate solution', 'magnesium citrate', '100', '2018-08-17', '12', 200, 150, 0, 'shirt-1', 'Clearing the bowels before tests or for treating constipation.\r\n\r\nMagnesium citrate solution is a laxative. It works by attracting and retaining water in the intestine, which allows the bowel to evacuate.', 'http://pharmacy.bdtask.com/my-assets/image/product/1fca00885da90a2dae03dbc5e1674f58.jpg', 1),
('21887371', 'YKGUA4VKM2O49G7EWMWW', 'WHIBHKKV917FRTK', 'Alinia', ' nitazoxanide', '300', '2019-05-10', '2', 500, 300, 0, 'p1234', 'Amebicides are agents that destroy or kill amebae. The different amebecides have different modes of action. They are used to eradicate the parasitic species of amebae in animals or humans.\r\n\r\n', 'http://pharmacy.bdtask.com/my-assets/image/product/c0f7e48144c7227f2d13ee0a7c78aad6.jpg', 1),
('78855364', 'YKGUA4VKM2O49G7EWMWW', 'J92YBRWR546SEQH', 'Grastek', 'timothy grass pollen allergen extract', '120', '2018-08-03', '4', 300, 280, 5, 'A009121', 'Allergenics are used for allergen immunotherapy to decrease the immune response to allergens . The allergenic is administered to the patient as an injection or sublingually in increasing doses with the treatment plan taking three to five years.', 'http://pharmacy.bdtask.com/my-assets/image/product/fdf4ddbb2b3371dbe38d5e3b3157bba6.jpg', 1),
('89667471', 'BE9ZYPUN979Z3DBN2RJT', 'WHIBHKKV917FRTK', 'Lamprene', 'clofazimine', '500', '2018-03-01', '11', 270, 260, 0, 'M009', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae volutpat magna, at volutpat elit. Sed at sodales enim. Sed pharetra consectetur orci in vehicula. Vestibulum nunc orci, ultrices ut mattis vel, hendrerit sed ante. Aliquam venenatis to', 'http://pharmacy.bdtask.com/my-assets/image/product/fdcb5b6f56e564556664c0f77e6ec7e4.JPG', 1),
('43531368', 'YS6APPSSL3OZOFK8YOZ2', 'YJI3PWF9UXS7IGD', 'Ozurdex', ' dexamethasone intravitreal implant ', '300', '2019-05-10', '2', 1000, 8900, 5, 'H002', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae volutpat magna, at volutpat elit. Sed at sodales enim. Sed pharetra consectetur orci in vehicula. Vestibulum nunc orci, ultrices ut mattis vel, hendrerit sed ante. Aliquam venenatis to', 'http://pharmacy.bdtask.com/my-assets/image/product/f1dbe46e2a71fef23373fc9b2eb7eca0.gif', 1),
('19228217', 'YS6APPSSL3OZOFK8YOZ2', 'DBB9RFJI9XWI7KD', 'Theo-24', 'theophylline', '260', '2019-05-10', '7', 1200, 1150, 0, 'H0012', 'Maecenas congue nunc vitae erat blandit rutrum. Nulla quis est vitae tellus tincidunt fermentum ac eu odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur id turpis a erat vestibulum laoreet. Nam so', 'http://pharmacy.bdtask.com/my-assets/image/product/f74f166b99d6763541fdc2ff30a86387.jpg', 1),
('58798434', 'YS6APPSSL3OZOFK8YOZ2', '7PWNR3JA2C4I6XR', 'Solotuss', 'carbetapentane ', '300', '2018-08-03', '3', 900, 890, 0, 'SS12341', 'Maecenas congue nunc vitae erat blandit rutrum. Nulla quis est vitae tellus tincidunt fermentum ac eu odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur id turpis a erat vestibulum laoreet. Nam so', 'http://pharmacy.bdtask.com/my-assets/image/product/763f65245786f30b464b991e7e915769.jpg', 1),
('39161423', 'YS6APPSSL3OZOFK8YOZ2', 'NVUOTK9153ERZQA', 'Acid Gone', 'aluminum hydroxide/magnesium carbonate', '100', '2019-03-22', '6', 12, 10, 0, 'TNsB4543', 'Antacids are a class of medicines that neutralize acid in the stomach. They contain ingredients such as aluminum, calcium, or magnesium which act as bases (alkalis) to counteract the stomach acid and lower pH. They work quickly and are used to relieve sym', 'http://pharmacy.bdtask.com/my-assets/image/product/8787481a76ac40034c6ea364ef79bb7d.jpg', 1),
('56468618', 'YS6APPSSL3OZOFK8YOZ2', 'NIBPE5DPVVCVEEN', 'Rhinocort', 'budesonide', '435', '2017-04-29', '5', 10, 4, 0, 'SNt45NSM345435', 'Nasal steroids (also called nasal corticosteroids) are medicines containing corticosteroids such as beclomethasone, budesonide, fluticasone, or triamcinolone in a preparation designed for nasal use.\r\n\r\nCorticosteroids are very effective at reducing inflam', 'http://pharmacy.bdtask.com/my-assets/image/product/fa22f359faeb6732eecd7f432312afc5.jpg', 1),
('45611874', 'YS6APPSSL3OZOFK8YOZ2', '', '', '', '', '', '', 2, 5, 0, '5', '', NULL, 1),
('53782949', 'YS6APPSSL3OZOFK8YOZ2', '', 'asdsad', 'dsad', '2', '2017-04-17', '', 3, 21, 0.15, '12', '', NULL, 1),
('47323949', 'YS6APPSSL3OZOFK8YOZ2', '', 'Napa', 'Nama', '23', '2017-04-19', 'self', 500, 100, 25, '123mnsd3', 'demo details', NULL, 1),
('63666625', 'YKGUA4VKM2O49G7EWMWW', 'NIBPE5DPVVCVEEN', 'Sibellium 10 mg', 'Sibellium 10 mg', '0', '2017-10-12', 'rack1', 89, 80, 4.45, '1234', 'Use for neuropathic', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase`
--

CREATE TABLE `product_purchase` (
  `purchase_id` varchar(100) NOT NULL,
  `chalan_no` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `grand_total_amount` int(11) NOT NULL,
  `purchase_date` datetime NOT NULL,
  `purchase_details` text NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase`
--

INSERT INTO `product_purchase` (`purchase_id`, `chalan_no`, `supplier_id`, `grand_total_amount`, `purchase_date`, `purchase_details`, `status`) VALUES
('20170329132429', '123454576', 'VJDKS1FHXRGHTF3UYLU5', 7500, '2017-03-29 00:00:00', '', 1),
('20170330091606', '3453454', 'YKGUA4VKM2O49G7EWMWW', 20000, '2017-03-30 00:00:00', '', 1),
('20170330100711', '3475', 'YKGUA4VKM2O49G7EWMWW', 180000, '2017-03-30 00:00:00', 'lorem', 1),
('20170405134533', '5632463246326', 'VJDKS1FHXRGHTF3UYLU5', 300, '2017-04-05 00:00:00', '', 1),
('20170405134545', '626265', 'VJDKS1FHXRGHTF3UYLU5', 3450, '2017-04-05 00:00:00', '', 1),
('20170405134555', '45345435', 'VJDKS1FHXRGHTF3UYLU5', 8100, '2017-04-05 00:00:00', '', 1),
('20170411080028', '10099', 'YS6APPSSL3OZOFK8YOZ2', 934700, '2017-04-11 00:00:00', '', 1),
('20170411100559', '5677', 'YS6APPSSL3OZOFK8YOZ2', 5340000, '2017-04-11 00:00:00', '', 1),
('20170411104625', '123', 'VJDKS1FHXRGHTF3UYLU5', 15000, '2017-04-11 00:00:00', 'cxzv', 1),
('20170411104808', '1234', 'YKGUA4VKM2O49G7EWMWW', 30000, '2017-04-11 00:00:00', '', 1),
('20170417175437', '1122', 'YKGUA4VKM2O49G7EWMWW', 0, '2017-04-17 00:00:00', '', 1),
('20170419040128', '345343', 'YS6APPSSL3OZOFK8YOZ2', 210000, '2017-04-19 00:00:00', 'Demo', 1),
('20170419075224', '2222', 'YKGUA4VKM2O49G7EWMWW', 960, '2017-04-19 00:00:00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_details`
--

CREATE TABLE `product_purchase_details` (
  `purchase_detail_id` varchar(100) NOT NULL,
  `purchase_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase_details`
--

INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `status`) VALUES
('Wak4Qw3Yd7VPmLL', '20170329132429', '83873176', 50, 150, 7500, 1),
('D5Kn0W9QIZkJ4ps', '20170330091606', '88414862', 100, 200, 20000, 1),
('X4BVsyFDsW3JAni', '20170330100711', '91363948', 400, 450, 180000, 1),
('HRhQI9R15DXOCPL', '20170405134533', '83873176', 2, 150, 300, 1),
('5mvhzMUxc8Jwwa8', '20170405134545', '83873176', 23, 150, 3450, 1),
('2Pr831Y4JCl8hw4', '20170405134555', '83873176', 54, 150, 8100, 1),
('gOfS61v0RyygEQB', '20170411080028', '43531368', 100, 8900, 890000, 1),
('Ur5G6fs9i3aAmA1', '20170411080028', '58798434', 50, 890, 44500, 1),
('AhFfzAWk0nZyKeE', '20170411080028', '39161423', 20, 10, 200, 1),
('oQcbNWIXHuH5mfY', '20170411100559', '43531368', 600, 8900, 5340000, 1),
('JxmXuc4qILYAWhr', '20170411104625', '74879464', 100, 150, 15000, 1),
('rkEPXbbnCTileW', '20170411104808', '21887371', 100, 300, 30000, 1),
('TmkCoV8TOIYIe3W', '20170417175437', '21887371', 1, 300, 300, 1),
('WEbCG9nLhxOH7N9', '20170419040128', '47323949', 2100, 100, 210000, 1),
('iWSvqOWyLYaoSo2', '20170419075224', '63666625', 12, 80, 960, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_report`
-- (See below for the actual view)
--
CREATE TABLE `product_report` (
`date` datetime
,`product_id` varchar(100)
,`quantity` bigint(20)
,`rate` int(11)
,`total_amount` bigint(20)
,`account` varchar(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_supplier`
-- (See below for the actual view)
--
CREATE TABLE `product_supplier` (
`product_id` varchar(100)
,`product_name` varchar(255)
,`product_model` varchar(100)
,`supplier_id` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `purchase_report`
-- (See below for the actual view)
--
CREATE TABLE `purchase_report` (
`purchase_date` datetime
,`chalan_no` varchar(100)
,`supplier_id` varchar(100)
,`purchase_detail_id` varchar(100)
,`purchase_id` varchar(100)
,`product_id` varchar(100)
,`quantity` int(11)
,`rate` int(11)
,`total_amount` int(11)
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sales_actual`
-- (See below for the actual view)
--
CREATE TABLE `sales_actual` (
`DATE` datetime
,`supplier_id` varchar(100)
,`sub_total` decimal(42,0)
,`no_transection` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sales_report`
-- (See below for the actual view)
--
CREATE TABLE `sales_report` (
`date` datetime
,`invoice_id` varchar(100)
,`invoice_details_id` varchar(100)
,`customer_id` varchar(100)
,`supplier_id` varchar(100)
,`product_id` varchar(100)
,`product_model` varchar(100)
,`product_name` varchar(255)
,`cartoon` int(11)
,`quantity` int(8)
,`sell_rate` int(8)
,`supplier_rate` int(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `stock_history`
-- (See below for the actual view)
--
CREATE TABLE `stock_history` (
`vdate` datetime
,`product_id` varchar(100)
,`sell` decimal(32,0)
,`Purchase` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_information`
--

CREATE TABLE `supplier_information` (
  `supplier_id` varchar(100) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_information`
--

INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES
('VJDKS1FHXRGHTF3UYLU5', 'New Supplier', '', '023424234', '', 1),
('YKGUA4VKM2O49G7EWMWW', 'Abdullah', '', '0234234234', '', 1),
('94KITM73FB6GBUDK22RJ', 'Tanzil Ahmad', '98 Green Road, Farmgate, Dhaka-1215', '01922296392', 'This is demo data.will update later', 1),
('YS6APPSSL3OZOFK8YOZ2', 'Maxiz Sanuka', 'South Ferri Ghat,Padma River,Chandpur', '0181111111111', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae volutpat magna, at volutpat elit. Sed at sodales enim. Sed pharetra consectetur orci in vehicula. Vestibulum nunc orci, ultrices ut mattis vel, hendrerit sed ante. Aliquam venenatis to', 1),
('1CFWC2V5US1EVAWJBA84', 'Murat Zadran', '98/A, East Lackx view,West Nkhali', '098712562747749', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae volutpat magna, at volutpat elit. Sed at sodales enim. Sed pharetra consectetur orci in vehicula. Vestibulum nunc orci, ultrices ut mattis vel, hendrerit sed ante. Aliquam venenatis to', 1),
('B7K8QO4U81FGJ3X9MSD9', 'Tawhid Khan', '98/A, East Lackx view,West Nkhali', '098712562747749', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae volutpat magna, at volutpat elit. Sed at sodales enim. Sed pharetra consectetur orci in vehicula. Vestibulum nunc orci, ultrices ut mattis vel, hendrerit sed ante. Aliquam venenatis to', 1),
('LA55786NFX8PCUFZ46EG', 'Sowkot Choudhury ', 'South Ferri Ghat,Padma River,Chandpur', '0181111111111', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae volutpat magna, at volutpat elit. Sed at sodales enim. Sed pharetra consectetur orci in vehicula. Vestibulum nunc orci, ultrices ut mattis vel, hendrerit sed ante. Aliquam venenatis to', 1),
('SHJ18FWDK4W7H8RAEECG', 'Xinan Huyanhu', '98/A, East Lackx view,West Nkhali', '0181111111111', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae volutpat magna, at volutpat elit. Sed at sodales enim. Sed pharetra consectetur orci in vehicula. Vestibulum nunc orci, ultrices ut mattis vel, hendrerit sed ante. Aliquam venenatis to', 1),
('BE9ZYPUN979Z3DBN2RJT', 'Alex Hard Nicoli', '231,East Patalipur,Sonamuri', '0181111111111', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae volutpat magna, at volutpat elit. Sed at sodales enim. Sed pharetra consectetur orci in vehicula. Vestibulum nunc orci, ultrices ut mattis vel, hendrerit sed ante. Aliquam venenatis to', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_ledger`
--

CREATE TABLE `supplier_ledger` (
  `transaction_id` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `chalan_no` varchar(100) DEFAULT NULL,
  `deposit_no` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `cheque_no` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_ledger`
--

INSERT INTO `supplier_ledger` (`transaction_id`, `supplier_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`) VALUES
('5vw6WZdgyVkDe4u', 'VJDKS1FHXRGHTF3UYLU5', NULL, 'zh0wUIyLjy', 124343, 'sdfs', '2', '', '2017-03-29 00:00:00', 0),
('20170329132429', 'VJDKS1FHXRGHTF3UYLU5', '123454576', NULL, 7500, '', '', '', '2017-03-29 00:00:00', 1),
('QWdymqsuUdsgrds', 'VJDKS1FHXRGHTF3UYLU5', NULL, 'PnKcXZbxWb', 323232, 'sdfsdf', '1', '', '2017-03-29 00:00:00', 1),
('bPdccyuAL7F6JFh', 'LW9WTNWCVI3LKRLON5V1', NULL, 'begha1lalF', 7878778, 'sdfsdfs', '1', '', '2017-03-30 00:00:00', 1),
('20170330091606', 'YKGUA4VKM2O49G7EWMWW', '3453454', NULL, 20000, '', '', '', '2017-03-30 00:00:00', 1),
('20170330100711', 'YKGUA4VKM2O49G7EWMWW', '3475', NULL, 180000, 'lorem', '', '', '2017-03-30 00:00:00', 1),
('20170405134533', 'VJDKS1FHXRGHTF3UYLU5', '5632463246326', NULL, 300, '', '', '', '2017-04-05 00:00:00', 1),
('20170405134545', 'VJDKS1FHXRGHTF3UYLU5', '626265', NULL, 3450, '', '', '', '2017-04-05 00:00:00', 1),
('20170405134555', 'VJDKS1FHXRGHTF3UYLU5', '45345435', NULL, 8100, '', '', '', '2017-04-05 00:00:00', 1),
('FhHll0TYnq5xqc3', 'LW9WTNWCVI3LKRLON5V1', NULL, 'uJLz7dokNr', 234324, 'dsfsd', '1', '', '2017-04-11 00:00:00', 1),
('20170411080028', 'YS6APPSSL3OZOFK8YOZ2', '10099', NULL, 934700, '', '', '', '2017-04-11 00:00:00', 1),
('20170411100559', 'YS6APPSSL3OZOFK8YOZ2', '5677', NULL, 5340000, '', '', '', '2017-04-11 00:00:00', 1),
('20170411104625', 'VJDKS1FHXRGHTF3UYLU5', '123', NULL, 15000, 'cxzv', '', '', '2017-04-11 00:00:00', 1),
('20170411104808', 'YKGUA4VKM2O49G7EWMWW', '1234', NULL, 30000, '', '', '', '2017-04-11 00:00:00', 1),
('20170417175437', 'YKGUA4VKM2O49G7EWMWW', '1122', NULL, 0, '', '', '', '2017-04-17 00:00:00', 1),
('20170419040128', 'YS6APPSSL3OZOFK8YOZ2', '345343', NULL, 210000, 'Demo', '', '', '2017-04-19 00:00:00', 1),
('20170419075224', 'YKGUA4VKM2O49G7EWMWW', '2222', NULL, 960, '', '', '', '2017-04-19 00:00:00', 1),
('8A01WqQ5CZL4RTr', 'YS6APPSSL3OZOFK8YOZ2', NULL, 'iSIJU7gogk', 123, 'Demo', '1', '', '2017-04-19 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_information`
--

CREATE TABLE `tax_information` (
  `tax_id` int(11) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_information`
--

INSERT INTO `tax_information` (`tax_id`, `tax`, `status`) VALUES
(1, 0, NULL),
(2, 5, NULL),
(3, 10, NULL),
(4, 15, NULL),
(5, 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `gender` int(2) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `last_name`, `first_name`, `gender`, `date_of_birth`, `status`) VALUES
(1, 'Akhmatovich', 'Alisher', 1, '', 1),
(11, 'Doe', 'John', 0, '', 0),
(12, 'Ahmed', 'Tanzil', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(2) NOT NULL,
  `security_code` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES
(1, 'test@test.com', '41d99b369894eb1ec3f461135132d8bb', 1, '', 1),
(11, 'jone.doe@gmail.com', '41d99b369894eb1ec3f461135132d8bb', 2, '', 1),
(12, 'tanzil4091@gmail.com', '41d99b369894eb1ec3f461135132d8bb', 2, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_setting`
--

CREATE TABLE `web_setting` (
  `setting_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) NOT NULL DEFAULT '1',
  `site_key` varchar(200) DEFAULT NULL,
  `secret_key` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_setting`
--

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `site_key`, `secret_key`) VALUES
(1, 'http://pharmacy.bdtask.com/my-assets/image/logo/a269808b88a75c3cbc6e91f63b49cb38.png', 'http://pharmacy.bdtask.com/my-assets/image/logo/6c0a5bafa93b3472daa9c4fb633dd5a1.png', 'http://pharmacy.bdtask.com/my-assets/image/logo/5384d4c29117bdd6004c1f82b9ae0535.png', '₹', '0', 'Copyright © 2011-2017 ATA Group. All rights reserved.', 'english', '0', 1, '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', '6LdiKhsUAAAAABH4BQCIvBar7Oqe-2LwDKxMSX-t');

-- --------------------------------------------------------

--
-- Structure for view `customer_transection_summary`
--
DROP TABLE IF EXISTS `customer_transection_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_transection_summary`  AS  select `customer_information`.`customer_name` AS `customer_name`,`customer_ledger`.`customer_id` AS `customer_id`,'credit' AS `type`,sum(-(`customer_ledger`.`amount`)) AS `amount` from (`customer_ledger` join `customer_information` on((`customer_information`.`customer_id` = `customer_ledger`.`customer_id`))) where (isnull(`customer_ledger`.`receipt_no`) and (`customer_ledger`.`status` = 1)) group by `customer_ledger`.`customer_id` union all select `customer_information`.`customer_name` AS `customer_name`,`customer_ledger`.`customer_id` AS `customer_id`,'debit' AS `type`,sum(`customer_ledger`.`amount`) AS `amount` from (`customer_ledger` join `customer_information` on((`customer_information`.`customer_id` = `customer_ledger`.`customer_id`))) where (isnull(`customer_ledger`.`invoice_no`) and (`customer_ledger`.`status` = 1)) group by `customer_ledger`.`customer_id` ;

-- --------------------------------------------------------

--
-- Structure for view `product_report`
--
DROP TABLE IF EXISTS `product_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_report`  AS  select `purchase_report`.`purchase_date` AS `date`,`purchase_report`.`product_id` AS `product_id`,`purchase_report`.`quantity` AS `quantity`,`purchase_report`.`rate` AS `rate`,`purchase_report`.`total_amount` AS `total_amount`,'a' AS `account` from `purchase_report` union all select `sales_report`.`date` AS `date`,`sales_report`.`product_id` AS `product_id`,-(`sales_report`.`quantity`) AS `-quantity`,`sales_report`.`supplier_rate` AS `rate`,(`sales_report`.`quantity` * `sales_report`.`supplier_rate`) AS `total_amount`,'b' AS `account` from `sales_report` ;

-- --------------------------------------------------------

--
-- Structure for view `product_supplier`
--
DROP TABLE IF EXISTS `product_supplier`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_supplier`  AS  select `b`.`product_id` AS `product_id`,`c`.`product_name` AS `product_name`,`c`.`product_model` AS `product_model`,`a`.`supplier_id` AS `supplier_id` from ((`product_purchase` `a` join `product_purchase_details` `b`) join `product_information` `c`) where ((`a`.`purchase_id` = `b`.`purchase_id`) and (`c`.`product_id` = `b`.`product_id`)) group by `b`.`product_id` ;

-- --------------------------------------------------------

--
-- Structure for view `purchase_report`
--
DROP TABLE IF EXISTS `purchase_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `purchase_report`  AS  select `product_purchase`.`purchase_date` AS `purchase_date`,`product_purchase`.`chalan_no` AS `chalan_no`,`product_purchase`.`supplier_id` AS `supplier_id`,`product_purchase_details`.`purchase_detail_id` AS `purchase_detail_id`,`product_purchase_details`.`purchase_id` AS `purchase_id`,`product_purchase_details`.`product_id` AS `product_id`,`product_purchase_details`.`quantity` AS `quantity`,`product_purchase_details`.`rate` AS `rate`,`product_purchase_details`.`total_amount` AS `total_amount`,`product_purchase_details`.`status` AS `status` from (`product_purchase_details` left join `product_purchase` on((`product_purchase_details`.`purchase_id` = `product_purchase`.`purchase_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `sales_actual`
--
DROP TABLE IF EXISTS `sales_actual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sales_actual`  AS  select `sales_report`.`date` AS `DATE`,`sales_report`.`supplier_id` AS `supplier_id`,sum((`sales_report`.`quantity` * -(`sales_report`.`supplier_rate`))) AS `sub_total`,sum(`sales_report`.`cartoon`) AS `no_transection` from `sales_report` group by `sales_report`.`date`,`sales_report`.`supplier_id` union all select `supplier_ledger`.`date` AS `date`,`supplier_ledger`.`supplier_id` AS `supplier_id`,`supplier_ledger`.`amount` AS `sub_total`,`supplier_ledger`.`description` AS `no_transection` from `supplier_ledger` where isnull(`supplier_ledger`.`chalan_no`) group by `supplier_ledger`.`date`,`supplier_ledger`.`description`,`supplier_ledger`.`supplier_id` ;

-- --------------------------------------------------------

--
-- Structure for view `sales_report`
--
DROP TABLE IF EXISTS `sales_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sales_report`  AS  select `b`.`date` AS `date`,`b`.`invoice_id` AS `invoice_id`,`a`.`invoice_details_id` AS `invoice_details_id`,`b`.`customer_id` AS `customer_id`,`c`.`supplier_id` AS `supplier_id`,`a`.`product_id` AS `product_id`,`c`.`product_model` AS `product_model`,`c`.`product_name` AS `product_name`,`a`.`cartoon` AS `cartoon`,`a`.`quantity` AS `quantity`,`a`.`rate` AS `sell_rate`,`a`.`supplier_rate` AS `supplier_rate` from ((`invoice_details` `a` join `invoice` `b`) join `product_supplier` `c`) where ((`a`.`invoice_id` = `b`.`invoice_id`) and (`a`.`product_id` = `c`.`product_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `stock_history`
--
DROP TABLE IF EXISTS `stock_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stock_history`  AS  select `invoice`.`date` AS `vdate`,`invoice_details`.`product_id` AS `product_id`,sum(`invoice_details`.`quantity`) AS `sell`,0 AS `Purchase` from (`invoice_details` join `invoice` on((`invoice_details`.`invoice_id` = `invoice`.`invoice_id`))) group by `invoice_details`.`product_id`,`invoice`.`date` union select `product_purchase`.`purchase_date` AS `purchase_date`,`product_purchase_details`.`product_id` AS `product_id`,0 AS `0`,sum(`product_purchase_details`.`quantity`) AS `purchase` from (`product_purchase_details` join `product_purchase` on((`product_purchase_details`.`purchase_id` = `product_purchase`.`purchase_id`))) group by `product_purchase_details`.`product_id`,`product_purchase`.`purchase_date` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
