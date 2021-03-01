version 1.0

task Gff3Genes {
  command <<<
    gff3_genes
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}