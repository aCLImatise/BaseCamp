version 1.0

task FcGraphToUtgs {
  command <<<
    fc_graph_to_utgs
  >>>
  output {
    File out_stdout = stdout()
  }
}