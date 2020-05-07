version 1.0

task Decharger {
  input {
    File inIn
    File outOutCm
    File outOutFm
    File outOutPairs
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean algorithmAlgorithm
    Boolean httpHttp
  }
  command <<<
    Decharger \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOutCm) then ("-out_cm " +  '"' + outOutCm + '"') else ""} \
      ~{if defined(outOutFm) then ("-out_fm " +  '"' + outOutFm + '"') else ""} \
      ~{if defined(outOutPairs) then ("-outpairs " +  '"' + outOutPairs + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- algorithm" false="" algorithmAlgorithm} \
      ~{true="- http" false="" httpHttp}
  >>>
}