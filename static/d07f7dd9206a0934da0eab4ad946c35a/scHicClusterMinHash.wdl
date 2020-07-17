version 1.0

task ScHicClusterMinHash {
  input {
    String? schic_matrix_m
    String? number_of_clusters
    String? cluster_method
    String? out_filename
    Boolean? exact_modem_in_hash
    String? save_intermediate_raw_matrix
    String? number_of_hash_functions
    String? number_of_nearest_neighbors
    String? share_of_matrix_to_be_transferred
    Array[String] chromosomes
    String? threads
    String sch_i_c
    String var_12
  }
  command <<<
    scHicClusterMinHash \
      ~{sch_i_c} \
      ~{var_12} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(number_of_clusters) then ("--numberOfClusters " +  '"' + number_of_clusters + '"') else ""} \
      ~{if defined(cluster_method) then ("--clusterMethod " +  '"' + cluster_method + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{true="--exactModeMinHash" false="" exact_modem_in_hash} \
      ~{if defined(save_intermediate_raw_matrix) then ("--saveIntermediateRawMatrix " +  '"' + save_intermediate_raw_matrix + '"') else ""} \
      ~{if defined(number_of_hash_functions) then ("--numberOfHashFunctions " +  '"' + number_of_hash_functions + '"') else ""} \
      ~{if defined(number_of_nearest_neighbors) then ("--numberOfNearestNeighbors " +  '"' + number_of_nearest_neighbors + '"') else ""} \
      ~{if defined(share_of_matrix_to_be_transferred) then ("--shareOfMatrixToBeTransferred " +  '"' + share_of_matrix_to_be_transferred + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices to cluster. Needs to be in scool format (default: None)"
    number_of_clusters: "Number of to be computed clusters (default: 12)"
    cluster_method: "Algorithm to cluster the Hi-C matrices (default: spectral)"
    out_filename: "File name to save the resulting clusters (default: clusters.txt)"
    exact_modem_in_hash: "This option increases the runtime significantly, from a few minutes to half an hour or longer. If set, the number of hash collisions is only used for candidate set creation and the euclidean distance is considered too. (default: True)"
    save_intermediate_raw_matrix: "This option activates the save of the intermediate raw scHi-C matrix. (default: None)"
    number_of_hash_functions: "Number of to be used hash functions for minHash (default: 800)"
    number_of_nearest_neighbors: "Number of to be used computed nearest neighbors for the knn graph. (default: 100)"
    share_of_matrix_to_be_transferred: "Which share of rows shall be transferred from Python to C++ at once. Values between 0 and 1, the more are transferred at once, the larger the memory usage is. The less rows are transferred, the slower the computation is. (default: 0.25)"
    chromosomes: "List of to be plotted chromosomes (default: None)"
    threads: "Number of threads. Using the python multiprocessing module. (default: 4)"
    sch_i_c: ""
    var_12: ""
  }
}