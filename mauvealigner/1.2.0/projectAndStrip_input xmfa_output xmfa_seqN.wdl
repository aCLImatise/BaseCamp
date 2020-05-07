version 1.0

task ProjectAndStripInput xmfaOutput xmfaSeqN {
  input {
    String? seq1Seq1
    String? seqSeqN
  }
  command <<<
    projectAndStrip input xmfa output xmfa seqN \
      ~{seq1Seq1} \
      ~{seqSeqN}
  >>>
}