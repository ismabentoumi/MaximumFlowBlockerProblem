#!/bin/bash


#INSTANCES GRID 
for k in 0.2 0.6 0.9
 	do
  	# REMPLACER INSTANCE FOLDER + Recuperer resultats
  #./bilevel -mpsfile -mpsfile myInstanceFolder/myInstance.mps -setting *NUMBER*
  ./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net10_20_15/BilevelModel_"$k".mps -setting *NUMBER*
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net10_20_22/BilevelModel_"$k".mps -setting *NUMBER*
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net10_20_5/BilevelModel_"$k".mps -setting *NUMBER*
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net20_160_7/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net20_40_16/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net20_40_18/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net20_40_19/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net20_40_2/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net20_40_3/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net20_40_8/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net30_60_10/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net30_60_12/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net30_60_4/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net40_80_1/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net40_80_11/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net40_80_14/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net40_80_17/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net40_80_20/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net40_80_21/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net40_80_6/BilevelModel_"$k".mps -setting *NUMBER*		
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/GRIDS/net80_40_13/BilevelModel_"$k".mps -setting *NUMBER*			
	
	done

#INSTANCES NETWORKS 

for k in 0.2 0.6 0.9
 	do
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/B/MDVADB1_B1/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/B/MDVADB2_B2/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/B/MDVADB3_B3/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/B/MDVADB4_B4/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/B/MDVADB5_B5/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/B/MDVADB6_B6/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/B/MDVADB7_B7/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/C/MDVADC1_C1/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/C/MDVADC2_C2/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/C/MDVADC3_C3/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/C/MDVADC4_C4/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/C/MDVADC5_C5/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/C/MDVADC6_C6/BilevelModel_"$k".mps -setting *NUMBER*	
	./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/NETWORKS/C/MDVADC7_C7/BilevelModel_"$k".mps -setting *NUMBER*	
	done


#INSTANCES RANDOM NETWORKS 

for n in 20 40 50 60 100 300 500 700 900 1000 1100 1200 1400 1500 
  do
  	for d in 0.2 0.4 0.6 0.8
  	do
  		for i in 0 1 2 3 4
  		do
  			for k in 0.2 0.6 0.9
  			do
  				./bilevel -mpsfile /path_to_git/MaximumFlowBlockerProblem/instances/RANDOM_GRAPHS/RANDOM_"$n"_"$d"_"$i"/BilevelModel_"$k".mps -setting *NUMBER*	
			done
		done
	done  
  done
