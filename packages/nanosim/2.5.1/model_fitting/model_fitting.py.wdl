version 1.0

task ModelFittingpy {
  command <<<
    model_fitting_py
  >>>
  output {
    File out_stdout = stdout()
  }
}