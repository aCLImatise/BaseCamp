version 1.0

task ProjectAndStripInput xmfaOutput xmfaSeq1 {
  input {
    String? seqSeqN
  }
  command <<<
    projectAndStrip input xmfa output xmfa seq1 \
      ~{seqSeqN}
  >>>
}