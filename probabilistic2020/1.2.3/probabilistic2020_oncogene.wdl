version 1.0

task Probabilistic2020Oncogene {
  input {
    String inputInput
    String mutationsMutations
    String bedBed
    String processesProcesses
    String numNumIterations
    String contextContext
    String scoreScoreDir
    String outputOutput
    String stopStopCriteria
    String recurrentRecurrent
    String fractionFraction
    Boolean uniqueUnique
    Boolean useUseUnmapped
    String genomeGenome
    String seedSeed
  }
  command <<<
    probabilistic2020 oncogene \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(mutationsMutations) then ("--mutations " +  '"' + mutationsMutations + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(numNumIterations) then ("--num-iterations " +  '"' + numNumIterations + '"') else ""} \
      ~{if defined(contextContext) then ("--context " +  '"' + contextContext + '"') else ""} \
      ~{if defined(scoreScoreDir) then ("--score-dir " +  '"' + scoreScoreDir + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(stopStopCriteria) then ("--stop-criteria " +  '"' + stopStopCriteria + '"') else ""} \
      ~{if defined(recurrentRecurrent) then ("--recurrent " +  '"' + recurrentRecurrent + '"') else ""} \
      ~{if defined(fractionFraction) then ("--fraction " +  '"' + fractionFraction + '"') else ""} \
      ~{true="--unique" false="" uniqueUnique} \
      ~{true="--use-unmapped" false="" useUseUnmapped} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}