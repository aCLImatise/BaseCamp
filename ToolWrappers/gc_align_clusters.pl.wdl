version 1.0

task GcAlignClusterspl {
  command <<<
    gc_align_clusters_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}