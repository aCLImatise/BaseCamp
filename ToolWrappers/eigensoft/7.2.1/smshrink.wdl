version 1.0

task Smshrink {
  input {
    String bad
    String params_dot_dot_dot_dot
  }
  command <<<
    smshrink \
      ~{bad} \
      ~{params_dot_dot_dot_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bad: ""
    params_dot_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}