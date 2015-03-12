# Introduction #

Instructions on how to load MedDRA in a MySQL database


# Details #
  * Use the MedDRAstructure.sql file under this project's SVN to create the database structure. Note that it assumes the database called "MedDRA" exists, and it is the one you are connected to. In other words, it will just drop the tables if they exist and create new ones.
Warning: **it will drop the tables if they exist**

  * Load the asc files  distributed with MedDRA using
LOAD DATA LOCAL INFILE '/path/to/file' INTO TABLE `1_low_level_term` FIELDS TERMINATED BY '$' ESCAPED BY '\\' LINES TERMINATED BY '\n'

where '/path/to/file' is the location of the file you want to load, and table the table in which you want to import the data. For a correspondence between tables and which data file to load, see the file ASCII\_seq\_datafiles.pdf. Here I want to load only the lower level terms info.

  * Join the MedDRA table with the VAERS info
You can use the SQL in the file JoinMedDRA\_LLT\_and\_VAERS\_SYMPTOMS.rtf under this project's SVN to add the LLT info (code and label) to the existing VAERS tables.