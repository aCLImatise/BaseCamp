version 1.0

task DetectionCall {
  command <<<
    detectionCall
  >>>
  output {
    File out_stdout = stdout()
  }
}