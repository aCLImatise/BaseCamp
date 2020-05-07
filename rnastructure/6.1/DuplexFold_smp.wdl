version 1.0

task DuplexFoldSmp {
  input {
    String? duplexDuplexFold
    String? seqfile1Seqfile1
    String? seqfile2Seqfile2
    String? ctCtFile
  }
  command <<<
    DuplexFold-smp \
      ~{duplexDuplexFold} \
      ~{seqfile1Seqfile1} \
      ~{seqfile2Seqfile2} \
      ~{ctCtFile}
  >>>
}