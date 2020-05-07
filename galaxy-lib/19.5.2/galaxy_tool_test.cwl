class: CommandLineTool
id: galaxy_tool_test.cwl
inputs:
- id: galaxy_url
  doc: Galaxy URL
  type: string
  inputBinding:
    prefix: --galaxy-url
- id: key
  doc: Galaxy User API Key
  type: string
  inputBinding:
    prefix: --key
- id: admin_key
  doc: Galaxy Admin API Key
  type: string
  inputBinding:
    prefix: --admin-key
- id: force_path_paste
  doc: This requires Galaxy-side config option "allow_path_paste" enabled. Allows
    for fetching test data locally. Only for admins.
  type: boolean
  inputBinding:
    prefix: --force_path_paste
- id: tool_id
  doc: Tool ID
  type: string
  inputBinding:
    prefix: --tool-id
- id: tool_version
  doc: Tool Version
  type: string
  inputBinding:
    prefix: --tool-version
- id: test_index
  doc: Tool Test Index (starting at 0) - by default all tests will run.
  type: string
  inputBinding:
    prefix: --test-index
- id: output
  doc: directory to dump outputs to
  type: string
  inputBinding:
    prefix: --output
- id: append
  doc: Extend a test record json (created with --output-json) with additional tests.
  type: boolean
  inputBinding:
    prefix: --append
- id: output_json
  doc: output metadata json
  type: string
  inputBinding:
    prefix: --output-json
- id: verbose
  doc: Verbose logging.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- galaxy-tool-test
