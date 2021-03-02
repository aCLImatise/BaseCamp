version 1.0

task PlotststR {
  command <<<
    plotstst_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}