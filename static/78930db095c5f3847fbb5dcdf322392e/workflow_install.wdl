version 1.0

task WorkflowInstall {
  input {
    String workflowWorkflowPath
    Boolean publishPublishWorkflows
    Boolean verboseVerbose
    String galaxyGalaxy
    String userUser
    String passwordPassword
    String apiApiKey
  }
  command <<<
    workflow-install \
      ~{if defined(workflowWorkflowPath) then ("--workflow_path " +  '"' + workflowWorkflowPath + '"') else ""} \
      ~{true="--publish_workflows" false="" publishPublishWorkflows} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(galaxyGalaxy) then ("--galaxy " +  '"' + galaxyGalaxy + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(apiApiKey) then ("--api_key " +  '"' + apiApiKey + '"') else ""}
  >>>
}