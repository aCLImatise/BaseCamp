version 1.0

task PlotHapLrtR {
  command <<<
    plotHapLrt_R
  >>>
  output {
    File out_stdout = stdout()
  }
}