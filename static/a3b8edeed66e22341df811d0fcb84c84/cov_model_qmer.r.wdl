version 1.0

task CovModelQmerr {
  command <<<
    cov_model_qmer_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}