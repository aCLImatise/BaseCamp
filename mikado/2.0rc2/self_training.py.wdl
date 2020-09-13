version 1.0

task SelfTrainingpy {
  command <<<
    self_training_py
  >>>
  output {
    File out_stdout = stdout()
  }
}