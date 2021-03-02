version 1.0

task Qualfa2fqpl {
  input {
    String in_dot_fast_a
    String in_dot_qual
  }
  command <<<
    qualfa2fq_pl \
      ~{in_dot_fast_a} \
      ~{in_dot_qual}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_fast_a: ""
    in_dot_qual: ""
  }
  output {
    File out_stdout = stdout()
  }
}