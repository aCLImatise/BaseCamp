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
    Boolean? skip_previously_executed
    Boolean? skip_previously_successful
    String? output_json
    Boolean? verbose
    String? client_test_config
    String? suite_name
    Boolean? skip_with_reference_data
    Boolean? history_per_suite
    Boolean? history_per_test_case
    Boolean? no_history_cleanup
    Boolean? publish_history
    String? parallel_tests
    String? retries
    Int? page_size
    Int? page_number
    Int? download_attempts
    Int? download_sleep
    File? test_data
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
      ~{if (skip_previously_executed) then "--skip-previously-executed" else ""} \
      ~{if (skip_previously_successful) then "--skip-previously-successful" else ""} \
      ~{if defined(output_json) then ("--output-json " +  '"' + output_json + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(client_test_config) then ("--client-test-config " +  '"' + client_test_config + '"') else ""} \
      ~{if defined(suite_name) then ("--suite-name " +  '"' + suite_name + '"') else ""} \
      ~{if (skip_with_reference_data) then "--skip-with-reference-data" else ""} \
      ~{if (history_per_suite) then "--history-per-suite" else ""} \
      ~{if (history_per_test_case) then "--history-per-test-case" else ""} \
      ~{if (no_history_cleanup) then "--no-history-cleanup" else ""} \
      ~{if (publish_history) then "--publish-history" else ""} \
      ~{if defined(parallel_tests) then ("--parallel-tests " +  '"' + parallel_tests + '"') else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if defined(page_size) then ("--page-size " +  '"' + page_size + '"') else ""} \
      ~{if defined(page_number) then ("--page-number " +  '"' + page_number + '"') else ""} \
      ~{if defined(download_attempts) then ("--download-attempts " +  '"' + download_attempts + '"') else ""} \
      ~{if defined(download_sleep) then ("--download-sleep " +  '"' + download_sleep + '"') else ""} \
      ~{if defined(test_data) then ("--test-data " +  '"' + test_data + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-tool-util:21.1.0--py_0"
  }
  parameter_meta {
    galaxy_url: "Galaxy URL"
    key: "Galaxy User API Key"
    admin_key: "Galaxy Admin API Key"
    force_path_paste: "This requires Galaxy-side config option\\n\\\"allow_path_paste\\\" enabled. Allows for fetching test\\ndata locally. Only for admins."
    tool_id: "Tool ID"
    tool_version: "Tool Version (if tool id supplied). Defaults to just\\nlatest version, use * to test all versions"
    test_index: "Tool Test Index (starting at 0) - by default all tests\\nwill run."
    directory_dump_outputs: "directory to dump outputs to"
    append: "Extend a test record json (created with --output-json)\\nwith additional tests."
    skip_previously_executed: "When used with --append, skip any test previously\\nexecuted."
    skip_previously_successful: "When used with --append, skip any test previously\\nexecuted successfully."
    output_json: "output metadata json"
    verbose: "Verbose logging."
    client_test_config: "Test config YAML to help with client testing"
    suite_name: "Suite name for tool test output"
    skip_with_reference_data: "Skip tests the Galaxy server believes use data tables\\nor loc files."
    history_per_suite: "Create new history per test suite (all tests in same\\nhistory)."
    history_per_test_case: "Create new history per test case."
    no_history_cleanup: "Perserve histories created for testing."
    publish_history: "Publish test history. Useful for CI testing."
    parallel_tests: "Parallel tests."
    retries: "Retry failed tests."
    page_size: "If positive, use pagination and just run one 'page' to\\ntool tests."
    page_number: "If page size is used, run this 'page' of tests -\\nstarts with 0."
    download_attempts: "Galaxy may return a transient 500 status code for\\ndownload if test results are written but not yet\\naccessible."
    download_sleep: "If download attempts is greater than 1, the amount to\\nsleep between download attempts."
    test_data: "Add local test data path to search for missing test\\ndata\\n"
  }
  output {
    File out_stdout = stdout()
  }
}