version 1.0

task Estparamsrbak {
  command <<<
    est_params_r_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}