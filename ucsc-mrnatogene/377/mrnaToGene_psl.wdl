version 1.0

task MrnaToGenePsl {
  input {
    String? geneGenePredFile
  }
  command <<<
    mrnaToGene psl \
      ~{geneGenePredFile}
  >>>
}