version 1.0

task ConnectGraph {
  command <<<
    connect_graph
  >>>
  output {
    File out_stdout = stdout()
  }
}