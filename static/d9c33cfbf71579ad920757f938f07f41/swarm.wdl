version 1.0

task Swarm {
  input {
    Int differencesDifferences
    File outputOutputFile
    Int threadsThreads
    Int matchMatchReward
    Int mismatchMismatchPenalty
    Int gapGapOpeningPenalty
    Int gapGapExtensionPenalty
    File statisticsStatisticsFile
    File ucUcLustFile
    Boolean breakBreakSwarms
    Boolean moMoThur
    Boolean alternativeAlternativeAlgorithm
    Boolean uUSearchAbundance
  }
  command <<<
    swarm \
      ~{if defined(differencesDifferences) then ("--differences " +  '"' + differencesDifferences + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(matchMatchReward) then ("--match-reward " +  '"' + matchMatchReward + '"') else ""} \
      ~{if defined(mismatchMismatchPenalty) then ("--mismatch-penalty " +  '"' + mismatchMismatchPenalty + '"') else ""} \
      ~{if defined(gapGapOpeningPenalty) then ("--gap-opening-penalty " +  '"' + gapGapOpeningPenalty + '"') else ""} \
      ~{if defined(gapGapExtensionPenalty) then ("--gap-extension-penalty " +  '"' + gapGapExtensionPenalty + '"') else ""} \
      ~{if defined(statisticsStatisticsFile) then ("--statistics-file " +  '"' + statisticsStatisticsFile + '"') else ""} \
      ~{if defined(ucUcLustFile) then ("--uclust-file " +  '"' + ucUcLustFile + '"') else ""} \
      ~{true="--break-swarms" false="" breakBreakSwarms} \
      ~{true="--mothur" false="" moMoThur} \
      ~{true="--alternative-algorithm" false="" alternativeAlternativeAlgorithm} \
      ~{true="--usearch_abundance" false="" uUSearchAbundance}
  >>>
}