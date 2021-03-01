version 1.0

task PlotPfstR {
  command <<<
    plotPfst_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}