version 1.0

task IDPosteriorErrorProbability {
  input {
    File inIn
    File outOut
    File outOutPlot
    Boolean splitSplitCharge
    Boolean topTopHitsOnly
    Boolean ignoreIgnoreBadData
    Boolean probProbCorrect
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean fitFitAlgorithm
    Boolean httpHttp
  }
  command <<<
    IDPosteriorErrorProbability \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutPlot) then ("-out_plot " +  '"' + outOutPlot + '"') else ""} \
      ~{true="-split_charge" false="" splitSplitCharge} \
      ~{true="-top_hits_only" false="" topTopHitsOnly} \
      ~{true="-ignore_bad_data" false="" ignoreIgnoreBadData} \
      ~{true="-prob_correct" false="" probProbCorrect} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- fit_algorithm" false="" fitFitAlgorithm} \
      ~{true="- http" false="" httpHttp}
  >>>
}