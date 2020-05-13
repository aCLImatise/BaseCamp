version 1.0

task ProjectAndStripOutput xmfa {
  input {
    String? inputInputXMfa
    String? outputOutputXMfa
    String? seq1Seq1
    String? seqSeqN
  }
  command <<<
    projectAndStrip output xmfa \
      ~{inputInputXMfa} \
      ~{outputOutputXMfa} \
      ~{seq1Seq1} \
      ~{seqSeqN}
  >>>
}