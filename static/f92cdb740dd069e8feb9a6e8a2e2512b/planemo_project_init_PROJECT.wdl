version 1.0

task PlanemoProjectInitPROJECT {
  input {
    String? optionsOptions
    String? projectProject
  }
  command <<<
    planemo project_init PROJECT \
      ~{optionsOptions} \
      ~{projectProject}
  >>>
}