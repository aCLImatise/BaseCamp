version 1.0

task GetDensityPlotsR {
  command <<<
    getDensityPlots_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}