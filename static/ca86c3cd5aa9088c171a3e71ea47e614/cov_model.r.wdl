version 1.0

task CovModelr {
  command <<<
    cov_model_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}