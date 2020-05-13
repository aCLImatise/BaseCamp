version 1.0

task OrthomclRemoveIdenticalGroupsGroups.txt {
  input {
    String? refRefGroupsTxt
  }
  command <<<
    orthomclRemoveIdenticalGroups groups.txt \
      ~{refRefGroupsTxt}
  >>>
}