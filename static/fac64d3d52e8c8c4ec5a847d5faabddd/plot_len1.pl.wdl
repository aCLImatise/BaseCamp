version 1.0

task PlotLen1pl {
  command <<<
    plot_len1_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}