version 1.0

task OclTool {
  command <<<
    oclTool
  >>>
  output {
    File out_stdout = stdout()
  }
}