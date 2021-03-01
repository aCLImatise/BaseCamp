version 1.0

task NfcoreSync {
  input {
    Boolean? make_template_branch
    String? from_branch
    Boolean? pull_request
    String? username
    String? repository
    String? auth_token
    Boolean? all
    Directory pipeline_directory
  }
  command <<<
    nf_core sync \
      ~{pipeline_directory} \
      ~{if (make_template_branch) then "--make-template-branch" else ""} \
      ~{if defined(from_branch) then ("--from-branch " +  '"' + from_branch + '"') else ""} \
      ~{if (pull_request) then "--pull-request" else ""} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(repository) then ("--repository " +  '"' + repository + '"') else ""} \
      ~{if defined(auth_token) then ("--auth-token " +  '"' + auth_token + '"') else ""} \
      ~{if (all) then "--all" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    make_template_branch: "Create a TEMPLATE branch if none is found."
    from_branch: "The git branch to use to fetch workflow vars."
    pull_request: "Make a GitHub pull-request with the changes."
    username: "GitHub username for the PR."
    repository: "GitHub repository name for the PR."
    auth_token: "GitHub API personal access token."
    all: "Sync template for all nf-core pipelines."
    pipeline_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}