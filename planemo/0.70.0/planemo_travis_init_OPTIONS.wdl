version 1.0

task PlanemoTravisInitOPTIONS {
  input {
    String? projectProject
  }
  command <<<
    planemo travis_init OPTIONS \
      ~{projectProject}
  >>>
}