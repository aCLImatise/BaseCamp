version 1.0

task ProteinorthoExtractFromGraphpl {
  input {
    String protein_ortho_table
  }
  command <<<
    proteinortho_extract_from_graph_pl \
      ~{protein_ortho_table}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    protein_ortho_table: ""
  }
  output {
    File out_stdout = stdout()
  }
}