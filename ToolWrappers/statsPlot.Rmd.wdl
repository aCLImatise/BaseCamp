version 1.0

task StatsPlotRmd {
  command <<<
    statsPlot_Rmd
  >>>
  output {
    File out_stdout = stdout()
  }
}