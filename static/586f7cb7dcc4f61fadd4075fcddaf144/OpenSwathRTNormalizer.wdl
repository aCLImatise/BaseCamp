version 1.0

task OpenSwathRTNormalizer {
  input {
    File inIn
    File trTr
    File outOut
    File rtRtNorm
    String minMinRsq
    String minMinCoverage
    Boolean estimateEstimateBestPeptides
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean rtRtNormalization
    Boolean algorithmAlgorithm
    Boolean peptidePeptideEstimation
    Boolean httpHttp
  }
  command <<<
    OpenSwathRTNormalizer \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(trTr) then ("-tr " +  '"' + trTr + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(rtRtNorm) then ("-rt_norm " +  '"' + rtRtNorm + '"') else ""} \
      ~{if defined(minMinRsq) then ("-min_rsq " +  '"' + minMinRsq + '"') else ""} \
      ~{if defined(minMinCoverage) then ("-min_coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{true="-estimateBestPeptides" false="" estimateEstimateBestPeptides} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- RTNormalization" false="" rtRtNormalization} \
      ~{true="- algorithm" false="" algorithmAlgorithm} \
      ~{true="- peptideEstimation" false="" peptidePeptideEstimation} \
      ~{true="- http" false="" httpHttp}
  >>>
}