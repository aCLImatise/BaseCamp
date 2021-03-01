version 1.0

task GmtkDMLPtrain {
  command <<<
    gmtkDMLPtrain
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}