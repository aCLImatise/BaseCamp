version 1.0

task MendelscanSibd {
  input {
    Boolean pedPedFile
    Boolean markersMarkersFile
    Boolean centromereCentromereFile
    Boolean outputOutputWindows
    Boolean ibdIbdScoreThreshold
    Boolean windowWindowResolution
    Boolean inheritanceInheritance
  }
  command <<<
    mendelscan sibd \
      ~{true="--ped-file" false="" pedPedFile} \
      ~{true="--markers-file" false="" markersMarkersFile} \
      ~{true="--centromere-file" false="" centromereCentromereFile} \
      ~{true="--output-windows" false="" outputOutputWindows} \
      ~{true="--ibd-score-threshold" false="" ibdIbdScoreThreshold} \
      ~{true="--window-resolution" false="" windowWindowResolution} \
      ~{true="--inheritance" false="" inheritanceInheritance}
  >>>
}