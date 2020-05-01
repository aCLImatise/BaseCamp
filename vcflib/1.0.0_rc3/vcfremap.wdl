version 1.0

task Vcfremap {
  input {
    String refRefWindowSize
    String altAltWindowSize
    File referenceReference
    String matchMatchScore
    String mismatchMismatchScore
    String gapGapOpenPenalty
    String gapGapExtendPenalty
    Boolean entropyEntropyGapOpen
    String repeatRepeatGapExtend
    String adjustAdjustVcf
    String? vcfVcfFile
  }
  command <<<
    vcfremap \
      ~{vcfVcfFile} \
      ~{if defined(refRefWindowSize) then ("--ref-window-size " +  '"' + refRefWindowSize + '"') else ""} \
      ~{if defined(altAltWindowSize) then ("--alt-window-size " +  '"' + altAltWindowSize + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(matchMatchScore) then ("--match-score " +  '"' + matchMatchScore + '"') else ""} \
      ~{if defined(mismatchMismatchScore) then ("--mismatch-score " +  '"' + mismatchMismatchScore + '"') else ""} \
      ~{if defined(gapGapOpenPenalty) then ("--gap-open-penalty " +  '"' + gapGapOpenPenalty + '"') else ""} \
      ~{if defined(gapGapExtendPenalty) then ("--gap-extend-penalty " +  '"' + gapGapExtendPenalty + '"') else ""} \
      ~{true="--entropy-gap-open" false="" entropyEntropyGapOpen} \
      ~{if defined(repeatRepeatGapExtend) then ("--repeat-gap-extend " +  '"' + repeatRepeatGapExtend + '"') else ""} \
      ~{if defined(adjustAdjustVcf) then ("--adjust-vcf " +  '"' + adjustAdjustVcf + '"') else ""}
  >>>
}