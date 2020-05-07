class: CommandLineTool
id: planemo_shed_diff.cwl
inputs:
- id: recursive
  doc: Recursively perform command for nested repository directories.
  type: boolean
  inputBinding:
    prefix: --recursive
- id: fail_fast
  doc: If multiple repositories are specified and an error occurs stop immediately
    instead of processing remaining repositories.
  type: boolean
  inputBinding:
    prefix: --fail_fast
- id: owner
  doc: Tool Shed repository owner (username).
  type: string
  inputBinding:
    prefix: --owner
- id: name
  doc: Tool Shed repository name (defaults to the inferred tool directory name).
  type: string
  inputBinding:
    prefix: --name
- id: shed_email
  doc: E-mail for Tool Shed auth (required unless shed_key is specified).
  type: string
  inputBinding:
    prefix: --shed_email
- id: shed_key
  doc: API key for Tool Shed access. An API key is required unless e-mail and password
    is specified. This key can be specified with either --shed_key or --shed_key_from_env.
  type: string
  inputBinding:
    prefix: --shed_key
- id: shed_key_from_env
  doc: Environment variable to read API key for Tool Shed access from.
  type: string
  inputBinding:
    prefix: --shed_key_from_env
- id: shed_password
  doc: Password for Tool Shed auth (required unless shed_key is specified).
  type: string
  inputBinding:
    prefix: --shed_password
- id: shed_target
  doc: Tool Shed to target (this can be 'toolshed', 'testtoolshed', 'local' (alias
    for http://localhost:9009/), an arbitrary url or mappings defined ~/.planemo.yml.
  type: string
  inputBinding:
    prefix: --shed_target
- id: output
  doc: Send diff output to specified file.
  type: File
  inputBinding:
    prefix: --output
- id: shed_target_source
  doc: Source Tool Shed to diff against (will ignore local project info specified).
    To compare the main Tool Shed against the test, set this to testtoolshed.
  type: string
  inputBinding:
    prefix: --shed_target_source
- id: raw
  doc: Do not attempt smart diff of XML to filter out attributes populated by the
    Tool Shed.
  type: boolean
  inputBinding:
    prefix: --raw
- id: report_x_unit
  doc: Output an XUnit report, useful for CI testing
  type: File
  inputBinding:
    prefix: --report_xunit
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- shed_diff
