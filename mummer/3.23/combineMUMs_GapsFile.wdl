version 1.0

task CombineMUMsGapsFile {
  input {
    String? refRefSequence
    String? matchMatchSequences
    String? gapsGapsFile
  }
  command <<<
    combineMUMs GapsFile \
      ~{refRefSequence} \
      ~{matchMatchSequences} \
      ~{gapsGapsFile}
  >>>
}