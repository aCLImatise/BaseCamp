version 1.0

task Baseprog {
  input {
    String bad
    String params_dot_dot_dot_dot
  }
  command <<<
    baseprog \
      ~{bad} \
      ~{params_dot_dot_dot_dot}
  >>>
  parameter_meta {
    bad: ""
    params_dot_dot_dot_dot: ""
  }
}