version 1.0

task PlanemoConfigInitOPTIONS {
  input {
    String? projectProject
  }
  command <<<
    planemo config_init OPTIONS \
      ~{projectProject}
  >>>
}