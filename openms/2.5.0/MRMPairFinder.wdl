version 1.0

task MRMPairFinder {
  input {
    File inIn
    File pairPairIn
    File outOut
    File featureFeatureOut
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    MRMPairFinder \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(pairPairIn) then ("-pair_in " +  '"' + pairPairIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(featureFeatureOut) then ("-feature_out " +  '"' + featureFeatureOut + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}