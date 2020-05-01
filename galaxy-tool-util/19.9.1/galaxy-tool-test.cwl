#!/usr/bin/env cwl-runner

baseCommand:
- galaxy-tool-test
class: CommandLineTool
cwlVersion: v1.0
id: galaxy-tool-test
inputs:
- doc: Galaxy URL
  id: galaxy_url
  inputBinding:
    prefix: --galaxy-url
  type: string
- doc: Galaxy User API Key
  id: key
  inputBinding:
    prefix: --key
  type: string
- doc: Galaxy Admin API Key
  id: admin_key
  inputBinding:
    prefix: --admin-key
  type: string
- doc: This requires Galaxy-side config option "allow_path_paste" enabled. Allows
    for fetching test data locally. Only for admins.
  id: force_path_paste
  inputBinding:
    prefix: --force_path_paste
  type: boolean
- doc: Tool ID
  id: tool_id
  inputBinding:
    prefix: --tool-id
  type: string
- doc: Tool Version
  id: tool_version
  inputBinding:
    prefix: --tool-version
  type: string
- doc: Tool Test Index (starting at 0) - by default all tests will run.
  id: test_index
  inputBinding:
    prefix: --test-index
  type: string
- doc: directory to dump outputs to
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Extend a test record json (created with --output-json) with additional tests.
  id: append
  inputBinding:
    prefix: --append
  type: boolean
- doc: output metadata json
  id: output_json
  inputBinding:
    prefix: --output-json
  type: string
- doc: Verbose logging.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
