version 1.0

task FastqutilsDi {
  input {
    Boolean? verbose
    Boolean? strip
    String? fast_q_file
    Int mate_one_file
    Int mate_two_file
  }
  command <<<
    fastq_utils di \
      ~{fast_q_file} \
      ~{mate_one_file} \
      ~{mate_two_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (strip) then "--strip" else ""}
  >>>
  parameter_meta {
    verbose: ""
    strip: "Strip additional info"
    fast_q_file: ""
    mate_one_file: ""
    mate_two_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}