version 1.0

task GmerCounter {
  input {
    String maxMaxKmErs
    Boolean silentSilent
    Boolean headerHeader
    Boolean totalTotal
    Boolean uniqueUnique
    Boolean kmKmErs
    File compileCompileIndex
    String distributionDistribution
    Boolean numNumThreads
    Boolean prefetchPrefetch
    Boolean dD
    String? argumentsArguments
    String? sequencesSequences
  }
  command <<<
    gmer_counter \
      ~{argumentsArguments} \
      ~{if defined(maxMaxKmErs) then ("--max_kmers " +  '"' + maxMaxKmErs + '"') else ""} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--total" false="" totalTotal} \
      ~{true="--unique" false="" uniqueUnique} \
      ~{true="--kmers" false="" kmKmErs} \
      ~{if defined(compileCompileIndex) then ("--compile_index " +  '"' + compileCompileIndex + '"') else ""} \
      ~{if defined(distributionDistribution) then ("--distribution " +  '"' + distributionDistribution + '"') else ""} \
      ~{true="--num_threads" false="" numNumThreads} \
      ~{true="--prefetch" false="" prefetchPrefetch} \
      ~{true="-D" false="" dD} \
      ~{sequencesSequences}
  >>>
}