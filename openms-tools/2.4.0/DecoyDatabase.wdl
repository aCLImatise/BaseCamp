version 1.0

task DecoyDatabase {
  input {
    String enzymeEnzyme
    Boolean inIn
    File outOut
    String decoyDecoyString
    String decoyDecoyStringPosition
    Boolean onlyOnlyDecoy
    String methodMethod
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean decoyDecoy
  }
  command <<<
    DecoyDatabase \
      ~{if defined(enzymeEnzyme) then ("-enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{true="-in" false="" inIn} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(decoyDecoyString) then ("-decoy_string " +  '"' + decoyDecoyString + '"') else ""} \
      ~{if defined(decoyDecoyStringPosition) then ("-decoy_string_position " +  '"' + decoyDecoyStringPosition + '"') else ""} \
      ~{true="-only_decoy" false="" onlyOnlyDecoy} \
      ~{if defined(methodMethod) then ("-method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- Decoy" false="" decoyDecoy}
  >>>
}