version 1.0

task QuickHierarchicalClustering {
  command <<<
    quick_hierarchical_clustering
  >>>
  runtime {
    docker: "quay.io/biocontainers/discosnp:2.5.4--h8b12597_0"
  }
  output {
    File out_stdout = stdout()
  }
}