version 1.0

task PlanemoShedUpdate {
  input {
    File? report_x_unit
    Boolean? recursive
    Boolean? fail_fast
    String? owner
    Directory? name
    String? shed_email
    String? shed_key
    String? shed_key_from_env
    String? shed_password
    Int? shed_target
    String? message
    Boolean? force_repository_creation
    Boolean? check_diff
    Boolean? skip_upload
    Boolean? skip_metadata
    String shed_dot
    String changes_dot
  }
  command <<<
    planemo shed_update \
      ~{shed_dot} \
      ~{changes_dot} \
      ~{if defined(report_x_unit) then ("--report_xunit " +  '"' + report_x_unit + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (fail_fast) then "--fail_fast" else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(shed_email) then ("--shed_email " +  '"' + shed_email + '"') else ""} \
      ~{if defined(shed_key) then ("--shed_key " +  '"' + shed_key + '"') else ""} \
      ~{if defined(shed_key_from_env) then ("--shed_key_from_env " +  '"' + shed_key_from_env + '"') else ""} \
      ~{if defined(shed_password) then ("--shed_password " +  '"' + shed_password + '"') else ""} \
      ~{if defined(shed_target) then ("--shed_target " +  '"' + shed_target + '"') else ""} \
      ~{if defined(message) then ("--message " +  '"' + message + '"') else ""} \
      ~{if (force_repository_creation) then "--force_repository_creation" else ""} \
      ~{if (check_diff) then "--check_diff" else ""} \
      ~{if (skip_upload) then "--skip_upload" else ""} \
      ~{if (skip_metadata) then "--skip_metadata" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    report_x_unit: "Output an XUnit report, useful for CI testing"
    recursive: "Recursively perform command for nested\\nrepository directories."
    fail_fast: "If multiple repositories are specified and an\\nerror occurs stop immediately instead of\\nprocessing remaining repositories."
    owner: "Tool Shed repository owner (username)."
    name: "Tool Shed repository name (defaults to the\\ninferred tool directory name)."
    shed_email: "E-mail for Tool Shed auth (required unless\\nshed_key is specified)."
    shed_key: "API key for Tool Shed access. An API key is\\nrequired unless e-mail and password is\\nspecified. This key can be specified with\\neither --shed_key or --shed_key_from_env."
    shed_key_from_env: "Environment variable to read API key for Tool\\nShed access from."
    shed_password: "Password for Tool Shed auth (required unless\\nshed_key is specified)."
    shed_target: "Tool Shed to target (this can be 'toolshed',\\n'testtoolshed', 'local' (alias for\\nhttp://localhost:9009/), an arbitrary url or\\nmappings defined ~/.planemo.yml."
    message: "Commit message for tool shed upload."
    force_repository_creation: "If a repository cannot be found for the\\nspecified user/repo name pair, then\\nautomatically create the repository in the\\ntoolshed."
    check_diff: "Skip uploading if the shed_diff detects there\\nwould be no 'difference' (only attributes\\npopulated by the shed would be updated.)"
    skip_upload: "Skip upload contents as part of operation, only\\nupdate metadata."
    skip_metadata: "Skip metadata update as part of operation, only\\nupload new contents."
    shed_dot: "% planemo shed_update --shed_target testtoolshed path/to/repo"
    changes_dot: "The lower-level ``shed_upload`` command should be used instead if the"
  }
  output {
    File out_stdout = stdout()
  }
}