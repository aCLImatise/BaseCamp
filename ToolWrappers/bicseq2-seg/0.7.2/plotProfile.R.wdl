version 1.0

task PlotProfileR {
  command <<<
    plotProfile_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}