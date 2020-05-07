version 1.0

task PlanemoProjectInitOPTIONS {
  input {
    String? projectProject
  }
  command <<<
    planemo project_init OPTIONS \
      ~{projectProject}
  >>>
}