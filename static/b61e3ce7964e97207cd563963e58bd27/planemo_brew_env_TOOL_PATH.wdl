version 1.0

task PlanemoBrewEnvTOOLPATH {
  input {
    String? optionsOptions
    String? toolToolPath
  }
  command <<<
    planemo brew_env TOOL_PATH \
      ~{optionsOptions} \
      ~{toolToolPath}
  >>>
}