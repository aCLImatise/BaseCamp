version 1.0

task CoolboxCurrentRangeRemove {
  input {
    String value
  }
  command <<<
    coolbox current_range remove \
      ~{value}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.7--pyhdfd78af_0"
  }
  parameter_meta {
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}