version 1.0

task RibotishPredict {
  input {
    String tT
    String bB
    String gG
    String fF
    String oO
    String iI
    String geneGeneFormat
    String tisTisPara
    String riboRiboPara
    String nNParts
    String aA
    String eE
    String sS
    String transTransProfile
    String inInProfile
    String chrChrMap
    String allAllResult
    Boolean altAlt
    String altAltCodons
    Boolean tis2riboTis2ribo
    Boolean harrHarr
    String harrHarrWidth
    Boolean enrichEnrichTest
    Int minMinAalen
    String geneGeneFilter
    String tpTpTh
    String fpFpTh
    Int minMinPth
    String fspFspTh
    String fsqFsqTh
    Boolean frameFrameLocalBest
    Boolean frameFrameBest
    Boolean longestLongest
    Boolean seqSeq
    Boolean aaAaSeq
    Boolean blocksBlocks
    Int maxMaxNh
    Int minMinMapq
    Boolean secondarySecondary
    Boolean pairedPaired
    Boolean noNoCompatible
    String compatibleCompatibleMis
    String pP
    Boolean verboseVerbose
  }
  command <<<
    ribotish predict \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(geneGeneFormat) then ("--geneformat " +  '"' + geneGeneFormat + '"') else ""} \
      ~{if defined(tisTisPara) then ("--tispara " +  '"' + tisTisPara + '"') else ""} \
      ~{if defined(riboRiboPara) then ("--ribopara " +  '"' + riboRiboPara + '"') else ""} \
      ~{if defined(nNParts) then ("--nparts " +  '"' + nNParts + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(transTransProfile) then ("--transprofile " +  '"' + transTransProfile + '"') else ""} \
      ~{if defined(inInProfile) then ("--inprofile " +  '"' + inInProfile + '"') else ""} \
      ~{if defined(chrChrMap) then ("--chrmap " +  '"' + chrChrMap + '"') else ""} \
      ~{if defined(allAllResult) then ("--allresult " +  '"' + allAllResult + '"') else ""} \
      ~{true="--alt" false="" altAlt} \
      ~{if defined(altAltCodons) then ("--altcodons " +  '"' + altAltCodons + '"') else ""} \
      ~{true="--tis2ribo" false="" tis2riboTis2ribo} \
      ~{true="--harr" false="" harrHarr} \
      ~{if defined(harrHarrWidth) then ("--harrwidth " +  '"' + harrHarrWidth + '"') else ""} \
      ~{true="--enrichtest" false="" enrichEnrichTest} \
      ~{if defined(minMinAalen) then ("--minaalen " +  '"' + minMinAalen + '"') else ""} \
      ~{if defined(geneGeneFilter) then ("--genefilter " +  '"' + geneGeneFilter + '"') else ""} \
      ~{if defined(tpTpTh) then ("--tpth " +  '"' + tpTpTh + '"') else ""} \
      ~{if defined(fpFpTh) then ("--fpth " +  '"' + fpFpTh + '"') else ""} \
      ~{if defined(minMinPth) then ("--minpth " +  '"' + minMinPth + '"') else ""} \
      ~{if defined(fspFspTh) then ("--fspth " +  '"' + fspFspTh + '"') else ""} \
      ~{if defined(fsqFsqTh) then ("--fsqth " +  '"' + fsqFsqTh + '"') else ""} \
      ~{true="--framelocalbest" false="" frameFrameLocalBest} \
      ~{true="--framebest" false="" frameFrameBest} \
      ~{true="--longest" false="" longestLongest} \
      ~{true="--seq" false="" seqSeq} \
      ~{true="--aaseq" false="" aaAaSeq} \
      ~{true="--blocks" false="" blocksBlocks} \
      ~{if defined(maxMaxNh) then ("--maxNH " +  '"' + maxMaxNh + '"') else ""} \
      ~{if defined(minMinMapq) then ("--minMapQ " +  '"' + minMinMapq + '"') else ""} \
      ~{true="--secondary" false="" secondarySecondary} \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--nocompatible" false="" noNoCompatible} \
      ~{if defined(compatibleCompatibleMis) then ("--compatiblemis " +  '"' + compatibleCompatibleMis + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}