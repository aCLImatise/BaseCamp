version 1.0

task HalcyonCOMMAND {
  input {
    String? args
  }
  command <<<
    halcyon COMMAND \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyhalcyon:0.1.1--py_0"
  }
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}