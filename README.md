# MaximumFlowBlockerProblem
This site contains a set of benchmark instances for the maximum flow blocker problem. The instances are intended for testing, experimentation, or evaluation to determine the most performant method to solve this problem.

This folder also contains the run lists and results obtained using two formulations: a natural formulation (n-ILP) with an exponential number of constraints, and a compact formulation (c-ILP) with a polynomial number of variables and constraints.


## Instances

The `instances` directory contains a set of benchmark instances for the maximum flow blocker problem. These instances, representing graphs, have been randomly generated from a random graph generator implemented in Python 3.8.10.

In the `instances` directory, each subfolder named as `RANDOM_n_d_i` corresponds to a specific instance, where `n` is the number of vertices, `d` is the density of the graph and `i` is an id affected to the graphs having the same number of vertices and the same density. Every instance is defined with three files.
The `node.csv` file contains a single column that lists the ID of each node in the graph. The `link.csv` file reports all information related to the links of the graph. Each row corresponds to a link and includes the link ID, the node ID of the head and an associated integer value, the node ID of the tail and another associated integer value, the capacity of the link, and the cost for routing one unit of flow through the link. Lastly, the `service.txt` file consists of a single line with two numbers separated by a semicolon `;`. The first number represents the node ID of the source, and the second number represents the node ID of the destination.


## Runlists and results











