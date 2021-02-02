version 1.0

task CromwelltoolsReleaseHold {
  input {
    String? url
    String? username
    String? password
    File? secrets_file
    File? service_account_key
    String? uuid
  }
  command <<<
    cromwell_tools release_hold \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(secrets_file) then ("--secrets-file " +  '"' + secrets_file + '"') else ""} \
      ~{if defined(service_account_key) then ("--service-account-key " +  '"' + service_account_key + '"') else ""} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""}
  >>>
  parameter_meta {
    url: "The URL to the Cromwell server. e.g.\\n\\\"https://cromwell.server.org/\\\""
    username: "Cromwell username for HTTPBasicAuth."
    password: "Cromwell password for HTTPBasicAuth."
    secrets_file: "Path to the JSON file containing username, password,\\nand url fields."
    service_account_key: "Path to the JSON key file for authenticating with\\nCaaS."
    uuid: "A Cromwell workflow UUID, which is the workflow\\nidentifier.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}