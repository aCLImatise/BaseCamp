version 1.0

task OrthomclReduceGroupsGroupsFile {
  input {
    String? taxTaxA
  }
  command <<<
    orthomclReduceGroups groups_file \
      ~{taxTaxA}
  >>>
}