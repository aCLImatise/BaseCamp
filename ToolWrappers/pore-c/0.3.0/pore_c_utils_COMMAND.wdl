version 1.0

task PoreCUtilsCOMMAND {
  input {
    String? args
  }
  command <<<
    pore_c utils COMMAND \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}