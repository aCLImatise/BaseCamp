version 1.0

task MultiplexResolver {
  input {
    File inIn
    File inInBlacklist
    File outOut
    File outOutConflicts
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean algorithmAlgorithm
    Boolean labelsLabels
    Boolean httpHttp
  }
  command <<<
    MultiplexResolver \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInBlacklist) then ("-in_blacklist " +  '"' + inInBlacklist + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutConflicts) then ("-out_conflicts " +  '"' + outOutConflicts + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- algorithm" false="" algorithmAlgorithm} \
      ~{true="- labels" false="" labelsLabels} \
      ~{true="- http" false="" httpHttp}
  >>>
}