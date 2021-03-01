version 1.0

task PlotBfstR {
  command <<<
    plotBfst_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}