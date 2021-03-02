version 1.0

task Trainpy {
  command <<<
    train_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}