version 1.0

task Malder {
  input {
    String bad
    String params_dot_dot_dot_dot
  }
  command <<<
    malder \
      ~{bad} \
      ~{params_dot_dot_dot_dot}
  >>>
  parameter_meta {
    bad: ""
    params_dot_dot_dot_dot: ""
  }
}