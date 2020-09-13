version 1.0

task FcGraphToContigpy {
  command <<<
    fc_graph_to_contig_py
  >>>
  output {
    File out_stdout = stdout()
  }
}