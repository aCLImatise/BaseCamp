version 1.0

task Qpdslow {
  input {
    String bad
    String params_dot_dot_dot_dot
  }
  command <<<
    qpdslow \
      ~{bad} \
      ~{params_dot_dot_dot_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0"
  }
  parameter_meta {
    bad: ""
    params_dot_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}