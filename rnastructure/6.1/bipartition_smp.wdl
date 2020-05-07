version 1.0

task BipartitionSmp {
  input {
    String? biBiPartition
    String? seqfile1Seqfile1
    String? seqfile2Seqfile2
    String? pfsPfsFile
  }
  command <<<
    bipartition-smp \
      ~{biBiPartition} \
      ~{seqfile1Seqfile1} \
      ~{seqfile2Seqfile2} \
      ~{pfsPfsFile}
  >>>
}