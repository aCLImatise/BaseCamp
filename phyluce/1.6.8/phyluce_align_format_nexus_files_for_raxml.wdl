version 1.0

task PhyluceAlignFormatNexusFilesForRaxml {
  input {
    String? alignments
    String? output_file_concatenated
    Boolean? nexus
    Boolean? charsets
    String? verbosity
    String? log_path
  }
  command <<<
    phyluce_align_format_nexus_files_for_raxml \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_file_concatenated) then ("--output " +  '"' + output_file_concatenated + '"') else ""} \
      ~{true="--nexus" false="" nexus} \
      ~{true="--charsets" false="" charsets} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing alignments to concatenate (NEXUS-ONLY). (default: None)"
    output_file_concatenated: "The output file for the concatenated phylip data (default: None)"
    nexus: "Export as NEXUS format (default: False)"
    charsets: "Add charsets to phylip file (default: False)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
  }
}