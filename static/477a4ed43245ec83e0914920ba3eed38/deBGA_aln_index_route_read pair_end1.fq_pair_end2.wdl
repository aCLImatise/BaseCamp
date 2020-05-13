version 1.0

task DeBGAAlnIndexRouteRead pairEnd1.fqPairEnd2.fq {
  input {
    String? readRead
    String? pairPairEnd2fq
    String? resultResultFilesAm
  }
  command <<<
    deBGA aln index_route read pair-end1.fq pair-end2.fq \
      ~{readRead} \
      ~{pairPairEnd2fq} \
      ~{resultResultFilesAm}
  >>>
}