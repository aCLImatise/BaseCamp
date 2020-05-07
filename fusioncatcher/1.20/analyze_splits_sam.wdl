version 1.0

task AnalyzeSplitsSam.py {
  input {
    String inputInput
    String outputOutput
    String clippedClippedReadsIds
    String clippedClippedReadsRefs
    Int clipClipMin
    Boolean removeRemoveExtra
  }
  command <<<
    analyze_splits_sam.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(clippedClippedReadsIds) then ("--clipped-reads-ids " +  '"' + clippedClippedReadsIds + '"') else ""} \
      ~{if defined(clippedClippedReadsRefs) then ("--clipped-reads-refs " +  '"' + clippedClippedReadsRefs + '"') else ""} \
      ~{if defined(clipClipMin) then ("--clip-min " +  '"' + clipClipMin + '"') else ""} \
      ~{true="--remove-extra" false="" removeRemoveExtra}
  >>>
}