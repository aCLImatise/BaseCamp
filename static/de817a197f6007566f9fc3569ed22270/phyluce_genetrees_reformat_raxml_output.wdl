version 1.0

task PhyluceGenetreesReformatRaxmlOutput {
  input {
    String geneGeneTrees
    String bootBootReps
    String outputOutput
  }
  command <<<
    phyluce_genetrees_reformat_raxml_output \
      ~{if defined(geneGeneTrees) then ("--genetrees " +  '"' + geneGeneTrees + '"') else ""} \
      ~{if defined(bootBootReps) then ("--bootreps " +  '"' + bootBootReps + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}