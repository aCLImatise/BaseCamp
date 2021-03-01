version 1.0

task OrthomclSortGroupsFile {
  input {
    String groups_dot_txt
  }
  command <<<
    orthomclSortGroupsFile \
      ~{groups_dot_txt}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    groups_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}