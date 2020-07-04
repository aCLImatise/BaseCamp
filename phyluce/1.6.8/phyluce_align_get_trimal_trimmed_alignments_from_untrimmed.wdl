version 1.0

task PhyluceAlignGetTrimalTrimmedAlignmentsFromUntrimmed {
  input {
    String? alignments
    String? directory_store_alignments
    String? input_format
    String? output_format
    String? verbosity
    String? log_path
    String? cores
  }
  command <<<
    phyluce_align_get_trimal_trimmed_alignments_from_untrimmed \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(directory_store_alignments) then ("--output " +  '"' + directory_store_alignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing alignments to be trimmed. (default: None)"
    directory_store_alignments: "The directory in which to store the resulting alignments. (default: None)"
    input_format: "The input alignment format. (default: fasta)"
    output_format: "The output alignment format. (default: nexus)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    cores: "Process alignments in parallel using --cores for alignment. This is the number of PHYSICAL CPUs. (default: 1)"
  }
}