version 1.0

task Convgraphpl {
  command <<<
    convgraph_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}