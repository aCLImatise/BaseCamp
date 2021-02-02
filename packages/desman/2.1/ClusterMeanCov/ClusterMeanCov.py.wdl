version 1.0

task ClusterMeanCovpy {
  command <<<
    ClusterMeanCov_py
  >>>
  output {
    File out_stdout = stdout()
  }
}