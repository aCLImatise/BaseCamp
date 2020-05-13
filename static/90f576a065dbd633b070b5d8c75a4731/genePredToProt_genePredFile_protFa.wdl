version 1.0

task GenePredToProtGenePredFileProtFa {
  input {
    String? genomeGenomeSeqs
    String? protProtFa
  }
  command <<<
    genePredToProt genePredFile protFa \
      ~{genomeGenomeSeqs} \
      ~{protProtFa}
  >>>
}