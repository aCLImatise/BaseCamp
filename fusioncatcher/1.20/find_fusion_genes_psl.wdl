version 1.0

task FindFusionGenesPsl.py {
  input {
    String inputInputMappings
    String inputInputGenesPositions
    String inputInputGeneGeneFastA
    String inputInputHugo
    String thresholdThresholdMatches
    String mismatchesMismatches
    String thresholdThresholdOverlap
    String separatorSeparator
    String outputOutput
  }
  command <<<
    find_fusion_genes_psl.py \
      ~{if defined(inputInputMappings) then ("--input_mappings " +  '"' + inputInputMappings + '"') else ""} \
      ~{if defined(inputInputGenesPositions) then ("--input_genes_positions " +  '"' + inputInputGenesPositions + '"') else ""} \
      ~{if defined(inputInputGeneGeneFastA) then ("--input_genegene_fasta " +  '"' + inputInputGeneGeneFastA + '"') else ""} \
      ~{if defined(inputInputHugo) then ("--input_hugo " +  '"' + inputInputHugo + '"') else ""} \
      ~{if defined(thresholdThresholdMatches) then ("--threshold_matches " +  '"' + thresholdThresholdMatches + '"') else ""} \
      ~{if defined(mismatchesMismatches) then ("--mismatches " +  '"' + mismatchesMismatches + '"') else ""} \
      ~{if defined(thresholdThresholdOverlap) then ("--threshold_overlap " +  '"' + thresholdThresholdOverlap + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}