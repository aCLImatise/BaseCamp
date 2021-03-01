version 1.0

task Workflowinstall {
  input {
    File? workflow_path
    Boolean? publish_workflows
    Boolean? verbose
    String? galaxy
    String? user
    String? password
    File? api_key
  }
  command <<<
    workflow_install \
      ~{if defined(workflow_path) then ("--workflow_path " +  '"' + workflow_path + '"') else ""} \
      ~{if (publish_workflows) then "--publish_workflows" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    workflow_path: "Path to a workflow file or a directory with multiple\\nworkflow files ending with \\\".ga\\\""
    publish_workflows: "Flag to publish all imported workflows, so that they\\nare viewable by other users"
    verbose: "Increase output verbosity."
    galaxy: "Target Galaxy instance URL/IP address"
    user: "Galaxy user email address"
    password: "Password for the Galaxy user"
    api_key: "Galaxy admin user API key (required if not defined in\\nthe tools list file)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}