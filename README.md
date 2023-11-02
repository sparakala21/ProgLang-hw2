# ProgLang-hw2
Homework 2 for programming languages fall 2023

## GraphStats.Salsa - A Concurrent Graph Analyzer

This code provides a concurrent program for analyzing certain attributes of a graph, using the Salsa programming model.

### Overview:

The program processes graphs by analyzing and determining:
1. Graph's color distribution and their corresponding node degrees.
2. External influence for given nodes.
3. Identification of the most influential nodes.

### How to use:

1. Input file format:
    - Each actor (set of nodes) is described in 4 lines:
        1. Actor's identifier.
        2. Comma separated list of nodes.
        3. Comma separated list of node colors.
        4. Space separated list of edges, where each edge is represented as "start_node,end_node".

2. Output:
    - The program generates two output files.
    - `outputFileA` contains the summary of color distributions and their corresponding node degrees.
    - `outputFileB` contains the list of most influential nodes.

### Key Methods:

1. `combinePartionsAnswerA_better(List t, List current)`: Combines the results from various actors to determine the overall distribution of node colors and their degrees.

2. `getExternalInfluence(List externalNodes, List Actors, int a)`: Computes the external influence of a given node set.

3. `merge(Object[] results, String outputFileA)`: Merges the results from various actors into a final list for output.

4. `act(String[] args)`: The main execution method. Processes the input file, invokes necessary methods, and handles output.

5. `combineEverything(Map external_node_to_degrees, List Actors, String outputFileB)`: Combines the results of external node influences.

6. `printG(Object[] results, String outputFileB)`: Writes the influential nodes to the outputFileB.

7. `printAnswerA(List results, String outputFileA)`: Writes the color distribution and their degrees to the outputFileA.

### Notes:
- Ensure the input file adheres to the specified format for proper operation.
- The program employs the Salsa programming model which inherently supports concurrency, so it is designed to handle large graphs efficiently.
- The code assumes proper setup of Salsa environment for execution.

### Error Handling:
- The program has minimal error handling in place, especially for file I/O. Ensure that the input file exists and you have write permissions for the output directory.

### `Partitions.Salsa`

This file models partitions with functionalities to perform operations related to node colors, edges, and finding influential nodes. Here's a breakdown:

- **Variables:**
  - Various maps and sets to maintain nodes, edges, colors, and influential nodes.

- **Constructors:**
  - `Partitions(Integer a, List NodeList, List ColorList, List EdgeList)`: Initializes the partition with actor number, node list, color list, and edge list.

- **Methods:**
  - `computePartA()`: Computes data based on colors and returns a list of information.
  - `computePartA_better()`: A more optimized version of the previous method which separates counts and degrees into two different maps.
  - `CalcMostInfluential(Map e_nodes_to_degrees, String filename, int i)`: Calculates the most influential nodes and writes them to a file.
  - `getExternal()`: Returns the set of external nodes.
  - `degree(int nodeName)`: Returns the degree of a given node.

### Contributors:
- Chaitanya Talluri
- Sravan Parakala

