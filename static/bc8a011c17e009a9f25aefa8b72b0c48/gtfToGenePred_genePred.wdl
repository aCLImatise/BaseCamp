version 1.0

task GtfToGenePredGenePred {
  input {
    String? gtfGtf
    String? geneGenePred
  }
  command <<<
    gtfToGenePred genePred \
      ~{gtfGtf} \
      ~{geneGenePred}
  >>>
}