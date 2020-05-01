version 1.0

task AnalyzeHiC {
  input {
    Boolean resRes
    Boolean windowWindow
    String pP
    Boolean vsVsGenome
    Boolean chopChopIfY
    Boolean relativeRelative
    File poutPout
    Boolean ihsIhsKb
    Boolean rawRaw
    Boolean coverageCoverageNorm
    Boolean balanceBalance
    Boolean distDistNorm
    Boolean logLog
    Boolean corrCorr
    Boolean dlrDlrDistance
    String ifcIfc
    Boolean cpuCpu
    Boolean noNoMatrix
    Boolean stdStd
    Boolean minMin
    Boolean minMinExpect
    Boolean overrideOverride
    Boolean logpLogp
    Boolean expectedExpected
    File rawRawAndExpected
    Boolean clusterCluster
    Boolean clusterClusterFixed
    File interactionsInteractions
    Boolean pPValue
    Boolean zscoreZscore
    Boolean mindMindIst
    Boolean maxMaxDist
    Boolean boundaryBoundary
    Boolean washuWashu
    File circoCircoS
    String dD
    Boolean bB
    String gG
    Boolean histHist
    Boolean sizeSize
    Int iI
    String iIRaw
  }
  command <<<
    analyzeHiC \
      ~{true="-res" false="" resRes} \
      ~{true="-window" false="" windowWindow} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-vsGenome" false="" vsVsGenome} \
      ~{true="-chopify" false="" chopChopIfY} \
      ~{true="-relative" false="" relativeRelative} \
      ~{if defined(poutPout) then ("-pout " +  '"' + poutPout + '"') else ""} \
      ~{true="-ihskb" false="" ihsIhsKb} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-coverageNorm" false="" coverageCoverageNorm} \
      ~{true="-balance" false="" balanceBalance} \
      ~{true="-distNorm" false="" distDistNorm} \
      ~{true="-log" false="" logLog} \
      ~{true="-corr" false="" corrCorr} \
      ~{true="-dlrDistance" false="" dlrDlrDistance} \
      ~{if defined(ifcIfc) then ("-ifc " +  '"' + ifcIfc + '"') else ""} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-nomatrix" false="" noNoMatrix} \
      ~{true="-std" false="" stdStd} \
      ~{true="-min" false="" minMin} \
      ~{true="-minExpect" false="" minMinExpect} \
      ~{true="-override" false="" overrideOverride} \
      ~{true="-logp" false="" logpLogp} \
      ~{true="-expected" false="" expectedExpected} \
      ~{if defined(rawRawAndExpected) then ("-rawAndExpected " +  '"' + rawRawAndExpected + '"') else ""} \
      ~{true="-cluster" false="" clusterCluster} \
      ~{true="-clusterFixed" false="" clusterClusterFixed} \
      ~{if defined(interactionsInteractions) then ("-interactions " +  '"' + interactionsInteractions + '"') else ""} \
      ~{true="-pvalue" false="" pPValue} \
      ~{true="-zscore" false="" zscoreZscore} \
      ~{true="-minDist" false="" mindMindIst} \
      ~{true="-maxDist" false="" maxMaxDist} \
      ~{true="-boundary" false="" boundaryBoundary} \
      ~{true="-washu" false="" washuWashu} \
      ~{if defined(circoCircoS) then ("-circos " +  '"' + circoCircoS + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-hist" false="" histHist} \
      ~{true="-size" false="" sizeSize} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(iIRaw) then ("-iraw " +  '"' + iIRaw + '"') else ""}
  >>>
}