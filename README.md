# MaximumFlowBlockerProblem
This site contains accompanying material to a working paper on the maximum flow blocker problem. 

This folder contains a set of benchmark instances for the maximum flow blocker problem. The instances are intended for testing, experimentation, or evaluation to determine the most performant method to solve this problem. In addition, you can find in this folder a comprehensive run lists and results obtained using two distinct formulations: a natural formulation (n-ILP) with an exponential number of constraints, and a compact formulation (c-ILP) with a polynomial number of variables and constraints.


## Instances

The `instances` directory contains a set of benchmark instances for the maximum flow blocker problem, representing graphs.
The folder is composed of three subfolders. The instances in `NETWORKS` and `GRIDS` are the instances used in the computational study conducted in the following article "J. Royset and R. K. Wood, 2007. Solving the bi-objective maximum-flow network-interdiction problem.INFORMS Journal on Computing, 19(2):175–184".   

In `RANDOM_GRAPHS`, the instances have been generated from a random graph generator implemented in Python 3.8.10. Each subfolder named as `RANDOM_n_d_i` corresponds to a specific instance, where `n` is the number of vertices, `d` is the density of the graph and `i` is an id affected to the graphs having the same number of vertices and the same density. Every instance is defined with three files.
The `node.csv` file contains a single column that lists the ID of each node in the graph. The `link.csv` file reports all information related to the links of the graph. Each row corresponds to a link and includes the link ID, the node ID of the head and an associated integer value, the node ID of the tail and another associated integer value, the capacity of the link, and the cost for routing one unit of flow through the link. Lastly, the `service.txt` file consists of a single line with two numbers separated by a semicolon `;`. The first number represents the node ID of the source, and the second number represents the node ID of the destination.


## Runlists and results

The `results` directory contains results obtained with the two formulations (the natural formulation and the compact formulation) as well as the runlists. 
For the natural formulation and the compact formulation, we report:
- The number of vertices in the graph `n`
- The number of arcs in the graph `m`
- The Maximum flow in the graph 
- The percentage of flow blocked `k`
- The target flow value `Phi`
- The value of the objective function `Obj`
- The computing time
- An integer equal to 1 if the optimal solution is reached ans 0 otherwise `opt`
For the natural formulation, we also report the number of Benders cuts generated `NbBenders` and the number of target flow inequalities generated `NbTF`.

For the two formulations, the parameters are:
- The instance folder
- The type of instances (RANDOM)
- The problem (maximum flow blocker problem MFBP)
- An integer set to 1 when considering directed graphs and 0 otherwise
- An integer set to 1 when considering discret flows (paths) and 0 otherwise
- The value of k
- An integer set to 1 when adding cuts (target flow inequalities) to the model and 0 otherwise












