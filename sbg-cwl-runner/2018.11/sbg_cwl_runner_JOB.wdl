version 1.0

task SbgCwlRunnerJOB {
  input {
    String outdirOutdir
    Boolean quietQuiet
    String apiApiProfile
    String projectProject
    String pollPollInterval
    String? workflowWorkflow
    String? jobJob
  }
  command <<<
    sbg-cwl-runner JOB \
      ~{workflowWorkflow} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(apiApiProfile) then ("--api-profile " +  '"' + apiApiProfile + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(pollPollInterval) then ("--poll-interval " +  '"' + pollPollInterval + '"') else ""} \
      ~{jobJob}
  >>>
}