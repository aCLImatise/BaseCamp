version 1.0

task PlanemoCondaInstall {
  input {
    Boolean recursiveRecursive
    Directory condCondAPrefix
    File condCondAExec
    Boolean condCondADebug
    String condCondAEnsureChannels
    Boolean condCondAUseLocal
    Boolean globalGlobal
    Boolean condCondAAutoInIt
  }
  command <<<
    planemo conda_install \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{if defined(condCondAPrefix) then ("--conda_prefix " +  '"' + condCondAPrefix + '"') else ""} \
      ~{if defined(condCondAExec) then ("--conda_exec " +  '"' + condCondAExec + '"') else ""} \
      ~{true="--conda_debug" false="" condCondADebug} \
      ~{if defined(condCondAEnsureChannels) then ("--conda_ensure_channels " +  '"' + condCondAEnsureChannels + '"') else ""} \
      ~{true="--conda_use_local" false="" condCondAUseLocal} \
      ~{true="--global" false="" globalGlobal} \
      ~{true="--conda_auto_init" false="" condCondAAutoInIt}
  >>>
}