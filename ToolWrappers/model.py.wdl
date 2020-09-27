version 1.0

task Modelpy {
  command <<<
    model_py
  >>>
  output {
    File out_stdout = stdout()
  }
}