version 1.0

task MCPBpy {
  command <<<
    MCPB_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}