The TGD generator contains an example main method in the default package in file GenerateWeaklyAcyclicConstraints.java

Parameter "noOfdataSets" is how many different number of sets of TGDs we want to be created (all using the same parameters).

The rest of the parameters are self-explanatory.
		
		
		String outputdir = System.getProperty("user.dir")+"/output/";
		int noOfdataSets = 1;
		int numberOfconstraintsPerDataSet=100;
		int sizeOfPredicateSpace = 300;
		int constraintSize = 4; //the total number of atoms in body+head. These are randomly distributed between body and head. 
		//The method provides documentation of how to fix these numbers.
		int arity = 5;
		int maxNoOfRepeteadRelsPerConstraint = 2;
		
		
		WeaklyAcyclicGenerator.generateChaseConstraintData(outputdir,noOfdataSets,numberOfconstraintsPerDataSet,sizeOfPredicateSpace, constraintSize, arity, maxNoOfRepeteadRelsPerConstraint);
		
