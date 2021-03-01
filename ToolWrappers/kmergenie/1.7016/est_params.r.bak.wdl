version 1.0

task Estparamsrbak {
  command <<<
    est_params_r_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}