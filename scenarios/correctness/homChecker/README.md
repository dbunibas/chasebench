Homomorphism Checker
====

### How to run a ComparisonTask
Execute script `./compare <comparison_task.properties>`, for example `./compare.sh misc/resources/homomorphism/homomorphism.properties`

### How to configure a ComparisonTask
A ComparisonTask is specified in an .properties file, with the following properties

##### Instance folders containing several .csv files, one per table, each named after the table

leftInstanceFolder    = leftInstance/  
rightInstanceFolder   = rightInstance/

##### Tests to run, chosen from homomorphism, mutual 
testsToRun            = mutual

##### Prefixes used to identify labeled nulls: e.g.: nullPrefixes = \_SK, \_:e
nullPrefixes          = \_SK, \_:e

##### Log level (INFO : minimal output, DEBUG : additional output, VERBOSE : full output (may be slow))
logLevel              = INFO

##### Configuration to load .csv files
leftInstanceSeparator          = ,  
leftInstanceValueDelimiter     = '  
rightInstanceSeparator         = ,  
rightInstanceValueDelimiter    = '

---