version 1.0

task ProjectAndStripSeq1 {
  input {
    String? inputInputXMfa
    String? outputOutputXMfa
    String? seq1Seq1
    String? seqSeqN
  }
  command <<<
    projectAndStrip seq1 \
      ~{inputInputXMfa} \
      ~{outputOutputXMfa} \
      ~{seq1Seq1} \
      ~{seqSeqN}
  >>>
}