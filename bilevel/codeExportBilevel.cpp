#include <iostream>
#include <stdlib.h>
#include <bitset>
#include <vector>
#include <string>
#include <sstream>
//#include </Users/isma/Desktop/CPLEX_Studio2211/cplex/include/ilcplex/ilocplex.h>
#include <ilcplex/ilocplex.h>
#include <tuple>
#include <cmath>







void createBilevelFiles(instance& instance, std::string NameInstanceFolder, std::string k, double target){

	// FILE FORMAT EXPLANATION : https://coin-or.github.io/MibS/input.html


	std::cout << " Nb arcs = " << instance.linkSource.size() << std::endl;
	std::cout << " Nb nodes = " << instance.nodesDelay.size() << std::endl;
	for(int a = 0; a < instance.linkSource.size(); a++){
		std::cout << " arc a = " << a << "source = " << instance.linkSource[a] << " dest = " << instance.linkDestination[a] << std::endl;
	}
	std::ofstream fileBilevel;
	std::string NameFolder;
	NameFolder = NameInstanceFolder + "BilevelModel_" + k + ".aux";
	fileBilevel.open(NameFolder, std::ofstream::out | std::ofstream::app);

	int N = instance.linkSource.size(); // nb lower level variables
	int M = instance.nodesDelay.size() + instance.linkSource.size(); // nb lower level constraints

	fileBilevel << "N " << N << std::endl;
	fileBilevel << "M " << M << std::endl;

	IloEnv env;
	IloModel model_Bilevel(env);

	IloNumVarArray y_a(env);

	for (int a = 0;a < instance.linkSource.size();a++) {
		std::stringstream namey;
		namey << "y_a_" << a;
		y_a.add(IloNumVar(env, 0, IloInfinity, ILOFLOAT, namey.str().c_str()));
		fileBilevel << "LC " << a << std::endl;
	}


	IloNumVarArray x_a(env);

	for (int a = 0;a < instance.linkSource.size();a++) {
		std::stringstream namex;
		namex << "x_a_" << a;
		x_a.add(IloNumVar(env, 0, 1, ILOINT, namex.str().c_str()));
	}



	/* Constraints */
	/* \vartheta({\bf x} ) &\le \Phi */
	IloExpr MaxFlowExpr(env);
	for (int a = 0; a < instance.linkSource.size();a++) {
		if(instance.linkSource[a] == instance.Source){
			MaxFlowExpr += y_a[a];
		}
	}
	model_Bilevel.add(MaxFlowExpr <= target);

	 int lr_constraints = 1;
	/* Flow conservation constraint */
	for (int u = 0;u < instance.nodesDelay.size();u++) {
		IloExpr FlowConstraint(env);
		for (int e = 0;e < instance.linkSource.size();e++) {
			if (u == instance.linkSource[e]) {
				FlowConstraint += y_a[e];
			}
			if (u == instance.linkDestination[e]) {
				FlowConstraint -= y_a[e];
			}
		}
		model_Bilevel.add(FlowConstraint == 0);
		fileBilevel << "LR " << lr_constraints << std::endl;
		lr_constraints += 1;
	}


	for (int a = 0; a < instance.linkSource.size();a++) {
		model_Bilevel.add(y_a[a] <= instance.linkBandwidth[a]*(1-x_a[a]));
		fileBilevel << "LR " << lr_constraints << std::endl;
		lr_constraints += 1;
	}


	for (int a = 0; a < instance.linkSource.size();a++) {
		if(instance.linkSource[a] == instance.Source){
			fileBilevel << "LO 1" << std::endl;
		}
		else{
			fileBilevel << "LO 0" << std::endl;
		}
	}

	fileBilevel << "OS -1" << std::endl;

	IloExpr Obj(env);
	for (int a = 0; a < instance.linkSource.size();a++) {
		std::cout << "a = " << a << "linkcost = " << instance.linkCost[a] << std::endl;
		Obj += instance.linkCost[a]*x_a[a];
	}
	model_Bilevel.add(IloMinimize(env, Obj));


	IloCplex cplex_Bilevel(model_Bilevel);

	std::string NameMpsFile = NameInstanceFolder + "BilevelModel_" + k + ".mps";
	cplex_Bilevel.exportModel(NameMpsFile.c_str());

	std::string NameLPFile = NameInstanceFolder + "BilevelModel_" + k + ".lp";
	cplex_Bilevel.exportModel(NameLPFile.c_str());

	//std::string NameMPSFile = NameInstanceFolder + "BilevelModel_Convert_" + k + ".mps";
	//cplex_Bilevel.exportModel(NameLPFile.c_str());

    //IloConversion conv(env, NameLPFile, IloCplex::LPFormat);
    //conv.toFile(IloCplex::MPSFormat, NameMPSFile);
}






int main(int argc, char** argv) {




	/**************         Initialisation - Create the model      ***************/
	inputs Param(argv);
	instance InstanceTest(argv[1], Param.directed, Param.ScalingFactor, Param.NewDensity);
	std::cout << " Graph informations " << std::endl;
	std::cout << " Number of nodes :  " << InstanceTest.nodesDelay.size() << std::endl;
	std::cout << " Number of arcs : " << InstanceTest.linkSource.size() << std::endl;
	std::cout << " Number of commodities : " << InstanceTest.demandSource.size() << std::endl;

	int nbArcs = InstanceTest.linkSource.size();




/********************    Change the instance    *****************/
	// Creer arc retour 

	     InstanceTest.linkSource.push_back(InstanceTest.Destination);
		 InstanceTest.linkDestination.push_back(InstanceTest.Source);
		 InstanceTest.linkBandwidth.push_back(10000);
		 InstanceTest.linkCost.push_back(10000);
		 InstanceTest.deltaPlus[InstanceTest.Destination].push_back(InstanceTest.linkSource.size()-1);
		 InstanceTest.deltaMoins[InstanceTest.Source].push_back(InstanceTest.linkSource.size()-1);		




/***********************************************************************/


	createBilevelFiles(InstanceTest);

	/******************************************************************************/


	return 0;

}
