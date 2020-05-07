version 1.0

task OrthomclRemoveIdenticalGroupsRefGroups.txt {
  input {
    String? groupsGroupsTxt
    String? refRefGroupsTxt
  }
  command <<<
    orthomclRemoveIdenticalGroups ref_groups.txt \
      ~{groupsGroupsTxt} \
      ~{refRefGroupsTxt}
  >>>
}