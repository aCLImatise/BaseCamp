version 1.0

task DeBGAAlnIndexRoutePairEnd2.fq {
  input {
    String? readReadPairEnd1fq
    String? readRead
    String? pairPairEnd2fq
    String? resultResultFilesAm
  }
  command <<<
    deBGA aln index_route pair-end2.fq \
      ~{readReadPairEnd1fq} \
      ~{readRead} \
      ~{pairPairEnd2fq} \
      ~{resultResultFilesAm}
  >>>
}