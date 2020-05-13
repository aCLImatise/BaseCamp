version 1.0

task GtfToGenePredGtf {
  input {
    String? geneGenePred
  }
  command <<<
    gtfToGenePred gtf \
      ~{geneGenePred}
  >>>
}