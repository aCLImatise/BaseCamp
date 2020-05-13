version 1.0

task MrnaToGeneGenePredFile {
  input {
    String? pslPsl
    String? geneGenePredFile
  }
  command <<<
    mrnaToGene genePredFile \
      ~{pslPsl} \
      ~{geneGenePredFile}
  >>>
}