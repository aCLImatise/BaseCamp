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
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}