version 1.0

task EnlargeGenes.py {
  input {
    Int enlargementEnlargementSize
    String genesGenes
    String fullFullCover
    String geneGeneShort
    String outputOutput
  }
  command <<<
    enlarge_genes.py \
      ~{if defined(enlargementEnlargementSize) then ("--enlargement-size " +  '"' + enlargementEnlargementSize + '"') else ""} \
      ~{if defined(genesGenes) then ("--genes " +  '"' + genesGenes + '"') else ""} \
      ~{if defined(fullFullCover) then ("--full-cover " +  '"' + fullFullCover + '"') else ""} \
      ~{if defined(geneGeneShort) then ("--gene-short " +  '"' + geneGeneShort + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}