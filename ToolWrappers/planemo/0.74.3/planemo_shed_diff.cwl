class: CommandLineTool
id: planemo_shed_diff.cwl
inputs:
- id: in_recursive
  doc: Recursively perform command for nested repository
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_owner
  doc: Tool Shed repository owner (username).
  type: string?
  inputBinding:
    prefix: --owner
- id: in_name
  doc: "Tool Shed repository name (defaults to the\ninferred tool directory name)."
  type: Directory?
  inputBinding:
    prefix: --name
- id: in_shed_email
  doc: "E-mail for Tool Shed auth (required unless\nshed_key is specified)."
  type: string?
  inputBinding:
    prefix: --shed_email
- id: in_shed_key
  doc: "API key for Tool Shed access. An API key is\nrequired unless e-mail and password\
    \ is specified.\nThis key can be specified with either --shed_key\nor --shed_key_from_env."
  type: string?
  inputBinding:
    prefix: --shed_key
- id: in_shed_key_from_env
  doc: "Environment variable to read API key for Tool\nShed access from."
  type: string?
  inputBinding:
    prefix: --shed_key_from_env
- id: in_shed_password
  doc: "Password for Tool Shed auth (required unless\nshed_key is specified)."
  type: string?
  inputBinding:
    prefix: --shed_password
- id: in_shed_target
  doc: "Tool Shed to target (this can be 'toolshed',\n'testtoolshed', 'local' (alias\
    \ for\nhttp://localhost:9009/), an arbitrary url or\nmappings defined ~/.planemo.yml."
  type: long?
  inputBinding:
    prefix: --shed_target
- id: in_output
  doc: Send diff output to specified file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_shed_target_source
  doc: "Source Tool Shed to diff against (will ignore\nlocal project info specified).\
    \ To compare the\nmain Tool Shed against the test, set this to\ntesttoolshed."
  type: string?
  inputBinding:
    prefix: --shed_target_source
- id: in_raw
  doc: "Do not attempt smart diff of XML to filter out\nattributes populated by the\
    \ Tool Shed."
  type: boolean?
  inputBinding:
    prefix: --raw
- id: in_report_x_unit
  doc: Output an XUnit report, useful for CI testing
  type: File?
  inputBinding:
    prefix: --report_xunit
- id: in_directories_dot
  doc: --fail_fast                If multiple repositories are specified and an
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Send diff output to specified file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/planemo:0.74.3--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- shed_diff
