version 1.0

task PcoaPlotpy {
  command <<<
    pcoaPlot_py
  >>>
  output {
    File out_stdout = stdout()
  }
}