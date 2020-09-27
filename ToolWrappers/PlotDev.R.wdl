version 1.0

task PlotDevR {
  command <<<
    PlotDev_R
  >>>
  output {
    File out_stdout = stdout()
  }
}