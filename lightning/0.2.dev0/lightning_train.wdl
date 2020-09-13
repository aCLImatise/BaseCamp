version 1.0

task LightningTrain {
  command <<<
    lightning_train
  >>>
  output {
    File out_stdout = stdout()
  }
}