version 1.0

task CromwelltoolsMetadata {
  input {
    String? uuid
    String? url
    String? username
    String? password
    File? secrets_file
    File? service_account_key
    Array[String] exclude_key
    String? expand_sub_workflows
    String identifier_dot
  }
  command <<<
    cromwell_tools metadata \
      ~{identifier_dot} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(secrets_file) then ("--secrets-file " +  '"' + secrets_file + '"') else ""} \
      ~{if defined(service_account_key) then ("--service-account-key " +  '"' + service_account_key + '"') else ""} \
      ~{if defined(exclude_key) then ("--excludeKey " +  '"' + exclude_key + '"') else ""} \
      ~{if defined(expand_sub_workflows) then ("--expandSubWorkflows " +  '"' + expand_sub_workflows + '"') else ""}
  >>>
  parameter_meta {
    uuid: "[--includeKey INCLUDEKEY [INCLUDEKEY ...]]\\n[--excludeKey EXCLUDEKEY [EXCLUDEKEY ...]]\\n[--expandSubWorkflows EXPANDSUBWORKFLOWS]"
    url: "The URL to the Cromwell server. e.g.\\n\\\"https://cromwell.server.org/\\\""
    username: "Cromwell username for HTTPBasicAuth."
    password: "Cromwell password for HTTPBasicAuth."
    secrets_file: "Path to the JSON file containing username, password,\\nand url fields."
    service_account_key: "Path to the JSON key file for authenticating with\\nCaaS."
    exclude_key: "When specified key(s) to exclude from the metadata.\\nMatches any key starting with the value. May not be\\nused with includeKey."
    expand_sub_workflows: "When true, metadata for sub workflows will be fetched\\nand inserted automatically in the metadata response.\\n"
    identifier_dot: "--includeKey INCLUDEKEY [INCLUDEKEY ...]"
  }
  output {
    File out_stdout = stdout()
  }
}