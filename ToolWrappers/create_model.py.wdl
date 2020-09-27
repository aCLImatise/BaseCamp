version 1.0

task CreateModelpy {
  command <<<
    create_model_py
  >>>
  output {
    File out_stdout = stdout()
  }
}