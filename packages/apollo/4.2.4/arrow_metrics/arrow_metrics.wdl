version 1.0

task ArrowMetrics {
  command <<<
    arrow metrics
  >>>
  output {
    File out_stdout = stdout()
  }
}