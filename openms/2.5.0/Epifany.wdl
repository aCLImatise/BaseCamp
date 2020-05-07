version 1.0

task Epifany {
  input {
    File inIn
    File outOut
    String proteinProteinFdr
    String greedyGreedyGroupResolution
    Float maxMaxPsmsExtremeProbability
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean algorithmAlgorithm
    Boolean httpHttp
  }
  command <<<
    Epifany \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(proteinProteinFdr) then ("-protein_fdr " +  '"' + proteinProteinFdr + '"') else ""} \
      ~{if defined(greedyGreedyGroupResolution) then ("-greedy_group_resolution " +  '"' + greedyGreedyGroupResolution + '"') else ""} \
      ~{if defined(maxMaxPsmsExtremeProbability) then ("-max_psms_extreme_probability " +  '"' + maxMaxPsmsExtremeProbability + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- algorithm" false="" algorithmAlgorithm} \
      ~{true="- http" false="" httpHttp}
  >>>
}