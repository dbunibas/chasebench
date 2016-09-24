The chaseBench.zip file is a Java library containing the tools for parsing and
writing the common format. The .zip file contains a project that can be readily
imported into Eclipse, without any external dependencies. The 'scenario'
directory an sample scenario, consisting of a source and target schema, s-t
TGDs, target EGDs, and a query. The format of all of these files should be
self-explanatory. The 'examples' directory contains an example class that uses
the library to load the scenario and print its contents. The example is
annotated so as to provide a starting point for using the library.

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
