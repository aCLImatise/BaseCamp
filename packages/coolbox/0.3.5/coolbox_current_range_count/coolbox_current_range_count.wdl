version 1.0

task CoolboxCurrentRangeCount {
  input {
    String value
  }
  command <<<
    coolbox current_range count \
      ~{value}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.5--py_0"
  }
  parameter_meta {
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}