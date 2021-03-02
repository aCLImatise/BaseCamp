version 1.0

task GetDensityPlotsTextR {
  command <<<
    getDensityPlots_text_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}