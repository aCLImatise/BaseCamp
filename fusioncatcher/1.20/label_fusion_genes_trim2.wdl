version 1.0

task LabelFusionGenesTrim2.py {
  input {
    String inputInput
    String fusionsFusionsPairs
    String smallerSmallerPairs
    String outputOutputFusionGenes
  }
  command <<<
    label_fusion_genes_trim2.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(fusionsFusionsPairs) then ("--fusions_pairs " +  '"' + fusionsFusionsPairs + '"') else ""} \
      ~{if defined(smallerSmallerPairs) then ("--smaller_pairs " +  '"' + smallerSmallerPairs + '"') else ""} \
      ~{if defined(outputOutputFusionGenes) then ("--output_fusion_genes " +  '"' + outputOutputFusionGenes + '"') else ""}
  >>>
}