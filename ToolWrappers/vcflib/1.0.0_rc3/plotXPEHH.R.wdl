version 1.0

task PlotXPEHHR {
  command <<<
    plotXPEHH_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}