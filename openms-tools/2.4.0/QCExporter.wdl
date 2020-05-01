version 1.0

task QCExporter {
  input {
    File inIn
    String namesNames
    File mappingMapping
    File outOutCsv
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    QCExporter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(namesNames) then ("-names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(mappingMapping) then ("-mapping " +  '"' + mappingMapping + '"') else ""} \
      ~{if defined(outOutCsv) then ("-out_csv " +  '"' + outOutCsv + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}