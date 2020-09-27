version 1.0

task Estmeanr {
  command <<<
    est_mean_r
  >>>
  output {
    File out_stdout = stdout()
  }
}