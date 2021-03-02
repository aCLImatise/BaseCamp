version 1.0

task ClusterMeanCovpy {
  command <<<
    ClusterMeanCov_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}