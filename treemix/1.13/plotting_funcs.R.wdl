version 1.0

task PlottingFuncsR {
  command <<<
    plotting_funcs_R
  >>>
  output {
    File out_stdout = stdout()
  }
}