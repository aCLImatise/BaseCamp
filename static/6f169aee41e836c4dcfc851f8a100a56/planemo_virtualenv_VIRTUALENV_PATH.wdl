version 1.0

task PlanemoVirtualenvVIRTUALENVPATH {
  input {
    String? optionsOptions
    String? virtualVirtualEnvPath
  }
  command <<<
    planemo virtualenv VIRTUALENV_PATH \
      ~{optionsOptions} \
      ~{virtualVirtualEnvPath}
  >>>
}