version 1.0

task FastqutilsIl {
  input {
    Int mate_one_file
    Int mate_two_file
    String? fast_q_file
  }
  command <<<
    fastq_utils il \
      ~{mate_one_file} \
      ~{mate_two_file} \
      ~{fast_q_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    mate_one_file: ""
    mate_two_file: ""
    fast_q_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}