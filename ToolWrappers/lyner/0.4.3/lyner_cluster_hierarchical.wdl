version 1.0

task LynerClusterhierarchical {
  command <<<
    lyner cluster_hierarchical
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}