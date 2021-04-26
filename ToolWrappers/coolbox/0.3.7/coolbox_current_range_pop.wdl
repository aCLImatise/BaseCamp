version 1.0

task CoolboxCurrentRangePop {
  input {
    String index
  }
  command <<<
    coolbox current_range pop \
      ~{index}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.7--pyhdfd78af_0"
  }
  parameter_meta {
    index: ""
  }
  output {
    File out_stdout = stdout()
  }
}