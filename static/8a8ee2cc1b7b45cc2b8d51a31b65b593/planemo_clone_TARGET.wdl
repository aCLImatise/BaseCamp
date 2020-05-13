version 1.0

task PlanemoCloneTARGET {
  input {
    String? optionsOptions
    String? targetTarget
    String? projectProject
  }
  command <<<
    planemo clone TARGET \
      ~{optionsOptions} \
      ~{targetTarget} \
      ~{projectProject}
  >>>
}