version 1.0

task FalseDiscoveryRate {
  input {
    File inIn
    File outOut
    String psmPsm
    String proteinProtein
    Boolean fdrFdr
    Boolean fdrFdr
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean algorithmAlgorithm
  }
  command <<<
    FalseDiscoveryRate \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(psmPsm) then ("-PSM " +  '"' + psmPsm + '"') else ""} \
      ~{if defined(proteinProtein) then ("-protein " +  '"' + proteinProtein + '"') else ""} \
      ~{true="-FDR" false="" fdrFdr} \
      ~{true="-FDR" false="" fdrFdr} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- algorithm" false="" algorithmAlgorithm}
  >>>
}