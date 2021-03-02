version 1.0

task PlotStatspy {
  command <<<
    plot_stats_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/phispy:4.2.6--py38hed8969a_0"
  }
  output {
    File out_stdout = stdout()
  }
}