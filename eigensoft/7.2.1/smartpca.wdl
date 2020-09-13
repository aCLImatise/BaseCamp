version 1.0

task Smartpca {
  input {
    String bad
    String params_dot_dot_dot_dot
  }
  command <<<
    smartpca \
      ~{bad} \
      ~{params_dot_dot_dot_dot}
  >>>
  parameter_meta {
    bad: ""
    params_dot_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}