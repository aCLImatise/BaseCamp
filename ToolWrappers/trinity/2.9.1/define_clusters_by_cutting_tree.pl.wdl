version 1.0

task DefineClustersByCuttingTreepl {
  command <<<
    define_clusters_by_cutting_tree_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}