version 1.0

task TransMapPslToGenePred {
  input {
    String? mrnaMrnaToGene
    String? sourceSourceGenePred
    String? mappedMappedPsl
    String? mappedMappedGenePred
  }
  command <<<
    transMapPslToGenePred \
      ~{mrnaMrnaToGene} \
      ~{sourceSourceGenePred} \
      ~{mappedMappedPsl} \
      ~{mappedMappedGenePred}
  >>>
}