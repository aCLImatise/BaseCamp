version 1.0

task QuickHierarchicalClustering {
  command <<<
    quick_hierarchical_clustering
  >>>
  output {
    File out_stdout = stdout()
  }
}