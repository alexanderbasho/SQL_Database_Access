-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 24 Δεκ 2019 στις 13:10:54
-- Έκδοση διακομιστή: 10.1.37-MariaDB
-- Έκδοση PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `basho`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `assessments`
--

CREATE TABLE `assessments` (
  `AssessmentTitle` varchar(20) NOT NULL,
  `DeadlineDate` varchar(20) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `DeadlineTime` varchar(20) DEFAULT NULL,
  `ModuleCode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `assessments`
--

INSERT INTO `assessments` (`AssessmentTitle`, `DeadlineDate`, `Description`, `DeadlineTime`, `ModuleCode`) VALUES
('Assess 1', 'Dec 12.', 'Portfolio hand-in', '17.00', '4CC510'),
('Assess 1', 'Oct 18.', 'Project hand-in', '23.59', '4CC511'),
('Assess 1', 'Oct 6.', 'Milestone 1', '17.00', '5CC507'),
('Assess 1', 'Dec 12.', 'Portfolio hand-in', '23.59', '5CC516'),
('Assess 1', 'Dec 12.', 'Performance review', '23.59', '5CC518'),
('Assess 2', 'Dec 12.', 'Quiz', '12.00', '4CC511'),
('Assess 2', 'Nov 6.', 'Milestone 2', '17.00', '5CC507'),
('Assess 3', 'Dec 12.', 'Project hand-in', '23.59', '5CC507');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `enrolment`
--

CREATE TABLE `enrolment` (
  `ModuleCode` varchar(20) NOT NULL,
  `StudentID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `enrolment`
--

INSERT INTO `enrolment` (`ModuleCode`, `StudentID`) VALUES
('4CC510', '328145291'),
('5CC507', '328145291'),
('5CC516', '328145291'),
('5CC516', '578274289'),
('5CC518', '328145291'),
('5CC518', '578274289');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `moduleleaders`
--

CREATE TABLE `moduleleaders` (
  `ModuleLeaderID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `OfficeNumber` varchar(20) DEFAULT NULL,
  `OfficeHours` varchar(20) DEFAULT NULL,
  `OfficeTelephoneNumber` varchar(20) DEFAULT NULL,
  `ModuleCode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `moduleleaders`
--

INSERT INTO `moduleleaders` (`ModuleLeaderID`, `Name`, `Email`, `OfficeNumber`, `OfficeHours`, `OfficeTelephoneNumber`, `ModuleCode`) VALUES
(1, 'Yongjun Zheng', 'y.zheng@derby.ac.uk', 'MS310', 'Tue 13 - 17', '9989', '4CC510'),
(2, 'Wayne Rippin', 'w.rippin@derby.ac.uk', 'MS308', 'Thu 9 - 12', '8989', '4CC511'),
(3, 'Dave Voorhis', 'd.voorhis@derby.ac.uk', 'MS308', 'Thu 13 - 17', '1410', '5CC507'),
(4, 'Dave Voorhis', 'd.voorhis@derby.ac.uk', 'MS308', 'Thu 13 - 17', '1410', '5CC518'),
(5, 'Chris Windmill', 'c.windmill@derby.ac.uk', 'MS310', 'Fri 12 - 16', '9216', '5CC516');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `modules`
--

CREATE TABLE `modules` (
  `ModuleCode` varchar(20) NOT NULL,
  `ModuleTitle` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `modules`
--

INSERT INTO `modules` (`ModuleCode`, `ModuleTitle`) VALUES
('4CC510', 'Programming I'),
('4CC511', 'Programming II'),
('5CC507', 'Databases'),
('5CC516', 'Software Engineering'),
('5CC518', 'Team Project');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `scheduleitems`
--

CREATE TABLE `scheduleitems` (
  `ScheduleItemID` varchar(20) NOT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Duration` varchar(20) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `scheduleitems`
--

INSERT INTO `scheduleitems` (`ScheduleItemID`, `Description`, `Duration`, `Date`, `Time`) VALUES
('1', 'Pub-Standing Order', '4.59', 'Oct-23', '19.00-23.59'),
('2', 'Sunday lunch', '2.00', 'Nov-29', '13.00-15.00'),
('3', 'Gym', '1.30', 'Nov-13', '12.00-13.30'),
('4', 'Project meeting', '2.00', 'Nov-12', '13.00-15.00');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `sessions`
--

CREATE TABLE `sessions` (
  `SessionID` varchar(20) NOT NULL,
  `SessionType` varchar(30) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `Duration` varchar(20) DEFAULT NULL,
  `Room` varchar(20) DEFAULT NULL,
  `DayOfWeek` varchar(15) DEFAULT NULL,
  `ModuleCode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `sessions`
--

INSERT INTO `sessions` (`SessionID`, `SessionType`, `Time`, `Duration`, `Room`, `DayOfWeek`, `ModuleCode`) VALUES
('1', 'Lecture', '18.00-19.00', '1.00', 'MS038', 'Tue', '5CC507'),
('10', 'Tutorial 5', '11.00-12.00', '1.00', 'MS212', 'Tue', '5CC507'),
('11', 'Tutorial 6', '13.00-14.00', '1.00', 'MS214', 'Thu', '5CC507'),
('12', 'Tutorial 1', '9.00-10.00', '1.00', 'MS213', 'Mon', '5CC518'),
('13', 'Tutorial 2', '11.00-12.00', '1.00', 'MS214', 'Mon', '5CC518'),
('14', 'Tutorial 3', '13.00-14.00', '1.00', 'MS213', 'Mon', '5CC518'),
('15', 'Tutorial 4', '10.00-11.00', '1.00', 'MS304a', 'Tue', '5CC518'),
('16', 'Tutorial 5', '11.00-12.00', '1.00', 'MS212', 'Tue', '5CC518'),
('17', 'Tutorial 6', '13.00-14.00', '1.00', 'MS214', 'Thu', '5CC518'),
('18', 'Tutorial 7', '10.00-11.00', '1.00', 'N416', 'Fri', '5CC518'),
('19', 'Tutorial 1', '11.00-12.00', '1.00', 'MS214', 'Wed', '5CC516'),
('2', 'Lecture', '13.00-14.00', '1.00', 'B302', 'Mon', '5CC518'),
('20', 'Tutorial 2', '11.00-12.00', '1.00', 'MS038', 'Thu', '5CC516'),
('21', 'Tutorial 1', '9.00-17.00', '8.00', 'MS304', 'Tue', '4CC510'),
('22', 'Tutorial 2', '9.00-17.00', '8.00', 'MS304a', 'Tue', '4CC510'),
('23', 'Tutorial 1', '9.00-10.00', '1.00', 'MS304', 'Mon', '4CC511'),
('24', 'Tutorial 2', '11.00-12.00', '1.00', 'MS304', 'Mon', '4CC511'),
('25', 'Tutorial 3', '13.00-14.00', '1.00', 'MS213', 'Mon', '4CC511'),
('26', 'Tutorial 4', '10.00-11.00', '1.00', 'MS304a', 'Tue', '4CC511'),
('27', 'Tutorial 5', '11.00-12.00', '1.00', 'MS212', 'Tue', '4CC511'),
('28', 'Tutorial 6', '13.00-14.00', '1.00', 'MS214', 'Thu', '4CC511'),
('3', 'Lecture', '12.00-13.00', '1.00', 'MS316', 'Thu', '5CC516'),
('4', 'Lecture', '16.00-17.00', '1.00', 'OL2', 'Mon', '4CC510'),
('5', 'Lecture', '18.00-19.00', '1.00', 'MS038', 'Tue', '4CC511'),
('6', 'Tutorial 1', '9.00-10.00', '1.00', 'MS304', 'Mon', '5CC507'),
('7', 'Tutorial 2', '11.00-12.00', '1.00', 'MS304', 'Mon', '5CC507'),
('8', 'Tutorial 3', '13.00-14.00', '1.00', 'MS213', 'Mon', '5CC507'),
('9', 'Tutorial 4', '10.00-11.00', '1.00', 'MS304a', 'Tue', '5CC507');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `sessiontype`
--

CREATE TABLE `sessiontype` (
  `SessionTypeID` varchar(20) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `sessiontype`
--

INSERT INTO `sessiontype` (`SessionTypeID`, `Description`) VALUES
('3', 'Event'),
('1', 'Lecture'),
('2', 'Tutorial 1'),
('3', 'Tutorial 2'),
('4', 'Tutorial 3'),
('5', 'Tutorial 4'),
('6', 'Tutorial 5'),
('7', 'Tutorial 6'),
('8', 'Tutorial 7');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `students`
--

CREATE TABLE `students` (
  `StudentID` varchar(20) NOT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `ScheduleItem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `students`
--

INSERT INTO `students` (`StudentID`, `Password`, `ScheduleItem`) VALUES
('328145291', 'zogbogfrog', '1'),
('328145291', 'zogbogfrog', '2'),
('578274289', 'superman', '3'),
('578274289', 'superman', '4');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `tutorials`
--

CREATE TABLE `tutorials` (
  `SessionID` varchar(20) NOT NULL,
  `StudentID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `tutorials`
--

INSERT INTO `tutorials` (`SessionID`, `StudentID`) VALUES
('12', '328145291'),
('17', '578274289'),
('20', '328145291'),
('20', '578274289'),
('21', '328145291'),
('8', '328145291');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `tutors`
--

CREATE TABLE `tutors` (
  `TutorID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `OfficeNumber` varchar(20) DEFAULT NULL,
  `ModuleCode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `tutors`
--

INSERT INTO `tutors` (`TutorID`, `Name`, `Email`, `OfficeNumber`, `ModuleCode`) VALUES
(1, 'Nige', 'n.jones@derby.ac.uk', 'MS304', '5CC507'),
(2, 'Farhan', NULL, 'E512', '5CC507'),
(3, 'Pat', 'p.zog@derby.ac.uk', NULL, '5CC518'),
(4, 'Farhan', NULL, 'E512', '5CC518'),
(5, 'Jack', NULL, 'MS218', '5CC516'),
(6, 'Dave Voorhis', 'd.voorhis@derby.ac.uk', 'MS308', '4CC511'),
(7, 'Andy', 'a.zhang@derby.ac.uk', NULL, '4CC511');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`AssessmentTitle`,`ModuleCode`),
  ADD KEY `ModuleCode` (`ModuleCode`);

--
-- Ευρετήρια για πίνακα `enrolment`
--
ALTER TABLE `enrolment`
  ADD PRIMARY KEY (`ModuleCode`,`StudentID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Ευρετήρια για πίνακα `moduleleaders`
--
ALTER TABLE `moduleleaders`
  ADD PRIMARY KEY (`ModuleLeaderID`,`Name`),
  ADD KEY `ModuleCode` (`ModuleCode`);

--
-- Ευρετήρια για πίνακα `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`ModuleCode`);

--
-- Ευρετήρια για πίνακα `scheduleitems`
--
ALTER TABLE `scheduleitems`
  ADD PRIMARY KEY (`ScheduleItemID`);

--
-- Ευρετήρια για πίνακα `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`SessionID`),
  ADD KEY `SessionType` (`SessionType`),
  ADD KEY `ModuleCode` (`ModuleCode`);

--
-- Ευρετήρια για πίνακα `sessiontype`
--
ALTER TABLE `sessiontype`
  ADD PRIMARY KEY (`Description`,`SessionTypeID`);

--
-- Ευρετήρια για πίνακα `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`,`ScheduleItem`),
  ADD KEY `ScheduleItem` (`ScheduleItem`);

--
-- Ευρετήρια για πίνακα `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`SessionID`,`StudentID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Ευρετήρια για πίνακα `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`TutorID`,`Name`),
  ADD KEY `ModuleCode` (`ModuleCode`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `moduleleaders`
--
ALTER TABLE `moduleleaders`
  MODIFY `ModuleLeaderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT για πίνακα `tutors`
--
ALTER TABLE `tutors`
  MODIFY `TutorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `assessments`
--
ALTER TABLE `assessments`
  ADD CONSTRAINT `assessments_ibfk_1` FOREIGN KEY (`ModuleCode`) REFERENCES `modules` (`ModuleCode`);

--
-- Περιορισμοί για πίνακα `enrolment`
--
ALTER TABLE `enrolment`
  ADD CONSTRAINT `enrolment_ibfk_1` FOREIGN KEY (`ModuleCode`) REFERENCES `modules` (`ModuleCode`),
  ADD CONSTRAINT `enrolment_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`);

--
-- Περιορισμοί για πίνακα `moduleleaders`
--
ALTER TABLE `moduleleaders`
  ADD CONSTRAINT `moduleleaders_ibfk_1` FOREIGN KEY (`ModuleCode`) REFERENCES `modules` (`ModuleCode`);

--
-- Περιορισμοί για πίνακα `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`SessionType`) REFERENCES `sessiontype` (`Description`),
  ADD CONSTRAINT `sessions_ibfk_2` FOREIGN KEY (`ModuleCode`) REFERENCES `modules` (`ModuleCode`);

--
-- Περιορισμοί για πίνακα `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`ScheduleItem`) REFERENCES `scheduleitems` (`ScheduleItemID`);

--
-- Περιορισμοί για πίνακα `tutorials`
--
ALTER TABLE `tutorials`
  ADD CONSTRAINT `tutorials_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `sessions` (`SessionID`),
  ADD CONSTRAINT `tutorials_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`);

--
-- Περιορισμοί για πίνακα `tutors`
--
ALTER TABLE `tutors`
  ADD CONSTRAINT `tutors_ibfk_1` FOREIGN KEY (`ModuleCode`) REFERENCES `modules` (`ModuleCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
