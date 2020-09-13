version 1.0

task PlotHistogramrbak {
  command <<<
    plot_histogram_r_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}