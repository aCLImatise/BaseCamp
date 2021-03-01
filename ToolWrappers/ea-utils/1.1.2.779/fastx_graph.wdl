version 1.0

task Fastxgraph {
  command <<<
    fastx_graph
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}