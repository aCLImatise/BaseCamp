version 1.0

task PlanemoShedCreate {
  input {
    Boolean? recursive
    String? owner
    Directory? name
    String? shed_email
    String? shed_key
    String? shed_key_from_env
    String? shed_password
    Int? shed_target
    String? message
    Boolean? skip_upload
    String directories_dot
  }
  command <<<
    planemo shed_create \
      ~{directories_dot} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(shed_email) then ("--shed_email " +  '"' + shed_email + '"') else ""} \
      ~{if defined(shed_key) then ("--shed_key " +  '"' + shed_key + '"') else ""} \
      ~{if defined(shed_key_from_env) then ("--shed_key_from_env " +  '"' + shed_key_from_env + '"') else ""} \
      ~{if defined(shed_password) then ("--shed_password " +  '"' + shed_password + '"') else ""} \
      ~{if defined(shed_target) then ("--shed_target " +  '"' + shed_target + '"') else ""} \
      ~{if defined(message) then ("--message " +  '"' + message + '"') else ""} \
      ~{if (skip_upload) then "--skip_upload" else ""}
  >>>
  parameter_meta {
    recursive: "Recursively perform command for nested repository"
    owner: "Tool Shed repository owner (username)."
    name: "Tool Shed repository name (defaults to the\\ninferred tool directory name)."
    shed_email: "E-mail for Tool Shed auth (required unless\\nshed_key is specified)."
    shed_key: "API key for Tool Shed access. An API key is\\nrequired unless e-mail and password is specified.\\nThis key can be specified with either --shed_key\\nor --shed_key_from_env."
    shed_key_from_env: "Environment variable to read API key for Tool Shed\\naccess from."
    shed_password: "Password for Tool Shed auth (required unless\\nshed_key is specified)."
    shed_target: "Tool Shed to target (this can be 'toolshed',\\n'testtoolshed', 'local' (alias for\\nhttp://localhost:9009/), an arbitrary url or\\nmappings defined ~/.planemo.yml."
    message: "Commit message for tool shed upload."
    skip_upload: "Skip upload contents as part of operation, only\\nupdate metadata."
    directories_dot: "--fail_fast               If multiple repositories are specified and an"
  }
  output {
    File out_stdout = stdout()
  }
}