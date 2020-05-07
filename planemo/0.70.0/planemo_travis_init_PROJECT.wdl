version 1.0

task PlanemoTravisInitPROJECT {
  input {
    String? optionsOptions
    String? projectProject
  }
  command <<<
    planemo travis_init PROJECT \
      ~{optionsOptions} \
      ~{projectProject}
  >>>
}