version 1.0

task DeBGAAlnIndexRouteRead pairEnd1.fqResultFile.sam {
  input {
    String? readRead
    String? pairPairEnd2fq
    String? resultResultFilesAm
  }
  command <<<
    deBGA aln index_route read pair-end1.fq result_file.sam \
      ~{readRead} \
      ~{pairPairEnd2fq} \
      ~{resultResultFilesAm}
  >>>
}