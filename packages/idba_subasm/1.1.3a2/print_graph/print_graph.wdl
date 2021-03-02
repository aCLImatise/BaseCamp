version 1.0

task PrintGraph {
  command <<<
    print_graph
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}