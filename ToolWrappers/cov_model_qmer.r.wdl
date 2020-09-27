version 1.0

task CovModelQmerr {
  command <<<
    cov_model_qmer_r
  >>>
  output {
    File out_stdout = stdout()
  }
}