version 1.0

task FcGraphToContigpy {
  command <<<
    fc_graph_to_contig_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}