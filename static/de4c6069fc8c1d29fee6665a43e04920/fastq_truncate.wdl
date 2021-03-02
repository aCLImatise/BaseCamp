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
    docker: "None"
  }
  parameter_meta {
    fast_q_one: ""
    num_reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}