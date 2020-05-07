version 1.0

task BifoldSeq file 2 {
  input {
    String? seqfile1Seqfile1
    String? seqfile2Seqfile2
    String? ctCtFile
  }
  command <<<
    bifold seq file 2 \
      ~{seqfile1Seqfile1} \
      ~{seqfile2Seqfile2} \
      ~{ctCtFile}
  >>>
}