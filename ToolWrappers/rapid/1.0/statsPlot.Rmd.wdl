version 1.0

task StatsPlotRmd {
  command <<<
    statsPlot_Rmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}