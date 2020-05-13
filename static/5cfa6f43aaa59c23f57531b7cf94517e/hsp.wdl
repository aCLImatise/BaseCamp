version 1.0

task Hsp.py {
  input {
    File treeTree
    File outputOutput
    Boolean iI
    File observedObservedTraitTable
    String chunkChunkSize
    String hspHspMethod
    Boolean calculateCalculateNsti
    Boolean checkCheck
    String processesProcesses
    String seedSeed
    Boolean verboseVerbose
  }
  command <<<
    hsp.py \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{if defined(observedObservedTraitTable) then ("--observed_trait_table " +  '"' + observedObservedTraitTable + '"') else ""} \
      ~{if defined(chunkChunkSize) then ("--chunk_size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{if defined(hspHspMethod) then ("--hsp_method " +  '"' + hspHspMethod + '"') else ""} \
      ~{true="--calculate_NSTI" false="" calculateCalculateNsti} \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}