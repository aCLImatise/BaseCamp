version 1.0

task JoinKUnitigsV3 {
  input {
    Int minMinOverlapLength
    File meanMeanAndStdevByPrefixFile
    Int numNumStdevSAllowed
    File unitUnitIgLengthsFile
    File kKUnitIgsTranslationFile
    File overlapsOverlapsFile
    File numNumKUnitIgsFile
    Int maxMaxNodesAllowed
    Int joinJoinAggressive
    String outputOutput
    Int threadsThreads
  }
  command <<<
    joinKUnitigs_v3 \
      ~{if defined(minMinOverlapLength) then ("--min-overlap-length " +  '"' + minMinOverlapLength + '"') else ""} \
      ~{if defined(meanMeanAndStdevByPrefixFile) then ("--mean-and-stdev-by-prefix-file " +  '"' + meanMeanAndStdevByPrefixFile + '"') else ""} \
      ~{if defined(numNumStdevSAllowed) then ("--num-stdevs-allowed " +  '"' + numNumStdevSAllowed + '"') else ""} \
      ~{if defined(unitUnitIgLengthsFile) then ("--unitig-lengths-file " +  '"' + unitUnitIgLengthsFile + '"') else ""} \
      ~{if defined(kKUnitIgsTranslationFile) then ("--kunitigs-translation-file " +  '"' + kKUnitIgsTranslationFile + '"') else ""} \
      ~{if defined(overlapsOverlapsFile) then ("--overlaps-file " +  '"' + overlapsOverlapsFile + '"') else ""} \
      ~{if defined(numNumKUnitIgsFile) then ("--num-kunitigs-file " +  '"' + numNumKUnitIgsFile + '"') else ""} \
      ~{if defined(maxMaxNodesAllowed) then ("--max-nodes-allowed " +  '"' + maxMaxNodesAllowed + '"') else ""} \
      ~{if defined(joinJoinAggressive) then ("--join-aggressive " +  '"' + joinJoinAggressive + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}