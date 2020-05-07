version 1.0

task BcftoolsCnv {
  input {
    Float plotPlotThreshold
    String regionsRegions
    File regionsRegionsFile
    String queryQuerySample
    String targetsTargets
    File targetsTargetsFile
    Boolean aberrantAberrant
    Float bafBafWeight
    Boolean bafBafDev
    Float errErrProb
    Boolean lrrLrrDev
    Float lrrLrrWeight
    Int lrrLrrSmoothWin
    Float optimizeOptimize
    Float sameSameProb
    Float xyXyProb
    String? optionsOptions
    File? fileFileVcf
  }
  command <<<
    bcftools cnv \
      ~{optionsOptions} \
      ~{if defined(plotPlotThreshold) then ("--plot-threshold " +  '"' + plotPlotThreshold + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(queryQuerySample) then ("--query-sample " +  '"' + queryQuerySample + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{true="--aberrant" false="" aberrantAberrant} \
      ~{if defined(bafBafWeight) then ("--BAF-weight " +  '"' + bafBafWeight + '"') else ""} \
      ~{true="--BAF-dev" false="" bafBafDev} \
      ~{if defined(errErrProb) then ("--err-prob " +  '"' + errErrProb + '"') else ""} \
      ~{true="--LRR-dev" false="" lrrLrrDev} \
      ~{if defined(lrrLrrWeight) then ("--LRR-weight " +  '"' + lrrLrrWeight + '"') else ""} \
      ~{if defined(lrrLrrSmoothWin) then ("--LRR-smooth-win " +  '"' + lrrLrrSmoothWin + '"') else ""} \
      ~{if defined(optimizeOptimize) then ("--optimize " +  '"' + optimizeOptimize + '"') else ""} \
      ~{if defined(sameSameProb) then ("--same-prob " +  '"' + sameSameProb + '"') else ""} \
      ~{if defined(xyXyProb) then ("--xy-prob " +  '"' + xyXyProb + '"') else ""} \
      ~{fileFileVcf}
  >>>
}