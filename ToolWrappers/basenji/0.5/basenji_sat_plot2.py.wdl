version 1.0

task BasenjiSatPlot2py {
  command <<<
    basenji_sat_plot2_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}