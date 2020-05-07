version 1.0

task OpenSwathRewriteToFeatureXML {
  input {
    File csvCsv
    File featureFeatureXml
    File outOut
    String fdrFdrCutOff
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    OpenSwathRewriteToFeatureXML \
      ~{if defined(csvCsv) then ("-csv " +  '"' + csvCsv + '"') else ""} \
      ~{if defined(featureFeatureXml) then ("-featureXML " +  '"' + featureFeatureXml + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(fdrFdrCutOff) then ("-FDR_cutoff " +  '"' + fdrFdrCutOff + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}