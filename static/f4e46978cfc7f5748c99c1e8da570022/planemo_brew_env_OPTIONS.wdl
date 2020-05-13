version 1.0

task PlanemoBrewEnvOPTIONS {
  input {
    String? toolToolPath
  }
  command <<<
    planemo brew_env OPTIONS \
      ~{toolToolPath}
  >>>
}