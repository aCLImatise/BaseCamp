version 1.0

task MutAnnotate {
  input {
    String logLogLevel
    String logLog
    Boolean verboseVerbose
    String inputInput
    String mutationsMutations
    String bedBed
    String scoreScoreDir
    String processesProcesses
    String numNumIterations
    String contextContext
    Boolean summarySummary
    Boolean mafMaf
    Boolean useUseUnmapped
    String genomeGenome
    String recurrentRecurrent
    String fractionFraction
    Boolean uniqueUnique
    Boolean dropDropSilent
    Boolean restrictRestrictGenes
    String seedSeed
    String outputOutput
  }
  command <<<
    mut_annotate \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(mutationsMutations) then ("--mutations " +  '"' + mutationsMutations + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(scoreScoreDir) then ("--score-dir " +  '"' + scoreScoreDir + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(numNumIterations) then ("--num-iterations " +  '"' + numNumIterations + '"') else ""} \
      ~{if defined(contextContext) then ("--context " +  '"' + contextContext + '"') else ""} \
      ~{true="--summary" false="" summarySummary} \
      ~{true="--maf" false="" mafMaf} \
      ~{true="--use-unmapped" false="" useUseUnmapped} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(recurrentRecurrent) then ("--recurrent " +  '"' + recurrentRecurrent + '"') else ""} \
      ~{if defined(fractionFraction) then ("--fraction " +  '"' + fractionFraction + '"') else ""} \
      ~{true="--unique" false="" uniqueUnique} \
      ~{true="--drop-silent" false="" dropDropSilent} \
      ~{true="--restrict-genes" false="" restrictRestrictGenes} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}