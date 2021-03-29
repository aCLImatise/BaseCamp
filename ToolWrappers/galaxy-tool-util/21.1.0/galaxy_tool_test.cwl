class: CommandLineTool
id: galaxy_tool_test.cwl
inputs:
- id: in_galaxy_url
  doc: Galaxy URL
  type: string?
  inputBinding:
    prefix: --galaxy-url
- id: in_key
  doc: Galaxy User API Key
  type: string?
  inputBinding:
    prefix: --key
- id: in_admin_key
  doc: Galaxy Admin API Key
  type: string?
  inputBinding:
    prefix: --admin-key
- id: in_force_path_paste
  doc: "This requires Galaxy-side config option\n\"allow_path_paste\" enabled. Allows\
    \ for fetching test\ndata locally. Only for admins."
  type: boolean?
  inputBinding:
    prefix: --force_path_paste
- id: in_tool_id
  doc: Tool ID
  type: string?
  inputBinding:
    prefix: --tool-id
- id: in_tool_version
  doc: "Tool Version (if tool id supplied). Defaults to just\nlatest version, use\
    \ * to test all versions"
  type: string?
  inputBinding:
    prefix: --tool-version
- id: in_test_index
  doc: "Tool Test Index (starting at 0) - by default all tests\nwill run."
  type: long?
  inputBinding:
    prefix: --test-index
- id: in_output
  doc: directory to dump outputs to
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_append
  doc: "Extend a test record json (created with --output-json)\nwith additional tests."
  type: boolean?
  inputBinding:
    prefix: --append
- id: in_skip_previously_executed
  doc: "When used with --append, skip any test previously\nexecuted."
  type: boolean?
  inputBinding:
    prefix: --skip-previously-executed
- id: in_skip_previously_successful
  doc: "When used with --append, skip any test previously\nexecuted successfully."
  type: boolean?
  inputBinding:
    prefix: --skip-previously-successful
- id: in_output_json
  doc: output metadata json
  type: string?
  inputBinding:
    prefix: --output-json
- id: in_verbose
  doc: Verbose logging.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_client_test_config
  doc: Test config YAML to help with client testing
  type: string?
  inputBinding:
    prefix: --client-test-config
- id: in_suite_name
  doc: Suite name for tool test output
  type: string?
  inputBinding:
    prefix: --suite-name
- id: in_skip_with_reference_data
  doc: "Skip tests the Galaxy server believes use data tables\nor loc files."
  type: boolean?
  inputBinding:
    prefix: --skip-with-reference-data
- id: in_history_per_suite
  doc: "Create new history per test suite (all tests in same\nhistory)."
  type: boolean?
  inputBinding:
    prefix: --history-per-suite
- id: in_history_per_test_case
  doc: Create new history per test case.
  type: boolean?
  inputBinding:
    prefix: --history-per-test-case
- id: in_no_history_cleanup
  doc: Perserve histories created for testing.
  type: boolean?
  inputBinding:
    prefix: --no-history-cleanup
- id: in_publish_history
  doc: Publish test history. Useful for CI testing.
  type: boolean?
  inputBinding:
    prefix: --publish-history
- id: in_parallel_tests
  doc: Parallel tests.
  type: string?
  inputBinding:
    prefix: --parallel-tests
- id: in_retries
  doc: Retry failed tests.
  type: string?
  inputBinding:
    prefix: --retries
- id: in_page_size
  doc: "If positive, use pagination and just run one 'page' to\ntool tests."
  type: long?
  inputBinding:
    prefix: --page-size
- id: in_page_number
  doc: "If page size is used, run this 'page' of tests -\nstarts with 0."
  type: long?
  inputBinding:
    prefix: --page-number
- id: in_download_attempts
  doc: "Galaxy may return a transient 500 status code for\ndownload if test results\
    \ are written but not yet\naccessible."
  type: long?
  inputBinding:
    prefix: --download-attempts
- id: in_download_sleep
  doc: "If download attempts is greater than 1, the amount to\nsleep between download\
    \ attempts."
  type: long?
  inputBinding:
    prefix: --download-sleep
- id: in_test_data
  doc: "Add local test data path to search for missing test\ndata\n"
  type: File?
  inputBinding:
    prefix: --test-data
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-tool-util:21.1.0--py_0
cwlVersion: v1.1
baseCommand:
- galaxy-tool-test
