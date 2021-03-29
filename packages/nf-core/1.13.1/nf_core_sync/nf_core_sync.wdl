version 1.0

task NfcoreSync {
  input {
    String? from_branch
    Boolean? pull_request
    String? repository
    String? username
    Directory pipeline_directory
  }
  command <<<
    nf_core sync \
      ~{pipeline_directory} \
      ~{if defined(from_branch) then ("--from-branch " +  '"' + from_branch + '"') else ""} \
      ~{if (pull_request) then "--pull-request" else ""} \
      ~{if defined(repository) then ("--repository " +  '"' + repository + '"') else ""} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0"
  }
  parameter_meta {
    from_branch: "The git branch to use to fetch workflow vars."
    pull_request: "Make a GitHub pull-request with the changes."
    repository: "GitHub PR: target repository."
    username: "GitHub PR: auth username."
    pipeline_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}