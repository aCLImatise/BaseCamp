version 1.0

task AbstractPlotpy {
  command <<<
    AbstractPlot_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}