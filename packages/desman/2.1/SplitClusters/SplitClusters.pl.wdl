version 1.0

task SplitClusterspl {
  command <<<
    SplitClusters_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}