version 1.0

task Smartrel {
  input {
    String bad
    String params_dot_dot_dot_dot
  }
  command <<<
    smartrel \
      ~{bad} \
      ~{params_dot_dot_dot_dot}
  >>>
  parameter_meta {
    bad: ""
    params_dot_dot_dot_dot: ""
  }
}