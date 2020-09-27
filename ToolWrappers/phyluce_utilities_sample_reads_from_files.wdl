version 1.0

task PhyluceUtilitiesSampleReadsFromFiles {
  input {
    File? conf
    File? path_output_directory
    String optional_arguments
  }
  command <<<
    phyluce_utilities_sample_reads_from_files \
      ~{optional_arguments} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(path_output_directory) then ("--output " +  '"' + path_output_directory + '"') else ""}
  >>>
  parameter_meta {
    conf: "The path to the config file giving reads to sample"
    path_output_directory: "The path to output directory"
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
  }
}