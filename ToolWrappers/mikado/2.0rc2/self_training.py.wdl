version 1.0

task SelfTrainingpy {
  command <<<
    self_training_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}