version 1.0

task LabelAmbiguousFusionGenes.py {
  input {
    String inputInput
    String labelLabel
    String factorFactor
    String inputInputAmbiguous
    String outputOutputFusionGenes
  }
  command <<<
    label_ambiguous_fusion_genes.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(factorFactor) then ("--factor " +  '"' + factorFactor + '"') else ""} \
      ~{if defined(inputInputAmbiguous) then ("--input_ambiguous " +  '"' + inputInputAmbiguous + '"') else ""} \
      ~{if defined(outputOutputFusionGenes) then ("--output_fusion_genes " +  '"' + outputOutputFusionGenes + '"') else ""}
  >>>
}