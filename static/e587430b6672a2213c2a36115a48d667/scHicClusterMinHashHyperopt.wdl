version 1.0

task ScHicClusterMinHashHyperopt {
  input {
    String? matrix
    File? cell_color
    File? output_file_name
    String? method
    Int? runs
    Int? nearest_neighbors
    Int? number_of_hash_functions
    Int? number_of_clusters
    Int? number_pc_a_dimensions
    Int? u_map_number_of_neighbors
    Int? u_map_n_components
    Int? u_map_min_dist
    Int? threads
  }
  command <<<
    scHicClusterMinHashHyperopt \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(cell_color) then ("--cellColor " +  '"' + cell_color + '"') else ""} \
      ~{if defined(output_file_name) then ("--outputFileName " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(runs) then ("--runs " +  '"' + runs + '"') else ""} \
      ~{if defined(nearest_neighbors) then ("--nearestNeighbors " +  '"' + nearest_neighbors + '"') else ""} \
      ~{if defined(number_of_hash_functions) then ("--numberOfHashfunctions " +  '"' + number_of_hash_functions + '"') else ""} \
      ~{if defined(number_of_clusters) then ("--numberOfClusters " +  '"' + number_of_clusters + '"') else ""} \
      ~{if defined(number_pc_a_dimensions) then ("--numberPCADimensions " +  '"' + number_pc_a_dimensions + '"') else ""} \
      ~{if defined(u_map_number_of_neighbors) then ("--umap_numberOfNeighbors " +  '"' + u_map_number_of_neighbors + '"') else ""} \
      ~{if defined(u_map_n_components) then ("--umap_n_components " +  '"' + u_map_n_components + '"') else ""} \
      ~{if defined(u_map_min_dist) then ("--umap_min_dist " +  '"' + u_map_min_dist + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    matrix: "The matrix to compute the loops on."
    cell_color: "The file with the associated cell types or cell cycle\\nstages."
    output_file_name: "File names for the result of the optimization\\n(Default: hyperoptMinHash_result.txt)."
    method: "Method to optimize by hyperopt: random tree, tpe,\\nadaptive tpe"
    runs: "Number of runs of hyperopt."
    nearest_neighbors: "Number of runs of hyperopt."
    number_of_hash_functions: "NUMBEROFHASHFUNCTIONS NUMBEROFHASHFUNCTIONS, -noh NUMBEROFHASHFUNCTIONS NUMBEROFHASHFUNCTIONS NUMBEROFHASHFUNCTIONS\\nNumber of hash functions range: start, stop, stepsize\\n(Default: (1000, 20000, 1000))."
    number_of_clusters: "NUMBEROFCLUSTERS, -noc NUMBEROFCLUSTERS NUMBEROFCLUSTERS\\nNumber of cluster range (Default: (6, 15))."
    number_pc_a_dimensions: "NUMBERPCADIMENSIONS NUMBERPCADIMENSIONS, -nop NUMBERPCADIMENSIONS NUMBERPCADIMENSIONS NUMBERPCADIMENSIONS\\nNumber of PCA range: start, stop, stepsize (Default:\\n(30, 60, 1))."
    u_map_number_of_neighbors: "UMAP_NUMBEROFNEIGHBORS UMAP_NUMBEROFNEIGHBORS, -unon UMAP_NUMBEROFNEIGHBORS UMAP_NUMBEROFNEIGHBORS UMAP_NUMBEROFNEIGHBORS\\nNumber of umap neighbors range: start, stop, stepsize\\n(Default: (30, 60, 1))."
    u_map_n_components: "UMAP_N_COMPONENTS UMAP_N_COMPONENTS, -unoc UMAP_N_COMPONENTS UMAP_N_COMPONENTS UMAP_N_COMPONENTS\\nNumber of umap n_components range: start, stop,\\nstepsize (Default: (2, 10, 1))."
    u_map_min_dist: "UMAP_MIN_DIST, -umin UMAP_MIN_DIST UMAP_MIN_DIST\\nNumber of umap neighbors range: start, stop (Default:\\n(0.0, 0.5))."
    threads: "Number of threads (uses the python multiprocessing\\nmodule) (Default: 16)."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}