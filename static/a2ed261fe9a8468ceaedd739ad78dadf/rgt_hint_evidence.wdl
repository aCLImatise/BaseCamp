version 1.0

task RgtHintEvidence {
  input {
    File mMPbsFile
    File chipChipFile
    Int peakPeakExt
    File outputOutputLocation
    String outputOutputPrefix
  }
  command <<<
    rgt-hint evidence \
      ~{if defined(mMPbsFile) then ("--mpbs-file " +  '"' + mMPbsFile + '"') else ""} \
      ~{if defined(chipChipFile) then ("--chip-file " +  '"' + chipChipFile + '"') else ""} \
      ~{if defined(peakPeakExt) then ("--peak-ext " +  '"' + peakPeakExt + '"') else ""} \
      ~{if defined(outputOutputLocation) then ("--output-location " +  '"' + outputOutputLocation + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""}
  >>>
}