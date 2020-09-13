version 1.0

task PlotststR {
  command <<<
    plotstst_R
  >>>
  output {
    File out_stdout = stdout()
  }
}