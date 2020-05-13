version 1.0

task SeqSeqPanConsensus {
  input {
    String? inputInputXMfa
  }
  command <<<
    seq-seq-pan-consensus \
      ~{inputInputXMfa}
  >>>
}