version 1.0

task AbstractPlotpy {
  command <<<
    AbstractPlot_py
  >>>
  output {
    File out_stdout = stdout()
  }
}