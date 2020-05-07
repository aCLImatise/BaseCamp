version 1.0

task PlanemoShedBuildOPTIONS {
  input {
    String? toolToolPath
  }
  command <<<
    planemo shed_build OPTIONS \
      ~{toolToolPath}
  >>>
}