version 1.0

task EstimateErrorpy {
  command <<<
    EstimateError_py
  >>>
  output {
    File out_stdout = stdout()
  }
}