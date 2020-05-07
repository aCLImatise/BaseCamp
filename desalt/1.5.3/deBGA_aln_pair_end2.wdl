version 1.0

task DeBGAAlnPairEnd2.fq {
  input {
    String? indexIndexRoute
    String? readReadPairEnd1fq
    String? readRead
    String? pairPairEnd2fq
    String? resultResultFilesAm
  }
  command <<<
    deBGA aln pair-end2.fq \
      ~{indexIndexRoute} \
      ~{readReadPairEnd1fq} \
      ~{readRead} \
      ~{pairPairEnd2fq} \
      ~{resultResultFilesAm}
  >>>
}