version 1.0

task PlotLLR {
  command <<<
    PlotLL_R
  >>>
  output {
    File out_stdout = stdout()
  }
}