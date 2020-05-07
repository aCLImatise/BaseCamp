version 1.0

task CombineMUMsRefSequenceMatchSequences {
  input {
    String? gapsGapsFile
  }
  command <<<
    combineMUMs RefSequence MatchSequences \
      ~{gapsGapsFile}
  >>>
}