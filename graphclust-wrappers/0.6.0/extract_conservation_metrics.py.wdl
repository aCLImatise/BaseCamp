version 1.0

task ExtractConservationMetricspy {
  command <<<
    extract_conservation_metrics_py
  >>>
  output {
    File out_stdout = stdout()
  }
}