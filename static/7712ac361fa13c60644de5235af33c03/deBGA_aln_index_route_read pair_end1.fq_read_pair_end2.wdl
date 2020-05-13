version 1.0

task DeBGAAlnIndexRouteRead pairEnd1.fqReadPairEnd2.fq {
  input {
    String? resultResultFilesAm
  }
  command <<<
    deBGA aln index_route read pair-end1.fq read pair-end2.fq \
      ~{resultResultFilesAm}
  >>>
}