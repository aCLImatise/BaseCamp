version 1.0

task PrintGrapho {
  command <<<
    print_graph_o
  >>>
  output {
    File out_stdout = stdout()
  }
}