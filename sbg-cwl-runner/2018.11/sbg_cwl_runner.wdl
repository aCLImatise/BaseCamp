version 1.0

task SbgCwlRunner {
  input {
    String outdirOutdir
    Boolean quietQuiet
    String apiApiProfile
    String projectProject
    String pollPollInterval
  }
  command <<<
    sbg-cwl-runner \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(apiApiProfile) then ("--api-profile " +  '"' + apiApiProfile + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(pollPollInterval) then ("--poll-interval " +  '"' + pollPollInterval + '"') else ""}
  >>>
}