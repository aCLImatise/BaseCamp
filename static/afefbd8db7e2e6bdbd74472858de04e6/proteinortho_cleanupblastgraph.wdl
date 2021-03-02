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
    docker: "quay.io/biocontainers/proteinortho:6.0.28--hfd40d39_0"
  }
  parameter_meta {
    blast_graph: ""
  }
  output {
    File out_stdout = stdout()
  }
}