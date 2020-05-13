version 1.0

task PhyluceGenetreesSplitModelsFromGenetrees {
  input {
    String geneGeneTrees
    String outputOutput
  }
  command <<<
    phyluce_genetrees_split_models_from_genetrees \
      ~{if defined(geneGeneTrees) then ("--genetrees " +  '"' + geneGeneTrees + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}