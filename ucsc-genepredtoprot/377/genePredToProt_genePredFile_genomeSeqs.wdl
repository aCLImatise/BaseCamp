version 1.0

task GenePredToProtGenePredFileGenomeSeqs {
  input {
    String? protProtFa
  }
  command <<<
    genePredToProt genePredFile genomeSeqs \
      ~{protProtFa}
  >>>
}