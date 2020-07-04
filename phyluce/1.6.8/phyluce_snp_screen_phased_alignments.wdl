version 1.0

task PhyluceSnpScreenPhasedAlignments {
  input {
    String? alignments
    String? directory_store_files
    String? input_format
    String? output_format
    Boolean? include_missing
    Boolean? random
    Boolean? numerical_encoding
    String? cores
    String? verbosity
    String? log_path
  }
  command <<<
    phyluce_snp_screen_phased_alignments \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(directory_store_files) then ("--output " +  '"' + directory_store_files + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{true="--include-missing" false="" include_missing} \
      ~{true="--random" false="" random} \
      ~{true="--numerical-encoding" false="" numerical_encoding} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing the alignment files"
    directory_store_files: "The directory in which to store the output files"
    input_format: "The input alignment format"
    output_format: "The input alignment format"
    include_missing: "Include sites within missing/ambiguous information (-, ?, N, X)"
    random: "Pick one random site from each locus"
    numerical_encoding: "Output SNP calls encoded as 0 (ref/ref), 1 (ref/alt), or 2 (alt/alt)"
    cores: "Process alignments in parallel using --cores for alignment. This is the number of PHYSICAL CPUs."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
}