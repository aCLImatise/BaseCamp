version 1.0

task PcoaPlotpy {
  command <<<
    pcoaPlot_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}