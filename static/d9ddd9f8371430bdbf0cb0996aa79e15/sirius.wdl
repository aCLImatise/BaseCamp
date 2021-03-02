version 1.0

task Sirius {
  input {
    String arguments_dot_dot_dot
  }
  command <<<
    sirius \
      ~{arguments_dot_dot_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arguments_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}