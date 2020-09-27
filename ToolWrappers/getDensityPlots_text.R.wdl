version 1.0

task GetDensityPlotsTextR {
  command <<<
    getDensityPlots_text_R
  >>>
  output {
    File out_stdout = stdout()
  }
}