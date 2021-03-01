version 1.0

task CromwelltoolsWait {
  input {
    String? url
    String? username
    String? password
    File? secrets_file
    File? service_account_key
    Int? timeout_minutes
    String? poll_interval_seconds
    Boolean? silent
    String workflow_ids
  }
  command <<<
    cromwell_tools wait \
      ~{workflow_ids} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(secrets_file) then ("--secrets-file " +  '"' + secrets_file + '"') else ""} \
      ~{if defined(service_account_key) then ("--service-account-key " +  '"' + service_account_key + '"') else ""} \
      ~{if defined(timeout_minutes) then ("--timeout-minutes " +  '"' + timeout_minutes + '"') else ""} \
      ~{if defined(poll_interval_seconds) then ("--poll-interval-seconds " +  '"' + poll_interval_seconds + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    url: "The URL to the Cromwell server. e.g.\\n\\\"https://cromwell.server.org/\\\""
    username: "Cromwell username for HTTPBasicAuth."
    password: "Cromwell password for HTTPBasicAuth."
    secrets_file: "Path to the JSON file containing username, password,\\nand url fields."
    service_account_key: "Path to the JSON key file for authenticating with\\nCaaS."
    timeout_minutes: "number of minutes to wait before timeout."
    poll_interval_seconds: "seconds between polling cromwell for workflow status."
    silent: "whether to silently print verbose workflow information\\nwhile polling cromwell.\\n"
    workflow_ids: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}