version 1.0

task Alder {
  input {
    String bad
    String params_dot_dot_dot_dot
  }
  command <<<
    alder \
      ~{bad} \
      ~{params_dot_dot_dot_dot}
  >>>
  parameter_meta {
    bad: ""
    params_dot_dot_dot_dot: ""
  }
}