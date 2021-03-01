version 1.0

task PhyluceAlignFormatNexusFilesForRaxml {
  input {
    Directory? alignments
    File? output_file_none
    Boolean? nexus
    Boolean? charsets
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_align_format_nexus_files_for_raxml \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_file_none) then ("--output " +  '"' + output_file_none + '"') else ""} \
      ~{if (nexus) then "--nexus" else ""} \
      ~{if (charsets) then "--charsets" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The directory containing alignments to concatenate\\n(NEXUS-ONLY). (default: None)"
    output_file_none: "The output file for the concatenated phylip data\\n(default: None)"
    nexus: "Export as NEXUS format (default: False)"
    charsets: "Add charsets to phylip file (default: False)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_none = "${in_output_file_none}"
  }
}