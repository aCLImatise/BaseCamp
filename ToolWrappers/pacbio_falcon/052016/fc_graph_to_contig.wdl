version 1.0

task FcGraphToContig {
  command <<<
    fc_graph_to_contig
  >>>
  output {
    File out_stdout = stdout()
  }
}