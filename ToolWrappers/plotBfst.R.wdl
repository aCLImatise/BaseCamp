version 1.0

task PlotBfstR {
  command <<<
    plotBfst_R
  >>>
  output {
    File out_stdout = stdout()
  }
}