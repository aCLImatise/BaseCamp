version 1.0

task HicFindTADs {
  input {
    String matrixMatrix
    String outOutPrefix
    String correctCorrectForMultipleTesting
    Int minMinDepth
    Int maxdepthMaxdepth
    Int stepStep
    String tadTadSepScorePrefix
    String thresholdThresholdComparisons
    String deltaDelta
    Int minMinBoundaryDistance
    Array[String]+ chromosomesChromosomes
    String numberNumberOfProcessors
  }
  command <<<
    hicFindTADs \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--outPrefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(correctCorrectForMultipleTesting) then ("--correctForMultipleTesting " +  '"' + correctCorrectForMultipleTesting + '"') else ""} \
      ~{if defined(minMinDepth) then ("--minDepth " +  '"' + minMinDepth + '"') else ""} \
      ~{if defined(maxdepthMaxdepth) then ("--maxDepth " +  '"' + maxdepthMaxdepth + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(tadTadSepScorePrefix) then ("--TAD_sep_score_prefix " +  '"' + tadTadSepScorePrefix + '"') else ""} \
      ~{if defined(thresholdThresholdComparisons) then ("--thresholdComparisons " +  '"' + thresholdThresholdComparisons + '"') else ""} \
      ~{if defined(deltaDelta) then ("--delta " +  '"' + deltaDelta + '"') else ""} \
      ~{if defined(minMinBoundaryDistance) then ("--minBoundaryDistance " +  '"' + minMinBoundaryDistance + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""}
  >>>
}