version 1.0

task Galaxytooltest {
  input {
    String? galaxy_url
    String? key
    String? admin_key
    Boolean? force_path_paste
    String? tool_id
    String? tool_version
    Int? test_index
    Directory? directory_dump_outputs
    Boolean? append
    String? output_json
    Boolean? verbose
    String? client_test_config
  }
  command <<<
    galaxy_tool_test \
      ~{if defined(galaxy_url) then ("--galaxy-url " +  '"' + galaxy_url + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(admin_key) then ("--admin-key " +  '"' + admin_key + '"') else ""} \
      ~{if (force_path_paste) then "--force_path_paste" else ""} \
      ~{if defined(tool_id) then ("--tool-id " +  '"' + tool_id + '"') else ""} \
      ~{if defined(tool_version) then ("--tool-version " +  '"' + tool_version + '"') else ""} \
      ~{if defined(test_index) then ("--test-index " +  '"' + test_index + '"') else ""} \
      ~{if defined(directory_dump_outputs) then ("--output " +  '"' + directory_dump_outputs + '"') else ""} \
      ~{if (append) then "--append" else ""} \
      ~{if defined(output_json) then ("--output-json " +  '"' + output_json + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(client_test_config) then ("--client-test-config " +  '"' + client_test_config + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-tool-util:20.9.1--py_0"
  }
  parameter_meta {
    galaxy_url: "Galaxy URL"
    key: "Galaxy User API Key"
    admin_key: "Galaxy Admin API Key"
    force_path_paste: "This requires Galaxy-side config option\\n\\\"allow_path_paste\\\" enabled. Allows for fetching test\\ndata locally. Only for admins."
    tool_id: "Tool ID"
    tool_version: "Tool Version"
    test_index: "Tool Test Index (starting at 0) - by default all tests\\nwill run."
    directory_dump_outputs: "directory to dump outputs to"
    append: "Extend a test record json (created with --output-json)\\nwith additional tests."
    output_json: "output metadata json"
    verbose: "Verbose logging."
    client_test_config: "Test config YAML to help with client testing\\n"
  }
  output {
    File out_stdout = stdout()
  }
}