version 1.0

task CoreOverlapPlotpy {
  command <<<
    core_overlap_plot_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}