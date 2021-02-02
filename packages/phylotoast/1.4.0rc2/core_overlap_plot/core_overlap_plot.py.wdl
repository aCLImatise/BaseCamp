version 1.0

task CoreOverlapPlotpy {
  command <<<
    core_overlap_plot_py
  >>>
  output {
    File out_stdout = stdout()
  }
}