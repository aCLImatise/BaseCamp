version 1.0

task Eps2eps {
  input {
    String switches_dot_dot_dot
    String input_dot_eps
    String output_dot_eps
  }
  command <<<
    eps2eps \
      ~{switches_dot_dot_dot} \
      ~{input_dot_eps} \
      ~{output_dot_eps}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    switches_dot_dot_dot: ""
    input_dot_eps: ""
    output_dot_eps: ""
  }
  output {
    File out_stdout = stdout()
  }
}