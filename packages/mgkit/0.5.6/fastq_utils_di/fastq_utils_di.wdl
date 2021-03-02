version 1.0

task FastqutilsDi {
  input {
    Boolean? verbose
    String? fast_q_file
    Int mate_one_file
    Int mate_two_file
  }
  command <<<
    fastq_utils di \
      ~{fast_q_file} \
      ~{mate_one_file} \
      ~{mate_two_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    verbose: "Strip additional info"
    fast_q_file: ""
    mate_one_file: ""
    mate_two_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}