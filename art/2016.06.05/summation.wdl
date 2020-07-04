version 1.0

task Summation.pl {
  input {
    String fast_q_read_avg_file_one
    String fast_q_read_avg_file_two
    String? fast_read_q_avg_file_n
    String output_file
  }
  command <<<
    summation.pl \
      ~{fast_q_read_avg_file_one} \
      ~{fast_q_read_avg_file_two} \
      ~{fast_read_q_avg_file_n} \
      ~{output_file}
  >>>
  parameter_meta {
    fast_q_read_avg_file_one: ""
    fast_q_read_avg_file_two: ""
    fast_read_q_avg_file_n: ""
    output_file: ""
  }
}