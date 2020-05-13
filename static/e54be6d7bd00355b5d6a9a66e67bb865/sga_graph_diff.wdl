version 1.0

task SgaGraphDiff {
  input {
    Boolean verboseVerbose
    String prefixPrefix
    String threadsThreads
    String genomeGenomeSize
    String prePreCacheReference
    File variantVariant
    File baseBase
    File referenceReference
    String kmKmEr
    String minMinDiscoveryCount
    String algorithmAlgorithm
    String minMinOverlap
    String minMinDbgCount
    String? optionOption
  }
  command <<<
    sga graph-diff \
      ~{optionOption} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(genomeGenomeSize) then ("--genome-size " +  '"' + genomeGenomeSize + '"') else ""} \
      ~{if defined(prePreCacheReference) then ("--precache-reference " +  '"' + prePreCacheReference + '"') else ""} \
      ~{if defined(variantVariant) then ("--variant " +  '"' + variantVariant + '"') else ""} \
      ~{if defined(baseBase) then ("--base " +  '"' + baseBase + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(minMinDiscoveryCount) then ("--min-discovery-count " +  '"' + minMinDiscoveryCount + '"') else ""} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(minMinDbgCount) then ("--min-dbg-count " +  '"' + minMinDbgCount + '"') else ""}
  >>>
}