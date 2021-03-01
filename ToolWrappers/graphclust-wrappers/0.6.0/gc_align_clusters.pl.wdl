version 1.0

task GcAlignClusterspl {
  command <<<
    gc_align_clusters_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}