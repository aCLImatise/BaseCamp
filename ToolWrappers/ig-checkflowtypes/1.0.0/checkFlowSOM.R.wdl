version 1.0

task CheckFlowSOMR {
  command <<<
    checkFlowSOM_R
  >>>
  output {
    File out_stdout = stdout()
  }
}