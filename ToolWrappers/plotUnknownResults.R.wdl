version 1.0

task PlotUnknownResultsR {
  command <<<
    plotUnknownResults_R
  >>>
  output {
    File out_stdout = stdout()
  }
}