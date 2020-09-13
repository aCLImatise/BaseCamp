version 1.0

task PhyluceAlignFormatNexusFilesForRaxml {
  input {
    String? var_output
    Directory? alignments
    Boolean? nexus
    Boolean? charsets
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_align_format_nexus_files_for_raxml \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if (nexus) then "--nexus" else ""} \
      ~{if (charsets) then "--charsets" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    var_output: "[--nexus]"
    alignments: "The directory containing alignments to concatenate\\n(NEXUS-ONLY). (default: None)"
    nexus: "Export as NEXUS format (default: False)"
    charsets: "Add charsets to phylip file (default: False)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}