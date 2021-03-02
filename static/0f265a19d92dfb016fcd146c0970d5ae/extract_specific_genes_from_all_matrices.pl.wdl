version 1.0

task ExtractSpecificGenesFromAllMatricespl {
  command <<<
    extract_specific_genes_from_all_matrices_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}