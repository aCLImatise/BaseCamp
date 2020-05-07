version 1.0

task DeBGAAlnRead {
  input {
    String? indexIndexRoute
    String? readReadPairEnd1fq
    String? readRead
    String? pairPairEnd2fq
    String? resultResultFilesAm
  }
  command <<<
    deBGA aln read \
      ~{indexIndexRoute} \
      ~{readReadPairEnd1fq} \
      ~{readRead} \
      ~{pairPairEnd2fq} \
      ~{resultResultFilesAm}
  >>>
}