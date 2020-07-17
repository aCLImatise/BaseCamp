version 1.0

task PhyluceUtilitiesSampleReadsFromFiles {
  input {
    String? conf
    String? path_output_directory
  }
  command <<<
    phyluce_utilities_sample_reads_from_files \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(path_output_directory) then ("--output " +  '"' + path_output_directory + '"') else ""}
  >>>
  parameter_meta {
    conf: "The path to the config file giving reads to sample"
    path_output_directory: "The path to output directory"
  }
}