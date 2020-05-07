version 1.0

task BipartitionPfs file {
  input {
    String? seqfile1Seqfile1
    String? seqfile2Seqfile2
    String? pfsPfsFile
  }
  command <<<
    bipartition pfs file \
      ~{seqfile1Seqfile1} \
      ~{seqfile2Seqfile2} \
      ~{pfsPfsFile}
  >>>
}