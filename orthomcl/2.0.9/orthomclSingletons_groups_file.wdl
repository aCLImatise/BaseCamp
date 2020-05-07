version 1.0

task OrthomclSingletonsGroupsFile {
  input {
    String? goodGoodProteins
    String? groupsGroupsFile
    String? idIdPrefix
  }
  command <<<
    orthomclSingletons groups_file \
      ~{goodGoodProteins} \
      ~{groupsGroupsFile} \
      ~{idIdPrefix}
  >>>
}