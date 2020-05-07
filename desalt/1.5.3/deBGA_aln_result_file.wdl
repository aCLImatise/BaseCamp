version 1.0

task DeBGAAlnResultFile.sam {
  input {
    String? indexIndexRoute
    String? readReadPairEnd1fq
    String? readRead
    String? pairPairEnd2fq
    String? resultResultFilesAm
  }
  command <<<
    deBGA aln result_file.sam \
      ~{indexIndexRoute} \
      ~{readReadPairEnd1fq} \
      ~{readRead} \
      ~{pairPairEnd2fq} \
      ~{resultResultFilesAm}
  >>>
}