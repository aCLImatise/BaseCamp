version 1.0

task PlotHistogramr {
  command <<<
    plot_histogram_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}