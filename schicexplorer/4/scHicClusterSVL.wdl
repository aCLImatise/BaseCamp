version 1.0

task ScHicClusterSVL {
  input {
    String? schic_matrix_m
    Int? number_of_clusters
    String? cluster_method
    File? out_filename
    Int? distance_short_range
    Int? distance_long_range
    Int? threads
    String sch_i_c
    String var_8
  }
  command <<<
    scHicClusterSVL \
      ~{sch_i_c} \
      ~{var_8} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(number_of_clusters) then ("--numberOfClusters " +  '"' + number_of_clusters + '"') else ""} \
      ~{if defined(cluster_method) then ("--clusterMethod " +  '"' + cluster_method + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(distance_short_range) then ("--distanceShortRange " +  '"' + distance_short_range + '"') else ""} \
      ~{if defined(distance_long_range) then ("--distanceLongRange " +  '"' + distance_long_range + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to cluster.\\nNeeds to be in scool format (default: None)"
    number_of_clusters: "Number of to be computed clusters (default: 7)"
    cluster_method: "Algorithm to cluster the Hi-C matrices (default:\\nspectral)"
    out_filename: "File name to save the resulting clusters (default:\\nclusters.txt)"
    distance_short_range: "Distance which should be considered as short range.\\nDefault 2MB. (default: 2000000)"
    distance_long_range: "Distance which should be considered as short range.\\nDefault 12MB. (default: 12000000)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    sch_i_c: ""
    var_8: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}