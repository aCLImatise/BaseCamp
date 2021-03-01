version 1.0

task GetBamAvgChromDepthpl {
  command <<<
    getBamAvgChromDepth_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}