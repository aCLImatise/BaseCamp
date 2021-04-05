version 1.0

task PrintGrapho {
  command <<<
    print_graph_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}