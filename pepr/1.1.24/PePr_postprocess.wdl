version 1.0

task PePrPostprocess {
  input {
    String peakPeak
    String chipChip
    String inputInput
    String fileFileType
    Boolean removeRemoveArtefacts
    Boolean narrowNarrowPeakBoundary
  }
  command <<<
    PePr-postprocess \
      ~{if defined(peakPeak) then ("--peak " +  '"' + peakPeak + '"') else ""} \
      ~{if defined(chipChip) then ("--chip " +  '"' + chipChip + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(fileFileType) then ("--file-type " +  '"' + fileFileType + '"') else ""} \
      ~{true="--remove-artefacts" false="" removeRemoveArtefacts} \
      ~{true="--narrow-peak-boundary" false="" narrowNarrowPeakBoundary}
  >>>
}