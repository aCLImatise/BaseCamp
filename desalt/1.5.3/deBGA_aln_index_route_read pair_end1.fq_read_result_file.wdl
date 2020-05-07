version 1.0

task DeBGAAlnIndexRouteRead pairEnd1.fqReadResultFile.sam {
  input {
    String? pairPairEnd2fq
    String? resultResultFilesAm
  }
  command <<<
    deBGA aln index_route read pair-end1.fq read result_file.sam \
      ~{pairPairEnd2fq} \
      ~{resultResultFilesAm}
  >>>
}