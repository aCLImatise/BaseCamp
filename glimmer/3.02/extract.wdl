version 1.0

task Extract {
  input {
    Boolean nowrapNowrap
    String? sequenceSequenceFile
    String? coordsCoords
  }
  command <<<
    extract \
      ~{sequenceSequenceFile} \
      ~{true="--nowrap" false="" nowrapNowrap} \
      ~{coordsCoords}
  >>>
}