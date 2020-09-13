version 1.0

task Goexportgraphpl {
  command <<<
    go_export_graph_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}