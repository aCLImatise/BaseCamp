version 1.0

task ScHicPlotClusterProfiles {
  input {
    String? schic_matrix_m
    File? clusters
    Array[String] chromosomes
    Int? maximal_distance
    Int? distance_short_range
    Int? distance_long_range
    String? order_by
    File? out_filename
    Int? dpi
    Int? threads
    String sch_i_c
    String var_11
  }
  command <<<
    scHicPlotClusterProfiles \
      ~{sch_i_c} \
      ~{var_11} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(maximal_distance) then ("--maximalDistance " +  '"' + maximal_distance + '"') else ""} \
      ~{if defined(distance_short_range) then ("--distanceShortRange " +  '"' + distance_short_range + '"') else ""} \
      ~{if defined(distance_long_range) then ("--distanceLongRange " +  '"' + distance_long_range + '"') else ""} \
      ~{if defined(order_by) then ("--orderBy " +  '"' + order_by + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix\\nThe single cell Hi-C interaction matrices to\\ninvestigate for QC. Needs to be in scool format\\n(default: None)"
    clusters: "file, -c cluster file\\nText file which contains per matrix the associated\\ncluster. (default: None)"
    chromosomes: "List of to be plotted chromosomes (default: None)"
    maximal_distance: "maximal distance in bases (default: 50000000)"
    distance_short_range: "Distance which should be considered as short range.\\nDefault 2MB. (default: 2000000)"
    distance_long_range: "Distance which should be considered as short range.\\nDefault 12MB. (default: 12000000)"
    order_by: "Algorithm to cluster the Hi-C matrices (default: svl)"
    out_filename: "File name to save the resulting cluster profile.\\n(default: clusters_profile.png)"
    dpi: "The dpi of the plot. (default: 300)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    sch_i_c: ""
    var_11: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}