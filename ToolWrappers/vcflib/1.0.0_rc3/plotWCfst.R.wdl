version 1.0

task PlotWCfstR {
  command <<<
    plotWCfst_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}