version 1.0

task PlanemoClonePROJECT {
  input {
    String? optionsOptions
    String? targetTarget
    String? projectProject
  }
  command <<<
    planemo clone PROJECT \
      ~{optionsOptions} \
      ~{targetTarget} \
      ~{projectProject}
  >>>
}