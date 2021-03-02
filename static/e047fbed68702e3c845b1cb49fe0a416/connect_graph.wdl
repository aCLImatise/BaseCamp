version 1.0

task ConnectGraph {
  command <<<
    connect_graph
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}