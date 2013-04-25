CREATE DATABASE `2013VAERS` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;

--
-- Table structure for table `VAERSVAX`
--
CREATE TABLE `VAERSVAX` (
  `VAERS_ID` int(11) NOT NULL,
  `VAX_TYPE` varchar(250) NOT NULL,
  `VAX_MANU` varchar(250) NOT NULL,
  `VAX_LOT` varchar(250) NOT NULL,
  `VAX_DOSE` varchar(250) NOT NULL,
  `VAX_ROUTE` varchar(250) NOT NULL,
  `VAX_SITE` varchar(250) NOT NULL,
  `VAX_NAME` varchar(250) NOT NULL,
  KEY `VAERS_ID` (`VAERS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `VAERSSYMPTOMS`
--

CREATE TABLE `VAERSSYMPTOMS` (
  `VAERS_ID` int(11) NOT NULL,
  `SYMPTOM_1` varchar(250) NOT NULL,
  `SymptomVersion1` varchar(250) NOT NULL,
  `SYMPTOM_2` varchar(250) NOT NULL,
  `SymptomVersion2` varchar(250) NOT NULL,
  `SYMPTOM_3` varchar(250) NOT NULL,
  `SymptomVersion3` varchar(250) NOT NULL,
  `SYMPTOM_4` varchar(250) NOT NULL,
  `SymptomVersion4` varchar(250) NOT NULL,
  `SYMPTOM_5` varchar(250) NOT NULL,
  `SymptomVersion5` varchar(250) NOT NULL,
  KEY `VAERS_ID` (`VAERS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `VAERSDATA`
--

CREATE TABLE `VAERSDATA` (
  `VAERS_ID` int(11) NOT NULL,
  `RECVDATE` varchar(250) NOT NULL,
  `STATE` varchar(250) NOT NULL,
  `AGE_YRS` varchar(250) NOT NULL,
  `CAGE_YRS` varchar(250) NOT NULL,
  `CAGE_MO` varchar(250) NOT NULL,
  `SEX` varchar(250) NOT NULL,
  `RPT_DATE` varchar(250) NOT NULL,
  `Symptom_text` text NOT NULL,
  `DIED` varchar(250) NOT NULL,
  `DATE_DIED` varchar(250) NOT NULL,
  `L_Threat` varchar(250) NOT NULL,
  `ER_Visit` varchar(250) NOT NULL,
  `Hospital` varchar(250) NOT NULL,
  `HospDays` varchar(250) NOT NULL,
  `X_STAY` varchar(250) NOT NULL,
  `DISABLE` varchar(250) NOT NULL,
  `RECOVD` varchar(250) NOT NULL,
  `VAX_DATE` varchar(250) NOT NULL,
  `ONSET_DATE` varchar(250) NOT NULL,
  `NUMDAYS` varchar(250) NOT NULL,
  `LAB_DATA` text NOT NULL,
  `V_ADMINBY` varchar(250) NOT NULL,
  `V_FUNDBY` varchar(250) NOT NULL,
  `OTHER_MED` text NOT NULL,
  `CURR_ILL` text NOT NULL,
  `History` text NOT NULL,
  `Prior_Vax` varchar(250) NOT NULL,
  `SPLTTYPE` varchar(250) NOT NULL,
  KEY `VAERS_ID` (`VAERS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
