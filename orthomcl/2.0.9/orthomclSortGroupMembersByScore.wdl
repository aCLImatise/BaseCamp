version 1.0

task OrthomclSortGroupMembersByScore {
  input {
    String orthologs_dot_txt
    String co_orthologs_dot_txt
  }
  command <<<
    orthomclSortGroupMembersByScore \
      ~{orthologs_dot_txt} \
      ~{co_orthologs_dot_txt}
  >>>
  parameter_meta {
    orthologs_dot_txt: "paralogs.txt"
    co_orthologs_dot_txt: "Output:"
  }
  output {
    File out_stdout = stdout()
  }
}