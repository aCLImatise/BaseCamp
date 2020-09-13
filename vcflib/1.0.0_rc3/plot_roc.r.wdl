version 1.0

task PlotRocr {
  command <<<
    plot_roc_r
  >>>
  output {
    File out_stdout = stdout()
  }
}