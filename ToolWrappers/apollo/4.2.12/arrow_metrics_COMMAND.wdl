version 1.0

task ArrowMetricsCOMMAND {
  input {
    String? args
  }
  command <<<
    arrow metrics COMMAND \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0"
  }
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}