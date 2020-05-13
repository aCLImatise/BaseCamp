version 1.0

task MimeoMap {
  input {
    String aADir
    String bBDir
    String aAFastA
    String bBFastA
    Boolean recycleRecycle
    String outdirOutdir
    String gffGffOut
    String outfileOutfile
    Boolean verboseVerbose
    String labelLabel
    String prefixPrefix
    Boolean keepKeepTemp
    String lzLzPath
    Int miniMiniDt
    Int minMinLen
    String hspHspThresh
    String trfTrfPath
    String tTMatch
    String tTMismatch
    String tTDelta
    String tpmTpm
    String tpiTpi
    String tmTmInScore
    String tmaxTmaxPeriod
    Int maxMaxTandem
    Boolean writeWriteTrf
  }
  command <<<
    mimeo-map \
      ~{if defined(aADir) then ("--adir " +  '"' + aADir + '"') else ""} \
      ~{if defined(bBDir) then ("--bdir " +  '"' + bBDir + '"') else ""} \
      ~{if defined(aAFastA) then ("--afasta " +  '"' + aAFastA + '"') else ""} \
      ~{if defined(bBFastA) then ("--bfasta " +  '"' + bBFastA + '"') else ""} \
      ~{true="--recycle" false="" recycleRecycle} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(gffGffOut) then ("--gffout " +  '"' + gffGffOut + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--keeptemp" false="" keepKeepTemp} \
      ~{if defined(lzLzPath) then ("--lzpath " +  '"' + lzLzPath + '"') else ""} \
      ~{if defined(miniMiniDt) then ("--minIdt " +  '"' + miniMiniDt + '"') else ""} \
      ~{if defined(minMinLen) then ("--minLen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(hspHspThresh) then ("--hspthresh " +  '"' + hspHspThresh + '"') else ""} \
      ~{if defined(trfTrfPath) then ("--TRFpath " +  '"' + trfTrfPath + '"') else ""} \
      ~{if defined(tTMatch) then ("--tmatch " +  '"' + tTMatch + '"') else ""} \
      ~{if defined(tTMismatch) then ("--tmismatch " +  '"' + tTMismatch + '"') else ""} \
      ~{if defined(tTDelta) then ("--tdelta " +  '"' + tTDelta + '"') else ""} \
      ~{if defined(tpmTpm) then ("--tPM " +  '"' + tpmTpm + '"') else ""} \
      ~{if defined(tpiTpi) then ("--tPI " +  '"' + tpiTpi + '"') else ""} \
      ~{if defined(tmTmInScore) then ("--tminscore " +  '"' + tmTmInScore + '"') else ""} \
      ~{if defined(tmaxTmaxPeriod) then ("--tmaxperiod " +  '"' + tmaxTmaxPeriod + '"') else ""} \
      ~{if defined(maxMaxTandem) then ("--maxtandem " +  '"' + maxMaxTandem + '"') else ""} \
      ~{true="--writeTRF" false="" writeWriteTrf}
  >>>
}