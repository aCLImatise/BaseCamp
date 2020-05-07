version 1.0

task PbsEncode {
  input {
    Boolean discardDiscardGaps
  }
  command <<<
    pbsEncode \
      ~{true="--discard-gaps" false="" discardDiscardGaps}
  >>>
}