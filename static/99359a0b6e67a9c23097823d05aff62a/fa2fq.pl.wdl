version 1.0

task Fa2fqpl {
  input {
    String this
    String in_dot_fast_a
  }
  command <<<
    fa2fq_pl \
      ~{this} \
      ~{in_dot_fast_a}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    this: ""
    in_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}