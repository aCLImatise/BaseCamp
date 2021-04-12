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
    docker: "quay.io/biocontainers/proteinortho:6.0.29--hb0e25da_1"
  }
  parameter_meta {
    protein_ortho_table: ""
  }
  output {
    File out_stdout = stdout()
  }
}