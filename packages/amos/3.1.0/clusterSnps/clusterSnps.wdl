version 1.0

task ClusterSnps {
  command <<<
    clusterSnps
  >>>
  output {
    File out_stdout = stdout()
  }
}