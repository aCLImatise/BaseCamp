version 1.0

task LassoEnetR {
  command <<<
    lasso_enet_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}