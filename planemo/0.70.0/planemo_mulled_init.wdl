version 1.0

task PlanemoMulledInit {
  input {
    String mulledMulledCondAVersion
    String mulledMulledNamespace
    String mulledMulledCommand
  }
  command <<<
    planemo mulled_init \
      ~{if defined(mulledMulledCondAVersion) then ("--mulled_conda_version " +  '"' + mulledMulledCondAVersion + '"') else ""} \
      ~{if defined(mulledMulledNamespace) then ("--mulled_namespace " +  '"' + mulledMulledNamespace + '"') else ""} \
      ~{if defined(mulledMulledCommand) then ("--mulled_command " +  '"' + mulledMulledCommand + '"') else ""}
  >>>
}