version 1.0

task ProteinorthoExtractFromGraph.pl {
  input {
    String protein_ortho_table
  }
  command <<<
    proteinortho_extract_from_graph.pl \
      ~{protein_ortho_table}
  >>>
  parameter_meta {
    protein_ortho_table: ""
  }
}