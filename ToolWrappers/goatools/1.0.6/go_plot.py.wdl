version 1.0

task GoPlotpy {
  command <<<
    go_plot_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}