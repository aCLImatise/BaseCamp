version 1.0

task ClusterGenes {
  command <<<
    clusterGenes
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}