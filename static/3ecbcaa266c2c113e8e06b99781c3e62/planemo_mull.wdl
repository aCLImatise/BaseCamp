version 1.0

task PlanemoMull {
  input {
    Boolean condCondARequirements
    Boolean recursiveRecursive
    String mulledMulledCondAVersion
    String mulledMulledNamespace
    String mulledMulledCommand
    String condCondAEnsureChannels
  }
  command <<<
    planemo mull \
      ~{true="--conda_requirements" false="" condCondARequirements} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{if defined(mulledMulledCondAVersion) then ("--mulled_conda_version " +  '"' + mulledMulledCondAVersion + '"') else ""} \
      ~{if defined(mulledMulledNamespace) then ("--mulled_namespace " +  '"' + mulledMulledNamespace + '"') else ""} \
      ~{if defined(mulledMulledCommand) then ("--mulled_command " +  '"' + mulledMulledCommand + '"') else ""} \
      ~{if defined(condCondAEnsureChannels) then ("--conda_ensure_channels " +  '"' + condCondAEnsureChannels + '"') else ""}
  >>>
}