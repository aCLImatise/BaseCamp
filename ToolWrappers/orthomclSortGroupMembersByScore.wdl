version 1.0

task OrthomclSortGroupMembersByScore {
  input {
    String co_orthologs_dot_txt
  }
  command <<<
    orthomclSortGroupMembersByScore \
      ~{co_orthologs_dot_txt}
  >>>
  parameter_meta {
    co_orthologs_dot_txt: "Output:"
  }
  output {
    File out_stdout = stdout()
  }
}