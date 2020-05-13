version 1.0

task FindcsRNATSS.pl {
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
    String gtfGtf
    Boolean gidGid
    String annAnn
    String ctssCtss
    Boolean matrixMatrixMindIst
    Boolean matrixMatrixMaxDist
    File mMBed
    File mMLogic
    String dD
    String goGo
    String genomeGenomeOntology
    Boolean gGSize
    Boolean gGHist
    Boolean rmRm
    Boolean multiMulti
    String cmpCmpGenome
    String cmpCmpLiftOver
    Boolean fpFpKm
    Boolean rawRaw
    Boolean normNorm
    Boolean normNormLength
    Boolean logLog
    Boolean sqrtSqrt
    Boolean ratioRatio
    Boolean rRLog
    Boolean vstVst
    Boolean lenLen
    Boolean sizeSize
    Boolean strandStrand
    Boolean pcPc
    Boolean cpgCpg
    Boolean nfrNfr
    Boolean norevNorevOpp
    String gGWasCatalog
    Boolean pPDist
    String mapMap
    Boolean noNoGene
    Boolean homeHomeR1
    Boolean cpuCpu
    Boolean noNoBlanks
    String gtfGtf
    Boolean gidGid
    String annAnn
    String ctssCtss
    Boolean matrixMatrixMindIst
    Boolean matrixMatrixMaxDist
    File mMBed
    File mMLogic
    String dD
    String goGo
    String genomeGenomeOntology
    Boolean gGSize
    Boolean gGHist
    Boolean rmRm
    Boolean multiMulti
    String cmpCmpGenome
    String cmpCmpLiftOver
    Boolean fpFpKm
    Boolean rawRaw
    Boolean normNorm
    Boolean normNormLength
    Boolean logLog
    Boolean sqrtSqrt
    Boolean ratioRatio
    Boolean rRLog
    Boolean vstVst
    Boolean lenLen
    Boolean sizeSize
    Boolean strandStrand
    Boolean pcPc
    Boolean cpgCpg
    Boolean nfrNfr
    Boolean norevNorevOpp
    String gGWasCatalog
    Boolean pPDist
    String mapMap
    Boolean noNoGene
    Boolean homeHomeR1
    Boolean cpuCpu
    Boolean noNoBlanks
  }
  command <<<
    findcsRNATSS.pl \
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
      ~{true="-minNumC" false="" minnMinnUmc} \
      ~{if defined(gtfGtf) then ("-gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{true="-gid" false="" gidGid} \
      ~{if defined(annAnn) then ("-ann " +  '"' + annAnn + '"') else ""} \
      ~{if defined(ctssCtss) then ("-cTSS " +  '"' + ctssCtss + '"') else ""} \
      ~{true="-matrixMinDist" false="" matrixMatrixMindIst} \
      ~{true="-matrixMaxDist" false="" matrixMatrixMaxDist} \
      ~{if defined(mMBed) then ("-mbed " +  '"' + mMBed + '"') else ""} \
      ~{if defined(mMLogic) then ("-mlogic " +  '"' + mMLogic + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(goGo) then ("-go " +  '"' + goGo + '"') else ""} \
      ~{if defined(genomeGenomeOntology) then ("-genomeOntology " +  '"' + genomeGenomeOntology + '"') else ""} \
      ~{true="-gsize" false="" gGSize} \
      ~{true="-ghist" false="" gGHist} \
      ~{true="-rm" false="" rmRm} \
      ~{true="-multi" false="" multiMulti} \
      ~{if defined(cmpCmpGenome) then ("-cmpGenome " +  '"' + cmpCmpGenome + '"') else ""} \
      ~{if defined(cmpCmpLiftOver) then ("-cmpLiftover " +  '"' + cmpCmpLiftOver + '"') else ""} \
      ~{true="-fpkm" false="" fpFpKm} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-norm" false="" normNorm} \
      ~{true="-normLength" false="" normNormLength} \
      ~{true="-log" false="" logLog} \
      ~{true="-sqrt" false="" sqrtSqrt} \
      ~{true="-ratio" false="" ratioRatio} \
      ~{true="-rlog" false="" rRLog} \
      ~{true="-vst" false="" vstVst} \
      ~{true="-len" false="" lenLen} \
      ~{true="-size" false="" sizeSize} \
      ~{true="-strand" false="" strandStrand} \
      ~{true="-pc" false="" pcPc} \
      ~{true="-CpG" false="" cpgCpg} \
      ~{true="-nfr" false="" nfrNfr} \
      ~{true="-norevopp" false="" norevNorevOpp} \
      ~{if defined(gGWasCatalog) then ("-gwasCatalog " +  '"' + gGWasCatalog + '"') else ""} \
      ~{true="-pdist" false="" pPDist} \
      ~{if defined(mapMap) then ("-map " +  '"' + mapMap + '"') else ""} \
      ~{true="-nogene" false="" noNoGene} \
      ~{true="-homer1" false="" homeHomeR1} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-noblanks" false="" noNoBlanks} \
      ~{if defined(gtfGtf) then ("-gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{true="-gid" false="" gidGid} \
      ~{if defined(annAnn) then ("-ann " +  '"' + annAnn + '"') else ""} \
      ~{if defined(ctssCtss) then ("-cTSS " +  '"' + ctssCtss + '"') else ""} \
      ~{true="-matrixMinDist" false="" matrixMatrixMindIst} \
      ~{true="-matrixMaxDist" false="" matrixMatrixMaxDist} \
      ~{if defined(mMBed) then ("-mbed " +  '"' + mMBed + '"') else ""} \
      ~{if defined(mMLogic) then ("-mlogic " +  '"' + mMLogic + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(goGo) then ("-go " +  '"' + goGo + '"') else ""} \
      ~{if defined(genomeGenomeOntology) then ("-genomeOntology " +  '"' + genomeGenomeOntology + '"') else ""} \
      ~{true="-gsize" false="" gGSize} \
      ~{true="-ghist" false="" gGHist} \
      ~{true="-rm" false="" rmRm} \
      ~{true="-multi" false="" multiMulti} \
      ~{if defined(cmpCmpGenome) then ("-cmpGenome " +  '"' + cmpCmpGenome + '"') else ""} \
      ~{if defined(cmpCmpLiftOver) then ("-cmpLiftover " +  '"' + cmpCmpLiftOver + '"') else ""} \
      ~{true="-fpkm" false="" fpFpKm} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-norm" false="" normNorm} \
      ~{true="-normLength" false="" normNormLength} \
      ~{true="-log" false="" logLog} \
      ~{true="-sqrt" false="" sqrtSqrt} \
      ~{true="-ratio" false="" ratioRatio} \
      ~{true="-rlog" false="" rRLog} \
      ~{true="-vst" false="" vstVst} \
      ~{true="-len" false="" lenLen} \
      ~{true="-size" false="" sizeSize} \
      ~{true="-strand" false="" strandStrand} \
      ~{true="-pc" false="" pcPc} \
      ~{true="-CpG" false="" cpgCpg} \
      ~{true="-nfr" false="" nfrNfr} \
      ~{true="-norevopp" false="" norevNorevOpp} \
      ~{if defined(gGWasCatalog) then ("-gwasCatalog " +  '"' + gGWasCatalog + '"') else ""} \
      ~{true="-pdist" false="" pPDist} \
      ~{if defined(mapMap) then ("-map " +  '"' + mapMap + '"') else ""} \
      ~{true="-nogene" false="" noNoGene} \
      ~{true="-homer1" false="" homeHomeR1} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-noblanks" false="" noNoBlanks}
  >>>
}