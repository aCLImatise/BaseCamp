version 1.0

task PlanemoShedUpload {
  input {
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
    Boolean? tar_only
    File? tar
    Int one_ones_even
  }
  command <<<
    planemo shed_upload \
      ~{one_ones_even} \
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
      ~{if (tar_only) then "--tar_only" else ""} \
      ~{if defined(tar) then ("--tar " +  '"' + tar + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
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
    tar_only: "Produce tar file for upload but do not publish\\nto a tool shed."
    tar: "Specify a pre-existing tar file instead of\\nautomatically building one as part of this\\ncommand."
    one_ones_even: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}