version 1.0

task OrthomclSortGroupMembersByScore {
  input {
    String standardStandard
    String? groupsGroupsFile
    String? pairsPairsDir
  }
  command <<<
    orthomclSortGroupMembersByScore \
      ~{groupsGroupsFile} \
      ~{if defined(standardStandard) then ("- standard " +  '"' + standardStandard + '"') else ""} \
      ~{pairsPairsDir}
  >>>
}