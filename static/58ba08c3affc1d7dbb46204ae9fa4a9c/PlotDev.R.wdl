version 1.0

task PlotDevR {
  command <<<
    PlotDev_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}