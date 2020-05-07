version 1.0

task PhyluceGenetreesSortMultilocusBootstraps {
  input {
    String inputInput
    String bootstrapBootstrapReplicates
    String outputOutput
  }
  command <<<
    phyluce_genetrees_sort_multilocus_bootstraps \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(bootstrapBootstrapReplicates) then ("--bootstrap_replicates " +  '"' + bootstrapBootstrapReplicates + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}