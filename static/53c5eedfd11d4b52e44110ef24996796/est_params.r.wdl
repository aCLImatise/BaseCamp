version 1.0

task Estparamsr {
  command <<<
    est_params_r
  >>>
  output {
    File out_stdout = stdout()
  }
}