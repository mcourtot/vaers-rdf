-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2013 at 01:05 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `MedDRA`
--

-- --------------------------------------------------------

--
-- Table structure for table `1_hlgt_hlt_comp`
--

DROP TABLE IF EXISTS `1_hlgt_hlt_comp`;
CREATE TABLE IF NOT EXISTS `1_hlgt_hlt_comp` (
  `hlgt_code` bigint(20) NOT NULL,
  `hlt_code` bigint(20) NOT NULL,
  KEY `ix_hglt_hlt01` (`hlgt_code`,`hlt_code`),
  KEY `ix_hglt_hlt02` (`hlt_code`,`hlgt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `1_hlgt_pref_term`
--

DROP TABLE IF EXISTS `1_hlgt_pref_term`;
CREATE TABLE IF NOT EXISTS `1_hlgt_pref_term` (
  `hlgt_code` bigint(20) NOT NULL,
  `hlgt_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `hlgt_whoart_code` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `hlgt_harts_code` bigint(20) DEFAULT NULL,
  `hlgt_costart_sym` varchar(21) COLLATE utf8_bin DEFAULT NULL,
  `hlgt_icd9_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `hlgt_icd9cm_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `hlgt_icd10_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `hlgt_jart_code` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  KEY `ix_hglt01` (`hlgt_code`),
  KEY `ix_hglt02` (`hlgt_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `1_hlt_pref_term`
--

DROP TABLE IF EXISTS `1_hlt_pref_term`;
CREATE TABLE IF NOT EXISTS `1_hlt_pref_term` (
  `hlt_code` bigint(20) NOT NULL,
  `hlt_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `hlt_whoart_code` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `hlt_harts_code` bigint(20) DEFAULT NULL,
  `hlt_costart_sym` varchar(21) COLLATE utf8_bin DEFAULT NULL,
  `hlt_icd9code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `hlt_icd9cm_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `hlt_icd10_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `hlt_jart_code` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  UNIQUE KEY `ix1_hlt01` (`hlt_code`),
  KEY `ix1_hlt02` (`hlt_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `1_low_level_term`
--

DROP TABLE IF EXISTS `1_low_level_term`;
CREATE TABLE IF NOT EXISTS `1_low_level_term` (
  `llt_code` bigint(20) NOT NULL,
  `llt_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `pt_code` bigint(20) DEFAULT NULL,
  `llt_whoart_code` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `llt_harts_code` bigint(20) DEFAULT NULL,
  `llt_costart_sym` varchar(21) COLLATE utf8_bin DEFAULT NULL,
  `llt_icd9_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `llt_icd9cm_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `llt_icd10_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `llt_currency` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `llt_jart_code` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  KEY `ix1_pt_llt02` (`llt_name`),
  KEY `ix1_pt_llt03` (`pt_code`),
  KEY `ix1_pt_llt01` (`llt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `1_md_hierarchy`
--

DROP TABLE IF EXISTS `1_md_hierarchy`;
CREATE TABLE IF NOT EXISTS `1_md_hierarchy` (
  `pt_code` bigint(20) NOT NULL,
  `hlt_code` bigint(20) NOT NULL,
  `hlgt_code` bigint(20) NOT NULL,
  `soc_code` bigint(20) NOT NULL,
  `pt_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `hlt_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `hlgt_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `soc_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `soc_abbrev` varchar(5) COLLATE utf8_bin NOT NULL,
  `null_field` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `pt_soc_code` bigint(20) DEFAULT NULL,
  `primary_soc_fg` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  KEY `ix1_md_hier01` (`pt_code`),
  KEY `ix1_md_hier02` (`hlt_code`),
  KEY `ix1_md_hier03` (`hlgt_code`),
  KEY `ix1_md_hier04` (`soc_code`),
  KEY `ix1_md_hier05` (`pt_soc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `1_pref_term`
--

DROP TABLE IF EXISTS `1_pref_term`;
CREATE TABLE IF NOT EXISTS `1_pref_term` (
  `pt_code` bigint(20) NOT NULL,
  `pt_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `null_field` char(1) COLLATE utf8_bin DEFAULT NULL,
  `pt_soc_code` bigint(20) DEFAULT NULL,
  `pt_whoart_code` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `pt_harts_code` bigint(20) DEFAULT NULL,
  `pt_costart_sym` varchar(21) COLLATE utf8_bin DEFAULT NULL,
  `pt_icd9_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `pt_icd9cm_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `pt_icd10_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `pt_jart_code` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  KEY `ix1_pt01` (`pt_code`),
  KEY `ix1_pt02` (`pt_name`),
  KEY `ix1_pt03` (`pt_soc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `1_smq_ContentDerived`
--

DROP TABLE IF EXISTS `1_smq_ContentDerived`;
CREATE TABLE IF NOT EXISTS `1_smq_ContentDerived` (
  `smq_code` bigint(20) NOT NULL,
  `term_code` bigint(20) NOT NULL,
  `term_level` int(11) NOT NULL,
  `term_scope` int(11) NOT NULL,
  `term_category` varchar(1) COLLATE utf8_bin NOT NULL,
  `term_weight` int(11) NOT NULL,
  `term_status` varchar(1) COLLATE utf8_bin NOT NULL,
  `term_addition_version` varchar(5) COLLATE utf8_bin NOT NULL,
  `term_last-modofied_version` varchar(5) COLLATE utf8_bin NOT NULL,
  KEY `ix1_smq_content01` (`smq_code`),
  KEY `ix1_smq_content02` (`term_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `1_smq_list`
--

DROP TABLE IF EXISTS `1_smq_list`;
CREATE TABLE IF NOT EXISTS `1_smq_list` (
  `smq_code` bigint(20) NOT NULL,
  `smq_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `smq_level` int(11) NOT NULL,
  `smq_description` varchar(2000) COLLATE utf8_bin NOT NULL,
  `smq_source` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `smq_note` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `MedDRA_version` varchar(5) COLLATE utf8_bin NOT NULL,
  `status` varchar(1) COLLATE utf8_bin NOT NULL,
  `smq_algorithm` varchar(2000) COLLATE utf8_bin NOT NULL,
  KEY `ix1_smq_list01` (`smq_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `1_soc_hlgt_comp`
--

DROP TABLE IF EXISTS `1_soc_hlgt_comp`;
CREATE TABLE IF NOT EXISTS `1_soc_hlgt_comp` (
  `soc_code` bigint(20) NOT NULL,
  `hlgt_code` bigint(20) NOT NULL,
  KEY `ix_soc_hlgt01` (`soc_code`,`hlgt_code`),
  KEY `ix_soc_hlgt02` (`soc_code`),
  KEY `ix_soc_hlgt03` (`hlgt_code`,`soc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `1_soc_intl_order`
--

DROP TABLE IF EXISTS `1_soc_intl_order`;
CREATE TABLE IF NOT EXISTS `1_soc_intl_order` (
  `intl_ord_code` bigint(20) NOT NULL,
  `soc_code` bigint(20) NOT NULL,
  KEY `ix1_intl_ord01` (`intl_ord_code`,`soc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `1_soc_term`
--

DROP TABLE IF EXISTS `1_soc_term`;
CREATE TABLE IF NOT EXISTS `1_soc_term` (
  `soc_code` bigint(20) NOT NULL,
  `soc_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `soc_abbrev` varchar(5) COLLATE utf8_bin NOT NULL,
  `soc_whoart_code` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `soc_harts_code` bigint(20) DEFAULT NULL,
  `soc_costart_sym` varchar(21) COLLATE utf8_bin DEFAULT NULL,
  `soc_icd9_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `soc_icd9cm_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `soc_icd10_code` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `soc_jart_code` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  KEY `ix_soc01` (`soc_code`),
  KEY `ix_soc02` (`soc_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `hlt_pref_comp`
--

DROP TABLE IF EXISTS `hlt_pref_comp`;
CREATE TABLE IF NOT EXISTS `hlt_pref_comp` (
  `hlt_code` bigint(20) NOT NULL,
  `pt_code` bigint(20) NOT NULL,
  KEY `ix1_hlt_pt01` (`hlt_code`,`pt_code`),
  KEY `ix1_hlt_pt02` (`pt_code`,`hlt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
