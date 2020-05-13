version 1.0

task MimeoFilter {
  input {
    String inInFile
    String outdirOutdir
    String outfileOutfile
    Boolean keepKeepTemp
    Boolean verboseVerbose
    String trfTrfPath
    String tTMatch
    String tTMismatch
    String tTDelta
    String tpmTpm
    String tpiTpi
    String tmTmInScore
    String tmaxTmaxPeriod
    Int maxMaxTandem
  }
  command <<<
    mimeo-filter \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{true="--keeptemp" false="" keepKeepTemp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(trfTrfPath) then ("--TRFpath " +  '"' + trfTrfPath + '"') else ""} \
      ~{if defined(tTMatch) then ("--tmatch " +  '"' + tTMatch + '"') else ""} \
      ~{if defined(tTMismatch) then ("--tmismatch " +  '"' + tTMismatch + '"') else ""} \
      ~{if defined(tTDelta) then ("--tdelta " +  '"' + tTDelta + '"') else ""} \
      ~{if defined(tpmTpm) then ("--tPM " +  '"' + tpmTpm + '"') else ""} \
      ~{if defined(tpiTpi) then ("--tPI " +  '"' + tpiTpi + '"') else ""} \
      ~{if defined(tmTmInScore) then ("--tminscore " +  '"' + tmTmInScore + '"') else ""} \
      ~{if defined(tmaxTmaxPeriod) then ("--tmaxperiod " +  '"' + tmaxTmaxPeriod + '"') else ""} \
      ~{if defined(maxMaxTandem) then ("--maxtandem " +  '"' + maxMaxTandem + '"') else ""}
  >>>
}