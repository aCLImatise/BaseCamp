version 1.0

task PlotSmoothedR {
  command <<<
    plotSmoothed_R
  >>>
  output {
    File out_stdout = stdout()
  }
}