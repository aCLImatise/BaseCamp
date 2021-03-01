version 1.0

task PhyluceAlignGetTrimmedAlignmentsFromUntrimmed {
  input {
    Directory? alignments
    Directory? directory_store_resultingalignments
    String? input_format
    String? output_format
    String? verbosity
    File? log_path
    Int? window
    Float? proportion
    Float? threshold
    Int? max_divergence
    Int? min_length
    Int? cores
    String var_12
  }
  command <<<
    phyluce_align_get_trimmed_alignments_from_untrimmed \
      ~{var_12} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(directory_store_resultingalignments) then ("--output " +  '"' + directory_store_resultingalignments + '"') else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The directory containing alignments to be trimmed.\\n(default: None)"
    directory_store_resultingalignments: "The directory in which to store the resulting\\nalignments. (default: None)"
    input_format: "The input alignment format. (default: fasta)"
    output_format: "The output alignment format. (default: nexus)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    window: "Sliding window size for trimming. (default: 20)"
    proportion: "The proportion of taxa required to have sequence at\\nalignment ends. (default: 0.65)"
    threshold: "The proportion of residues required across the window\\nin proportion of taxa. (default: 0.65)"
    max_divergence: "The max proportion of sequence divergence allowed\\nbetween any row of the alignment and the alignment\\nconsensus. (default: 0.2)"
    min_length: "The minimum length of alignments to keep. (default:\\n100)"
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs.\\n(default: 1)\\n"
    var_12: "[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]"
  }
  output {
    File out_stdout = stdout()
  }
}