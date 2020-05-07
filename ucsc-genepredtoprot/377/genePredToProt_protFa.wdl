version 1.0

task GenePredToProtProtFa {
  input {
    String? geneGenePredFile
    String? genomeGenomeSeqs
    String? protProtFa
  }
  command <<<
    genePredToProt protFa \
      ~{geneGenePredFile} \
      ~{genomeGenomeSeqs} \
      ~{protProtFa}
  >>>
}