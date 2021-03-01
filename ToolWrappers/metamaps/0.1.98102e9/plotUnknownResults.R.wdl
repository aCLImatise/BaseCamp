version 1.0

task PlotUnknownResultsR {
  command <<<
    plotUnknownResults_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}