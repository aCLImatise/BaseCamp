version 1.0

task CompPlotRmd {
  command <<<
    compPlot_Rmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}