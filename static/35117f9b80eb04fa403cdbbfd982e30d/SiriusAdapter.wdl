version 1.0

task SiriusAdapter {
  input {
    String executableExecutable
    File inIn
    File inInFeatureInfo
    File outOutSirius
    File outOutFingerId
    File outOutMs
    Directory outOutWorkspaceDirectory
    Boolean preprocessingPreprocessing
    Boolean preprocessingPreprocessing
    Boolean preprocessingPreprocessing
    Boolean preprocessingPreprocessing
    Boolean preprocessingPreprocessing
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    SiriusAdapter \
      ~{if defined(executableExecutable) then ("-executable " +  '"' + executableExecutable + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInFeatureInfo) then ("-in_featureinfo " +  '"' + inInFeatureInfo + '"') else ""} \
      ~{if defined(outOutSirius) then ("-out_sirius " +  '"' + outOutSirius + '"') else ""} \
      ~{if defined(outOutFingerId) then ("-out_fingerid " +  '"' + outOutFingerId + '"') else ""} \
      ~{if defined(outOutMs) then ("-out_ms " +  '"' + outOutMs + '"') else ""} \
      ~{if defined(outOutWorkspaceDirectory) then ("-out_workspace_directory " +  '"' + outOutWorkspaceDirectory + '"') else ""} \
      ~{true="-preprocessing" false="" preprocessingPreprocessing} \
      ~{true="-preprocessing" false="" preprocessingPreprocessing} \
      ~{true="-preprocessing" false="" preprocessingPreprocessing} \
      ~{true="-preprocessing" false="" preprocessingPreprocessing} \
      ~{true="-preprocessing" false="" preprocessingPreprocessing} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}