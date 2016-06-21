#Before running the jar make sure you have stored the data of the target schema in a database.
#Ensure that the file inputs/querygen.properties has the right DBMS connection arguments
java -jar semi-automatic.jar -s inputs/schema.xml -a input/stats.xml -q input/query-policies.xml -o input/