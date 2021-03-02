version 1.0

task DetectExtremeDepthpl {
  command <<<
    detectExtremeDepth_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}