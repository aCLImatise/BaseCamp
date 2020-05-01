version 1.0

task AnviDeleteMiscData {
  input {
    String panPanOrProfileDb
    String targetTargetDataTable
    String keysKeysToRemove
    String groupsGroupsToRemove
    Boolean listListAvailableKeys
    Boolean justJustDoIt
  }
  command <<<
    anvi-delete-misc-data \
      ~{if defined(panPanOrProfileDb) then ("--pan-or-profile-db " +  '"' + panPanOrProfileDb + '"') else ""} \
      ~{if defined(targetTargetDataTable) then ("--target-data-table " +  '"' + targetTargetDataTable + '"') else ""} \
      ~{if defined(keysKeysToRemove) then ("--keys-to-remove " +  '"' + keysKeysToRemove + '"') else ""} \
      ~{if defined(groupsGroupsToRemove) then ("--groups-to-remove " +  '"' + groupsGroupsToRemove + '"') else ""} \
      ~{true="--list-available-keys" false="" listListAvailableKeys} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}