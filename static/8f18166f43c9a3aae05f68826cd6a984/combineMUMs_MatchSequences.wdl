version 1.0

task CombineMUMsMatchSequences {
  input {
    String? refRefSequence
    String? matchMatchSequences
    String? gapsGapsFile
  }
  command <<<
    combineMUMs MatchSequences \
      ~{refRefSequence} \
      ~{matchMatchSequences} \
      ~{gapsGapsFile}
  >>>
}