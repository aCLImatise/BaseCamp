version 1.0

task ChromosomerFragmentmap {
  input {
    String ratioRatioThreshold
    Boolean shrinkShrinkGaps
    String? alignmentAlignmentFile
    String? gapGapSize
    String? fragmentFragmentLengths
    String? outputOutputMap
  }
  command <<<
    chromosomer fragmentmap \
      ~{alignmentAlignmentFile} \
      ~{if defined(ratioRatioThreshold) then ("--ratio_threshold " +  '"' + ratioRatioThreshold + '"') else ""} \
      ~{true="--shrink_gaps" false="" shrinkShrinkGaps} \
      ~{gapGapSize} \
      ~{fragmentFragmentLengths} \
      ~{outputOutputMap}
  >>>
}