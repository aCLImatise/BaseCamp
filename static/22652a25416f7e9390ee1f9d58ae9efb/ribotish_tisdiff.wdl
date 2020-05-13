version 1.0

task RibotishTisdiff {
  input {
    String aA
    String bB
    String gG
    String oO
    String tis1paraTis1para
    String tis2paraTis2para
    String geneGeneFormat
    Int maxMaxNh
    Int minMinMapq
    Boolean secondarySecondary
    Boolean pairedPaired
    String l1L1
    String l2L2
    Boolean noNoCompatible
    String compatibleCompatibleMis
    String chrChrMap
    Boolean normNormComm
    Boolean normanNormanNo
    String rnaseRnaseQ
    String scaleScaleFactor
    String rnaRnaScale
    Boolean chi2Chi2
    Boolean betaBetaBinOm
    String exportExport
    String plotPlotOut
    String figFigSize
    String plotPlotMa
    String qiQi
    String fF
    String ipIpTh
    String iIQth
    String optOptH
    String oOQth
    String pP
    Boolean verboseVerbose
  }
  command <<<
    ribotish tisdiff \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tis1paraTis1para) then ("--tis1para " +  '"' + tis1paraTis1para + '"') else ""} \
      ~{if defined(tis2paraTis2para) then ("--tis2para " +  '"' + tis2paraTis2para + '"') else ""} \
      ~{if defined(geneGeneFormat) then ("--geneformat " +  '"' + geneGeneFormat + '"') else ""} \
      ~{if defined(maxMaxNh) then ("--maxNH " +  '"' + maxMaxNh + '"') else ""} \
      ~{if defined(minMinMapq) then ("--minMapQ " +  '"' + minMinMapq + '"') else ""} \
      ~{true="--secondary" false="" secondarySecondary} \
      ~{true="--paired" false="" pairedPaired} \
      ~{if defined(l1L1) then ("--l1 " +  '"' + l1L1 + '"') else ""} \
      ~{if defined(l2L2) then ("--l2 " +  '"' + l2L2 + '"') else ""} \
      ~{true="--nocompatible" false="" noNoCompatible} \
      ~{if defined(compatibleCompatibleMis) then ("--compatiblemis " +  '"' + compatibleCompatibleMis + '"') else ""} \
      ~{if defined(chrChrMap) then ("--chrmap " +  '"' + chrChrMap + '"') else ""} \
      ~{true="--normcomm" false="" normNormComm} \
      ~{true="--normanno" false="" normanNormanNo} \
      ~{if defined(rnaseRnaseQ) then ("--rnaseq " +  '"' + rnaseRnaseQ + '"') else ""} \
      ~{if defined(scaleScaleFactor) then ("--scalefactor " +  '"' + scaleScaleFactor + '"') else ""} \
      ~{if defined(rnaRnaScale) then ("--rnascale " +  '"' + rnaRnaScale + '"') else ""} \
      ~{true="--chi2" false="" chi2Chi2} \
      ~{true="--betabinom" false="" betaBetaBinOm} \
      ~{if defined(exportExport) then ("--export " +  '"' + exportExport + '"') else ""} \
      ~{if defined(plotPlotOut) then ("--plotout " +  '"' + plotPlotOut + '"') else ""} \
      ~{if defined(figFigSize) then ("--figsize " +  '"' + figFigSize + '"') else ""} \
      ~{if defined(plotPlotMa) then ("--plotma " +  '"' + plotPlotMa + '"') else ""} \
      ~{if defined(qiQi) then ("--qi " +  '"' + qiQi + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(ipIpTh) then ("--ipth " +  '"' + ipIpTh + '"') else ""} \
      ~{if defined(iIQth) then ("--iqth " +  '"' + iIQth + '"') else ""} \
      ~{if defined(optOptH) then ("--opth " +  '"' + optOptH + '"') else ""} \
      ~{if defined(oOQth) then ("--oqth " +  '"' + oOQth + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}