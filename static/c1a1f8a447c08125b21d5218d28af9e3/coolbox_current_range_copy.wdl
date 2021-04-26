version 1.0

task CoolboxCurrentRangeCopy {
  input {
    String command_vertical_line_index
  }
  command <<<
    coolbox current_range copy \
      ~{command_vertical_line_index}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.7--pyhdfd78af_0"
  }
  parameter_meta {
    command_vertical_line_index: ""
  }
  output {
    File out_stdout = stdout()
  }
}