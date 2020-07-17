version 1.0

task OrthomclSortGroupMembersByScore {
  input {
    String groups_file
    String pairs_dir
  }
  command <<<
    orthomclSortGroupMembersByScore \
      ~{groups_file} \
      ~{pairs_dir}
  >>>
  parameter_meta {
    groups_file: ""
    pairs_dir: ""
  }
}