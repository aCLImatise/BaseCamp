version 1.0

task CheckFlowframeR {
  command <<<
    checkFlowframe_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}