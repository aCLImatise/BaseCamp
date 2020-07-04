version 1.0

task OrthomclReduceGroups {
  input {
    String groups_file
    String tax_a
  }
  command <<<
    orthomclReduceGroups \
      ~{groups_file} \
      ~{tax_a}
  >>>
  parameter_meta {
    groups_file: ""
    tax_a: ""
  }
}