version 1.0

task FastqNumReads {
  input {
    String fast_q_file
  }
  command <<<
    fastq_num_reads \
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