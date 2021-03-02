version 1.0

task HalcyonARGS {
  input {
    String halcyon
    String var_command
    String? args
  }
  command <<<
    halcyon ARGS \
      ~{halcyon} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyhalcyon:0.1.1--py_0"
  }
  parameter_meta {
    halcyon: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}