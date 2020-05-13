version 1.0

task QCCalculator {
  input {
    File inIn
    File outOut
    File idId
    File featureFeature
    File consensusConsensus
    Boolean removeRemoveDuplicateFeatures
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    QCCalculator \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{if defined(featureFeature) then ("-feature " +  '"' + featureFeature + '"') else ""} \
      ~{if defined(consensusConsensus) then ("-consensus " +  '"' + consensusConsensus + '"') else ""} \
      ~{true="-remove_duplicate_features" false="" removeRemoveDuplicateFeatures} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}