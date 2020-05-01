version 1.0

task SimpleSearchEngine {
  input {
    File inIn
    File databaseDatabase
    File outOut
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    SimpleSearchEngine \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{true="-Search" false="" searchSearch} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}