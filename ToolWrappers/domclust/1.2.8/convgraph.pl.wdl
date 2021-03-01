version 1.0

task Convgraphpl {
  command <<<
    convgraph_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}