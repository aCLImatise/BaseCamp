version 1.0

task PlanemoCloneOPTIONSPROJECT {
  input {
    String? targetTarget
    String? projectProject
  }
  command <<<
    planemo clone OPTIONS PROJECT \
      ~{targetTarget} \
      ~{projectProject}
  >>>
}