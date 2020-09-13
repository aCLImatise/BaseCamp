class: CommandLineTool
id: ../../../planemo_shed_update.cwl
inputs:
- id: in_report_x_unit
  doc: Output an XUnit report, useful for CI testing
  type: File
  inputBinding:
    prefix: --report_xunit
- id: in_recursive
  doc: "Recursively perform command for nested\nrepository directories."
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_fail_fast
  doc: "If multiple repositories are specified and an\nerror occurs stop immediately\
    \ instead of\nprocessing remaining repositories."
  type: boolean
  inputBinding:
    prefix: --fail_fast
- id: in_owner
  doc: Tool Shed repository owner (username).
  type: string
  inputBinding:
    prefix: --owner
- id: in_name
  doc: "Tool Shed repository name (defaults to the\ninferred tool directory name)."
  type: Directory
  inputBinding:
    prefix: --name
- id: in_shed_email
  doc: "E-mail for Tool Shed auth (required unless\nshed_key is specified)."
  type: string
  inputBinding:
    prefix: --shed_email
- id: in_shed_key
  doc: "API key for Tool Shed access. An API key is\nrequired unless e-mail and password\
    \ is\nspecified. This key can be specified with\neither --shed_key or --shed_key_from_env."
  type: string
  inputBinding:
    prefix: --shed_key
- id: in_shed_key_from_env
  doc: "Environment variable to read API key for Tool\nShed access from."
  type: string
  inputBinding:
    prefix: --shed_key_from_env
- id: in_shed_password
  doc: "Password for Tool Shed auth (required unless\nshed_key is specified)."
  type: string
  inputBinding:
    prefix: --shed_password
- id: in_shed_target
  doc: "Tool Shed to target (this can be 'toolshed',\n'testtoolshed', 'local' (alias\
    \ for\nhttp://localhost:9009/), an arbitrary url or\nmappings defined ~/.planemo.yml."
  type: long
  inputBinding:
    prefix: --shed_target
- id: in_message
  doc: Commit message for tool shed upload.
  type: string
  inputBinding:
    prefix: --message
- id: in_force_repository_creation
  doc: "If a repository cannot be found for the\nspecified user/repo name pair, then\n\
    automatically create the repository in the\ntoolshed."
  type: boolean
  inputBinding:
    prefix: --force_repository_creation
- id: in_check_diff
  doc: "Skip uploading if the shed_diff detects there\nwould be no 'difference' (only\
    \ attributes\npopulated by the shed would be updated.)"
  type: boolean
  inputBinding:
    prefix: --check_diff
- id: in_skip_upload
  doc: "Skip upload contents as part of operation, only\nupdate metadata."
  type: boolean
  inputBinding:
    prefix: --skip_upload
- id: in_skip_metadata
  doc: "Skip metadata update as part of operation, only\nupload new contents."
  type: boolean
  inputBinding:
    prefix: --skip_metadata
- id: in_shed_dot
  doc: '% planemo shed_update --shed_target testtoolshed path/to/repo'
  type: string
  inputBinding:
    position: 0
- id: in_changes_dot
  doc: The lower-level ``shed_upload`` command should be used instead if the
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
- shed_update
