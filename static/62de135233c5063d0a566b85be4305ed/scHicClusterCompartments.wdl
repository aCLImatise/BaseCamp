version 1.0

task ScHicClusterCompartments {
  input {
    String? schic_matrix_m
    String? number_of_clusters
    String? out_filename
    String? cluster_method
    Array[String] chromosomes
    Boolean? norm
    Boolean? bin_a_rization
    String? extra_track
    String? hist_on_mark_type
    String? threads
    String sch_i_c
    String var_11
  }
  command <<<
    scHicClusterCompartments \
      ~{sch_i_c} \
      ~{var_11} \
      ~{if defined(schic_matrix_m) then ("--matrix " +  '"' + schic_matrix_m + '"') else ""} \
      ~{if defined(number_of_clusters) then ("--numberOfClusters " +  '"' + number_of_clusters + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(cluster_method) then ("--clusterMethod " +  '"' + cluster_method + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{true="--norm" false="" norm} \
      ~{true="--binarization" false="" bin_a_rization} \
      ~{if defined(extra_track) then ("--extraTrack " +  '"' + extra_track + '"') else ""} \
      ~{if defined(hist_on_mark_type) then ("--histonMarkType " +  '"' + hist_on_mark_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    schic_matrix_m: "scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices to cluster. Needs to be in scool format (default: None)"
    number_of_clusters: "Number of to be computed clusters (default: 12)"
    out_filename: "File name to save the resulting clusters (default: clusters.txt)"
    cluster_method: "Algorithm to cluster the Hi-C matrices (default: spectral)"
    chromosomes: "List of chromosomes to be included in the correlation. (default: None)"
    norm: "Different obs-exp normalization as used by Homer software. (default: False)"
    bin_a_rization: "Set all positive values of eigenvector to 1 and all negative ones to 0. (default: False)"
    extra_track: "Either a gene track or a histon mark coverage file(preferably a broad mark) is needed to decide if the values of the eigenvector need a sign flip or not. (default: None)"
    hist_on_mark_type: "set it to active or inactive. This is only necessary if a histon mark coverage file is given as an extraTrack. (default: active)"
    threads: "Number of threads. Using the python multiprocessing module. (default: 4)"
    sch_i_c: ""
    var_11: ""
  }
}