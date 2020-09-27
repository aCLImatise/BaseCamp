version 1.0

task GetDensityPlotsR {
  command <<<
    getDensityPlots_R
  >>>
  output {
    File out_stdout = stdout()
  }
}