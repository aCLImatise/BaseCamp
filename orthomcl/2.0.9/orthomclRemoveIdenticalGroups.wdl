version 1.0

task OrthomclRemoveIdenticalGroups {
  input {
    String groups_dot_txt
    String ref_groups_dot_txt
  }
  command <<<
    orthomclRemoveIdenticalGroups \
      ~{groups_dot_txt} \
      ~{ref_groups_dot_txt}
  >>>
  parameter_meta {
    groups_dot_txt: ""
    ref_groups_dot_txt: ""
  }
}