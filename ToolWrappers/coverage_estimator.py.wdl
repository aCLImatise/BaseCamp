version 1.0

task CoverageEstimatorpy {
  command <<<
    coverage_estimator_py
  >>>
  output {
    File out_stdout = stdout()
  }
}