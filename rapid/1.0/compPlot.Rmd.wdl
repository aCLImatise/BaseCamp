version 1.0

task CompPlotRmd {
  command <<<
    compPlot_Rmd
  >>>
  output {
    File out_stdout = stdout()
  }
}