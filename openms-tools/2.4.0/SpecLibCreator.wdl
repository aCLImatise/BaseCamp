version 1.0

task SpecLibCreator {
  input {
    File infoInfo
    String itemItemSeperator
    Boolean itemItemEnclosed
    File specSpec
    File outOut
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    SpecLibCreator \
      ~{if defined(infoInfo) then ("-info " +  '"' + infoInfo + '"') else ""} \
      ~{if defined(itemItemSeperator) then ("-itemseperator " +  '"' + itemItemSeperator + '"') else ""} \
      ~{if defined(itemItemEnclosed) then ("-itemenclosed " +  '"' + itemItemEnclosed + '"') else ""} \
      ~{if defined(specSpec) then ("-spec " +  '"' + specSpec + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}