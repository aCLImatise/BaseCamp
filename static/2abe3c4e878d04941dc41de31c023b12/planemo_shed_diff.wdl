version 1.0

task PlanemoShedDiff {
  input {
    Boolean? recursive
    String? owner
    Directory? name
    String? shed_email
    String? shed_key
    String? shed_key_from_env
    String? shed_password
    Int? shed_target
    File? send_diff_output
    String? shed_target_source
    Boolean? raw
    File? report_x_unit
    String directories_dot
  }
  command <<<
    planemo shed_diff \
      ~{directories_dot} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(shed_email) then ("--shed_email " +  '"' + shed_email + '"') else ""} \
      ~{if defined(shed_key) then ("--shed_key " +  '"' + shed_key + '"') else ""} \
      ~{if defined(shed_key_from_env) then ("--shed_key_from_env " +  '"' + shed_key_from_env + '"') else ""} \
      ~{if defined(shed_password) then ("--shed_password " +  '"' + shed_password + '"') else ""} \
      ~{if defined(shed_target) then ("--shed_target " +  '"' + shed_target + '"') else ""} \
      ~{if defined(send_diff_output) then ("--output " +  '"' + send_diff_output + '"') else ""} \
      ~{if defined(shed_target_source) then ("--shed_target_source " +  '"' + shed_target_source + '"') else ""} \
      ~{if (raw) then "--raw" else ""} \
      ~{if defined(report_x_unit) then ("--report_xunit " +  '"' + report_x_unit + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    recursive: "Recursively perform command for nested repository"
    owner: "Tool Shed repository owner (username)."
    name: "Tool Shed repository name (defaults to the\\ninferred tool directory name)."
    shed_email: "E-mail for Tool Shed auth (required unless\\nshed_key is specified)."
    shed_key: "API key for Tool Shed access. An API key is\\nrequired unless e-mail and password is specified.\\nThis key can be specified with either --shed_key\\nor --shed_key_from_env."
    shed_key_from_env: "Environment variable to read API key for Tool\\nShed access from."
    shed_password: "Password for Tool Shed auth (required unless\\nshed_key is specified)."
    shed_target: "Tool Shed to target (this can be 'toolshed',\\n'testtoolshed', 'local' (alias for\\nhttp://localhost:9009/), an arbitrary url or\\nmappings defined ~/.planemo.yml."
    send_diff_output: "Send diff output to specified file."
    shed_target_source: "Source Tool Shed to diff against (will ignore\\nlocal project info specified). To compare the\\nmain Tool Shed against the test, set this to\\ntesttoolshed."
    raw: "Do not attempt smart diff of XML to filter out\\nattributes populated by the Tool Shed."
    report_x_unit: "Output an XUnit report, useful for CI testing"
    directories_dot: "--fail_fast                If multiple repositories are specified and an"
  }
  output {
    File out_stdout = stdout()
    File out_send_diff_output = "${in_send_diff_output}"
  }
}