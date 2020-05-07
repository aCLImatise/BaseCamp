version 1.0

task CombineMUMsRefSequenceGapsFile {
  input {
    String? matchMatchSequences
    String? gapsGapsFile
  }
  command <<<
    combineMUMs RefSequence GapsFile \
      ~{matchMatchSequences} \
      ~{gapsGapsFile}
  >>>
}