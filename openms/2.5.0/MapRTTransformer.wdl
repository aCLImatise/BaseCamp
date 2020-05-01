version 1.0

task MapRTTransformer {
  input {
    File inIn
    File outOut
    File trafTrafOIn
    File trafTrafOOut
    Boolean invertInvert
    Boolean storeStoreOriginalRt
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean modelModel
    Boolean httpHttp
  }
  command <<<
    MapRTTransformer \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(trafTrafOIn) then ("-trafo_in " +  '"' + trafTrafOIn + '"') else ""} \
      ~{if defined(trafTrafOOut) then ("-trafo_out " +  '"' + trafTrafOOut + '"') else ""} \
      ~{true="-invert" false="" invertInvert} \
      ~{true="-store_original_rt" false="" storeStoreOriginalRt} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- model" false="" modelModel} \
      ~{true="- http" false="" httpHttp}
  >>>
}