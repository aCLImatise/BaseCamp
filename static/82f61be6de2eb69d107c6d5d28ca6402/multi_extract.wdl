version 1.0

task MultiExtract {
  input {
    Boolean nowrapNowrap
    String? sequenceSequenceFile
    String? coordsCoords
  }
  command <<<
    multi-extract \
      ~{sequenceSequenceFile} \
      ~{true="--nowrap" false="" nowrapNowrap} \
      ~{coordsCoords}
  >>>
}