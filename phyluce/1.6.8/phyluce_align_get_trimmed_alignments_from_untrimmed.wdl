version 1.0

task PhyluceAlignGetTrimmedAlignmentsFromUntrimmed {
  input {
    String? alignments
    String? directory_store_alignments
    String? input_format
    String? output_format
    String? verbosity
    String? log_path
    String? window
    String? proportion
    String? threshold
    Int? max_divergence
    Int? min_length
    String? cores
  }
  command <<<
    phyluce_align_get_trimmed_alignments_from_untrimmed \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(directory_store_alignments) then ("--output " +  '"' + directory_store_alignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(proportion) then ("--proportion " +  '"' + proportion + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(max_divergence) then ("--max_divergence " +  '"' + max_divergence + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing alignments to be trimmed. (default: None)"
    directory_store_alignments: "The directory in which to store the resulting alignments. (default: None)"
    input_format: "The input alignment format. (default: fasta)"
    output_format: "The output alignment format. (default: nexus)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    window: "Sliding window size for trimming. (default: 20)"
    proportion: "The proportion of taxa required to have sequence at alignment ends. (default: 0.65)"
    threshold: "The proportion of residues required across the window in proportion of taxa. (default: 0.65)"
    max_divergence: "The max proportion of sequence divergence allowed between any row of the alignment and the alignment consensus. (default: 0.2)"
    min_length: "The minimum length of alignments to keep. (default: 100)"
    cores: "Process alignments in parallel using --cores for alignment. This is the number of PHYSICAL CPUs. (default: 1)"
  }
}