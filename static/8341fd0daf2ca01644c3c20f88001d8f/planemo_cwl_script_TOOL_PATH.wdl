version 1.0

task PlanemoCwlScriptTOOLPATH {
  input {
    String? optionsOptions
    String? toolToolPath
    String? jobJobPath
  }
  command <<<
    planemo cwl_script TOOL_PATH \
      ~{optionsOptions} \
      ~{toolToolPath} \
      ~{jobJobPath}
  >>>
}