version 1.0

task FastqStats {
  input {
    String fast_q_file
  }
  command <<<
    fastq-stats \
      ~{fast_q_file}
  >>>
  parameter_meta {
    fast_q_file: ""
  }
}