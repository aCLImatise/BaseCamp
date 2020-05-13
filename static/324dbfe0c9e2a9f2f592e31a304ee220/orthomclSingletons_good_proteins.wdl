version 1.0

task OrthomclSingletonsGoodProteins {
  input {
    String? groupsGroupsFile
    String? idIdPrefix
  }
  command <<<
    orthomclSingletons good_proteins \
      ~{groupsGroupsFile} \
      ~{idIdPrefix}
  >>>
}