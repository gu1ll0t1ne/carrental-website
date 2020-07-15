-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 04, 2020 at 10:46 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id13474539_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-04-29 12:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'xyz@gmail.com', 2, '22/06/2017', '25/06/2017', 'congrats !! You buy this car', 1, '2020-04-20 20:15:43'),
(2, 'xyz@gmail.com', 3, '30/06/2017', '02/07/2017', 'Okay !! Hope you will like other car.', 2, '2020-04-20 20:15:43'),
(3, 'xyz@gmail.com', 4, '02/07/2017', '07/07/2017', 'Welcome !! take your time to decide which car you want to purchase\r\n', 0, '2020-04-20 20:15:43'),
(4, 'ankitk05021999@gmail.com', 8, '05/07/2020', '07/07/2020', 'give ur best service', 0, '2020-04-30 15:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(7, 'Marutiu', '2017-06-19 06:22:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'IIIT Allahabad ,Jhalawa', 'Hotwheel\'z@gmail.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'vineet kumar', 'vineet123@gmail.com', '2147483647', 'Hey I am from ALlahabad\r\n', '2017-06-18 10:03:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `Type` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `Type`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(10, 'vineet', 'xyz@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1234567891', 'customer', '21/09/1995', 'jhalwa allabad', 'kanpur', 'allahabad', '2020-04-21 14:34:56', '2020-04-21 14:47:14'),
(13, 'Ankit Kumar', 'ankitk05021999@gmail.com', '0ed1c6558eb04ee47cdbac4f383ea17d', '8218892342', 'customer', '', '', '', '', '2020-04-30 15:33:07', '2020-05-02 21:07:12'),
(16, 'Chirag', 'chirag.patel1996@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8570389284', 'customer', NULL, NULL, NULL, NULL, '2020-05-02 10:01:44', NULL),
(17, 'Ayushi Sharma', 'ayushi0244@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '9848276582', 'customer', NULL, NULL, NULL, NULL, '2020-05-02 10:08:14', NULL),
(18, 'Prakhar Arora', 'tony.strk001@gmail.com', '202cb962ac59075b964b07152d234b70', '6293023952', 'customer', NULL, NULL, NULL, NULL, '2020-05-02 10:11:53', NULL),
(19, 'Viharika Nagpal', 'harika16.2000@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9746284002', 'customer', NULL, NULL, NULL, NULL, '2020-05-02 10:16:00', NULL),
(20, 'Ravi Kumar', 'raviravi404@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '6309871870', 'customer', NULL, NULL, NULL, NULL, '2020-05-02 10:19:47', NULL),
(21, 'Vineet ka Error', 'hellomama@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1498388232', 'customer', NULL, NULL, NULL, NULL, '2020-05-02 12:46:22', NULL),
(22, 'Anshul', 'fuck@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1234567891', 'customer', NULL, NULL, NULL, NULL, '2020-05-02 12:48:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbldealers`
--

CREATE TABLE `tbldealers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `Type` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldealers`
--

INSERT INTO `tbldealers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `Type`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(11, 'ankit', 'ankit@gmail.com', '202cb962ac59075b964b07152d234b70', '1234567891', 'dealer', NULL, NULL, NULL, NULL, '2020-04-28 12:26:15', NULL),
(12, 'anshul', 'anshul@gmail.com', '202cb962ac59075b964b07152d234b70', '1234567891', 'dealer', NULL, NULL, NULL, NULL, '2020-04-28 12:27:53', NULL),
(14, 'Ankit Kumar', 'ak1031431@gmail.com', '0ed1c6558eb04ee47cdbac4f383ea17d', '8218947324', 'dealer', NULL, NULL, NULL, NULL, '2020-04-30 15:35:57', NULL),
(15, 'hrutvik', 'hrutvik@gmail.com', '202cb962ac59075b964b07152d234b70', '9850228846', 'dealer', NULL, NULL, NULL, NULL, '2020-05-01 15:52:32', NULL),
(23, 'Vineet Kumar', 'vineet@gmail.com', '202cb962ac59075b964b07152d234b70', '1234567891', 'dealer', NULL, NULL, NULL, NULL, '2020-05-02 12:52:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">At Expedia India, our goal is to offer you a variety of Page car hire discounts at the very best price to suit our customer`s needs. We offer car hire comparisons in Page from compact economy cars with low consumption to luxury or off road solutions, depending on your preference. Every Page rental car we feature will come fully equipped with the latest amenities and safety features that ensure your trips will be safe, convenient and comfortable.</span>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">We are working on this page.</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'vineet123@gmail.com', '2020-04-28 11:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'xyz@gmail.com', 'hi just checking testimonial working or not !!', '2020-04-21 15:02:04', 0),
(4, 'ankit@gmail.com', 'hey !! it cool website', '2020-04-28 12:26:47', 0),
(5, 'anshul@gmail.com', 'oh my god,best website i have even seen.', '2020-04-28 12:28:24', 0),
(6, 'chirag.patel1996@gmail.com', 'One of main objectives of this site is that it manages the booking,very well such that it is while accessing the website there does not occur any obligation at all.The prices of the car are so accessible such that anyone can use it so it becomes very easy for me to use. The site is built very well so that it can be very well for me to use and rent a car for a day. It was a very  useful expression for using this website.', '2020-05-02 10:04:44', 1),
(7, 'ayushi0244@gmail.com', 'Initially I thought that it was just another ad website that is giving the ad for some cheap tricks,so I don’t do any recruitment to it . But at most of a day  i got requirement for the rent of the car for few days with min renting cost.So i got the remainder of this site i went to check it out so that there i might get car at less cost ,so i checkout the website since i went for the site it wasn’t the another ad site it was build an very nicely that the car renting from it was easy ,and top of which cost prices for the car was very less.', '2020-05-02 10:09:52', 1),
(8, 'tony.strk001@gmail.com', 'I  find the layout and design of the website very intriguing. The website has been built beautifully. I will use this website for car renting purposes only as I do not plan to buy a car online. Sometimes the website works slow and the availability of cars for rent is really low in some areas of my city. Maybe not many people are  familiar with this website. In my opinion the website works fine for renting purposes.', '2020-05-02 10:13:20', 1),
(9, 'harika16.2000@gmail.com', 'One of the salient features of this site is that it does not crash too often,as of the other rental website.It gives excellent and prompt customer service. Truly like a professional company. The cars are in up-to date condition.In case of emergency,the response from the team is quick .The availability of customer support service is very managed very well .For having questions the FAQ page gives an answer quickly.\r\n', '2020-05-02 10:16:34', 1),
(10, 'raviravi404@gmail.com', 'I was impressed by the user interface of the website. The icon which changes the theme of the website blew my mind. It was a cool feature and I have never seen anything like this before in any of the websites. The options which appear after clicking onto profile are very useful as navigation might have been a problem without those. The Website serves its purpose and I was  satisfied.', '2020-05-02 10:23:10', 1),
(11, 'vineet@gmail.com', 'hiii checking testimonial works or not', '2020-05-02 13:14:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `Type` varchar(25) NOT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `Type`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(10, 'vineet', 'xyz@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1234567891', 'customer', '21/09/1995', 'jhalwa allabad', 'kanpur', 'allahabad', '2020-04-21 14:34:56', '2020-04-21 14:47:14'),
(11, 'ankit', 'ankit@gmail.com', '202cb962ac59075b964b07152d234b70', '1234567891', 'dealer', NULL, NULL, NULL, NULL, '2020-04-28 12:26:14', NULL),
(12, 'anshul', 'anshul@gmail.com', '202cb962ac59075b964b07152d234b70', '1234567891', 'dealer', NULL, NULL, NULL, NULL, '2020-04-28 12:27:53', NULL),
(13, 'Ankit Kumar', 'ankitk05021999@gmail.com', '0ed1c6558eb04ee47cdbac4f383ea17d', '8218892342', 'customer', '', '', '', '', '2020-04-30 15:33:07', '2020-05-02 21:07:12'),
(14, 'Ankit Kumar', 'ak1031431@gmail.com', '0ed1c6558eb04ee47cdbac4f383ea17d', '8218947324', 'dealer', NULL, NULL, NULL, NULL, '2020-04-30 15:35:57', NULL),
(15, 'hrutvik', 'hrutvik@gmail.com', '202cb962ac59075b964b07152d234b70', '9850228846', 'dealer', NULL, NULL, NULL, NULL, '2020-05-01 15:52:32', NULL),
(16, 'Chirag', 'chirag.patel1996@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8570389284', 'customer', NULL, NULL, NULL, NULL, '2020-05-02 10:01:44', NULL),
(17, 'Ayushi Sharma', 'ayushi0244@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '9848276582', 'customer', NULL, NULL, NULL, NULL, '2020-05-02 10:08:14', NULL),
(18, 'Prakhar Arora', 'tony.strk001@gmail.com', '202cb962ac59075b964b07152d234b70', '6293023952', 'customer', NULL, NULL, NULL, NULL, '2020-05-02 10:11:53', NULL),
(19, 'Viharika Nagpal', 'harika16.2000@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9746284002', 'customer', NULL, NULL, NULL, NULL, '2020-05-02 10:16:00', NULL),
(20, 'Ravi Kumar', 'raviravi404@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '6309871870', 'customer', NULL, NULL, NULL, NULL, '2020-05-02 10:19:47', NULL),
(23, 'Vineet Kumar', 'vineet@gmail.com', '202cb962ac59075b964b07152d234b70', '1234567891', 'dealer', NULL, NULL, NULL, NULL, '2020-05-02 12:52:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `price` int(25) NOT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `price`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'BMW', 2, 'mobili Lamborghini S.p.A is an Italian brand and manufacturer in Sant\'Agata Bolognese.The company is owned by the Volkswagen Group through its subsidiary Audi', 232, 345345, 'Petrol', 3453, 7, 'knowledge_base_bg.jpg', '20170523_145633.jpg', 'phpgurukul-1.png', 'social-icons.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2020-05-04 10:10:33'),
(2, 'Maruti Suzuki', 2, 'Maruti Suzuki India Limited, formerly known as Maruti Udyog Limited, is an automobile manufacturer in India. It is a 56.21% owned subsidiary of the Japanese car and motorcycle manufacturer Suzuki Motor Corporation.', 5543, 859, 'CNG', 2015, 4, 'car_755x430.png', 'looking-used-car.png', 'banner-image.jpg', 'about_services_faq_bg.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 16:16:17', '2020-05-04 10:10:42'),
(3, 'Toyota', 4, 'Hyundai ELite i20 ia a 5 seater hatchback car launched at a base price of Rs.5.60 lakh in February 2018 by Hyundai in India.Elite i20 is powered by 1197cc engine claiming mileage of 18.6kmpl.ELite i20 also comes with automatic transmission.', 234234, 563, 'CNG', 2012, 5, 'featured-img-3.jpg', 'dealer-logo.jpg', 'img_390x390.jpg', 'listing_img3.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:20', '2020-05-04 10:10:47'),
(4, 'Nissan', 1, 'Maruti Wagon is a 5 seater hatchback car launched at a base price of Rs. 4.46 lakh in January 2019 by Maruti SUzuki in India.', 23423, 5636, 'CNG', 2012, 5, 'featured-img-3.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:43', '2020-05-04 10:10:52'),
(5, 'Audi', 5, 'The Renault Duster haas 1 Petrol Engine on offer.The Petrol engine is 1498 c.It is available with Manual transimission.', 23432, 345345, 'Petrol', 3453, 7, 'car_755x430.png', 'featured-img-3.jpg', 'about_us_img1.jpg', 'listing_img3.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2020-05-04 10:10:56'),
(6, 'audi', 3, 'Its cool car, latest model launched in year 2019.', 56434, 432, 'Diesel', 2019, 8, 'img_390x390.jpg', 'featured-img-1.jpg', 'car_755x430.png', 'featured-img-1.jpg', 'banner-image.jpg', 1, 1, NULL, 1, NULL, 1, 1, NULL, 1, 1, NULL, NULL, '2020-04-28 01:25:09', '2020-05-04 10:11:09'),
(7, 'audi', 3, 'Its cool car, latest model launched in year 2020.', 343534, 453, 'CNG', 2020, 6, 'featured-img-1.jpg', 'looking-used-car.png', 'featured-img-3.jpg', 'listing_img3.jpg', 'featured-img-1.jpg', NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, NULL, NULL, '2020-04-28 01:26:40', '2020-05-04 10:11:22'),
(8, 'maruti suzuki', 1, 'Maruti Suzuki India Limited, formerly known as Maruti Udyog Limited, is an automobile manufacturer in India. It is a 56.21% owned subsidiary of the Japanese car and motorcycle manufacturer Suzuki Motor Corporation.', 335453, 445, 'Petrol', 2021, 6, 'featured-img-1.jpg', 'listing_img3.jpg', 'looking-used-car.png', 'banner-image.jpg', 'about_us_img1.jpg', NULL, 1, NULL, 1, NULL, 1, 1, 1, NULL, NULL, 1, NULL, '2020-04-28 01:28:06', '2020-05-04 10:11:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldealers`
--
ALTER TABLE `tbldealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
