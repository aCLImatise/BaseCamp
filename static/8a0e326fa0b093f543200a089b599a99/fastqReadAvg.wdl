version 1.0

task FastqReadAvg.pl {
  input {
    String fast_q_file
  }
  command <<<
    fastqReadAvg.pl \
      ~{fast_q_file}
  >>>
  parameter_meta {
    fast_q_file: ""
  }
}