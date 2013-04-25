load data local infile "/Users/mcourtot/Desktop/2013VAERS/2013VAERSVAX.csv" into table VAERSVAX CHARACTER SET latin1 fields terminated by ',' enclosed by '"' escaped by '\\' lines terminated by '\r\n' ignore 1 LINES;

load data local infile "/Users/mcourtot/Desktop/2013VAERS/2013VAERSDATA.csv" into table VAERSDATA CHARACTER SET latin1 fields terminated by ',' enclosed by '"' escaped by '\\' lines terminated by '\r\n' ignore 1 LINES;

load data local infile "/Users/mcourtot/Desktop/2013VAERS/2013VAERSSYMPTOMS.csv" into table VAERSSYMPTOMS CHARACTER SET latin1 fields terminated by ',' enclosed by '"' escaped by '\\' lines terminated by '\r\n' ignore 1 LINES;

update VAERSDATA set RECVDATE = str_to_date (RECVDATE, '%m/%d/%Y');
update VAERSDATA set RPT_DATE = str_to_date (RPT_DATE, '%m/%d/%Y');
update VAERSDATA set VAX_DATE = str_to_date (VAX_DATE, '%m/%d/%Y');
update VAERSDATA set ONSET_DATE = str_to_date (ONSET_DATE, '%m/%d/%Y');
