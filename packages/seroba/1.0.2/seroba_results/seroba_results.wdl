version 1.0

task SerobaResults {
  input {
    String se_rob_a
    String var_command
    String options
  }
  command <<<
    seroba results \
      ~{se_rob_a} \
      ~{var_command} \
      ~{options}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seroba:1.0.2--py_0"
  }
  parameter_meta {
    se_rob_a: ""
    var_command: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}