version 1.0

task PlotPfstR {
  command <<<
    plotPfst_R
  >>>
  output {
    File out_stdout = stdout()
  }
}