version 1.0

task MCPBpy {
  command <<<
    MCPB_py
  >>>
  output {
    File out_stdout = stdout()
  }
}