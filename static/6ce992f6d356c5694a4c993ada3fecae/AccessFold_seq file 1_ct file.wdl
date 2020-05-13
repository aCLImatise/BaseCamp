version 1.0

task AccessFoldSeq file 1Ct file {
  input {
    String? seqfile2Seqfile2
    String? ctCtFile
  }
  command <<<
    AccessFold seq file 1 ct file \
      ~{seqfile2Seqfile2} \
      ~{ctCtFile}
  >>>
}