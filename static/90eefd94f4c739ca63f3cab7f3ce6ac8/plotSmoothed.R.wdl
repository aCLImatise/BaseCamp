version 1.0

task PlotSmoothedR {
  command <<<
    plotSmoothed_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}