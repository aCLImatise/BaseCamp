version 1.0

task SgaCorrect {
  input {
    Boolean verboseVerbose
    String prefixPrefix
    File outfileOutfile
    String threadsThreads
    Boolean discardDiscard
    String sampleSampleRate
    String algorithmAlgorithm
    File metricsMetrics
    String kmKmErSize
    String kmKmErThreshold
    String kmKmErRounds
    String countCountOffset
    Boolean learnLearn
    Boolean errorErrorRate
    String minMinOverlap
    Int minMinCountMaxBase
    String baseBaseThreshold
    Int conflictConflict
    String seedSeedLength
    String seedSeedStride
    String branchBranchCutOff
    String roundsRounds
  }
  command <<<
    sga correct \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--discard" false="" discardDiscard} \
      ~{if defined(sampleSampleRate) then ("--sample-rate " +  '"' + sampleSampleRate + '"') else ""} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(metricsMetrics) then ("--metrics " +  '"' + metricsMetrics + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(kmKmErThreshold) then ("--kmer-threshold " +  '"' + kmKmErThreshold + '"') else ""} \
      ~{if defined(kmKmErRounds) then ("--kmer-rounds " +  '"' + kmKmErRounds + '"') else ""} \
      ~{if defined(countCountOffset) then ("--count-offset " +  '"' + countCountOffset + '"') else ""} \
      ~{true="--learn" false="" learnLearn} \
      ~{true="--error-rate" false="" errorErrorRate} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(minMinCountMaxBase) then ("--min-count-max-base " +  '"' + minMinCountMaxBase + '"') else ""} \
      ~{if defined(baseBaseThreshold) then ("--base-threshold " +  '"' + baseBaseThreshold + '"') else ""} \
      ~{if defined(conflictConflict) then ("--conflict " +  '"' + conflictConflict + '"') else ""} \
      ~{if defined(seedSeedLength) then ("--seed-length " +  '"' + seedSeedLength + '"') else ""} \
      ~{if defined(seedSeedStride) then ("--seed-stride " +  '"' + seedSeedStride + '"') else ""} \
      ~{if defined(branchBranchCutOff) then ("--branch-cutoff " +  '"' + branchBranchCutOff + '"') else ""} \
      ~{if defined(roundsRounds) then ("--rounds " +  '"' + roundsRounds + '"') else ""}
  >>>
}