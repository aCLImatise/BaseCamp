version 1.0

task Seqstats {
  input {
    String in_dot_fast_a_vertical_line_in_dot_fast_q
  }
  command <<<
    seqstats \
      ~{in_dot_fast_a_vertical_line_in_dot_fast_q}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_fast_a_vertical_line_in_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}