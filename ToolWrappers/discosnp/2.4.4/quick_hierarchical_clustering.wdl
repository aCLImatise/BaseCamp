version 1.0

task QuickHierarchicalClustering {
  command <<<
    quick_hierarchical_clustering
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}