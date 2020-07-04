version 1.0

task GalaxyToolTest {
  input {
    String? galaxy_url
    String? key
    String? admin_key
    Boolean? force_path_paste
    String? tool_id
    String? tool_version
    String? test_index
    String? directory_dump_outputs
    Boolean? append
    String? output_json
    Boolean? verbose
  }
  command <<<
    galaxy-tool-test \
      ~{if defined(galaxy_url) then ("--galaxy-url " +  '"' + galaxy_url + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(admin_key) then ("--admin-key " +  '"' + admin_key + '"') else ""} \
      ~{true="--force_path_paste" false="" force_path_paste} \
      ~{if defined(tool_id) then ("--tool-id " +  '"' + tool_id + '"') else ""} \
      ~{if defined(tool_version) then ("--tool-version " +  '"' + tool_version + '"') else ""} \
      ~{if defined(test_index) then ("--test-index " +  '"' + test_index + '"') else ""} \
      ~{if defined(directory_dump_outputs) then ("--output " +  '"' + directory_dump_outputs + '"') else ""} \
      ~{true="--append" false="" append} \
      ~{if defined(output_json) then ("--output-json " +  '"' + output_json + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    galaxy_url: "Galaxy URL"
    key: "Galaxy User API Key"
    admin_key: "Galaxy Admin API Key"
    force_path_paste: "This requires Galaxy-side config option \"allow_path_paste\" enabled. Allows for fetching test data locally. Only for admins."
    tool_id: "Tool ID"
    tool_version: "Tool Version"
    test_index: "Tool Test Index (starting at 0) - by default all tests will run."
    directory_dump_outputs: "directory to dump outputs to"
    append: "Extend a test record json (created with --output-json) with additional tests."
    output_json: "output metadata json"
    verbose: "Verbose logging."
  }
}