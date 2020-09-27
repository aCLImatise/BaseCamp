version 1.0

task Modelr {
  command <<<
    model_r
  >>>
  output {
    File out_stdout = stdout()
  }
}