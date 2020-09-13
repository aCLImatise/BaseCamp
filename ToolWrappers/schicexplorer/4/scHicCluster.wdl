version 1.0

task ScHicCluster {
  input {
    File? out_filename
    String? schic_matrix_m
    Int? number_of_clusters
    String? cluster_method
    Array[String] chromosomes
    String? dimension_reduction_method
    Int? number_of_nearest_neighbors
    Int? threads
    String sch_i_c
    String var_9
  }
  command <<<
    scHicCluster \
      ~{sch_i_c} \
      ~{var_9} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(number_of_clusters) then ("--numberOfClusters " +  '"' + number_of_clusters + '"') else ""} \
      ~{if defined(cluster_method) then ("--clusterMethod " +  '"' + cluster_method + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(dimension_reduction_method) then ("--dimensionReductionMethod " +  '"' + dimension_reduction_method + '"') else ""} \
      ~{if defined(number_of_nearest_neighbors) then ("--numberOfNearestNeighbors " +  '"' + number_of_nearest_neighbors + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    out_filename: "File name to save the resulting clusters (default:\\nclusters.txt)"
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to cluster.\\nNeeds to be in scool format (default: None)"
    number_of_clusters: "Number of to be computed clusters (default: 12)"
    cluster_method: "Algorithm to cluster the Hi-C matrices (default:\\nspectral)"
    chromosomes: "List of to be plotted chromosomes (default: None)"
    dimension_reduction_method: "Dimension reduction methods, knn with euclidean\\ndistance, pca (default: none)"
    number_of_nearest_neighbors: "Number of to be used computed nearest neighbors for\\nthe knn graph. Default is either the default value or\\nthe number of the provided cells, whatever is smaller.\\n(default: 100)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    sch_i_c: ""
    var_9: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}