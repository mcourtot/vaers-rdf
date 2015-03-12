# Introduction #

A step by step tutorial to generate RDF from the VAERS data at http://vaers.hhs.gov/data/data
Relevant files under under this project's trunk, in the src directory.


# Details #

You will need:
  * a database in which to load the VAERS CSV files and the corresponding schema distributed under this project's SVN - see [this page](http://code.google.com/p/vaers-rdf/wiki/Load_VAERS)
  * the mapping file distributed under this project's SVN
    * if you have the MedDRA distribution please refer to [this page](http://code.google.com/p/vaers-rdf/wiki/Load_MedDRA) to see how to load it and use the mappingVAERSMEDDRA.ttl file
    * if you don't have the MedDRA distribution you can use the mapping.ttl file
  * the d2rq server to generate the RDF dump (from http://d2rq.org/)

## Generate RDF dump ##

./dump-rdf -f RDF/XML -o testdump.owl - b "http://purl.org/vaers/" mapping.ttl

We generate an RDF/XML dump of the data in a file called testdump.owl, and we ask for the base URI to be "http://purl.org/vaers/". The mapping file itself uses relative URI (in case you want to browse the data locally via the pubby interface embedded in d2rq)

Note that In the d2rq mapping file we specify @en whenever possible. This is specifically important for the MedDRA terms, as the MedDRA terminology is available in several languages.


## Browse the file ##

The easiest way to proceed is to use the existing d2r interface. Assuming you kept configuration as is, you can browse the data at http://localhost:2020.

You can also install a triplestore. I chose to use Sesame, and installed the Sesame.war file under a local tomcat installation.