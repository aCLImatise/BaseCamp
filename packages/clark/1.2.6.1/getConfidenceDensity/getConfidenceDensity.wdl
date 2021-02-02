version 1.0

task GetConfidenceDensity {
  command <<<
    getConfidenceDensity
  >>>
  output {
    File out_stdout = stdout()
  }
}