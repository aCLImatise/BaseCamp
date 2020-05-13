version 1.0

task GenePredToProtGenomeSeqs {
  input {
    String? geneGenePredFile
    String? genomeGenomeSeqs
    String? protProtFa
  }
  command <<<
    genePredToProt genomeSeqs \
      ~{geneGenePredFile} \
      ~{genomeGenomeSeqs} \
      ~{protProtFa}
  >>>
}