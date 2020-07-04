version 1.0

task CromwellToolsWait {
  input {
    String? url
    String? username
    String? password
    String? secrets_file
    String? service_account_key
    String? timeout_minutes
    String? poll_interval_seconds
    Boolean? silent
  }
  command <<<
    cromwell-tools wait \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(secrets_file) then ("--secrets-file " +  '"' + secrets_file + '"') else ""} \
      ~{if defined(service_account_key) then ("--service-account-key " +  '"' + service_account_key + '"') else ""} \
      ~{if defined(timeout_minutes) then ("--timeout-minutes " +  '"' + timeout_minutes + '"') else ""} \
      ~{if defined(poll_interval_seconds) then ("--poll-interval-seconds " +  '"' + poll_interval_seconds + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    url: "The URL to the Cromwell server. e.g. \"https://cromwell.server.org/\""
    username: "Cromwell username for HTTPBasicAuth."
    password: "Cromwell password for HTTPBasicAuth."
    secrets_file: "Path to the JSON file containing username, password, and url fields."
    service_account_key: "Path to the JSON key file for authenticating with CaaS."
    timeout_minutes: "number of minutes to wait before timeout."
    poll_interval_seconds: "seconds between polling cromwell for workflow status."
    silent: "whether to silently print verbose workflow information while polling cromwell."
  }
}