version 1.0

task CromwelltoolsSubmit {
  input {
    String? url
    String? username
    String? password
    File? secrets_file
    File? service_account_key
    File? wdl_file
    Array[String] inputs_files
    Array[String] deps_file
    File? options_file
    File? label_file
    String? collection_name
    String? on_hold
    String? validate_labels
  }
  command <<<
    cromwell_tools submit \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(secrets_file) then ("--secrets-file " +  '"' + secrets_file + '"') else ""} \
      ~{if defined(service_account_key) then ("--service-account-key " +  '"' + service_account_key + '"') else ""} \
      ~{if defined(wdl_file) then ("--wdl-file " +  '"' + wdl_file + '"') else ""} \
      ~{if defined(inputs_files) then ("--inputs-files " +  '"' + inputs_files + '"') else ""} \
      ~{if defined(deps_file) then ("--deps-file " +  '"' + deps_file + '"') else ""} \
      ~{if defined(options_file) then ("--options-file " +  '"' + options_file + '"') else ""} \
      ~{if defined(label_file) then ("--label-file " +  '"' + label_file + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(on_hold) then ("--on-hold " +  '"' + on_hold + '"') else ""} \
      ~{if defined(validate_labels) then ("--validate-labels " +  '"' + validate_labels + '"') else ""}
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
    wdl_file: "Path to the workflow source file to submit for\\nexecution."
    inputs_files: "Path(s) to the input file(s) containing input data in\\nJSON format, separated by space."
    deps_file: "Path to the Zip file containing dependencies, or a\\nlist of raw dependency files to be zipped together\\nseparated by space."
    options_file: "Path to the Cromwell configs JSON file."
    label_file: "Path to the JSON file containing a collection of\\nkey/value pairs for workflow labels."
    collection_name: "Collection in SAM that the workflow should belong to,\\nif use CaaS."
    on_hold: "Whether to submit the workflow in \\\"On Hold\\\" status."
    validate_labels: "Whether to validate cromwell labels.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}