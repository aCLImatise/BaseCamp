version 1.0

task FastqNotEmpty {
  input {
    String fast_q_file
  }
  command <<<
    fastq_not_empty \
      ~{fast_q_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}