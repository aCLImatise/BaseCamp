version 1.0

task PrintGraph {
  command <<<
    print_graph
  >>>
  output {
    File out_stdout = stdout()
  }
}