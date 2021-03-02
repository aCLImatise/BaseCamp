version 1.0

task LightningPredict {
  command <<<
    lightning_predict
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}