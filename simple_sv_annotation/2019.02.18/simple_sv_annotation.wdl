version 1.0

task SimpleSvAnnotation.py {
  input {
    String geneGeneList
    String knownKnownFusionPairs
    String knownKnownFusionPromiscuous
    String outputOutput
    String exonExonNums
    String? vcfVcf
  }
  command <<<
    simple_sv_annotation.py \
      ~{vcfVcf} \
      ~{if defined(geneGeneList) then ("--gene_list " +  '"' + geneGeneList + '"') else ""} \
      ~{if defined(knownKnownFusionPairs) then ("--known_fusion_pairs " +  '"' + knownKnownFusionPairs + '"') else ""} \
      ~{if defined(knownKnownFusionPromiscuous) then ("--known_fusion_promiscuous " +  '"' + knownKnownFusionPromiscuous + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(exonExonNums) then ("--exonNums " +  '"' + exonExonNums + '"') else ""}
  >>>
}