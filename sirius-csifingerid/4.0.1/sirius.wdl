version 1.0

task Sirius {
  input {
    String arguments_dot_dot_dot
  }
  command <<<
    sirius \
      ~{arguments_dot_dot_dot}
  >>>
  parameter_meta {
    arguments_dot_dot_dot: ""
  }
}