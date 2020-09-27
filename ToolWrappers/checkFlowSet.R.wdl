version 1.0

task CheckFlowSetR {
  command <<<
    checkFlowSet_R
  >>>
  output {
    File out_stdout = stdout()
  }
}