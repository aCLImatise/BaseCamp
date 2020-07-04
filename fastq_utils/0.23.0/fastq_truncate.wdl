version 1.0

task FastqTruncate {
  input {
    String fast_q_one
    String num_reads
  }
  command <<<
    fastq_truncate \
      ~{fast_q_one} \
      ~{num_reads}
  >>>
  parameter_meta {
    fast_q_one: ""
    num_reads: ""
  }
}