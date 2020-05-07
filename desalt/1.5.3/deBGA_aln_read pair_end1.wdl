version 1.0

task DeBGAAlnRead pairEnd1.fq {
  input {
    String? indexIndexRoute
    String? readReadPairEnd1fq
    String? readRead
    String? pairPairEnd2fq
    String? resultResultFilesAm
  }
  command <<<
    deBGA aln read pair-end1.fq \
      ~{indexIndexRoute} \
      ~{readReadPairEnd1fq} \
      ~{readRead} \
      ~{pairPairEnd2fq} \
      ~{resultResultFilesAm}
  >>>
}