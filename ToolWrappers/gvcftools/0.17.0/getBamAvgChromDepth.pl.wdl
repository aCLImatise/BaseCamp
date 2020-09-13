version 1.0

task GetBamAvgChromDepthpl {
  command <<<
    getBamAvgChromDepth_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}