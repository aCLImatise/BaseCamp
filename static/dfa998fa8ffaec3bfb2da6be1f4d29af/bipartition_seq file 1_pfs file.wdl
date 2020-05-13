version 1.0

task BipartitionSeq file 1Pfs file {
  input {
    String? seqfile2Seqfile2
    String? pfsPfsFile
  }
  command <<<
    bipartition seq file 1 pfs file \
      ~{seqfile2Seqfile2} \
      ~{pfsPfsFile}
  >>>
}