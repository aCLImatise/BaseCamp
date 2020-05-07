version 1.0

task ProjectAndStripSeqN {
  input {
    String? inputInputXMfa
    String? outputOutputXMfa
    String? seq1Seq1
    String? seqSeqN
  }
  command <<<
    projectAndStrip seqN \
      ~{inputInputXMfa} \
      ~{outputOutputXMfa} \
      ~{seq1Seq1} \
      ~{seqSeqN}
  >>>
}