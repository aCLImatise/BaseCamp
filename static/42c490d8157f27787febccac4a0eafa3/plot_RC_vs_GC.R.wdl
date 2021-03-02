version 1.0

task PlotRCVsGCR {
  command <<<
    plot_RC_vs_GC_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}