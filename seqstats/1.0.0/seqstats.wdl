version 1.0

task Seqstats {
  input {
    String in_dot_fast_a_vertical_line_in_dot_fast_q
  }
  command <<<
    seqstats \
      ~{in_dot_fast_a_vertical_line_in_dot_fast_q}
  >>>
  parameter_meta {
    in_dot_fast_a_vertical_line_in_dot_fast_q: ""
  }
}