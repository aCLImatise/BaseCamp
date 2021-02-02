version 1.0

task ErrorEstimate {
  command <<<
    errorEstimate
  >>>
  output {
    File out_stdout = stdout()
  }
}