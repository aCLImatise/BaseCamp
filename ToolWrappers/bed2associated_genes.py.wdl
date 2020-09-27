version 1.0

task Bed2associatedGenespy {
  command <<<
    bed2associated_genes_py
  >>>
  output {
    File out_stdout = stdout()
  }
}