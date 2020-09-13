version 1.0

task ScHicClusterMinHash {
  input {
    String? schic_matrix_m
    Int? number_of_clusters
    String? cluster_method
    File? out_filename
    Boolean? exact_modem_in_hash
    String? save_intermediate_raw_matrix
    Int? number_of_hash_functions
    Int? number_of_nearest_neighbors
    Float? share_of_matrix_to_be_transferred
    Array[String] chromosomes
    Int? threads
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
      ~{if (exact_modem_in_hash) then "--exactModeMinHash" else ""} \
      ~{if defined(save_intermediate_raw_matrix) then ("--saveIntermediateRawMatrix " +  '"' + save_intermediate_raw_matrix + '"') else ""} \
      ~{if defined(number_of_hash_functions) then ("--numberOfHashFunctions " +  '"' + number_of_hash_functions + '"') else ""} \
      ~{if defined(number_of_nearest_neighbors) then ("--numberOfNearestNeighbors " +  '"' + number_of_nearest_neighbors + '"') else ""} \
      ~{if defined(share_of_matrix_to_be_transferred) then ("--shareOfMatrixToBeTransferred " +  '"' + share_of_matrix_to_be_transferred + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to cluster.\\nNeeds to be in scool format (default: None)"
    number_of_clusters: "Number of to be computed clusters (default: 12)"
    cluster_method: "Algorithm to cluster the Hi-C matrices (default:\\nspectral)"
    out_filename: "File name to save the resulting clusters (default:\\nclusters.txt)"
    exact_modem_in_hash: "This option increases the runtime significantly, from\\na few minutes to half an hour or longer. If set, the\\nnumber of hash collisions is only used for candidate\\nset creation and the euclidean distance is considered\\ntoo. (default: True)"
    save_intermediate_raw_matrix: "This option activates the save of the intermediate raw\\nscHi-C matrix. (default: None)"
    number_of_hash_functions: "Number of to be used hash functions for minHash\\n(default: 800)"
    number_of_nearest_neighbors: "Number of to be used computed nearest neighbors for\\nthe knn graph. (default: 100)"
    share_of_matrix_to_be_transferred: "Which share of rows shall be transferred from Python\\nto C++ at once. Values between 0 and 1, the more are\\ntransferred at once, the larger the memory usage is.\\nThe less rows are transferred, the slower the\\ncomputation is. (default: 0.25)"
    chromosomes: "List of to be plotted chromosomes (default: None)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    sch_i_c: ""
    var_12: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}