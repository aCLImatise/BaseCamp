version 1.0

task OrthomclSortGroupsFile {
  input {
    String groups_dot_txt
  }
  command <<<
    orthomclSortGroupsFile \
      ~{groups_dot_txt}
  >>>
  parameter_meta {
    groups_dot_txt: ""
  }
}