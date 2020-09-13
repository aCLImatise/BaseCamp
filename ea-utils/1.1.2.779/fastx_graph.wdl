version 1.0

task Fastxgraph {
  command <<<
    fastx_graph
  >>>
  output {
    File out_stdout = stdout()
  }
}