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
    docker: "None"
  }
  parameter_meta {
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}