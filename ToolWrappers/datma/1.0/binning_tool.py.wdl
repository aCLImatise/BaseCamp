version 1.0

task BinningToolpy {
  command <<<
    binning_tool_py
  >>>
  output {
    File out_stdout = stdout()
  }
}