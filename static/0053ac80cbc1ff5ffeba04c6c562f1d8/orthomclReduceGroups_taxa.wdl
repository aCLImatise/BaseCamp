version 1.0

task OrthomclReduceGroupsTaxa {
  input {
    String? groupsGroupsFile
    String? taxTaxA
  }
  command <<<
    orthomclReduceGroups taxa \
      ~{groupsGroupsFile} \
      ~{taxTaxA}
  >>>
}