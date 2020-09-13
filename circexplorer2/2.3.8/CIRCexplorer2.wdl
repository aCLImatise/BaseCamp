version 1.0

task CIRCexplorer2 {
  command <<<
    CIRCexplorer2
  >>>
  output {
    File out_stdout = stdout()
  }
}