version 1.0

task IridaSistrResults {
  input {
    String iridIridAUrl
    String clientClientId
    String clientClientSecret
    String usernameUsername
    String passwordPassword
    Boolean verboseVerbose
    String projectProject
    Boolean allAllProjects
    String toToTabFile
    String toToExcelFile
    Boolean includeIncludeUserResults
    Boolean excludeExcludeUserExistingResults
    String reportableReportableSerovarsFile
    Boolean excludeExcludeReportableStatus
    String connectionConnectionTimeout
    String configConfig
    String workflowWorkflow
    String samplesSamplesCreatedSince
  }
  command <<<
    irida-sistr-results \
      ~{if defined(iridIridAUrl) then ("--irida-url " +  '"' + iridIridAUrl + '"') else ""} \
      ~{if defined(clientClientId) then ("--client-id " +  '"' + clientClientId + '"') else ""} \
      ~{if defined(clientClientSecret) then ("--client-secret " +  '"' + clientClientSecret + '"') else ""} \
      ~{if defined(usernameUsername) then ("--username " +  '"' + usernameUsername + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{true="--all-projects" false="" allAllProjects} \
      ~{if defined(toToTabFile) then ("--to-tab-file " +  '"' + toToTabFile + '"') else ""} \
      ~{if defined(toToExcelFile) then ("--to-excel-file " +  '"' + toToExcelFile + '"') else ""} \
      ~{true="--include-user-results" false="" includeIncludeUserResults} \
      ~{true="--exclude-user-existing-results" false="" excludeExcludeUserExistingResults} \
      ~{if defined(reportableReportableSerovarsFile) then ("--reportable-serovars-file " +  '"' + reportableReportableSerovarsFile + '"') else ""} \
      ~{true="--exclude-reportable-status" false="" excludeExcludeReportableStatus} \
      ~{if defined(connectionConnectionTimeout) then ("--connection-timeout " +  '"' + connectionConnectionTimeout + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(workflowWorkflow) then ("--workflow " +  '"' + workflowWorkflow + '"') else ""} \
      ~{if defined(samplesSamplesCreatedSince) then ("--samples-created-since " +  '"' + samplesSamplesCreatedSince + '"') else ""}
  >>>
}