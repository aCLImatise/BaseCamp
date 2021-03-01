version 1.0

task OrthomclReduceGroups {
  input {
    String groups_file
  }
  command <<<
    orthomclReduceGroups \
      ~{groups_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    groups_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}