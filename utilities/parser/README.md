## The common format
We report here more details on the common format.
Our format for describing a scenario covers four parts: 
the schema description, the source instance, the dependencies, and the queries.

## The schema description

One txt file for the source  schema and one for the target schema. The format is shown in the following example for a relation:

      hospital {
      doctor   : STRING,
      spec     : STRING,
      hospital : STRING,
      npi      : INTEGER,
      conf     : DOUBLE  }

## The source instance

One csv file per relation, no header.

## The dependencies

There is no requirement that the dependicies must be all located in separate files; however, we organized them in such a way for convenience by distinguishing s-t TGDs (< name >.st-tgds.txt), target TGDs (< name >.t-tgds.txt), and target EGDs (< name >.t-egds.txt) in three files.
Here is an example of the syntax with a st-tgd:

      prescription(?id,?patient,?npi,?doctor,?spec) -> doctor(?npi,?doctor,?spec,?H,?C2) .

which corresponds to:
      
      for each i,p,n,d,s prescription(i,p,n,d,s) -> there exist H,C2 doctor(n,d,s,H,C2)

## The queries

One txt file per query, with the following syntax:
      
      q01(?doctor_spec) <-  doctor(?doctor_npi,?doctor_doctor,?doctor_spec,?doctor_hospital,?doctor_conf) .
      
      
### Scenarios
#### **Doctors** 
- Schema: [[source](https://github.com/dbunibas/chasebench/blob/master/scenarios/doctors/schema/doctors.s-schema.txt)][[target](https://github.com/dbunibas/chasebench/blob/master/scenarios/doctors/schema/doctors.t-schema.txt)] 
- Dependencies: [[st-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/doctors/dependencies/doctors.st-tgds.txt)][[t-egds](https://github.com/dbunibas/chasebench/blob/master/scenarios/doctors/dependencies/doctors.t-egds.txt)]
- Queries: [[10k](https://github.com/dbunibas/chasebench/tree/master/scenarios/doctors/queries/10k)][[100k](https://github.com/dbunibas/chasebench/tree/master/scenarios/doctors/queries/100k)][[500k](https://github.com/dbunibas/chasebench/tree/master/scenarios/doctors/queries/500k)][[1m](https://github.com/dbunibas/chasebench/tree/master/scenarios/doctors/queries/1m)]

#### **Doctors-FD** 
- Schema: [[source](https://github.com/dbunibas/chasebench/blob/master/scenarios/doctors-fd/schema/doctors-fd.s-schema.txt)][[target](https://github.com/dbunibas/chasebench/blob/master/scenarios/doctors-fd/schema/doctors-fd.t-schema.txt)] 
- Dependencies: [[st-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/doctors-fd/dependencies/doctors-fd.st-tgds.txt)][[t-egds](https://github.com/dbunibas/chasebench/blob/master/scenarios/doctors-fd/dependencies/doctors-fd.t-egds.txt)]
- Queries: [[10k](https://github.com/dbunibas/chasebench/tree/master/scenarios/doctors-fd/queries/10k)][[100k](https://github.com/dbunibas/chasebench/tree/master/scenarios/doctors-fd/queries/100k)][[500k](https://github.com/dbunibas/chasebench/tree/master/scenarios/doctors-fd/queries/500k)][[1m](https://github.com/dbunibas/chasebench/tree/master/scenarios/doctors-fd/queries/1m)]

#### **LUBM** 
- Schema: [[source](https://github.com/dbunibas/chasebench/blob/master/scenarios/LUBM/schema/LUBM.s-schema.txt)][[target](https://github.com/dbunibas/chasebench/blob/master/scenarios/LUBM/schema/LUBM.t-schema.txt)] 
- Dependencies: [[st-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/LUBM/dependencies/LUBM.st-tgds.txt)][[t-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/LUBM/dependencies/LUBM.t-tgds.txt)]
- Queries: [[queries](https://github.com/dbunibas/chasebench/tree/master/scenarios/LUBM/queries)]

#### **STB-128** 
- Schema: [[source](https://github.com/dbunibas/chasebench/blob/master/scenarios/STB-128/schema/STB-128.s-schema.txt)][[target](https://github.com/dbunibas/chasebench/blob/master/scenarios/STB-128/schema/STB-128.t-schema.txt)] 
- Dependencies: [[st-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/STB-128/dependencies/STB-128.st-tgds.txt)][[t-egds](https://github.com/dbunibas/chasebench/blob/master/scenarios/STB-128/dependencies/STB-128.t-egds.txt)][[t-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/STB-128/dependencies/STB-128.t-tgds.txt)]
- Queries: [[queries](https://github.com/dbunibas/chasebench/tree/master/scenarios/STB-128/queries)]

#### **Ontology-256** 
- Schema: [[source](https://github.com/dbunibas/chasebench/blob/master/scenarios/Ontology-256/schema/Ontology-256.s-schema.txt)][[target](https://github.com/dbunibas/chasebench/blob/master/scenarios/Ontology-256/schema/Ontology-256.t-schema.txt)] 
- Dependencies: [[st-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/Ontology-256/dependencies/Ontology-256.st-tgds.txt)][[t-egds](https://github.com/dbunibas/chasebench/blob/master/scenarios/Ontology-256/dependencies/Ontology-256.t-egds.txt)][[t-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/Ontology-256/dependencies/Ontology-256.t-tgds.txt)]
- Queries: [[queries](https://github.com/dbunibas/chasebench/tree/master/scenarios/Ontology-256/queries)]

#### **Deep100** 
- Schema: [[source](https://github.com/dbunibas/chasebench/blob/master/scenarios/deep/100/schema/deep.s-schema.txt)][[target](https://github.com/dbunibas/chasebench/blob/master/scenarios/deep/100/schema/deep.t-schema.txt)] 
- Dependencies: [[st-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/deep/100/dependencies/deep.st-tgds.txt)][[t-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/deep/100/dependencies/deep.t-tgds.txt)]
- Queries: [[queries](https://github.com/dbunibas/chasebench/tree/master/scenarios/deep/100/queries)]

#### **Deep200** 
- Schema: [[source](https://github.com/dbunibas/chasebench/blob/master/scenarios/deep/200/schema/deep.s-schema.txt)][[target](https://github.com/dbunibas/chasebench/blob/master/scenarios/deep/200/schema/deep.t-schema.txt)] 
- Dependencies: [[st-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/deep/200/dependencies/deep.st-tgds.txt)][[t-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/deep/200/dependencies/deep.t-tgds.txt)]
- Queries: [[queries](https://github.com/dbunibas/chasebench/tree/master/scenarios/deep/200/queries)]

#### **Deep300** 
- Schema: [[source](https://github.com/dbunibas/chasebench/blob/master/scenarios/deep/300/schema/deep.s-schema.txt)][[target](https://github.com/dbunibas/chasebench/blob/master/scenarios/deep/300/schema/deep.t-schema.txt)] 
- Dependencies: [[st-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/deep/300/dependencies/deep.st-tgds.txt)][[t-tgds](https://github.com/dbunibas/chasebench/blob/master/scenarios/deep/300/dependencies/deep.t-tgds.txt)]
- Queries: [[queries](https://github.com/dbunibas/chasebench/tree/master/scenarios/deep/300/queries)]

## The common format parser
The chaseBench.zip file is a Java library containing the tools for parsing and
writing the common format. The .zip file contains a project that can be readily
imported into Eclipse, without any external dependencies. The 'scenario'
directory an sample scenario, consisting of a source and target schema, s-t
TGDs, target EGDs, and a query. The format of all of these files should be
self-explanatory. The 'examples' directory contains an example class that uses
the library to load the scenario and print its contents. The example is
annotated so as to provide a starting point for using the library.