version 1.0

task Trainpy {
  command <<<
    train_py
  >>>
  output {
    File out_stdout = stdout()
  }
}