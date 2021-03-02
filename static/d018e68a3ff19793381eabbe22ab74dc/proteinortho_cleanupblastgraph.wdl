version 1.0

task ProteinorthoCleanupblastgraph {
  input {
    String blast_graph
  }
  command <<<
    proteinortho_cleanupblastgraph \
      ~{blast_graph}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    blast_graph: ""
  }
  output {
    File out_stdout = stdout()
  }
}