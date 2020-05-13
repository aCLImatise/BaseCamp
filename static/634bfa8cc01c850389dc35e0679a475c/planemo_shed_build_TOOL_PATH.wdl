version 1.0

task PlanemoShedBuildTOOLPATH {
  input {
    String? optionsOptions
    String? toolToolPath
  }
  command <<<
    planemo shed_build TOOL_PATH \
      ~{optionsOptions} \
      ~{toolToolPath}
  >>>
}