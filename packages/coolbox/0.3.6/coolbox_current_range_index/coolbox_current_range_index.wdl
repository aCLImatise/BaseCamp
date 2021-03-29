version 1.0

task CoolboxCurrentRangeIndex {
  input {
    String value
    String start
    String stop
  }
  command <<<
    coolbox current_range index \
      ~{value} \
      ~{start} \
      ~{stop}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.6--py_0"
  }
  parameter_meta {
    value: ""
    start: ""
    stop: ""
  }
  output {
    File out_stdout = stdout()
  }
}