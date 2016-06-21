Query generator:
Generates non-empty queries over the relations of a target schema. 
The data of the target schema must be stored in a relational DBMS. 
The current software distribution supports Microsoft SQL Server 2014.

The query generator runs in two modes, the automatic and the semi-automatic mode. The automatic mode takes as input schemata and dependencies in the common format, while the semi-automatic mode reads schemata in a query generator-specific format (see file doctors.xml under folder semi-automatic). Both modes return non-empty SPJ queries.  
The second mode is useful in cases where the input dependencies are not enough to specify joinable attribute pairs.

The inputs to the automatic mode are
-s the source schema (in common format) 
-t the target schema (in common format)    
-r the source to target and target dependencies
-a active domain of the target relations
-q query generator policies
-c query generator properties
-o path to store the output queries

The query generator policies define the number of output queries (parameter numQueries), the total number of joins in each output query (parameter NumJoins) and the total number of filtering predicates in each query (parameter MaxNumEquiFilters).

The query generator properties file keeps the metadata required to connect to the database that stores the data of the target schema. This metadata include the database name and schema, the username and password and the jdbc drivers.

The inputs to the automatic mode are
-s the target schema (in query-generator format) 
-a active domain of the target relations
-q query generator policies
-o path to store the output queries

The target schema in the second case specifies the complete list of attributes that can participate in join and selection predicates (joinable and filterable attributes, respectively).
The files automatic.sh and semi-automatic.sh describe two examples that call the query generator jars.


For any queries email tsamoura@cs.ox.ac.uk
