version 1.0

task RemovalToolpy {
  command <<<
    removal_tool_py
  >>>
  output {
    File out_stdout = stdout()
  }
}