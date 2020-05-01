version 1.0

task OpenSwathFeatureXMLToTSV {
  input {
    File inIn
    File trTr
    File outOut
    Boolean shortShortFormat
    String bestBestScoringPeptide
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    OpenSwathFeatureXMLToTSV \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(trTr) then ("-tr " +  '"' + trTr + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-short_format" false="" shortShortFormat} \
      ~{if defined(bestBestScoringPeptide) then ("-best_scoring_peptide " +  '"' + bestBestScoringPeptide + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}