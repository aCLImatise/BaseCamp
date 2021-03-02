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
  doc: Tool Version
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
  doc: "Test config YAML to help with client testing\n"
  type: string?
  inputBinding:
    prefix: --client-test-config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-tool-util:20.9.1--py_0
cwlVersion: v1.1
baseCommand:
- galaxy-tool-test
