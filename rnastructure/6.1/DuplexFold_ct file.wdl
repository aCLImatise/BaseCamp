version 1.0

task DuplexFoldCt file {
  input {
    String? seqfile1Seqfile1
    String? seqfile2Seqfile2
    String? ctCtFile
  }
  command <<<
    DuplexFold ct file \
      ~{seqfile1Seqfile1} \
      ~{seqfile2Seqfile2} \
      ~{ctCtFile}
  >>>
}