version 1.0

task EntropyScore {
  input {
    Boolean nowrapNowrap
    String? sequenceSequenceFile
    String? coordsCoords
  }
  command <<<
    entropy-score \
      ~{sequenceSequenceFile} \
      ~{true="--nowrap" false="" nowrapNowrap} \
      ~{coordsCoords}
  >>>
}