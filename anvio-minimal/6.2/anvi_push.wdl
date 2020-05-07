version 1.0

task AnviPush {
  input {
    String userUser
    String apiApiUrl
    String projectProjectName
    String treeTree
    String itemsItemsOrder
    String fastFastAFile
    String viewViewData
    String additionalAdditionalLayers
    String stateState
    String descriptionDescription
    String binsBins
    String binsBinsInfo
    Boolean deleteDeleteIfExists
  }
  command <<<
    anvi-push \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(apiApiUrl) then ("--api-url " +  '"' + apiApiUrl + '"') else ""} \
      ~{if defined(projectProjectName) then ("--project-name " +  '"' + projectProjectName + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(itemsItemsOrder) then ("--items-order " +  '"' + itemsItemsOrder + '"') else ""} \
      ~{if defined(fastFastAFile) then ("--fasta-file " +  '"' + fastFastAFile + '"') else ""} \
      ~{if defined(viewViewData) then ("--view-data " +  '"' + viewViewData + '"') else ""} \
      ~{if defined(additionalAdditionalLayers) then ("--additional-layers " +  '"' + additionalAdditionalLayers + '"') else ""} \
      ~{if defined(stateState) then ("--state " +  '"' + stateState + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(binsBins) then ("--bins " +  '"' + binsBins + '"') else ""} \
      ~{if defined(binsBinsInfo) then ("--bins-info " +  '"' + binsBinsInfo + '"') else ""} \
      ~{true="--delete-if-exists" false="" deleteDeleteIfExists}
  >>>
}