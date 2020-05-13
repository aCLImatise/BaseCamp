version 1.0

task PlanemoCwlScriptJOBPATH {
  input {
    String? optionsOptions
    String? toolToolPath
    String? jobJobPath
  }
  command <<<
    planemo cwl_script JOB_PATH \
      ~{optionsOptions} \
      ~{toolToolPath} \
      ~{jobJobPath}
  >>>
}