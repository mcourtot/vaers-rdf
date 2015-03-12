# Introduction #

Instructions on how to retrieve and load the VAERS data.


# Details #

  * get the data files. In this example you create a directory 2013 VAERS in which you download the 2013 VAERS CSV files.

cd ~/Desktop/
mkdir 2013VAERS
cd 2013VAERS

curl http://vaers.hhs.gov/data/vaersdatafiles/2013VAERSDATA.csv -o 2013VAERSDATA.csv
curl http://vaers.hhs.gov/data/vaersdatafiles/2013VAERSVAX.csv -o 2013VAERSVAX.csv
curl http://vaers.hhs.gov/data/vaersdatafiles/2013VAERSSYMPTOMS.csv -o 2013VAERSSYMPTOMS.csv

  * Create VAERS DB structure
Warning: the encoding needs to support Windows 1252 (which is a latin1 superset)
Use the file createVAERSdb.sql under this project's SVN.

  * Load the VAERS data
Warning: encoding - diacritic in windows 1252 causing issues. You need to set the connection charset to latin (\C latin1) in command line. You then need to specify the import character set in the load query. We additionally add an "ignore 1 lines" to remove the headers.
Use the file loadVAERSdata.sql under this project's SVN. (update the file paths!)

This file also contains instructions to reformat the date from the VAERS data.
