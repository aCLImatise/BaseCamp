version 1.0

task Uncovered {
  input {
    Boolean nowrapNowrap
    String? sequenceSequenceFile
    String? coordsCoords
  }
  command <<<
    uncovered \
      ~{sequenceSequenceFile} \
      ~{true="--nowrap" false="" nowrapNowrap} \
      ~{coordsCoords}
  >>>
}