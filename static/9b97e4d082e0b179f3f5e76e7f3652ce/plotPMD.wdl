version 1.0

task PlotPMD {
  command <<<
    plotPMD
  >>>
  output {
    File out_stdout = stdout()
  }
}