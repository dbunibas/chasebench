#Before running the jar make sure you have stored the data of the target schema in a database.
#For this example, you need to run create a database deep100 and then load data into the database by running the script deep100.sql
#Ensure that the file inputs/querygen.properties has the right DBMS connection arguments
java -jar automatic -s inputs/schema/Deep.s-schema.txt -t inputs/schema/Deep.t-schema.txt -r inputs/dependencies -a inputs/stats.xml -q inputs/query-policies.xml -c inputs/querygen.properties -o ./