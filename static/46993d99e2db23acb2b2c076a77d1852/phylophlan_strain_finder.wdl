version 1.0

task PhylophlanStrainFinder {
  input {
    String inputInput
    String mutationMutationRates
    String phyloPhyloThr
    String mutMutRateThr
    String treeTreeFormat
    String outputOutput
    Boolean overwriteOverwrite
    Boolean sS
    Boolean verboseVerbose
  }
  command <<<
    phylophlan_strain_finder \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(mutationMutationRates) then ("--mutation_rates " +  '"' + mutationMutationRates + '"') else ""} \
      ~{if defined(phyloPhyloThr) then ("--phylo_thr " +  '"' + phyloPhyloThr + '"') else ""} \
      ~{if defined(mutMutRateThr) then ("--mutrate_thr " +  '"' + mutMutRateThr + '"') else ""} \
      ~{if defined(treeTreeFormat) then ("--tree_format " +  '"' + treeTreeFormat + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{true="-s" false="" sS} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}