version 1.0

task PlanemoPullRequestPROJECT {
  input {
    String? optionsOptions
    String? projectProject
  }
  command <<<
    planemo pull_request PROJECT \
      ~{optionsOptions} \
      ~{projectProject}
  >>>
}