version 1.0

task PlanemoConfigInitPROJECT {
  input {
    String? optionsOptions
    String? projectProject
  }
  command <<<
    planemo config_init PROJECT \
      ~{optionsOptions} \
      ~{projectProject}
  >>>
}