version 1.0

task BRS {
  input {
    String? seqSeqFile
  }
  command <<<
    BRS \
      ~{seqSeqFile}
  >>>
}