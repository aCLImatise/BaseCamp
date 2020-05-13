version 1.0

task ProjectAndStripInput xmfaSeqN {
  input {
    String? outputOutputXMfa
    String? seq1Seq1
    String? seqSeqN
  }
  command <<<
    projectAndStrip input xmfa seqN \
      ~{outputOutputXMfa} \
      ~{seq1Seq1} \
      ~{seqSeqN}
  >>>
}