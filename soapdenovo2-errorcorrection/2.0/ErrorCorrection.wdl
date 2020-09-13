version 1.0

task ErrorCorrection {
  command <<<
    ErrorCorrection
  >>>
  output {
    File out_stdout = stdout()
  }
}