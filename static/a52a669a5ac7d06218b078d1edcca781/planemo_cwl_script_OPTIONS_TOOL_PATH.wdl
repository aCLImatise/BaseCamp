version 1.0

task PlanemoCwlScriptOPTIONSTOOLPATH {
  input {
    String? jobJobPath
  }
  command <<<
    planemo cwl_script OPTIONS TOOL_PATH \
      ~{jobJobPath}
  >>>
}