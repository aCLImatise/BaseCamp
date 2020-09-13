version 1.0

task DetectExtremeDepthpl {
  command <<<
    detectExtremeDepth_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}