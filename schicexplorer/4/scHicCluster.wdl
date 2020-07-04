version 1.0

task ScHicCluster {
  input {
    String? schic_matrix_m
    String? number_of_clusters
    String? cluster_method
    Array[String] chromosomes
    String? dimension_reduction_method
    String? number_of_nearest_neighbors
    String? out_filename
    String? threads
    String sch_i_c
    String var_9
  }
  command <<<
    scHicCluster \
      ~{sch_i_c} \
      ~{var_9} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(number_of_clusters) then ("--numberOfClusters " +  '"' + number_of_clusters + '"') else ""} \
      ~{if defined(cluster_method) then ("--clusterMethod " +  '"' + cluster_method + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(dimension_reduction_method) then ("--dimensionReductionMethod " +  '"' + dimension_reduction_method + '"') else ""} \
      ~{if defined(number_of_nearest_neighbors) then ("--numberOfNearestNeighbors " +  '"' + number_of_nearest_neighbors + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices to cluster. Needs to be in scool format (default: None)"
    number_of_clusters: "Number of to be computed clusters (default: 12)"
    cluster_method: "Algorithm to cluster the Hi-C matrices (default: spectral)"
    chromosomes: "List of to be plotted chromosomes (default: None)"
    dimension_reduction_method: "Dimension reduction methods, knn with euclidean distance, pca (default: none)"
    number_of_nearest_neighbors: "Number of to be used computed nearest neighbors for the knn graph. Default is either the default value or the number of the provided cells, whatever is smaller. (default: 100)"
    out_filename: "File name to save the resulting clusters (default: clusters.txt)"
    threads: "Number of threads. Using the python multiprocessing module. (default: 4)"
    sch_i_c: ""
    var_9: ""
  }
}