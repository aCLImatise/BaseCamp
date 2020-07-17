version 1.0

task PhyluceNcbiPrepUceAlignFilesForNcbi {
  input {
    String? alignments
    String? conf
    String? output_file_name
    String? input_format
    String? verbosity
    String? log_path
  }
  command <<<
    phyluce_ncbi_prep_uce_align_files_for_ncbi \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing alignments"
    conf: "The config file name"
    output_file_name: "The output file name"
    input_format: "The input alignment format"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
}