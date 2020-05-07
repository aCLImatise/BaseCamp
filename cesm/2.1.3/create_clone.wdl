version 1.0

task CreateClone {
  input {
    Boolean debugDebug
    Boolean verboseVerbose
    Boolean silentSilent
    String caseCase
    String cloneClone
    String ensembleEnsemble
    String userUserModsDir
    Boolean keepKeepExe
    String machMachDir
    String projectProject
    String cimeCimeOutputRoot
  }
  command <<<
    create_clone \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--silent" false="" silentSilent} \
      ~{if defined(caseCase) then ("--case " +  '"' + caseCase + '"') else ""} \
      ~{if defined(cloneClone) then ("--clone " +  '"' + cloneClone + '"') else ""} \
      ~{if defined(ensembleEnsemble) then ("--ensemble " +  '"' + ensembleEnsemble + '"') else ""} \
      ~{if defined(userUserModsDir) then ("--user-mods-dir " +  '"' + userUserModsDir + '"') else ""} \
      ~{true="--keepexe" false="" keepKeepExe} \
      ~{if defined(machMachDir) then ("--mach-dir " +  '"' + machMachDir + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(cimeCimeOutputRoot) then ("--cime-output-root " +  '"' + cimeCimeOutputRoot + '"') else ""}
  >>>
}