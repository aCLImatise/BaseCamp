version 1.0

task PlotCOGR {
  command <<<
    Plot_COG_R
  >>>
  output {
    File out_stdout = stdout()
  }
}