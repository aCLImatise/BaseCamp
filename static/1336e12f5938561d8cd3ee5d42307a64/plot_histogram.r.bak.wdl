version 1.0

task PlotHistogramrbak {
  command <<<
    plot_histogram_r_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}