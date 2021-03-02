version 1.0

task LightningTrain {
  command <<<
    lightning_train
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}