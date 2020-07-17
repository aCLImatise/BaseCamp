version 1.0

task PhyluceAlignGetAlignsPartitionedByCluster {
  input {
    String? alignments
    String? cluster_csv
    String? output_directory_hold
    String? input_format
    String? output_format
    String? cores
    String? verbosity
    String? log_path
  }
  command <<<
    phyluce_align_get_aligns_partitioned_by_cluster \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(cluster_csv) then ("--cluster-csv " +  '"' + cluster_csv + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--output " +  '"' + output_directory_hold + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing the alignment files"
    cluster_csv: "The cluster CSV file"
    output_directory_hold: "An output directory to hold the converted alignments."
    input_format: "The input alignment format"
    output_format: "The input alignment format"
    cores: "The number of cores to use."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
}