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
    docker: "quay.io/biocontainers/proteinortho:6.0.30--hb0e25da_0"
  }
  parameter_meta {
    blast_graph: ""
  }
  output {
    File out_stdout = stdout()
  }
}