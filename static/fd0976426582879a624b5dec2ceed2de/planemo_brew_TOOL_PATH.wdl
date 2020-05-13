version 1.0

task PlanemoBrewTOOLPATH {
  input {
    String? optionsOptions
    String? toolToolPath
  }
  command <<<
    planemo brew TOOL_PATH \
      ~{optionsOptions} \
      ~{toolToolPath}
  >>>
}