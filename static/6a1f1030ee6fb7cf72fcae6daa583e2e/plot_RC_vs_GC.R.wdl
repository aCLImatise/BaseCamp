version 1.0

task PlotRCVsGCR {
  command <<<
    plot_RC_vs_GC_R
  >>>
  output {
    File out_stdout = stdout()
  }
}