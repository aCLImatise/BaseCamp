version 1.0

task LightningPredict {
  command <<<
    lightning_predict
  >>>
  output {
    File out_stdout = stdout()
  }
}