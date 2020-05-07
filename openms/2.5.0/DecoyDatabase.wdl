version 1.0

task DecoyDatabase {
  input {
    Boolean inIn
    File outOut
    String decoyDecoyString
    String decoyDecoyStringPosition
    Boolean onlyOnlyDecoy
    String typeType
    String methodMethod
    String enzymeEnzyme
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean decoyDecoy
    Boolean httpHttp
  }
  command <<<
    DecoyDatabase \
      ~{true="-in" false="" inIn} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(decoyDecoyString) then ("-decoy_string " +  '"' + decoyDecoyString + '"') else ""} \
      ~{if defined(decoyDecoyStringPosition) then ("-decoy_string_position " +  '"' + decoyDecoyStringPosition + '"') else ""} \
      ~{true="-only_decoy" false="" onlyOnlyDecoy} \
      ~{if defined(typeType) then ("-type " +  '"' + typeType + '"') else ""} \
      ~{if defined(methodMethod) then ("-method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(enzymeEnzyme) then ("-enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- Decoy" false="" decoyDecoy} \
      ~{true="- http" false="" httpHttp}
  >>>
}