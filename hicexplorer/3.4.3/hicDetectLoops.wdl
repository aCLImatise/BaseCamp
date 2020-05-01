version 1.0

task HicDetectLoops {
  input {
    String matrixMatrix
    String outOutFilename
    String peakPeakWidth
    String windowWindowSize
    String pPValuePreselection
    String peakPeakInteractionsThreshold
    Int maximumMaximumInteractionPercentageThreshold
    String pPValue
    Int maxMaxLoopDistance
    Int minMinLoopDistance
    Array[String]+ chromosomesChromosomes
    String regionRegion
    String threadsThreads
    String threadsThreadsPerChromosome
    String statisticalStatisticalTest
  }
  command <<<
    hicDetectLoops \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(peakPeakWidth) then ("--peakWidth " +  '"' + peakPeakWidth + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--windowSize " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(pPValuePreselection) then ("--pValuePreselection " +  '"' + pPValuePreselection + '"') else ""} \
      ~{if defined(peakPeakInteractionsThreshold) then ("--peakInteractionsThreshold " +  '"' + peakPeakInteractionsThreshold + '"') else ""} \
      ~{if defined(maximumMaximumInteractionPercentageThreshold) then ("--maximumInteractionPercentageThreshold " +  '"' + maximumMaximumInteractionPercentageThreshold + '"') else ""} \
      ~{if defined(pPValue) then ("--pValue " +  '"' + pPValue + '"') else ""} \
      ~{if defined(maxMaxLoopDistance) then ("--maxLoopDistance " +  '"' + maxMaxLoopDistance + '"') else ""} \
      ~{if defined(minMinLoopDistance) then ("--minLoopDistance " +  '"' + minMinLoopDistance + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(threadsThreadsPerChromosome) then ("--threadsPerChromosome " +  '"' + threadsThreadsPerChromosome + '"') else ""} \
      ~{if defined(statisticalStatisticalTest) then ("--statisticalTest " +  '"' + statisticalStatisticalTest + '"') else ""}
  >>>
}