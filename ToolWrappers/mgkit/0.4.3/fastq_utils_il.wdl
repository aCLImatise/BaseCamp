version 1.0

task FastqutilsIl {
  input {
    Boolean? verbose
    Int mate_one_file
    Int mate_two_file
    String? fast_q_file
  }
  command <<<
    fastq_utils il \
      ~{mate_one_file} \
      ~{mate_two_file} \
      ~{fast_q_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "--help         Show this message and exit.\\n"
    mate_one_file: ""
    mate_two_file: ""
    fast_q_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}