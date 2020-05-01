version 1.0

task Appcov {
  input {
    String outdirOutdir
    Boolean vV
    String windowWindow
    String slideSlide
    Boolean oneOneMsa
    Boolean plotPlotWc
    Boolean helixHelix
    String appAppGap
    String appAppVar
    String aAPpvArt
    String appAppNowC
    String appAppGu
    String appAppNotS
    String minMinHelix
    String fF
    String iI
    String iI
    String tTStart
    String tendTend
    Boolean consensusConsensus
    String subSubMsa
    String nNSeqMin
    String gapGapThresh
    String miniMiniD
    String maxMaxId
    String inInFormat
    Boolean pP
    String outOutPair
    String outOutMsa
    String outOutMap
    String seedSeed
    String? apparentApparent
    String? coCoVariations
    String? msaMsaFile
  }
  command <<<
    appcov \
      ~{apparentApparent} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(slideSlide) then ("--slide " +  '"' + slideSlide + '"') else ""} \
      ~{true="--onemsa" false="" oneOneMsa} \
      ~{true="--plotwc" false="" plotPlotWc} \
      ~{true="--helix" false="" helixHelix} \
      ~{if defined(appAppGap) then ("--appgap " +  '"' + appAppGap + '"') else ""} \
      ~{if defined(appAppVar) then ("--appvar " +  '"' + appAppVar + '"') else ""} \
      ~{if defined(aAPpvArt) then ("--appvart " +  '"' + aAPpvArt + '"') else ""} \
      ~{if defined(appAppNowC) then ("--appnowc " +  '"' + appAppNowC + '"') else ""} \
      ~{if defined(appAppGu) then ("--appgu " +  '"' + appAppGu + '"') else ""} \
      ~{if defined(appAppNotS) then ("--appnots " +  '"' + appAppNotS + '"') else ""} \
      ~{if defined(minMinHelix) then ("--minhelix " +  '"' + minMinHelix + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(tTStart) then ("--tstart " +  '"' + tTStart + '"') else ""} \
      ~{if defined(tendTend) then ("--tend " +  '"' + tendTend + '"') else ""} \
      ~{true="--consensus" false="" consensusConsensus} \
      ~{if defined(subSubMsa) then ("--submsa " +  '"' + subSubMsa + '"') else ""} \
      ~{if defined(nNSeqMin) then ("--nseqmin " +  '"' + nNSeqMin + '"') else ""} \
      ~{if defined(gapGapThresh) then ("--gapthresh " +  '"' + gapGapThresh + '"') else ""} \
      ~{if defined(miniMiniD) then ("--minid " +  '"' + miniMiniD + '"') else ""} \
      ~{if defined(maxMaxId) then ("--maxid " +  '"' + maxMaxId + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{if defined(outOutPair) then ("--outpair " +  '"' + outOutPair + '"') else ""} \
      ~{if defined(outOutMsa) then ("--outmsa " +  '"' + outOutMsa + '"') else ""} \
      ~{if defined(outOutMap) then ("--outmap " +  '"' + outOutMap + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{coCoVariations} \
      ~{msaMsaFile}
  >>>
}