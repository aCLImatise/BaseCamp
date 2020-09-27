version 1.0

task FcGraphToUtgspy {
  command <<<
    fc_graph_to_utgs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}