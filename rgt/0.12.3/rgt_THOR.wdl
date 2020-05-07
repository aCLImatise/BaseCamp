version 1.0

task RgtTHOR {
  input {
    String regionsRegions
    String binsizeBinsize
    String stepStep
    Boolean debugDebug
    Boolean noNoGcContent
    String normNormRegions
    String foldFoldChange
    String thresholdThreshold
    Int sizeSize
    String parPar
    Boolean poissonPoisson
    Boolean singleSingleStrand
    String mMThreshold
    String aAThreshold
    Boolean rmdRmdUp
  }
  command <<<
    rgt-THOR \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(binsizeBinsize) then ("--binsize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--no-gc-content" false="" noNoGcContent} \
      ~{if defined(normNormRegions) then ("--norm-regions " +  '"' + normNormRegions + '"') else ""} \
      ~{if defined(foldFoldChange) then ("--foldchange " +  '"' + foldFoldChange + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(parPar) then ("--par " +  '"' + parPar + '"') else ""} \
      ~{true="--poisson" false="" poissonPoisson} \
      ~{true="--single-strand" false="" singleSingleStrand} \
      ~{if defined(mMThreshold) then ("--m_threshold " +  '"' + mMThreshold + '"') else ""} \
      ~{if defined(aAThreshold) then ("--a_threshold " +  '"' + aAThreshold + '"') else ""} \
      ~{true="--rmdup" false="" rmdRmdUp}
  >>>
}