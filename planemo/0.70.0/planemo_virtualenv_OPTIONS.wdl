version 1.0

task PlanemoVirtualenvOPTIONS {
  input {
    String? virtualVirtualEnvPath
  }
  command <<<
    planemo virtualenv OPTIONS \
      ~{virtualVirtualEnvPath}
  >>>
}