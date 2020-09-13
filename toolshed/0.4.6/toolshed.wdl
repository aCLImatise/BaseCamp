version 1.0

task Toolshed {
  command <<<
    toolshed
  >>>
  output {
    File out_stdout = stdout()
  }
}