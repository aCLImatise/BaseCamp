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
    docker: "quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1"
  }
  parameter_meta {
    fast_q_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}