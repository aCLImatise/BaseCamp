version 1.0

task DefineClustersByCuttingTreepl {
  command <<<
    define_clusters_by_cutting_tree_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/trinity:2.11.0--h5ef6573_1"
  }
  output {
    File out_stdout = stdout()
  }
}