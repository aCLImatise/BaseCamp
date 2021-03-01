version 1.0

task Bed2associatedGenespy {
  command <<<
    bed2associated_genes_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}