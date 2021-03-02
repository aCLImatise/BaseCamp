version 1.0

task PlotLLR {
  command <<<
    PlotLL_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}