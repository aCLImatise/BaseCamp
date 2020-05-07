version 1.0

task PlanemoCwlScriptOPTIONSJOBPATH {
  input {
    String? toolToolPath
    String? jobJobPath
  }
  command <<<
    planemo cwl_script OPTIONS JOB_PATH \
      ~{toolToolPath} \
      ~{jobJobPath}
  >>>
}