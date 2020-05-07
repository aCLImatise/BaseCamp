version 1.0

task ConsensusMapNormalizer {
  input {
    File inIn
    File outOut
    String algorithmAlgorithmType
    String ratioRatioThreshold
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    ConsensusMapNormalizer \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(algorithmAlgorithmType) then ("-algorithm_type " +  '"' + algorithmAlgorithmType + '"') else ""} \
      ~{if defined(ratioRatioThreshold) then ("-ratio_threshold " +  '"' + ratioRatioThreshold + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}