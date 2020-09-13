version 1.0

task ShiverFuncssh {
  command <<<
    shiver_funcs_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}