version 1.0

task Twstats {
  input {
    String bad
    String params_dot_dot_dot_dot
  }
  command <<<
    twstats \
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