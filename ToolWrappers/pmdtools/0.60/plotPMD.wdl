version 1.0

task PlotPMD {
  command <<<
    plotPMD
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}