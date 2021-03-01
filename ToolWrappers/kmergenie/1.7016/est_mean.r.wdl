version 1.0

task Estmeanr {
  command <<<
    est_mean_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}