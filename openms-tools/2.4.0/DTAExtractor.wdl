version 1.0

task DTAExtractor {
  input {
    File inIn
    File outOut
    Boolean mzMz
    Boolean rtRt
    Array[String]+ levelLevel
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    DTAExtractor \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-mz" false="" mzMz} \
      ~{true="-rt" false="" rtRt} \
      ~{if defined(levelLevel) then ("-level " +  '"' + levelLevel + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}