version 1.0

task IncrementalGaussianEstimatorpy {
  command <<<
    incremental_gaussian_estimator_py
  >>>
  output {
    File out_stdout = stdout()
  }
}