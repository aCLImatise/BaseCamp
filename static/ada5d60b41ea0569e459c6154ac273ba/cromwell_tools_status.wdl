version 1.0

task CromwelltoolsStatus {
  input {
    String? uuid
    String? url
    String? username
    String? password
    File? secrets_file
    File? service_account_key
  }
  command <<<
    cromwell_tools status \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(secrets_file) then ("--secrets-file " +  '"' + secrets_file + '"') else ""} \
      ~{if defined(service_account_key) then ("--service-account-key " +  '"' + service_account_key + '"') else ""}
  >>>
  parameter_meta {
    uuid: ""
    url: "The URL to the Cromwell server. e.g.\\n\\\"https://cromwell.server.org/\\\""
    username: "Cromwell username for HTTPBasicAuth."
    password: "Cromwell password for HTTPBasicAuth."
    secrets_file: "Path to the JSON file containing username, password,\\nand url fields."
    service_account_key: "Path to the JSON key file for authenticating with\\nCaaS."
  }
  output {
    File out_stdout = stdout()
  }
}