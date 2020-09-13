version 1.0

task PlotLen1pl {
  command <<<
    plot_len1_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}