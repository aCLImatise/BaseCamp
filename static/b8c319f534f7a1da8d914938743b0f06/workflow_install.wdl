version 1.0

task WorkflowInstall {
  input {
    String? workflow_path
    Boolean? publish_workflows
    Boolean? verbose
    String? galaxy
    String? user
    String? password
    String? api_key
  }
  command <<<
    workflow-install \
      ~{if defined(workflow_path) then ("--workflow_path " +  '"' + workflow_path + '"') else ""} \
      ~{true="--publish_workflows" false="" publish_workflows} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""}
  >>>
  parameter_meta {
    workflow_path: "Path to a workflow file or a directory with multiple workflow files ending with \".ga\""
    publish_workflows: "Flag to publish all imported workflows, so that they are viewable by other users"
    verbose: "Increase output verbosity."
    galaxy: "Target Galaxy instance URL/IP address"
    user: "Galaxy user email address"
    password: "Password for the Galaxy user"
    api_key: "Galaxy admin user API key (required if not defined in the tools list file)"
  }
}