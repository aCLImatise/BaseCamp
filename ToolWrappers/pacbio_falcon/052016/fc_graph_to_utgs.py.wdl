version 1.0

task FcGraphToUtgspy {
  command <<<
    fc_graph_to_utgs_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}