version 1.0

task PlotProfileR {
  command <<<
    plotProfile_R
  >>>
  output {
    File out_stdout = stdout()
  }
}