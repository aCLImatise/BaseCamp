version 1.0

task AnviRunWorkflow {
  input {
    String workflowWorkflow
    String getGetDefaultConfig
    Boolean listListWorkflows
    Boolean listListDependencies
    String configConfigFile
    Boolean dryDryRun
    Boolean skipSkipDryRun
    Boolean saveSaveWorkflowGraph
    Boolean aA
  }
  command <<<
    anvi-run-workflow \
      ~{if defined(workflowWorkflow) then ("--workflow " +  '"' + workflowWorkflow + '"') else ""} \
      ~{if defined(getGetDefaultConfig) then ("--get-default-config " +  '"' + getGetDefaultConfig + '"') else ""} \
      ~{true="--list-workflows" false="" listListWorkflows} \
      ~{true="--list-dependencies" false="" listListDependencies} \
      ~{if defined(configConfigFile) then ("--config-file " +  '"' + configConfigFile + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--skip-dry-run" false="" skipSkipDryRun} \
      ~{true="--save-workflow-graph" false="" saveSaveWorkflowGraph} \
      ~{true="-A" false="" aA}
  >>>
}