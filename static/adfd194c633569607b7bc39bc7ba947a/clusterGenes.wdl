version 1.0

task ClusterGenes {
  command <<<
    clusterGenes
  >>>
  output {
    File out_stdout = stdout()
  }
}