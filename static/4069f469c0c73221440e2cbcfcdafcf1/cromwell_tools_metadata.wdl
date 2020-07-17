version 1.0

task CromwellToolsMetadata {
  input {
    String? url
    String? username
    String? password
    String? secrets_file
    String? service_account_key
    String? uuid
    Array[String] include_key
    Array[String] exclude_key
    String? expand_sub_workflows
  }
  command <<<
    cromwell-tools metadata \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(secrets_file) then ("--secrets-file " +  '"' + secrets_file + '"') else ""} \
      ~{if defined(service_account_key) then ("--service-account-key " +  '"' + service_account_key + '"') else ""} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(include_key) then ("--includeKey " +  '"' + include_key + '"') else ""} \
      ~{if defined(exclude_key) then ("--excludeKey " +  '"' + exclude_key + '"') else ""} \
      ~{if defined(expand_sub_workflows) then ("--expandSubWorkflows " +  '"' + expand_sub_workflows + '"') else ""}
  >>>
  parameter_meta {
    url: "The URL to the Cromwell server. e.g. \"https://cromwell.server.org/\""
    username: "Cromwell username for HTTPBasicAuth."
    password: "Cromwell password for HTTPBasicAuth."
    secrets_file: "Path to the JSON file containing username, password, and url fields."
    service_account_key: "Path to the JSON key file for authenticating with CaaS."
    uuid: "A Cromwell workflow UUID, which is the workflow identifier."
    include_key: "When specified key(s) to include from the metadata. Matches any key starting with the value. May not be used with excludeKey."
    exclude_key: "When specified key(s) to exclude from the metadata. Matches any key starting with the value. May not be used with includeKey."
    expand_sub_workflows: "When true, metadata for sub workflows will be fetched and inserted automatically in the metadata response."
  }
}