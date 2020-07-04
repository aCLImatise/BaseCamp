version 1.0

task FastqNotEmpty {
  input {
    String fast_q_file
  }
  command <<<
    fastq_not_empty \
      ~{fast_q_file}
  >>>
  parameter_meta {
    fast_q_file: ""
  }
}