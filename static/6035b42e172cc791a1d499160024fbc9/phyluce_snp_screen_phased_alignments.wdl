version 1.0

task PhyluceSnpScreenPhasedAlignments {
  input {
    String? var_output
    Directory? alignments
    String? input_format
    String? output_format
    Boolean? include_missing
    Boolean? random
    Boolean? numerical_encoding
    Int? cores
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_snp_screen_phased_alignments \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if (include_missing) then "--include-missing" else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if (numerical_encoding) then "--numerical-encoding" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    var_output: ""
    alignments: "The directory containing the alignment files"
    input_format: "The input alignment format"
    output_format: "The input alignment format"
    include_missing: "Include sites within missing/ambiguous information (-,\\n?, N, X)"
    random: "Pick one random site from each locus"
    numerical_encoding: "Output SNP calls encoded as 0 (ref/ref), 1 (ref/alt),\\nor 2 (alt/alt)"
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
  }
}