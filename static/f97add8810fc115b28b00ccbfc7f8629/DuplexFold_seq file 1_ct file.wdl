version 1.0

task DuplexFoldSeq file 1Ct file {
  input {
    String? seqfile2Seqfile2
    String? ctCtFile
  }
  command <<<
    DuplexFold seq file 1 ct file \
      ~{seqfile2Seqfile2} \
      ~{ctCtFile}
  >>>
}