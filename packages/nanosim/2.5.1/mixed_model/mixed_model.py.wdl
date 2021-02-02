version 1.0

task MixedModelpy {
  command <<<
    mixed_model_py
  >>>
  output {
    File out_stdout = stdout()
  }
}