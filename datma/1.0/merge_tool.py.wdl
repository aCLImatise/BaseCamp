version 1.0

task MergeToolpy {
  command <<<
    merge_tool_py
  >>>
  output {
    File out_stdout = stdout()
  }
}