version 1.0

task Plantcvtrainpy {
  command <<<
    plantcv_train_py
  >>>
  output {
    File out_stdout = stdout()
  }
}