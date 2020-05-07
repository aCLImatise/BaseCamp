version 1.0

task FidoAdapter {
  input {
    File inIn
    File outOut
    File fidoFidoExecutable
    File fidoFidoCpExecutable
    Boolean separateSeparateRuns
    Boolean greedyGreedyGroupResolution
    Boolean noNoCleanup
    Boolean allAllPsms
    Boolean groupGroupLevel
    String log2Log2States
    Boolean probProb
    Boolean probProb
    Boolean probProb
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    FidoAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(fidoFidoExecutable) then ("-fido_executable " +  '"' + fidoFidoExecutable + '"') else ""} \
      ~{if defined(fidoFidoCpExecutable) then ("-fidocp_executable " +  '"' + fidoFidoCpExecutable + '"') else ""} \
      ~{true="-separate_runs" false="" separateSeparateRuns} \
      ~{true="-greedy_group_resolution" false="" greedyGreedyGroupResolution} \
      ~{true="-no_cleanup" false="" noNoCleanup} \
      ~{true="-all_PSMs" false="" allAllPsms} \
      ~{true="-group_level" false="" groupGroupLevel} \
      ~{if defined(log2Log2States) then ("-log2_states " +  '"' + log2Log2States + '"') else ""} \
      ~{true="-prob" false="" probProb} \
      ~{true="-prob" false="" probProb} \
      ~{true="-prob" false="" probProb} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}