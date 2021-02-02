version 1.0

task Sbgcwlrunner {
  input {
    Directory? outdir
    Boolean? quiet
    String? api_profile
    String? project
    Int? poll_interval
    String var_workflow
  }
  command <<<
    sbg_cwl_runner \
      ~{var_workflow} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(api_profile) then ("--api-profile " +  '"' + api_profile + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(poll_interval) then ("--poll-interval " +  '"' + poll_interval + '"') else ""}
  >>>
  parameter_meta {
    outdir: "Directory to put results in [default: ./]"
    quiet: "Suppress logging messages"
    api_profile: "API profile name [default: default]"
    project: "Project to run tasks in [default: default-sbg-cwl-runner-project]"
    poll_interval: "Polling interval to check for job status (in min) [default: 1]"
    var_workflow: ""
  }
  output {
    File out_stdout = stdout()
  }
}