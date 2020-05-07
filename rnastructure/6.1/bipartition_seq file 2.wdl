version 1.0

task BipartitionSeq file 2 {
  input {
    String? seqfile1Seqfile1
    String? seqfile2Seqfile2
    String? pfsPfsFile
  }
  command <<<
    bipartition seq file 2 \
      ~{seqfile1Seqfile1} \
      ~{seqfile2Seqfile2} \
      ~{pfsPfsFile}
  >>>
}