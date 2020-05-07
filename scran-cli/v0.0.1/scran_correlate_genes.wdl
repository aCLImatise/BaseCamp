version 1.0

task ScranCorrelateGenes.R {
  input {
    String inputInputCorrPairs
    String outputOutputCorrGenes
  }
  command <<<
    scran-correlate-genes.R \
      ~{if defined(inputInputCorrPairs) then ("--input-corr-pairs " +  '"' + inputInputCorrPairs + '"') else ""} \
      ~{if defined(outputOutputCorrGenes) then ("--output-corr-genes " +  '"' + outputOutputCorrGenes + '"') else ""}
  >>>
}