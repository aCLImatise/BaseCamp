version 1.0

task PlanemoCondaEnv {
  input {
    Directory condCondAPrefix
    File condCondAExec
    Boolean condCondADebug
    String condCondAEnsureChannels
    Boolean condCondAUseLocal
  }
  command <<<
    planemo conda_env \
      ~{if defined(condCondAPrefix) then ("--conda_prefix " +  '"' + condCondAPrefix + '"') else ""} \
      ~{if defined(condCondAExec) then ("--conda_exec " +  '"' + condCondAExec + '"') else ""} \
      ~{true="--conda_debug" false="" condCondADebug} \
      ~{if defined(condCondAEnsureChannels) then ("--conda_ensure_channels " +  '"' + condCondAEnsureChannels + '"') else ""} \
      ~{true="--conda_use_local" false="" condCondAUseLocal}
  >>>
}