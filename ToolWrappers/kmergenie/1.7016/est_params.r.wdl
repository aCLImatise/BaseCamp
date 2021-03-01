version 1.0

task Estparamsr {
  command <<<
    est_params_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}