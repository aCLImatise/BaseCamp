version 1.0

task PlanemoShedDiff {
  input {
    File? shed_target_source
    Boolean? recursive
    String? owner
    Directory? name
    String? shed_email
    String? shed_key
    String? shed_key_from_env
    String? shed_password
    Int? shed_target
    File? send_diff_output
    Boolean? raw
    File? report_x_unit
    String directories_dot
  }
  command <<<
    planemo shed_diff \
      ~{directories_dot} \
      ~{if defined(shed_target_source) then ("--shed_target_source " +  '"' + shed_target_source + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(shed_email) then ("--shed_email " +  '"' + shed_email + '"') else ""} \
      ~{if defined(shed_key) then ("--shed_key " +  '"' + shed_key + '"') else ""} \
      ~{if defined(shed_key_from_env) then ("--shed_key_from_env " +  '"' + shed_key_from_env + '"') else ""} \
      ~{if defined(shed_password) then ("--shed_password " +  '"' + shed_password + '"') else ""} \
      ~{if defined(shed_target) then ("--shed_target " +  '"' + shed_target + '"') else ""} \
      ~{if defined(send_diff_output) then ("--output " +  '"' + send_diff_output + '"') else ""} \
      ~{if (raw) then "--raw" else ""} \
      ~{if defined(report_x_unit) then ("--report_xunit " +  '"' + report_x_unit + '"') else ""}
  >>>
  parameter_meta {
    shed_target_source: "This command will return an exit code of:\\n- 0 if there are no detected differences. - 1 if there are differences. -\\n2 if the target repository doesn't exist. - >200 if there are errors\\nattempting to perform a diff.\\n**Warning:** ``shed_diff`` doesn't inspect repository metadata, this\\ndifference applies only to the file contents of files that would actually\\nbe uploaded to the repository."
    recursive: "Recursively perform command for nested repository"
    owner: "Tool Shed repository owner (username)."
    name: "Tool Shed repository name (defaults to the\\ninferred tool directory name)."
    shed_email: "E-mail for Tool Shed auth (required unless\\nshed_key is specified)."
    shed_key: "API key for Tool Shed access. An API key is\\nrequired unless e-mail and password is specified.\\nThis key can be specified with either --shed_key\\nor --shed_key_from_env."
    shed_key_from_env: "Environment variable to read API key for Tool\\nShed access from."
    shed_password: "Password for Tool Shed auth (required unless\\nshed_key is specified)."
    shed_target: "Tool Shed to target (this can be 'toolshed',\\n'testtoolshed', 'local' (alias for\\nhttp://localhost:9009/), an arbitrary url or\\nmappings defined ~/.planemo.yml."
    send_diff_output: "Send diff output to specified file."
    raw: "Do not attempt smart diff of XML to filter out\\nattributes populated by the Tool Shed."
    report_x_unit: "Output an XUnit report, useful for CI testing"
    directories_dot: "--fail_fast                If multiple repositories are specified and an"
  }
  output {
    File out_stdout = stdout()
    File out_send_diff_output = "${in_send_diff_output}"
  }
}