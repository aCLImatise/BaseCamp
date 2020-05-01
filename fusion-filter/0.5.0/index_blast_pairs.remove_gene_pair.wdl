version 1.0

task IndexBlastPairs.removeGenePair.pl {
  input {
    String? ctCtAtGenomeLibDir
    String? fusionFusionName
  }
  command <<<
    index_blast_pairs.remove_gene_pair.pl \
      ~{ctCtAtGenomeLibDir} \
      ~{fusionFusionName}
  >>>
}