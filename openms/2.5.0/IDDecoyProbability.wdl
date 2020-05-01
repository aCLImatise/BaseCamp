version 1.0

task IDDecoyProbability {
  input {
    File inIn
    File fwdFwdIn
    File revRevIn
    File outOut
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean decoyDecoyAlgorithm
    Boolean httpHttp
  }
  command <<<
    IDDecoyProbability \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(fwdFwdIn) then ("-fwd_in " +  '"' + fwdFwdIn + '"') else ""} \
      ~{if defined(revRevIn) then ("-rev_in " +  '"' + revRevIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- decoy_algorithm" false="" decoyDecoyAlgorithm} \
      ~{true="- http" false="" httpHttp}
  >>>
}