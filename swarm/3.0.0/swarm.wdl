version 1.0

task Swarm {
  input {
    Int threadsThreads
    Int differencesDifferences
    Boolean noNoOtuBreaking
    Int boundaryBoundary
    Int ceilingCeiling
    Boolean fastidiousFastidious
    Int bloomBloomBits
    Int appendAppendAbundance
    File internalInternalStructure
    File logLog
    File outputOutputFile
    Boolean moMoThur
    File statisticsStatisticsFile
    File ucUcLustFile
    File seedsSeeds
    Boolean uUSearchAbundance
    Int matchMatchReward
    Int mismatchMismatchPenalty
    Int gapGapOpeningPenalty
    Int gapGapExtensionPenalty
    String? optionsOptions
    String? fastFastAFile
  }
  command <<<
    swarm \
      ~{optionsOptions} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(differencesDifferences) then ("--differences " +  '"' + differencesDifferences + '"') else ""} \
      ~{true="--no-otu-breaking" false="" noNoOtuBreaking} \
      ~{if defined(boundaryBoundary) then ("--boundary " +  '"' + boundaryBoundary + '"') else ""} \
      ~{if defined(ceilingCeiling) then ("--ceiling " +  '"' + ceilingCeiling + '"') else ""} \
      ~{true="--fastidious" false="" fastidiousFastidious} \
      ~{if defined(bloomBloomBits) then ("--bloom-bits " +  '"' + bloomBloomBits + '"') else ""} \
      ~{if defined(appendAppendAbundance) then ("--append-abundance " +  '"' + appendAppendAbundance + '"') else ""} \
      ~{if defined(internalInternalStructure) then ("--internal-structure " +  '"' + internalInternalStructure + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--mothur" false="" moMoThur} \
      ~{if defined(statisticsStatisticsFile) then ("--statistics-file " +  '"' + statisticsStatisticsFile + '"') else ""} \
      ~{if defined(ucUcLustFile) then ("--uclust-file " +  '"' + ucUcLustFile + '"') else ""} \
      ~{if defined(seedsSeeds) then ("--seeds " +  '"' + seedsSeeds + '"') else ""} \
      ~{true="--usearch-abundance" false="" uUSearchAbundance} \
      ~{if defined(matchMatchReward) then ("--match-reward " +  '"' + matchMatchReward + '"') else ""} \
      ~{if defined(mismatchMismatchPenalty) then ("--mismatch-penalty " +  '"' + mismatchMismatchPenalty + '"') else ""} \
      ~{if defined(gapGapOpeningPenalty) then ("--gap-opening-penalty " +  '"' + gapGapOpeningPenalty + '"') else ""} \
      ~{if defined(gapGapExtensionPenalty) then ("--gap-extension-penalty " +  '"' + gapGapExtensionPenalty + '"') else ""} \
      ~{fastFastAFile}
  >>>
}