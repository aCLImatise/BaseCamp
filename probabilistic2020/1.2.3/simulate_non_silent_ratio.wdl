version 1.0

task SimulateNonSilentRatio {
  input {
    String logLogLevel
    String logLog
    String inputInput
    String mutationsMutations
    String bedBed
    String processesProcesses
    String numNumPermutations
    String contextContext
    String scoreScoreDir
    Boolean byBySample
    Boolean useUseUnmapped
    String genomeGenome
    String observedObservedOutput
    String outputOutput
  }
  command <<<
    simulate_non_silent_ratio \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(mutationsMutations) then ("--mutations " +  '"' + mutationsMutations + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(numNumPermutations) then ("--num-permutations " +  '"' + numNumPermutations + '"') else ""} \
      ~{if defined(contextContext) then ("--context " +  '"' + contextContext + '"') else ""} \
      ~{if defined(scoreScoreDir) then ("--score-dir " +  '"' + scoreScoreDir + '"') else ""} \
      ~{true="--by-sample" false="" byBySample} \
      ~{true="--use-unmapped" false="" useUseUnmapped} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(observedObservedOutput) then ("--observed-output " +  '"' + observedObservedOutput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}