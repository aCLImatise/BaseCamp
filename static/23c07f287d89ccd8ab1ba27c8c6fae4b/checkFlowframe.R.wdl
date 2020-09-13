version 1.0

task CheckFlowframeR {
  command <<<
    checkFlowframe_R
  >>>
  output {
    File out_stdout = stdout()
  }
}