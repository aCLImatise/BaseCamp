version 1.0

task FastqutilsConvert {
  input {
    Boolean? verbose
    String? fast_q_file
    String? fast_a_file
  }
  command <<<
    fastq_utils convert \
      ~{fast_q_file} \
      ~{fast_a_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "--help         Show this message and exit.\\n"
    fast_q_file: ""
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}