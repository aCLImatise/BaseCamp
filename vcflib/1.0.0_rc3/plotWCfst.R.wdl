version 1.0

task PlotWCfstR {
  command <<<
    plotWCfst_R
  >>>
  output {
    File out_stdout = stdout()
  }
}