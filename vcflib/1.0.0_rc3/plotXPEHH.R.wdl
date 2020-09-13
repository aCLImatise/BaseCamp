version 1.0

task PlotXPEHHR {
  command <<<
    plotXPEHH_R
  >>>
  output {
    File out_stdout = stdout()
  }
}