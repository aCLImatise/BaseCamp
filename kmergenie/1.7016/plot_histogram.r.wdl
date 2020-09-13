version 1.0

task PlotHistogramr {
  command <<<
    plot_histogram_r
  >>>
  output {
    File out_stdout = stdout()
  }
}