version 1.0

task GoPlotpy {
  command <<<
    go_plot_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}