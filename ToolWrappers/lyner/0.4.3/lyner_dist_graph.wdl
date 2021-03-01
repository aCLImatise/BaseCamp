version 1.0

task LynerDistgraph {
  command <<<
    lyner dist_graph
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}