version 1.0

task CortexpyArgs {
  input {
    String cortex_py
  }
  command <<<
    cortexpy args \
      ~{cortex_py}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cortex_py: ""
  }
  output {
    File out_stdout = stdout()
  }
}