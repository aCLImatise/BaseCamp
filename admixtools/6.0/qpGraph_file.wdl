version 1.0

task QpGraphFile {
  input {
    String bad
    String params_dot_dot_dot_dot
  }
  command <<<
    qpGraph file \
      ~{bad} \
      ~{params_dot_dot_dot_dot}
  >>>
  parameter_meta {
    bad: ""
    params_dot_dot_dot_dot: ""
  }
}