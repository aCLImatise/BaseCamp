version 1.0

task OrthomclSingletonsIdPrefix {
  input {
    String? goodGoodProteins
    String? groupsGroupsFile
    String? idIdPrefix
  }
  command <<<
    orthomclSingletons id_prefix \
      ~{goodGoodProteins} \
      ~{groupsGroupsFile} \
      ~{idIdPrefix}
  >>>
}