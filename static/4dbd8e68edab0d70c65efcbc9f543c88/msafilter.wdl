version 1.0

task Msafilter {
  input {
    String outdirOutdir
    Boolean vV
    String windowWindow
    String slideSlide
    Boolean oneOneMsa
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
    String outOutMsa
    String outOutMap
    String seedSeed
    String? msaMsaFile
  }
  command <<<
    msafilter \
      ~{msaMsaFile} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(slideSlide) then ("--slide " +  '"' + slideSlide + '"') else ""} \
      ~{true="--onemsa" false="" oneOneMsa} \
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
      ~{if defined(outOutMsa) then ("--outmsa " +  '"' + outOutMsa + '"') else ""} \
      ~{if defined(outOutMap) then ("--outmap " +  '"' + outOutMap + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}