version 1.0

task SplitClusterspl {
  command <<<
    SplitClusters_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}