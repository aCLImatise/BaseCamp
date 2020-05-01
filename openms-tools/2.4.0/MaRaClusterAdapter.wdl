version 1.0

task MaRaClusterAdapter {
  input {
    File inIn
    File idIdIn
    File outOut
    File consensusConsensusOut
    String pPCut
    String minMinClusterSize
    String marMarAClusterExecutable
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    MaRaClusterAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(idIdIn) then ("-id_in " +  '"' + idIdIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(consensusConsensusOut) then ("-consensus_out " +  '"' + consensusConsensusOut + '"') else ""} \
      ~{if defined(pPCut) then ("-pcut " +  '"' + pPCut + '"') else ""} \
      ~{if defined(minMinClusterSize) then ("-min_cluster_size " +  '"' + minMinClusterSize + '"') else ""} \
      ~{if defined(marMarAClusterExecutable) then ("-maracluster_executable " +  '"' + marMarAClusterExecutable + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}