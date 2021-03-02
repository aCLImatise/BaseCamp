version 1.0

task SuppapyClusterEvents {
  input {
    File? dps_i
    File? psi_vec
    Float? sig_threshold
    Float? dps_i_threshold
    Float? eps
    Int? separation
    Int? min_pts
    String? metric
    String? clustering
    Boolean? ranges_specifying_numbers
    File? name_output_file
  }
  command <<<
    suppa_py clusterEvents \
      ~{if defined(dps_i) then ("--dpsi " +  '"' + dps_i + '"') else ""} \
      ~{if defined(psi_vec) then ("--psivec " +  '"' + psi_vec + '"') else ""} \
      ~{if defined(sig_threshold) then ("--sig-threshold " +  '"' + sig_threshold + '"') else ""} \
      ~{if defined(dps_i_threshold) then ("--dpsi-threshold " +  '"' + dps_i_threshold + '"') else ""} \
      ~{if defined(eps) then ("--eps " +  '"' + eps + '"') else ""} \
      ~{if defined(separation) then ("--separation " +  '"' + separation + '"') else ""} \
      ~{if defined(min_pts) then ("--min-pts " +  '"' + min_pts + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{if defined(clustering) then ("--clustering " +  '"' + clustering + '"') else ""} \
      ~{if (ranges_specifying_numbers) then "-g" else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dps_i: "Input file of delta-PSI values (.dpsi format)"
    psi_vec: "Input file with PSI values (.psivec format)"
    sig_threshold: "P-value cut-off for significant events. (Default:\\n0.05)."
    dps_i_threshold: "Lower-bound for the absolute delta PSI value to\\ncluster. (Default: 0.05)."
    eps: "Maximum (Euclidean) distance (between 0 and 1) to\\nconsider two events as members of the same cluster.\\n(Default: 0.05)."
    separation: "Minimum separation for considering two points in\\ndifferent clusters. (Default: 0)."
    min_pts: "Minimum number of events required per cluster.\\n(Default: 20)."
    metric: "Distance function to be used.Options: euclidean\\n(Default), manhattan, cosine."
    clustering: "Clustering method to use.Options: OPTICS , DBSCAN\\n(Default)."
    ranges_specifying_numbers: "[INDEXES [INDEXES ...]], --groups [INDEXES [INDEXES ...]]\\nRanges of column numbers specifying the replicates per\\ncondition. Column numbers have to be continuous, with\\nno overlapping or missing columns between them. Ex:\\n1-3,4-6"
    name_output_file: "Name of the output file.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}