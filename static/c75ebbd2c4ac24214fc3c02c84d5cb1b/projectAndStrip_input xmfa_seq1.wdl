version 1.0

task ProjectAndStripInput xmfaSeq1 {
  input {
    String? outputOutputXMfa
    String? seq1Seq1
    String? seqSeqN
  }
  command <<<
    projectAndStrip input xmfa seq1 \
      ~{outputOutputXMfa} \
      ~{seq1Seq1} \
      ~{seqSeqN}
  >>>
}