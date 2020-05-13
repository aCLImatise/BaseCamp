version 1.0

task GetToolList {
  input {
    String outputOutputFile
    Boolean includeIncludeToolPanelId
    Boolean skipSkipToolPanelName
    Boolean skipSkipChangesetRevision
    Boolean getGetDataManagers
    Boolean getGetAllTools
    Boolean verboseVerbose
    String galaxyGalaxy
    String userUser
    String passwordPassword
    String apiApiKey
  }
  command <<<
    get-tool-list \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--include_tool_panel_id" false="" includeIncludeToolPanelId} \
      ~{true="--skip_tool_panel_name" false="" skipSkipToolPanelName} \
      ~{true="--skip_changeset_revision" false="" skipSkipChangesetRevision} \
      ~{true="--get_data_managers" false="" getGetDataManagers} \
      ~{true="--get_all_tools" false="" getGetAllTools} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(galaxyGalaxy) then ("--galaxy " +  '"' + galaxyGalaxy + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(apiApiKey) then ("--api_key " +  '"' + apiApiKey + '"') else ""}
  >>>
}