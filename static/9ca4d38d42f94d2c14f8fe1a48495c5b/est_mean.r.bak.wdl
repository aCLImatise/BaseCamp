version 1.0

task Estmeanrbak {
  command <<<
    est_mean_r_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}