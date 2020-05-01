version 1.0

task ExtractFusionGenes.py {
  input {
    String inputInput
    String inputInputFusionReads
    String thresholdThresholdPairs
    String thresholdThresholdPairsKnown
    String thresholdThresholdCount
    String skipSkipLabels
    String allowedAllowedLabels
    String furtherFurtherLabels
    String outputOutput
    String outputOutputFusion
    String outputOutputFusionReads
  }
  command <<<
    extract_fusion_genes.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(inputInputFusionReads) then ("--input_fusion_reads " +  '"' + inputInputFusionReads + '"') else ""} \
      ~{if defined(thresholdThresholdPairs) then ("--threshold_pairs " +  '"' + thresholdThresholdPairs + '"') else ""} \
      ~{if defined(thresholdThresholdPairsKnown) then ("--threshold_pairs_known " +  '"' + thresholdThresholdPairsKnown + '"') else ""} \
      ~{if defined(thresholdThresholdCount) then ("--threshold_count " +  '"' + thresholdThresholdCount + '"') else ""} \
      ~{if defined(skipSkipLabels) then ("--skip_labels " +  '"' + skipSkipLabels + '"') else ""} \
      ~{if defined(allowedAllowedLabels) then ("--allowed_labels " +  '"' + allowedAllowedLabels + '"') else ""} \
      ~{if defined(furtherFurtherLabels) then ("--further_labels " +  '"' + furtherFurtherLabels + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputFusion) then ("--output_fusion " +  '"' + outputOutputFusion + '"') else ""} \
      ~{if defined(outputOutputFusionReads) then ("--output_fusion_reads " +  '"' + outputOutputFusionReads + '"') else ""}
  >>>
}