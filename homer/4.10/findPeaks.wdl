version 1.0

task FindPeaks {
  input {
    String iI
    Boolean sizeSize
    Boolean mindMindIst
    Boolean gGSize
    Boolean fragFragLength
    Boolean inputInputFragLength
    Boolean tbpTbp
    Boolean inputInputTbp
    Boolean strandStrand
    Boolean normNorm
    Boolean regionRegion
    Boolean centerCenter
    Boolean nfrNfr
    Boolean fF
    Boolean pP
    Boolean lL
    Boolean lpLp
    Boolean cC
    Boolean localLocalSize
    Boolean inputInputSize
    Boolean fdrFdr
    Boolean poissonPoisson
    Boolean tagTagThreshold
    Boolean nNTagThreshold
    Boolean minMinTagThreshold
    Boolean superSuperSlope
    Boolean superSuperWindow
    File typicalTypical
    File inputInputPeaks
    File excludeExcludePeaks
    Boolean unUnMethylC
    Boolean mcMcThresh
    Boolean minnMinnUmc
  }
  command <<<
    findPeaks \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-size" false="" sizeSize} \
      ~{true="-minDist" false="" mindMindIst} \
      ~{true="-gsize" false="" gGSize} \
      ~{true="-fragLength" false="" fragFragLength} \
      ~{true="-inputFragLength" false="" inputInputFragLength} \
      ~{true="-tbp" false="" tbpTbp} \
      ~{true="-inputtbp" false="" inputInputTbp} \
      ~{true="-strand" false="" strandStrand} \
      ~{true="-norm" false="" normNorm} \
      ~{true="-region" false="" regionRegion} \
      ~{true="-center" false="" centerCenter} \
      ~{true="-nfr" false="" nfrNfr} \
      ~{true="-F" false="" fF} \
      ~{true="-P" false="" pP} \
      ~{true="-L" false="" lL} \
      ~{true="-LP" false="" lpLp} \
      ~{true="-C" false="" cC} \
      ~{true="-localSize" false="" localLocalSize} \
      ~{true="-inputSize" false="" inputInputSize} \
      ~{true="-fdr" false="" fdrFdr} \
      ~{true="-poisson" false="" poissonPoisson} \
      ~{true="-tagThreshold" false="" tagTagThreshold} \
      ~{true="-ntagThreshold" false="" nNTagThreshold} \
      ~{true="-minTagThreshold" false="" minMinTagThreshold} \
      ~{true="-superSlope" false="" superSuperSlope} \
      ~{true="-superWindow" false="" superSuperWindow} \
      ~{if defined(typicalTypical) then ("-typical " +  '"' + typicalTypical + '"') else ""} \
      ~{if defined(inputInputPeaks) then ("-inputPeaks " +  '"' + inputInputPeaks + '"') else ""} \
      ~{if defined(excludeExcludePeaks) then ("-excludePeaks " +  '"' + excludeExcludePeaks + '"') else ""} \
      ~{true="-unmethylC" false="" unUnMethylC} \
      ~{true="-mCthresh" false="" mcMcThresh} \
      ~{true="-minNumC" false="" minnMinnUmc}
  >>>
}