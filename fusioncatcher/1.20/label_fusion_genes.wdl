version 1.0

task LabelFusionGenes.py {
  input {
    String inputInput
    String filterFilterGenePairs
    String filterFilterGenePairsThreshold
    String filterFilterGenes
    String labelLabel
    String outputOutputFusionGenes
    Boolean similarSimilarGeneSymbols
    String minMinDistGeneGene
    String minMinDistGeneGeneDatabase
  }
  command <<<
    label_fusion_genes.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(filterFilterGenePairs) then ("--filter_gene_pairs " +  '"' + filterFilterGenePairs + '"') else ""} \
      ~{if defined(filterFilterGenePairsThreshold) then ("--filter_gene_pairs_threshold " +  '"' + filterFilterGenePairsThreshold + '"') else ""} \
      ~{if defined(filterFilterGenes) then ("--filter_genes " +  '"' + filterFilterGenes + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(outputOutputFusionGenes) then ("--output_fusion_genes " +  '"' + outputOutputFusionGenes + '"') else ""} \
      ~{true="--similar_gene_symbols" false="" similarSimilarGeneSymbols} \
      ~{if defined(minMinDistGeneGene) then ("--min_dist_gene_gene " +  '"' + minMinDistGeneGene + '"') else ""} \
      ~{if defined(minMinDistGeneGeneDatabase) then ("--min_dist_gene_gene_database " +  '"' + minMinDistGeneGeneDatabase + '"') else ""}
  >>>
}