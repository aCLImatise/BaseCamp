version 1.0

task GmtkEMtrain {
  command <<<
    gmtkEMtrain
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}