version 1.0

task FastqTruncate {
  input {
    Int fast_q_one
    String num_reads
  }
  command <<<
    fastq_truncate \
      ~{fast_q_one} \
      ~{num_reads}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1"
  }
  parameter_meta {
    fast_q_one: ""
    num_reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}